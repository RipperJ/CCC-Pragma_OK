// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      hls_db_insert_sort_function
`define AUTOTB_DUT_INST AESL_inst_hls_db_insert_sort_function
`define AUTOTB_TOP      apatb_hls_db_insert_sort_function_top
`define AUTOTB_LAT_RESULT_FILE "hls_db_insert_sort_function.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "hls_db_insert_sort_function.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_hls_db_insert_sort_function_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 1.67

`define AESL_FIFO_din_strm_V AESL_autofifo_din_strm_V
`define AESL_FIFO_INST_din_strm_V AESL_autofifo_inst_din_strm_V
`define AESL_FIFO_kin_strm_V AESL_autofifo_kin_strm_V
`define AESL_FIFO_INST_kin_strm_V AESL_autofifo_inst_kin_strm_V
`define AESL_FIFO_strm_in_end_V AESL_autofifo_strm_in_end_V
`define AESL_FIFO_INST_strm_in_end_V AESL_autofifo_inst_strm_in_end_V
`define AESL_FIFO_dout_strm_V AESL_autofifo_dout_strm_V
`define AESL_FIFO_INST_dout_strm_V AESL_autofifo_inst_dout_strm_V
`define AESL_FIFO_kout_strm_V AESL_autofifo_kout_strm_V
`define AESL_FIFO_INST_kout_strm_V AESL_autofifo_inst_kout_strm_V
`define AESL_FIFO_strm_out_end_V AESL_autofifo_strm_out_end_V
`define AESL_FIFO_INST_strm_out_end_V AESL_autofifo_inst_strm_out_end_V
`define AESL_DEPTH_sign 1
`define AUTOTB_TVIN_din_strm_V  "./c.hls_db_insert_sort_function.autotvin_din_strm_V.dat"
`define AUTOTB_TVIN_kin_strm_V  "./c.hls_db_insert_sort_function.autotvin_kin_strm_V.dat"
`define AUTOTB_TVIN_strm_in_end_V  "./c.hls_db_insert_sort_function.autotvin_strm_in_end_V.dat"
`define AUTOTB_TVIN_dout_strm_V  "./c.hls_db_insert_sort_function.autotvin_dout_strm_V.dat"
`define AUTOTB_TVIN_kout_strm_V  "./c.hls_db_insert_sort_function.autotvin_kout_strm_V.dat"
`define AUTOTB_TVIN_strm_out_end_V  "./c.hls_db_insert_sort_function.autotvin_strm_out_end_V.dat"
`define AUTOTB_TVIN_sign  "./c.hls_db_insert_sort_function.autotvin_sign.dat"
`define AUTOTB_TVIN_din_strm_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_din_strm_V.dat"
`define AUTOTB_TVIN_kin_strm_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_kin_strm_V.dat"
`define AUTOTB_TVIN_strm_in_end_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_strm_in_end_V.dat"
`define AUTOTB_TVIN_dout_strm_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_dout_strm_V.dat"
`define AUTOTB_TVIN_kout_strm_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_kout_strm_V.dat"
`define AUTOTB_TVIN_strm_out_end_V_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_strm_out_end_V.dat"
`define AUTOTB_TVIN_sign_out_wrapc  "./rtl.hls_db_insert_sort_function.autotvin_sign.dat"
`define AUTOTB_TVOUT_dout_strm_V  "./c.hls_db_insert_sort_function.autotvout_dout_strm_V.dat"
`define AUTOTB_TVOUT_kout_strm_V  "./c.hls_db_insert_sort_function.autotvout_kout_strm_V.dat"
`define AUTOTB_TVOUT_strm_out_end_V  "./c.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat"
`define AUTOTB_TVOUT_dout_strm_V_out_wrapc  "./impl_rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat"
`define AUTOTB_TVOUT_kout_strm_V_out_wrapc  "./impl_rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat"
`define AUTOTB_TVOUT_strm_out_end_V_out_wrapc  "./impl_rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_din_strm_V = 8;
parameter LENGTH_kin_strm_V = 8;
parameter LENGTH_strm_in_end_V = 9;
parameter LENGTH_dout_strm_V = 8;
parameter LENGTH_kout_strm_V = 8;
parameter LENGTH_strm_out_end_V = 9;
parameter LENGTH_sign = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [191 : 0] token1;
    reg [191 : 0] token2;
    reg [191 : 0] golden;
    reg [191 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] din_strm_V_dout;
