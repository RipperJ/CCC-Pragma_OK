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
#define AUTOTB_TVIN_din_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_din_strm_V.dat"
#define AUTOTB_TVOUT_din_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_din_strm_V.dat"
#define WRAPC_STREAM_SIZE_IN_din_strm_V "../tv/stream_size/stream_size_in_din_strm_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_din_strm_V "../tv/stream_size/stream_ingress_status_din_strm_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_kin_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_kin_strm_V.dat"
#define AUTOTB_TVOUT_kin_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_kin_strm_V.dat"
#define WRAPC_STREAM_SIZE_IN_kin_strm_V "../tv/stream_size/stream_size_in_kin_strm_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_kin_strm_V "../tv/stream_size/stream_ingress_status_kin_strm_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_strm_in_end_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_strm_in_end_V.dat"
#define AUTOTB_TVOUT_strm_in_end_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_strm_in_end_V.dat"
#define WRAPC_STREAM_SIZE_IN_strm_in_end_V "../tv/stream_size/stream_size_in_strm_in_end_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V "../tv/stream_size/stream_ingress_status_strm_in_end_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_dout_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_dout_strm_V.dat"
#define AUTOTB_TVOUT_dout_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_dout_strm_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dout_strm_V "../tv/stream_size/stream_size_out_dout_strm_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dout_strm_V "../tv/stream_size/stream_egress_status_dout_strm_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_kout_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_kout_strm_V.dat"
#define AUTOTB_TVOUT_kout_strm_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_kout_strm_V.dat"
#define WRAPC_STREAM_SIZE_OUT_kout_strm_V "../tv/stream_size/stream_size_out_kout_strm_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_kout_strm_V "../tv/stream_size/stream_egress_status_kout_strm_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_strm_out_end_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_strm_out_end_V.dat"
#define AUTOTB_TVOUT_strm_out_end_V "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat"
#define WRAPC_STREAM_SIZE_OUT_strm_out_end_V "../tv/stream_size/stream_size_out_strm_out_end_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_strm_out_end_V "../tv/stream_size/stream_egress_status_strm_out_end_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_sign "../tv/cdatafile/c.hls_db_insert_sort_function.autotvin_sign.dat"
#define AUTOTB_TVOUT_sign "../tv/cdatafile/c.hls_db_insert_sort_function.autotvout_sign.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_din_strm_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_din_strm_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_kin_strm_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_kin_strm_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_strm_in_end_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_strm_in_end_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dout_strm_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_kout_strm_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_strm_out_end_V "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sign "../tv/rtldatafile/rtl.hls_db_insert_sort_function.autotvout_sign.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  din_strm_V_depth = 0;
  kin_strm_V_depth = 0;
  strm_in_end_V_depth = 0;
  dout_strm_V_depth = 0;
  kout_strm_V_depth = 0;
  strm_out_end_V_depth = 0;
  sign_depth = 0;
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
  total_list << "{din_strm_V " << din_strm_V_depth << "}\n";
  total_list << "{kin_strm_V " << kin_strm_V_depth << "}\n";
  total_list << "{strm_in_end_V " << strm_in_end_V_depth << "}\n";
  total_list << "{dout_strm_V " << dout_strm_V_depth << "}\n";
  total_list << "{kout_strm_V " << kout_strm_V_depth << "}\n";
  total_list << "{strm_out_end_V " << strm_out_end_V_depth << "}\n";
  total_list << "{sign " << sign_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int din_strm_V_depth;
    int kin_strm_V_depth;
    int strm_in_end_V_depth;
    int dout_strm_V_depth;
    int kout_strm_V_depth;
    int strm_out_end_V_depth;
    int sign_depth;
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
extern "C" void hls_db_insert_sort_function_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, char);

extern "C" void apatb_hls_db_insert_sort_function_hw(volatile void * __xlx_apatb_param_din_strm, volatile void * __xlx_apatb_param_kin_strm, volatile void * __xlx_apatb_param_strm_in_end, volatile void * __xlx_apatb_param_dout_strm, volatile void * __xlx_apatb_param_kout_strm, volatile void * __xlx_apatb_param_strm_out_end, char __xlx_apatb_param_sign) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_din_strm_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_din_strm_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_din_strm_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_din_strm_V_stream_buf_final_size; ++i)((hls::stream<int>*)__xlx_apatb_param_din_strm)->read();
long __xlx_apatb_param_kin_strm_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_kin_strm_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_kin_strm_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_kin_strm_V_stream_buf_final_size; ++i)((hls::stream<int>*)__xlx_apatb_param_kin_strm)->read();
long __xlx_apatb_param_strm_in_end_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_strm_in_end_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_strm_in_end_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_strm_in_end_V_stream_buf_final_size; ++i)((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->read();
long __xlx_apatb_param_dout_strm_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_dout_strm_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_dout_strm_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dout_strm_V);
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
          std::vector<sc_bv<32> > dout_strm_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dout_strm_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dout_strm_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = dout_strm_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_dout_strm)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_kout_strm_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_kout_strm_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_kout_strm_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_kout_strm_V);
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
          std::vector<sc_bv<32> > kout_strm_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "kout_strm_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              kout_strm_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = kout_strm_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_kout_strm)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_strm_out_end_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_strm_out_end_V);
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
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_strm_out_end_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_strm_out_end_V);
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
          std::vector<sc_bv<1> > strm_out_end_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "strm_out_end_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              strm_out_end_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
