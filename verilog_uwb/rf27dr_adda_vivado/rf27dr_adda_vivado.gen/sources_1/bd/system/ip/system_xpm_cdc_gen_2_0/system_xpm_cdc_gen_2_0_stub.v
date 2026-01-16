// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan  5 15:22:09 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_xpm_cdc_gen_2_0 -prefix
//               system_xpm_cdc_gen_2_0_ system_xpm_cdc_gen_2_0_stub.v
// Design      : system_xpm_cdc_gen_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xpm_cdc_gen_v1_0_2,Vivado 2022.2" *)
module system_xpm_cdc_gen_2_0(src_clk, dest_clk, src_in, dest_out)
/* synthesis syn_black_box black_box_pad_pin="src_clk,dest_clk,src_in[1:0],dest_out[1:0]" */;
  input src_clk;
  input dest_clk;
  input [1:0]src_in;
  output [1:0]dest_out;
endmodule