wire  din_strm_V_empty_n;
wire  din_strm_V_read;
wire [31 : 0] kin_strm_V_dout;
wire  kin_strm_V_empty_n;
wire  kin_strm_V_read;
wire [0 : 0] strm_in_end_V_dout;
wire  strm_in_end_V_empty_n;
wire  strm_in_end_V_read;
wire [31 : 0] dout_strm_V_din;
wire  dout_strm_V_full_n;
wire  dout_strm_V_write;
wire [31 : 0] kout_strm_V_din;
wire  kout_strm_V_full_n;
wire  kout_strm_V_write;
wire [0 : 0] strm_out_end_V_din;
wire  strm_out_end_V_full_n;
wire  strm_out_end_V_write;
wire  sign;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .din_strm_V_dout(din_strm_V_dout),
    .din_strm_V_empty_n(din_strm_V_empty_n),
    .din_strm_V_read(din_strm_V_read),
    .kin_strm_V_dout(kin_strm_V_dout),
    .kin_strm_V_empty_n(kin_strm_V_empty_n),
    .kin_strm_V_read(kin_strm_V_read),
    .strm_in_end_V_dout(strm_in_end_V_dout),
    .strm_in_end_V_empty_n(strm_in_end_V_empty_n),
    .strm_in_end_V_read(strm_in_end_V_read),
    .dout_strm_V_din(dout_strm_V_din),
    .dout_strm_V_full_n(dout_strm_V_full_n),
    .dout_strm_V_write(dout_strm_V_write),
    .kout_strm_V_din(kout_strm_V_din),
    .kout_strm_V_full_n(kout_strm_V_full_n),
    .kout_strm_V_write(kout_strm_V_write),
    .strm_out_end_V_din(strm_out_end_V_din),
    .strm_out_end_V_full_n(strm_out_end_V_full_n),
    .strm_out_end_V_write(strm_out_end_V_write),
    .sign(sign));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation din_strm_V

wire fifodin_strm_V_rd;
wire [31 : 0] fifodin_strm_V_dout;
wire fifodin_strm_V_empty_n;
wire fifodin_strm_V_ready;
wire fifodin_strm_V_done;
reg [31:0] ap_c_n_tvin_trans_num_din_strm_V;
reg din_strm_V_ready_reg;

`AESL_FIFO_din_strm_V `AESL_FIFO_INST_din_strm_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifodin_strm_V_rd),
    .if_dout      (fifodin_strm_V_dout),
    .if_empty_n   (fifodin_strm_V_empty_n),
    .ready        (fifodin_strm_V_ready),
    .done         (fifodin_strm_V_done)
);

// Assignment between dut and fifodin_strm_V

// Assign input of fifodin_strm_V
assign      fifodin_strm_V_rd        =   din_strm_V_read & din_strm_V_empty_n;
assign    fifodin_strm_V_ready   =   din_strm_V_ready_reg | ready_initial;
assign    fifodin_strm_V_done    =   0;
// Assign input of dut
assign      din_strm_V_dout       =   fifodin_strm_V_dout;
reg   reg_fifodin_strm_V_empty_n;
initial begin : gen_reg_fifodin_strm_V_empty_n_process
    integer proc_rand;
    reg_fifodin_strm_V_empty_n = fifodin_strm_V_empty_n;
    while (1) begin
        @ (fifodin_strm_V_empty_n);
        reg_fifodin_strm_V_empty_n = fifodin_strm_V_empty_n;
    end
end

assign      din_strm_V_empty_n    =   reg_fifodin_strm_V_empty_n;


// Fifo Instantiation kin_strm_V

wire fifokin_strm_V_rd;
wire [31 : 0] fifokin_strm_V_dout;
wire fifokin_strm_V_empty_n;
wire fifokin_strm_V_ready;
wire fifokin_strm_V_done;
reg [31:0] ap_c_n_tvin_trans_num_kin_strm_V;
reg kin_strm_V_ready_reg;