char xlx_stream_elt;

            ((char*)&xlx_stream_elt)[0] = strm_out_end_V_pc_buffer[j].to_uint64();
          ((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->write(xlx_stream_elt);
}
}
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
//din_strm_V
aesl_fh.touch(AUTOTB_TVIN_din_strm_V);
aesl_fh.touch(AUTOTB_TVOUT_din_strm_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_din_strm_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_din_strm_V);
//kin_strm_V
aesl_fh.touch(AUTOTB_TVIN_kin_strm_V);
aesl_fh.touch(AUTOTB_TVOUT_kin_strm_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_kin_strm_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V);
//strm_in_end_V
aesl_fh.touch(AUTOTB_TVIN_strm_in_end_V);
aesl_fh.touch(AUTOTB_TVOUT_strm_in_end_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_strm_in_end_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V);
//dout_strm_V
aesl_fh.touch(AUTOTB_TVIN_dout_strm_V);
aesl_fh.touch(AUTOTB_TVOUT_dout_strm_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dout_strm_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dout_strm_V);
//kout_strm_V
aesl_fh.touch(AUTOTB_TVIN_kout_strm_V);
aesl_fh.touch(AUTOTB_TVOUT_kout_strm_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_kout_strm_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_kout_strm_V);
//strm_out_end_V
aesl_fh.touch(AUTOTB_TVIN_strm_out_end_V);
aesl_fh.touch(AUTOTB_TVOUT_strm_out_end_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_strm_out_end_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_strm_out_end_V);
//sign
aesl_fh.touch(AUTOTB_TVIN_sign);
aesl_fh.touch(AUTOTB_TVOUT_sign);
CodeState = DUMP_INPUTS;
std::vector<int> __xlx_apatb_param_din_strm_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_din_strm)->empty())
    __xlx_apatb_param_din_strm_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_din_strm)->read());
  for (int i = 0; i < __xlx_apatb_param_din_strm_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_din_strm)->write(__xlx_apatb_param_din_strm_stream_buf[i]);
  }
long __xlx_apatb_param_din_strm_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_din_strm)->size();
std::vector<int> __xlx_apatb_param_kin_strm_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_kin_strm)->empty())
    __xlx_apatb_param_kin_strm_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_kin_strm)->read());
  for (int i = 0; i < __xlx_apatb_param_kin_strm_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_kin_strm)->write(__xlx_apatb_param_kin_strm_stream_buf[i]);
  }
long __xlx_apatb_param_kin_strm_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_kin_strm)->size();
std::vector<char> __xlx_apatb_param_strm_in_end_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->empty())
    __xlx_apatb_param_strm_in_end_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->read());
  for (int i = 0; i < __xlx_apatb_param_strm_in_end_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->write(__xlx_apatb_param_strm_in_end_stream_buf[i]);
  }
