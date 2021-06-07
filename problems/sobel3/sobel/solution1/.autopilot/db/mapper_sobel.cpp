#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void sobel(short*, int, int, int, int);
extern "C" void apatb_sobel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  // Collect __xlx_src_dst__tmp_vec
  vector<sc_bv<16> >__xlx_src_dst__tmp_vec;
  for (int j = 0, e = 921600; j != e; ++j) {
    __xlx_src_dst__tmp_vec.push_back(((short*)__xlx_apatb_param_src)[j]);
  }
  int __xlx_size_param_src = 921600;
  int __xlx_offset_param_src = 0;
  int __xlx_offset_byte_param_src = 0*2;
  for (int j = 0, e = 917604; j != e; ++j) {
    __xlx_src_dst__tmp_vec.push_back(((short*)__xlx_apatb_param_dst)[j]);
  }
  int __xlx_size_param_dst = 917604;
  int __xlx_offset_param_dst = 921600;
  int __xlx_offset_byte_param_dst = 921600*2;
  short* __xlx_src_dst__input_buffer= new short[__xlx_src_dst__tmp_vec.size()];
  for (int i = 0; i < __xlx_src_dst__tmp_vec.size(); ++i) {
    __xlx_src_dst__input_buffer[i] = __xlx_src_dst__tmp_vec[i].range(15, 0).to_uint64();
  }
  // DUT call
  sobel(__xlx_src_dst__input_buffer, __xlx_offset_byte_param_src, __xlx_offset_byte_param_dst, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
// print __xlx_apatb_param_src
  sc_bv<16>*__xlx_src_output_buffer = new sc_bv<16>[__xlx_size_param_src];
  for (int i = 0; i < __xlx_size_param_src; ++i) {
    __xlx_src_output_buffer[i] = __xlx_src_dst__input_buffer[i+__xlx_offset_param_src];
  }
  for (int i = 0; i < __xlx_size_param_src; ++i) {
    ((short*)__xlx_apatb_param_src)[i] = __xlx_src_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_dst
  sc_bv<16>*__xlx_dst_output_buffer = new sc_bv<16>[__xlx_size_param_dst];
  for (int i = 0; i < __xlx_size_param_dst; ++i) {
    __xlx_dst_output_buffer[i] = __xlx_src_dst__input_buffer[i+__xlx_offset_param_dst];
  }
  for (int i = 0; i < __xlx_size_param_dst; ++i) {
    ((short*)__xlx_apatb_param_dst)[i] = __xlx_dst_output_buffer[i].to_uint64();
  }
}