`AESL_FIFO_kin_strm_V `AESL_FIFO_INST_kin_strm_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifokin_strm_V_rd),
    .if_dout      (fifokin_strm_V_dout),
    .if_empty_n   (fifokin_strm_V_empty_n),
    .ready        (fifokin_strm_V_ready),
    .done         (fifokin_strm_V_done)
);

// Assignment between dut and fifokin_strm_V

// Assign input of fifokin_strm_V
assign      fifokin_strm_V_rd        =   kin_strm_V_read & kin_strm_V_empty_n;
assign    fifokin_strm_V_ready   =   kin_strm_V_ready_reg | ready_initial;
assign    fifokin_strm_V_done    =   0;
// Assign input of dut
assign      kin_strm_V_dout       =   fifokin_strm_V_dout;
reg   reg_fifokin_strm_V_empty_n;
initial begin : gen_reg_fifokin_strm_V_empty_n_process
    integer proc_rand;
    reg_fifokin_strm_V_empty_n = fifokin_strm_V_empty_n;
    while (1) begin
        @ (fifokin_strm_V_empty_n);
        reg_fifokin_strm_V_empty_n = fifokin_strm_V_empty_n;
    end
end

assign      kin_strm_V_empty_n    =   reg_fifokin_strm_V_empty_n;


// Fifo Instantiation strm_in_end_V

wire fifostrm_in_end_V_rd;
wire [0 : 0] fifostrm_in_end_V_dout;
wire fifostrm_in_end_V_empty_n;
wire fifostrm_in_end_V_ready;
wire fifostrm_in_end_V_done;
reg [31:0] ap_c_n_tvin_trans_num_strm_in_end_V;
reg strm_in_end_V_ready_reg;

`AESL_FIFO_strm_in_end_V `AESL_FIFO_INST_strm_in_end_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifostrm_in_end_V_rd),
    .if_dout      (fifostrm_in_end_V_dout),
    .if_empty_n   (fifostrm_in_end_V_empty_n),
    .ready        (fifostrm_in_end_V_ready),
    .done         (fifostrm_in_end_V_done)
);

// Assignment between dut and fifostrm_in_end_V

// Assign input of fifostrm_in_end_V
assign      fifostrm_in_end_V_rd        =   strm_in_end_V_read & strm_in_end_V_empty_n;
assign    fifostrm_in_end_V_ready   =   strm_in_end_V_ready_reg | ready_initial;
assign    fifostrm_in_end_V_done    =   0;
// Assign input of dut
assign      strm_in_end_V_dout       =   fifostrm_in_end_V_dout;
reg   reg_fifostrm_in_end_V_empty_n;
initial begin : gen_reg_fifostrm_in_end_V_empty_n_process
    integer proc_rand;
    reg_fifostrm_in_end_V_empty_n = fifostrm_in_end_V_empty_n;
    while (1) begin
        @ (fifostrm_in_end_V_empty_n);
        reg_fifostrm_in_end_V_empty_n = fifostrm_in_end_V_empty_n;
    end
end

assign      strm_in_end_V_empty_n    =   reg_fifostrm_in_end_V_empty_n;


//------------------------Fifodout_strm_V Instantiation--------------

// The input and output of fifodout_strm_V
wire  fifodout_strm_V_wr;
wire  [31 : 0] fifodout_strm_V_din;
wire  fifodout_strm_V_full_n;
wire  fifodout_strm_V_ready;
wire  fifodout_strm_V_done;

`AESL_FIFO_dout_strm_V `AESL_FIFO_INST_dout_strm_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifodout_strm_V_wr),
    .if_din       (fifodout_strm_V_din),
    .if_full_n    (fifodout_strm_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifodout_strm_V_ready),
    .done         (fifodout_strm_V_done)
);

// Assignment between dut and fifodout_strm_V

// Assign input of fifodout_strm_V
assign      fifodout_strm_V_wr        =   dout_strm_V_write & dout_strm_V_full_n;
assign      fifodout_strm_V_din        =   dout_strm_V_din;
assign    fifodout_strm_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifodout_strm_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifodout_strm_V_full_n;
initial begin : gen_reg_fifodout_strm_V_full_n_process
    integer proc_rand;
    reg_fifodout_strm_V_full_n = fifodout_strm_V_full_n;
    while (1) begin
        @ (fifodout_strm_V_full_n);
        reg_fifodout_strm_V_full_n = fifodout_strm_V_full_n;
    end