long __xlx_apatb_param_strm_in_end_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->size();
std::vector<int> __xlx_apatb_param_dout_strm_stream_buf;
long __xlx_apatb_param_dout_strm_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_dout_strm)->size();
std::vector<int> __xlx_apatb_param_kout_strm_stream_buf;
long __xlx_apatb_param_kout_strm_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_kout_strm)->size();
std::vector<char> __xlx_apatb_param_strm_out_end_stream_buf;
long __xlx_apatb_param_strm_out_end_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->size();
// print sign Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_sign, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_sign);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_sign, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.sign_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_sign, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
hls_db_insert_sort_function_hw_stub_wrapper(__xlx_apatb_param_din_strm, __xlx_apatb_param_kin_strm, __xlx_apatb_param_strm_in_end, __xlx_apatb_param_dout_strm, __xlx_apatb_param_kout_strm, __xlx_apatb_param_strm_out_end, __xlx_apatb_param_sign);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_din_strm_stream_buf_final_size = __xlx_apatb_param_din_strm_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_din_strm)->size();
// print din_strm_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_din_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_din_strm_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_din_strm_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_din_strm_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_din_strm_stream_buf_final_size, &tcl_file.din_strm_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_din_strm_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_din_strm_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_din_strm_stream_buf_final_size > 0) {
  long din_strm_V_stream_ingress_size = __xlx_apatb_param_din_strm_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", din_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_din_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_din_strm_stream_buf_final_size; j != e; j++) {
    din_strm_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", din_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_din_strm_V, __xlx_sprintf_buffer.data());
  }
} else {
  long din_strm_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", din_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_din_strm_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_din_strm_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_din_strm_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_din_strm_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_din_strm_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_din_strm_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_kin_strm_stream_buf_final_size = __xlx_apatb_param_kin_strm_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_kin_strm)->size();
// print kin_strm_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_kin_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_kin_strm_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_kin_strm_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_kin_strm_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_kin_strm_stream_buf_final_size, &tcl_file.kin_strm_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_kin_strm_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_kin_strm_stream_buf_final_size > 0) {
  long kin_strm_V_stream_ingress_size = __xlx_apatb_param_kin_strm_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", kin_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_kin_strm_stream_buf_final_size; j != e; j++) {
    kin_strm_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", kin_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V, __xlx_sprintf_buffer.data());
  }
} else {
  long kin_strm_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", kin_strm_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_kin_strm_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_kin_strm_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_kin_strm_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_kin_strm_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_kin_strm_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_strm_in_end_stream_buf_final_size = __xlx_apatb_param_strm_in_end_stream_buf_size - ((hls::stream<char>*)__xlx_apatb_param_strm_in_end)->size();
// print strm_in_end_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_strm_in_end_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_strm_in_end_stream_buf_final_size; j != e; ++j) {
sc_bv<1> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_strm_in_end_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_strm_in_end_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_strm_in_end_stream_buf_final_size, &tcl_file.strm_in_end_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_strm_in_end_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_strm_in_end_stream_buf_final_size > 0) {
  long strm_in_end_V_stream_ingress_size = __xlx_apatb_param_strm_in_end_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", strm_in_end_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_strm_in_end_stream_buf_final_size; j != e; j++) {
    strm_in_end_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", strm_in_end_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V, __xlx_sprintf_buffer.data());
  }
} else {
  long strm_in_end_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", strm_in_end_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_end_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_end_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_strm_in_end_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_end_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_end_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_dout_strm_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_dout_strm)->size() - __xlx_apatb_param_dout_strm_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_dout_strm)->empty())
    __xlx_apatb_param_dout_strm_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_dout_strm)->read());
  for (int i = 0; i < __xlx_apatb_param_dout_strm_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_dout_strm)->write(__xlx_apatb_param_dout_strm_stream_buf[i]);
  }
// print dout_strm_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dout_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_dout_strm_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_dout_strm_stream_buf[__xlx_apatb_param_dout_strm_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_dout_strm_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_dout_strm_stream_buf_final_size, &tcl_file.dout_strm_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dout_strm_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dout_strm_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dout_strm_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dout_strm_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dout_strm_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_kout_strm_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_kout_strm)->size() - __xlx_apatb_param_kout_strm_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_kout_strm)->empty())
    __xlx_apatb_param_kout_strm_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_kout_strm)->read());
  for (int i = 0; i < __xlx_apatb_param_kout_strm_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_kout_strm)->write(__xlx_apatb_param_kout_strm_stream_buf[i]);
  }
// print kout_strm_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_kout_strm_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_kout_strm_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_kout_strm_stream_buf[__xlx_apatb_param_kout_strm_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_kout_strm_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_kout_strm_stream_buf_final_size, &tcl_file.kout_strm_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_kout_strm_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_kout_strm_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_kout_strm_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_kout_strm_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_kout_strm_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_strm_out_end_stream_buf_final_size = ((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->size() - __xlx_apatb_param_strm_out_end_stream_buf_size;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->empty())
    __xlx_apatb_param_strm_out_end_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->read());
  for (int i = 0; i < __xlx_apatb_param_strm_out_end_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_strm_out_end)->write(__xlx_apatb_param_strm_out_end_stream_buf[i]);
  }
// print strm_out_end_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_strm_out_end_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_strm_out_end_stream_buf_final_size; j != e; ++j) {
sc_bv<1> __xlx_tmp_lv = ((char*)&__xlx_apatb_param_strm_out_end_stream_buf[__xlx_apatb_param_strm_out_end_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_strm_out_end_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_strm_out_end_stream_buf_final_size, &tcl_file.strm_out_end_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_strm_out_end_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_end_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_strm_out_end_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_end_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_end_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
