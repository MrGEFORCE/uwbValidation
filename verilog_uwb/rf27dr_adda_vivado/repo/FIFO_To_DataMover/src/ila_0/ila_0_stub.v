// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov  7 14:16:20 2025
// Host        : DESKTOP-EIGR673 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/AAAAAA/FPGA_Code_47DR_Lite/repo/FIFO_To_DataMover/src/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.2" *)
module ila_0(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[255:0]" */;
  input clk;
  input [255:0]probe0;
endmodule