end

assign      dout_strm_V_full_n    =   reg_fifodout_strm_V_full_n;


//------------------------Fifokout_strm_V Instantiation--------------

// The input and output of fifokout_strm_V
wire  fifokout_strm_V_wr;
wire  [31 : 0] fifokout_strm_V_din;
wire  fifokout_strm_V_full_n;
wire  fifokout_strm_V_ready;
wire  fifokout_strm_V_done;

`AESL_FIFO_kout_strm_V `AESL_FIFO_INST_kout_strm_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifokout_strm_V_wr),
    .if_din       (fifokout_strm_V_din),
    .if_full_n    (fifokout_strm_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifokout_strm_V_ready),
    .done         (fifokout_strm_V_done)
);

// Assignment between dut and fifokout_strm_V

// Assign input of fifokout_strm_V
assign      fifokout_strm_V_wr        =   kout_strm_V_write & kout_strm_V_full_n;
assign      fifokout_strm_V_din        =   kout_strm_V_din;
assign    fifokout_strm_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifokout_strm_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifokout_strm_V_full_n;
initial begin : gen_reg_fifokout_strm_V_full_n_process
    integer proc_rand;
    reg_fifokout_strm_V_full_n = fifokout_strm_V_full_n;
    while (1) begin
        @ (fifokout_strm_V_full_n);
        reg_fifokout_strm_V_full_n = fifokout_strm_V_full_n;
    end
end

assign      kout_strm_V_full_n    =   reg_fifokout_strm_V_full_n;


//------------------------Fifostrm_out_end_V Instantiation--------------

// The input and output of fifostrm_out_end_V
wire  fifostrm_out_end_V_wr;
wire  [0 : 0] fifostrm_out_end_V_din;
wire  fifostrm_out_end_V_full_n;
wire  fifostrm_out_end_V_ready;
wire  fifostrm_out_end_V_done;

`AESL_FIFO_strm_out_end_V `AESL_FIFO_INST_strm_out_end_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifostrm_out_end_V_wr),
    .if_din       (fifostrm_out_end_V_din),
    .if_full_n    (fifostrm_out_end_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifostrm_out_end_V_ready),
    .done         (fifostrm_out_end_V_done)
);

// Assignment between dut and fifostrm_out_end_V

// Assign input of fifostrm_out_end_V
assign      fifostrm_out_end_V_wr        =   strm_out_end_V_write & strm_out_end_V_full_n;
assign      fifostrm_out_end_V_din        =   strm_out_end_V_din;
assign    fifostrm_out_end_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifostrm_out_end_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifostrm_out_end_V_full_n;
initial begin : gen_reg_fifostrm_out_end_V_full_n_process
    integer proc_rand;
    reg_fifostrm_out_end_V_full_n = fifostrm_out_end_V_full_n;
    while (1) begin
        @ (fifostrm_out_end_V_full_n);
        reg_fifostrm_out_end_V_full_n = fifostrm_out_end_V_full_n;
    end
end

assign      strm_out_end_V_full_n    =   reg_fifostrm_out_end_V_full_n;


// The signal of port sign
reg [0: 0] AESL_REG_sign = 0;
assign sign = AESL_REG_sign;
initial begin : read_file_process_sign
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [191  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_sign,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_sign);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_sign);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat", "r");
    fp2 = $fopen("./impl_rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat\"!");
    else begin
        $display("Comparing rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat with impl_rtl.hls_db_insert_sort_function.autotvout_dout_strm_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat", "r");
    fp2 = $fopen("./impl_rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat\"!");
    else begin
        $display("Comparing rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat with impl_rtl.hls_db_insert_sort_function.autotvout_kout_strm_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat", "r");
    fp2 = $fopen("./impl_rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat\"!");
    else begin
        $display("Comparing rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat with impl_rtl.hls_db_insert_sort_function.autotvout_strm_out_end_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_din_strm_V;
reg [31:0] size_din_strm_V;
reg [31:0] size_din_strm_V_backup;
reg end_kin_strm_V;
reg [31:0] size_kin_strm_V;
reg [31:0] size_kin_strm_V_backup;
reg end_strm_in_end_V;
reg [31:0] size_strm_in_end_V;
reg [31:0] size_strm_in_end_V_backup;
reg end_dout_strm_V;
reg [31:0] size_dout_strm_V;
reg [31:0] size_dout_strm_V_backup;
reg end_kout_strm_V;
reg [31:0] size_kout_strm_V;
reg [31:0] size_kout_strm_V_backup;
reg end_strm_out_end_V;
reg [31:0] size_strm_out_end_V;
reg [31:0] size_strm_out_end_V_backup;
reg end_sign;
reg [31:0] size_sign;
reg [31:0] size_sign_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_din_strm_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    din_strm_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_din_strm_V > internal_trans_num) begin
            din_strm_V_ready_reg <= 1;
            @(posedge AESL_clock);
            din_strm_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    din_strm_V_ready_reg <= 0;
