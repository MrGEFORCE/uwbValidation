// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 15 16:19:46 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_ADC_To_FIFO_0_0/system_ADC_To_FIFO_0_0_stub.v
// Design      : system_ADC_To_FIFO_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_To_FIFO,Vivado 2022.2" *)
module system_ADC_To_FIFO_0_0(data_clk, i_rstn, fifo_full, fifo_din, 
  fifo_wr_en, fifo_wr_clk, FS_start, AXI_trans_start, FS_Number, FS_Div, 
  mixed_datax_q_channel1, mixed_datax_i_channel1, mixed_datax_q_channel2, 
  mixed_datax_i_channel2, mixed_datax_q_channel3, mixed_datax_i_channel3, 
  mixed_datax_q_channel4, mixed_datax_i_channel4)
/* synthesis syn_black_box black_box_pad_pin="data_clk,i_rstn,fifo_full,fifo_din[255:0],fifo_wr_en,fifo_wr_clk,FS_start,AXI_trans_start,FS_Number[15:0],FS_Div[7:0],mixed_datax_q_channel1[31:0],mixed_datax_i_channel1[31:0],mixed_datax_q_channel2[31:0],mixed_datax_i_channel2[31:0],mixed_datax_q_channel3[31:0],mixed_datax_i_channel3[31:0],mixed_datax_q_channel4[31:0],mixed_datax_i_channel4[31:0]" */;
  input data_clk;
  input i_rstn;
  input fifo_full;
  output [255:0]fifo_din;
  output fifo_wr_en;
  output fifo_wr_clk;
  input FS_start;
  output AXI_trans_start;
  input [15:0]FS_Number;
  input [7:0]FS_Div;
  input [31:0]mixed_datax_q_channel1;
  input [31:0]mixed_datax_i_channel1;
  input [31:0]mixed_datax_q_channel2;
  input [31:0]mixed_datax_i_channel2;
  input [31:0]mixed_datax_q_channel3;
  input [31:0]mixed_datax_i_channel3;
  input [31:0]mixed_datax_q_channel4;
  input [31:0]mixed_datax_i_channel4;
endmodule
