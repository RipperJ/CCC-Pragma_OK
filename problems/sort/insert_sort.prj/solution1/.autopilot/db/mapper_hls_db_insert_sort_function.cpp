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
unsigned int ap_apatb_din_strm_V_cap_bc;
static AESL_RUNTIME_BC __xlx_din_strm_V_size_Reader("../tv/stream_size/stream_size_in_din_strm_V.dat");
unsigned int ap_apatb_kin_strm_V_cap_bc;
static AESL_RUNTIME_BC __xlx_kin_strm_V_size_Reader("../tv/stream_size/stream_size_in_kin_strm_V.dat");
unsigned int ap_apatb_strm_in_end_V_cap_bc;
static AESL_RUNTIME_BC __xlx_strm_in_end_V_size_Reader("../tv/stream_size/stream_size_in_strm_in_end_V.dat");
unsigned int ap_apatb_dout_strm_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dout_strm_V_size_Reader("../tv/stream_size/stream_size_out_dout_strm_V.dat");
unsigned int ap_apatb_kout_strm_V_cap_bc;
static AESL_RUNTIME_BC __xlx_kout_strm_V_size_Reader("../tv/stream_size/stream_size_out_kout_strm_V.dat");
unsigned int ap_apatb_strm_out_end_V_cap_bc;
static AESL_RUNTIME_BC __xlx_strm_out_end_V_size_Reader("../tv/stream_size/stream_size_out_strm_out_end_V.dat");
extern "C" void hls_db_insert_sort_function(int*, int*, char*, int*, int*, char*, char);
extern "C" void apatb_hls_db_insert_sort_function_hw(volatile void * __xlx_apatb_param_din_strm, volatile void * __xlx_apatb_param_kin_strm, volatile void * __xlx_apatb_param_strm_in_end, volatile void * __xlx_apatb_param_dout_strm, volatile void * __xlx_apatb_param_kout_strm, volatile void * __xlx_apatb_param_strm_out_end, char __xlx_apatb_param_sign) {
  // collect __xlx_din_strm_tmp_vec
  unsigned __xlx_din_strm_V_tmp_Count = 0;
  unsigned __xlx_din_strm_V_read_Size = __xlx_din_strm_V_size_Reader.read_size();
  vector<int> __xlx_din_strm_tmp_vec;
  while (!((hls::stream<int>*)__xlx_apatb_param_din_strm)->empty() && __xlx_din_strm_V_tmp_Count < __xlx_din_strm_V_read_Size) {
    __xlx_din_strm_tmp_vec.push_back(((hls::stream<int>*)__xlx_apatb_param_din_strm)->read());
    __xlx_din_strm_V_tmp_Count++;
  }
  ap_apatb_din_strm_V_cap_bc = __xlx_din_strm_tmp_vec.size();
  // store input buffer
  int* __xlx_din_strm_input_buffer= new int[__xlx_din_strm_tmp_vec.size()];
  for (int i = 0; i < __xlx_din_strm_tmp_vec.size(); ++i) {
    __xlx_din_strm_input_buffer[i] = __xlx_din_strm_tmp_vec[i];
  }
  // collect __xlx_kin_strm_tmp_vec
  unsigned __xlx_kin_strm_V_tmp_Count = 0;
  unsigned __xlx_kin_strm_V_read_Size = __xlx_kin_strm_V_size_Reader.read_size();
  vector<int> __xlx_kin_strm_tmp_vec;
  while (!((hls::stream<int>*)__xlx_apatb_param_kin_strm)->empty() && __xlx_kin_strm_V_tmp_Count < __xlx_kin_strm_V_read_Size) {
    __xlx_kin_strm_tmp_vec.push_back(((hls::stream<int>*)__xlx_apatb_param_kin_strm)->read());
    __xlx_kin_strm_V_tmp_Count++;
  }
  ap_apatb_kin_strm_V_cap_bc = __xlx_kin_strm_tmp_vec.size();
  // store input buffer
  int* __xlx_kin_strm_input_buffer= new int[__xlx_kin_strm_tmp_vec.size()];
  for (int i = 0; i < __xlx_kin_strm_tmp_vec.size(); ++i) {
    __xlx_kin_strm_input_buffer[i] = __xlx_kin_strm_tmp_vec[i];
  }
  // collect __xlx_strm_in_end_tmp_vec
  unsigned __xlx_strm_in_end_V_tmp_Count = 0;
  unsigned __xlx_strm_in_end_V_read_Size = __xlx_strm_in_end_V_size_Reader.read_size();
  vector<char> __xlx_strm_in_end_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->empty() && __xlx_strm_in_end_V_tmp_Count < __xlx_strm_in_end_V_read_Size) {
    __xlx_strm_in_end_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->read());
    __xlx_strm_in_end_V_tmp_Count++;
  }
  ap_apatb_strm_in_end_V_cap_bc = __xlx_strm_in_end_tmp_vec.size();
  // store input buffer
  char* __xlx_strm_in_end_input_buffer= new char[__xlx_strm_in_end_tmp_vec.size()];
  for (int i = 0; i < __xlx_strm_in_end_tmp_vec.size(); ++i) {
    __xlx_strm_in_end_input_buffer[i] = __xlx_strm_in_end_tmp_vec[i];
  }
  //Create input buffer for dout_strm
  ap_apatb_dout_strm_V_cap_bc = __xlx_dout_strm_V_size_Reader.read_size();
  int* __xlx_dout_strm_input_buffer= new int[ap_apatb_dout_strm_V_cap_bc];
  //Create input buffer for kout_strm
  ap_apatb_kout_strm_V_cap_bc = __xlx_kout_strm_V_size_Reader.read_size();
  int* __xlx_kout_strm_input_buffer= new int[ap_apatb_kout_strm_V_cap_bc];
  //Create input buffer for strm_out_end
  ap_apatb_strm_out_end_V_cap_bc = __xlx_strm_out_end_V_size_Reader.read_size();
  char* __xlx_strm_out_end_input_buffer= new char[ap_apatb_strm_out_end_V_cap_bc];
  // DUT call
  hls_db_insert_sort_function(__xlx_din_strm_input_buffer, __xlx_kin_strm_input_buffer, __xlx_strm_in_end_input_buffer, __xlx_dout_strm_input_buffer, __xlx_kout_strm_input_buffer, __xlx_strm_out_end_input_buffer, __xlx_apatb_param_sign);
  for (unsigned i = 0; i <ap_apatb_dout_strm_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_dout_strm)->write(__xlx_dout_strm_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_kout_strm_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_kout_strm)->write(__xlx_kout_strm_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_strm_out_end_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->write(__xlx_strm_out_end_input_buffer[i]);
}