end
initial begin : proc_gen_kin_strm_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    kin_strm_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_kin_strm_V > internal_trans_num) begin
            kin_strm_V_ready_reg <= 1;
            @(posedge AESL_clock);
            kin_strm_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    kin_strm_V_ready_reg <= 0;
end
initial begin : proc_gen_strm_in_end_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    strm_in_end_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_strm_in_end_V > internal_trans_num) begin
            strm_in_end_V_ready_reg <= 1;
            @(posedge AESL_clock);
            strm_in_end_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    strm_in_end_V_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_din_strm_V "./stream_size_in_din_strm_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_din_strm_V
        integer fp_din_strm_V;
        reg [127:0] token_din_strm_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_din_strm_V = 0;
        end_din_strm_V = 0;
        wait (AESL_reset === 0);
        
        fp_din_strm_V = $fopen(`STREAM_SIZE_IN_din_strm_V, "r");
        if(fp_din_strm_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_din_strm_V);
            $finish;
        end
        read_token(fp_din_strm_V, token_din_strm_V); // should be [[[runtime]]]
        if (token_din_strm_V != "[[[runtime]]]") begin
            $display("ERROR: token_din_strm_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_din_strm_V = 0;
        size_din_strm_V_backup = 0;
        while (size_din_strm_V == 0 && end_din_strm_V == 0) begin
            ap_c_n_tvin_trans_num_din_strm_V = ap_c_n_tvin_trans_num_din_strm_V + 1;
            read_token(fp_din_strm_V, token_din_strm_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_din_strm_V == "[[transaction]]") begin
                read_token(fp_din_strm_V, token_din_strm_V); // should be transaction number
                read_token(fp_din_strm_V, token_din_strm_V); // should be size for hls::stream
                ret = $sscanf(token_din_strm_V, "%d", size_din_strm_V);
                if (size_din_strm_V > 0) begin
                    size_din_strm_V_backup = size_din_strm_V;
                end
                read_token(fp_din_strm_V, token_din_strm_V); // should be [[/transaction]]
            end else if (token_din_strm_V == "[[[/runtime]]]") begin
                $fclose(fp_din_strm_V);
                end_din_strm_V = 1;
            end else begin
                $display("ERROR: unknown token_din_strm_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_din_strm_V == 0) begin
                if (din_strm_V_read == 1 && din_strm_V_empty_n == 1) begin
                    if (size_din_strm_V > 0) begin
                        size_din_strm_V = size_din_strm_V - 1;
                        while (size_din_strm_V == 0 && end_din_strm_V == 0) begin
                            ap_c_n_tvin_trans_num_din_strm_V = ap_c_n_tvin_trans_num_din_strm_V + 1;
                            read_token(fp_din_strm_V, token_din_strm_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_din_strm_V == "[[transaction]]") begin
                                read_token(fp_din_strm_V, token_din_strm_V); // should be transaction number
                                read_token(fp_din_strm_V, token_din_strm_V); // should be size for hls::stream
                                ret = $sscanf(token_din_strm_V, "%d", size_din_strm_V);
                                if (size_din_strm_V > 0) begin
                                    size_din_strm_V_backup = size_din_strm_V;
                                end
                                read_token(fp_din_strm_V, token_din_strm_V); // should be [[/transaction]]
                            end else if (token_din_strm_V == "[[[/runtime]]]") begin
                                size_din_strm_V = size_din_strm_V_backup;
                                $fclose(fp_din_strm_V);
                                end_din_strm_V = 1;
                            end else begin
                                $display("ERROR: unknown token_din_strm_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (din_strm_V_read == 1 && din_strm_V_empty_n == 1) begin
                    if (size_din_strm_V > 0) begin
                        size_din_strm_V = size_din_strm_V - 1;
                        if (size_din_strm_V == 0) begin
                            ap_c_n_tvin_trans_num_din_strm_V = ap_c_n_tvin_trans_num_din_strm_V + 1;
                            size_din_strm_V = size_din_strm_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_kin_strm_V "./stream_size_in_kin_strm_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_kin_strm_V
        integer fp_kin_strm_V;
        reg [127:0] token_kin_strm_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_kin_strm_V = 0;
        end_kin_strm_V = 0;
        wait (AESL_reset === 0);
        
        fp_kin_strm_V = $fopen(`STREAM_SIZE_IN_kin_strm_V, "r");
        if(fp_kin_strm_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_kin_strm_V);
            $finish;
        end
        read_token(fp_kin_strm_V, token_kin_strm_V); // should be [[[runtime]]]
        if (token_kin_strm_V != "[[[runtime]]]") begin
            $display("ERROR: token_kin_strm_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_kin_strm_V = 0;
        size_kin_strm_V_backup = 0;
        while (size_kin_strm_V == 0 && end_kin_strm_V == 0) begin
            ap_c_n_tvin_trans_num_kin_strm_V = ap_c_n_tvin_trans_num_kin_strm_V + 1;
            read_token(fp_kin_strm_V, token_kin_strm_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_kin_strm_V == "[[transaction]]") begin
                read_token(fp_kin_strm_V, token_kin_strm_V); // should be transaction number
                read_token(fp_kin_strm_V, token_kin_strm_V); // should be size for hls::stream
                ret = $sscanf(token_kin_strm_V, "%d", size_kin_strm_V);
                if (size_kin_strm_V > 0) begin
                    size_kin_strm_V_backup = size_kin_strm_V;
                end
                read_token(fp_kin_strm_V, token_kin_strm_V); // should be [[/transaction]]
            end else if (token_kin_strm_V == "[[[/runtime]]]") begin
                $fclose(fp_kin_strm_V);
                end_kin_strm_V = 1;
            end else begin
                $display("ERROR: unknown token_kin_strm_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_kin_strm_V == 0) begin
                if (kin_strm_V_read == 1 && kin_strm_V_empty_n == 1) begin
                    if (size_kin_strm_V > 0) begin
                        size_kin_strm_V = size_kin_strm_V - 1;
                        while (size_kin_strm_V == 0 && end_kin_strm_V == 0) begin
                            ap_c_n_tvin_trans_num_kin_strm_V = ap_c_n_tvin_trans_num_kin_strm_V + 1;
                            read_token(fp_kin_strm_V, token_kin_strm_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_kin_strm_V == "[[transaction]]") begin
                                read_token(fp_kin_strm_V, token_kin_strm_V); // should be transaction number
                                read_token(fp_kin_strm_V, token_kin_strm_V); // should be size for hls::stream
                                ret = $sscanf(token_kin_strm_V, "%d", size_kin_strm_V);
                                if (size_kin_strm_V > 0) begin
                                    size_kin_strm_V_backup = size_kin_strm_V;
                                end
                                read_token(fp_kin_strm_V, token_kin_strm_V); // should be [[/transaction]]
                            end else if (token_kin_strm_V == "[[[/runtime]]]") begin
                                size_kin_strm_V = size_kin_strm_V_backup;
                                $fclose(fp_kin_strm_V);
                                end_kin_strm_V = 1;
                            end else begin
                                $display("ERROR: unknown token_kin_strm_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (kin_strm_V_read == 1 && kin_strm_V_empty_n == 1) begin
                    if (size_kin_strm_V > 0) begin
                        size_kin_strm_V = size_kin_strm_V - 1;
                        if (size_kin_strm_V == 0) begin
                            ap_c_n_tvin_trans_num_kin_strm_V = ap_c_n_tvin_trans_num_kin_strm_V + 1;
                            size_kin_strm_V = size_kin_strm_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_strm_in_end_V "./stream_size_in_strm_in_end_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_strm_in_end_V
        integer fp_strm_in_end_V;
        reg [127:0] token_strm_in_end_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_strm_in_end_V = 0;
        end_strm_in_end_V = 0;
        wait (AESL_reset === 0);
        
        fp_strm_in_end_V = $fopen(`STREAM_SIZE_IN_strm_in_end_V, "r");
        if(fp_strm_in_end_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_strm_in_end_V);
            $finish;
        end
        read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be [[[runtime]]]
        if (token_strm_in_end_V != "[[[runtime]]]") begin
            $display("ERROR: token_strm_in_end_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_strm_in_end_V = 0;
        size_strm_in_end_V_backup = 0;
        while (size_strm_in_end_V == 0 && end_strm_in_end_V == 0) begin
            ap_c_n_tvin_trans_num_strm_in_end_V = ap_c_n_tvin_trans_num_strm_in_end_V + 1;
            read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_strm_in_end_V == "[[transaction]]") begin
                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be transaction number
                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be size for hls::stream
                ret = $sscanf(token_strm_in_end_V, "%d", size_strm_in_end_V);
                if (size_strm_in_end_V > 0) begin
                    size_strm_in_end_V_backup = size_strm_in_end_V;
                end
                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be [[/transaction]]
            end else if (token_strm_in_end_V == "[[[/runtime]]]") begin
                $fclose(fp_strm_in_end_V);
                end_strm_in_end_V = 1;
            end else begin
                $display("ERROR: unknown token_strm_in_end_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_strm_in_end_V == 0) begin
                if (strm_in_end_V_read == 1 && strm_in_end_V_empty_n == 1) begin
                    if (size_strm_in_end_V > 0) begin
                        size_strm_in_end_V = size_strm_in_end_V - 1;
                        while (size_strm_in_end_V == 0 && end_strm_in_end_V == 0) begin
                            ap_c_n_tvin_trans_num_strm_in_end_V = ap_c_n_tvin_trans_num_strm_in_end_V + 1;
                            read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_strm_in_end_V == "[[transaction]]") begin
                                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be transaction number
                                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be size for hls::stream
                                ret = $sscanf(token_strm_in_end_V, "%d", size_strm_in_end_V);
                                if (size_strm_in_end_V > 0) begin
                                    size_strm_in_end_V_backup = size_strm_in_end_V;
                                end
                                read_token(fp_strm_in_end_V, token_strm_in_end_V); // should be [[/transaction]]
                            end else if (token_strm_in_end_V == "[[[/runtime]]]") begin
                                size_strm_in_end_V = size_strm_in_end_V_backup;
                                $fclose(fp_strm_in_end_V);
                                end_strm_in_end_V = 1;
                            end else begin
                                $display("ERROR: unknown token_strm_in_end_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (strm_in_end_V_read == 1 && strm_in_end_V_empty_n == 1) begin
                    if (size_strm_in_end_V > 0) begin
                        size_strm_in_end_V = size_strm_in_end_V - 1;
                        if (size_strm_in_end_V == 0) begin
                            ap_c_n_tvin_trans_num_strm_in_end_V = ap_c_n_tvin_trans_num_strm_in_end_V + 1;
                            size_strm_in_end_V = size_strm_in_end_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_dout_strm_V;

initial begin : dump_tvout_runtime_sign_dout_strm_V
    integer fp;
    dump_tvout_finish_dout_strm_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_dout_strm_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dout_strm_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_dout_strm_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dout_strm_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_dout_strm_V = 1;
end


reg dump_tvout_finish_kout_strm_V;

initial begin : dump_tvout_runtime_sign_kout_strm_V
    integer fp;
    dump_tvout_finish_kout_strm_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_kout_strm_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_kout_strm_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_kout_strm_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_kout_strm_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_kout_strm_V = 1;
end


reg dump_tvout_finish_strm_out_end_V;

initial begin : dump_tvout_runtime_sign_strm_out_end_V
    integer fp;
    dump_tvout_finish_strm_out_end_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_strm_out_end_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_strm_out_end_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_strm_out_end_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_strm_out_end_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_strm_out_end_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
