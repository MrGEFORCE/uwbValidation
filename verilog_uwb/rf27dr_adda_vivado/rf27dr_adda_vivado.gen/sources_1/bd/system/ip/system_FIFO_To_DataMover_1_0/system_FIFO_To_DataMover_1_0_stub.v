// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 15 11:19:50 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_FIFO_To_DataMover_1_0/system_FIFO_To_DataMover_1_0_stub.v
// Design      : system_FIFO_To_DataMover_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FIFO_To_DataMover,Vivado 2022.2" *)
module system_FIFO_To_DataMover_1_0(i_clk, i_rstn, AXI_Trans_Start, FS_Number, 
  AXI_Trans_Addr, fifo_empty, fifo_dout, fifo_rd_en, fifo_rd_clk, fifo_rst, m_axis_s2mm_tdata, 
  m_axis_s2mm_tkeep, m_axis_s2mm_tlast, m_axis_s2mm_tready, m_axis_s2mm_tvalid, 
  m_axis_s2mm_cmd_tdata, m_axis_s2mm_cmd_tready, m_axis_s2mm_cmd_tvalid)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rstn,AXI_Trans_Start,FS_Number[15:0],AXI_Trans_Addr[31:0],fifo_empty,fifo_dout[255:0],fifo_rd_en,fifo_rd_clk,fifo_rst,m_axis_s2mm_tdata[255:0],m_axis_s2mm_tkeep[31:0],m_axis_s2mm_tlast,m_axis_s2mm_tready,m_axis_s2mm_tvalid,m_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_cmd_tready,m_axis_s2mm_cmd_tvalid" */;
  input i_clk;
  input i_rstn;
  input AXI_Trans_Start;
  input [15:0]FS_Number;
  input [31:0]AXI_Trans_Addr;
  input fifo_empty;
  input [255:0]fifo_dout;
  output fifo_rd_en;
  output fifo_rd_clk;
  output fifo_rst;
  output [255:0]m_axis_s2mm_tdata;
  output [31:0]m_axis_s2mm_tkeep;
  output m_axis_s2mm_tlast;
  input m_axis_s2mm_tready;
  output m_axis_s2mm_tvalid;
  output [71:0]m_axis_s2mm_cmd_tdata;
  input m_axis_s2mm_cmd_tready;
  output m_axis_s2mm_cmd_tvalid;
endmodule
