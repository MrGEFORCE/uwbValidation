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


// IP VLNV: xilinx.com:user:ADC_To_FIFO:1.0
// IP Revision: 35

(* X_CORE_INFO = "ADC_To_FIFO,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "system_ADC_To_FIFO_0_0,ADC_To_FIFO,{}" *)
(* CORE_GENERATION_INFO = "system_ADC_To_FIFO_0_0,ADC_To_FIFO,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ADC_To_FIFO,x_ipVersion=1.0,x_ipCoreRevision=35,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_ADC_To_FIFO_0_0 (
  data_clk,
  i_rstn,
  fifo_full,
  fifo_din,
  fifo_wr_en,
  fifo_wr_clk,
  FS_start,
  AXI_trans_start,
  FS_Number,
  FS_Div,
  mixed_datax_q_channel1,
  mixed_datax_i_channel1,
  mixed_datax_q_channel2,
  mixed_datax_i_channel2,
  mixed_datax_q_channel3,
  mixed_datax_i_channel3,
  mixed_datax_q_channel4,
  mixed_datax_i_channel4
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_clk, FREQ_HZ 153600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 data_clk CLK" *)
input wire data_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *)
input wire i_rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *)
input wire fifo_full;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *)
output wire [255 : 0] fifo_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *)
output wire fifo_wr_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_wr_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_ADC_To_FIFO_0_0_fifo_wr_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_wr_clk CLK" *)
output wire fifo_wr_clk;
input wire FS_start;
output wire AXI_trans_start;
input wire [15 : 0] FS_Number;
input wire [7 : 0] FS_Div;
input wire [31 : 0] mixed_datax_q_channel1;
input wire [31 : 0] mixed_datax_i_channel1;
input wire [31 : 0] mixed_datax_q_channel2;
input wire [31 : 0] mixed_datax_i_channel2;
input wire [31 : 0] mixed_datax_q_channel3;
input wire [31 : 0] mixed_datax_i_channel3;
input wire [31 : 0] mixed_datax_q_channel4;
input wire [31 : 0] mixed_datax_i_channel4;

  ADC_To_FIFO inst (
    .data_clk(data_clk),
    .i_rstn(i_rstn),
    .fifo_full(fifo_full),
    .fifo_din(fifo_din),
    .fifo_wr_en(fifo_wr_en),
    .fifo_wr_clk(fifo_wr_clk),
    .FS_start(FS_start),
    .AXI_trans_start(AXI_trans_start),
    .FS_Number(FS_Number),
    .FS_Div(FS_Div),
    .mixed_datax_q_channel1(mixed_datax_q_channel1),
    .mixed_datax_i_channel1(mixed_datax_i_channel1),
    .mixed_datax_q_channel2(mixed_datax_q_channel2),
    .mixed_datax_i_channel2(mixed_datax_i_channel2),
    .mixed_datax_q_channel3(mixed_datax_q_channel3),
    .mixed_datax_i_channel3(mixed_datax_i_channel3),
    .mixed_datax_q_channel4(mixed_datax_q_channel4),
    .mixed_datax_i_channel4(mixed_datax_i_channel4)
  );
endmodule
