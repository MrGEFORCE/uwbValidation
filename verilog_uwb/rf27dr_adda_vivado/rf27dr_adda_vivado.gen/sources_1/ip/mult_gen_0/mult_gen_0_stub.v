// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jan 14 14:59:12 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/ip/mult_gen_0/mult_gen_0_stub.v
// Design      : mult_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *)
module mult_gen_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[15:0],B[15:0],P[35:0]" */;
  input CLK;
  input [15:0]A;
  input [15:0]B;
  output [35:0]P;
endmodule
