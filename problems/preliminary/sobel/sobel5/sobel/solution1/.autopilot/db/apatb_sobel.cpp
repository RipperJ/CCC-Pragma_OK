#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_src "../tv/cdatafile/c.sobel.autotvin_src.dat"
#define AUTOTB_TVOUT_src "../tv/cdatafile/c.sobel.autotvout_src.dat"
// wrapc file define:
#define AUTOTB_TVIN_dst "../tv/cdatafile/c.sobel.autotvin_dst.dat"
#define AUTOTB_TVOUT_dst "../tv/cdatafile/c.sobel.autotvout_dst.dat"
// wrapc file define:
#define AUTOTB_TVIN_rows "../tv/cdatafile/c.sobel.autotvin_rows.dat"
#define AUTOTB_TVOUT_rows "../tv/cdatafile/c.sobel.autotvout_rows.dat"
// wrapc file define:
#define AUTOTB_TVIN_cols "../tv/cdatafile/c.sobel.autotvin_cols.dat"
#define AUTOTB_TVOUT_cols "../tv/cdatafile/c.sobel.autotvout_cols.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_src "../tv/rtldatafile/rtl.sobel.autotvout_src.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dst "../tv/rtldatafile/rtl.sobel.autotvout_dst.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rows "../tv/rtldatafile/rtl.sobel.autotvout_rows.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cols "../tv/rtldatafile/rtl.sobel.autotvout_cols.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  src_depth = 0;
  dst_depth = 0;
  rows_depth = 0;
  cols_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{src " << src_depth << "}\n";
  total_list << "{dst " << dst_depth << "}\n";
  total_list << "{rows " << rows_depth << "}\n";
  total_list << "{cols " << cols_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int src_depth;
    int dst_depth;
    int rows_depth;
    int cols_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void sobel_hw_stub_wrapper(volatile void *, volatile void *, int, int);

extern "C" void apatb_sobel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > dst_pc_buffer(917604);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 917604; j < e; j += 1, ++i) {
            ((short*)__xlx_apatb_param_dst)[j] = dst_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//src
aesl_fh.touch(AUTOTB_TVIN_src);
aesl_fh.touch(AUTOTB_TVOUT_src);
//dst
aesl_fh.touch(AUTOTB_TVIN_dst);
aesl_fh.touch(AUTOTB_TVOUT_dst);
//rows
aesl_fh.touch(AUTOTB_TVIN_rows);
aesl_fh.touch(AUTOTB_TVOUT_rows);
//cols
aesl_fh.touch(AUTOTB_TVIN_cols);
aesl_fh.touch(AUTOTB_TVOUT_cols);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_src = 0;
// print src Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_src = 0*2;
  if (__xlx_apatb_param_src) {
    for (int j = 0  - 0, e = 921600 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_src)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_src, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(921600, &tcl_file.src_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_dst = 0;
// print dst Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_dst, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_dst = 0*2;
  if (__xlx_apatb_param_dst) {
    for (int j = 0  - 0, e = 917604 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_dst)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_dst, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(917604, &tcl_file.dst_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_dst, __xlx_sprintf_buffer.data());
}
// print rows Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_rows);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rows_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
}
// print cols Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_cols);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cols_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
sobel_hw_stub_wrapper(__xlx_apatb_param_src, __xlx_apatb_param_dst, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
CodeState = DUMP_OUTPUTS;
// print dst Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_dst = 0*2;
  if (__xlx_apatb_param_dst) {
    for (int j = 0  - 0, e = 917604 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_dst)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_dst, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(917604, &tcl_file.dst_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
