// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:FIFO_To_DataMover:1.0
// IP Revision: 48

(* X_CORE_INFO = "FIFO_To_DataMover,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "system_FIFO_To_DataMover_1_0,FIFO_To_DataMover,{}" *)
(* CORE_GENERATION_INFO = "system_FIFO_To_DataMover_1_0,FIFO_To_DataMover,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=FIFO_To_DataMover,x_ipVersion=1.0,x_ipCoreRevision=48,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TDATA_WIDTH=256,FIFO_RESET_CNT=20,MAX_SINGLE_BURST=255}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_FIFO_To_DataMover_1_0 (
  i_clk,
  i_rstn,
  AXI_Trans_Start,
  FS_Number,
  AXI_Trans_Addr,
  fifo_empty,
  fifo_dout,
  fifo_rd_en,
  fifo_rd_clk,
  fifo_rst,
  m_axis_s2mm_tdata,
  m_axis_s2mm_tkeep,
  m_axis_s2mm_tlast,
  m_axis_s2mm_tready,
  m_axis_s2mm_tvalid,
  m_axis_s2mm_cmd_tdata,
  m_axis_s2mm_cmd_tready,
  m_axis_s2mm_cmd_tvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF M_AXIS_S2MM:M_AXIS_S2MM_CMD, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *)
input wire i_rstn;
input wire AXI_Trans_Start;
input wire [15 : 0] FS_Number;
input wire [31 : 0] AXI_Trans_Addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *)
input wire fifo_empty;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *)
input wire [255 : 0] fifo_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *)
output wire fifo_rd_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rd_clk, ASSOCIATED_BUSIF FIFO_READ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_FIFO_To_DataMover_1_0_fifo_rd_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_rd_clk CLK" *)
output wire fifo_rd_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *)
output wire fifo_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TDATA" *)
output wire [255 : 0] m_axis_s2mm_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TKEEP" *)
output wire [31 : 0] m_axis_s2mm_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TLAST" *)
output wire m_axis_s2mm_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TREADY" *)
input wire m_axis_s2mm_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_S2MM, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TVALID" *)
output wire m_axis_s2mm_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TDATA" *)
output wire [71 : 0] m_axis_s2mm_cmd_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TREADY" *)
input wire m_axis_s2mm_cmd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TVALID" *)
output wire m_axis_s2mm_cmd_tvalid;

  FIFO_To_DataMover #(
    .TDATA_WIDTH(256),
    .FIFO_RESET_CNT(20),
    .MAX_SINGLE_BURST(255)
  ) inst (
    .i_clk(i_clk),
    .i_rstn(i_rstn),
    .AXI_Trans_Start(AXI_Trans_Start),
    .FS_Number(FS_Number),
    .AXI_Trans_Addr(AXI_Trans_Addr),
    .fifo_empty(fifo_empty),
    .fifo_dout(fifo_dout),
    .fifo_rd_en(fifo_rd_en),
    .fifo_rd_clk(fifo_rd_clk),
    .fifo_rst(fifo_rst),
    .m_axis_s2mm_tdata(m_axis_s2mm_tdata),
    .m_axis_s2mm_tkeep(m_axis_s2mm_tkeep),
    .m_axis_s2mm_tlast(m_axis_s2mm_tlast),
    .m_axis_s2mm_tready(m_axis_s2mm_tready),
    .m_axis_s2mm_tvalid(m_axis_s2mm_tvalid),
    .m_axis_s2mm_cmd_tdata(m_axis_s2mm_cmd_tdata),
    .m_axis_s2mm_cmd_tready(m_axis_s2mm_cmd_tready),
    .m_axis_s2mm_cmd_tvalid(m_axis_s2mm_cmd_tvalid)
  );
endmodule
