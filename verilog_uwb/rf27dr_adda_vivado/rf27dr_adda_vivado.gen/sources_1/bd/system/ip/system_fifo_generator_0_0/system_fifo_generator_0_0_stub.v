// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 12 13:25:13 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_fifo_generator_0_0 -prefix
//               system_fifo_generator_0_0_ system_fifo_generator_0_0_stub.v
// Design      : system_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *)
module system_fifo_generator_0_0(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[255:0],wr_en,rd_en,dout[255:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [255:0]din;
  input wr_en;
  input rd_en;
  output [255:0]dout;
  output full;
  output empty;
endmodule
