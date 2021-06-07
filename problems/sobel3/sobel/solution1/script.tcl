############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sobel
set_top sobel
add_files sobel.cpp
add_files -tb sobel_test.cpp -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dst.txt -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data.txt -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcu50-fsvh2104-2-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512 -m_axi_offset slave
config_rtl -register_reset_num 3
source "./sobel/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
