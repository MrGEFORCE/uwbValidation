// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 15 11:19:50 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_FIFO_To_DataMover_1_0/system_FIFO_To_DataMover_1_0_sim_netlist.v
// Design      : system_FIFO_To_DataMover_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_FIFO_To_DataMover_1_0,FIFO_To_DataMover,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "FIFO_To_DataMover,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module system_FIFO_To_DataMover_1_0
   (i_clk,
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
    m_axis_s2mm_cmd_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF M_AXIS_S2MM:M_AXIS_S2MM_CMD, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rstn;
  input AXI_Trans_Start;
  input [15:0]FS_Number;
  input [31:0]AXI_Trans_Addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) input fifo_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) input [255:0]fifo_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) output fifo_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_rd_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rd_clk, ASSOCIATED_BUSIF FIFO_READ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_FIFO_To_DataMover_1_0_fifo_rd_clk, INSERT_VIP 0" *) output fifo_rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TDATA" *) output [255:0]m_axis_s2mm_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TKEEP" *) output [31:0]m_axis_s2mm_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TLAST" *) output m_axis_s2mm_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TREADY" *) input m_axis_s2mm_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_S2MM, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_s2mm_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TDATA" *) output [71:0]m_axis_s2mm_cmd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TREADY" *) input m_axis_s2mm_cmd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_s2mm_cmd_tvalid;

  wire \<const0> ;
  wire [31:0]AXI_Trans_Addr;
  wire AXI_Trans_Start;
  wire [15:0]FS_Number;
  wire [255:0]fifo_dout;
  wire fifo_rd_en;
  wire fifo_rst;
  wire i_clk;
  wire i_rstn;
  wire [63:5]\^m_axis_s2mm_cmd_tdata ;
  wire m_axis_s2mm_cmd_tready;
  wire m_axis_s2mm_cmd_tvalid;
  wire [30:30]\^m_axis_s2mm_tkeep ;
  wire m_axis_s2mm_tlast;
  wire m_axis_s2mm_tready;
  wire m_axis_s2mm_tvalid;
  wire n_0_142;

  assign fifo_rd_clk = i_clk;
  assign m_axis_s2mm_cmd_tdata[71] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[70] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[69] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[68] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[67] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[66] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[65] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[64] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[63:32] = \^m_axis_s2mm_cmd_tdata [63:32];
  assign m_axis_s2mm_cmd_tdata[31] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[30] = \^m_axis_s2mm_cmd_tdata [23];
  assign m_axis_s2mm_cmd_tdata[29] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[28] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[27] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[26] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[25] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[24] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[23] = \^m_axis_s2mm_cmd_tdata [23];
  assign m_axis_s2mm_cmd_tdata[22] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[21] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[20] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[19] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[18] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[17] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[16] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[15] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[14] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[13] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[12:5] = \^m_axis_s2mm_cmd_tdata [12:5];
  assign m_axis_s2mm_cmd_tdata[4] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[3] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[2] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[1] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[0] = \<const0> ;
  assign m_axis_s2mm_tdata[255:0] = fifo_dout;
  assign m_axis_s2mm_tkeep[31] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[30] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[29] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[28] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[27] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[26] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[25] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[24] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[23] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[22] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[21] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[20] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[19] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[18] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[17] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[16] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[15] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[14] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[13] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[12] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[11] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[10] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[9] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[8] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[7] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[6] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[5] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[4] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[3] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[2] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[1] = \^m_axis_s2mm_tkeep [30];
  assign m_axis_s2mm_tkeep[0] = \^m_axis_s2mm_tkeep [30];
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_142
       (.I0(i_rstn),
        .O(n_0_142));
  system_FIFO_To_DataMover_1_0_FIFO_To_DataMover inst
       (.AXI_Trans_Addr(AXI_Trans_Addr),
        .AXI_Trans_Start(AXI_Trans_Start),
        .FS_Number(FS_Number),
        .fifo_rd_en(fifo_rd_en),
        .fifo_rst(fifo_rst),
        .i_clk(i_clk),
        .i_rstn(i_rstn),
        .m_axis_s2mm_cmd_tdata({\^m_axis_s2mm_cmd_tdata [63:32],\^m_axis_s2mm_cmd_tdata [23],\^m_axis_s2mm_cmd_tdata [12:5]}),
        .m_axis_s2mm_cmd_tready(m_axis_s2mm_cmd_tready),
        .m_axis_s2mm_tkeep(\^m_axis_s2mm_tkeep ),
        .m_axis_s2mm_tlast(m_axis_s2mm_tlast),
        .m_axis_s2mm_tready(m_axis_s2mm_tready),
        .r_m_axis_s2mm_cmd_tvalid_reg_0(m_axis_s2mm_cmd_tvalid),
        .r_m_axis_s2mm_tvalid_reg_0(m_axis_s2mm_tvalid));
endmodule

(* ORIG_REF_NAME = "FIFO_To_DataMover" *) 
module system_FIFO_To_DataMover_1_0_FIFO_To_DataMover
   (r_m_axis_s2mm_cmd_tvalid_reg_0,
    m_axis_s2mm_tkeep,
    m_axis_s2mm_cmd_tdata,
    r_m_axis_s2mm_tvalid_reg_0,
    fifo_rd_en,
    m_axis_s2mm_tlast,
    fifo_rst,
    i_rstn,
    m_axis_s2mm_cmd_tready,
    FS_Number,
    i_clk,
    AXI_Trans_Start,
    AXI_Trans_Addr,
    m_axis_s2mm_tready);
  output r_m_axis_s2mm_cmd_tvalid_reg_0;
  output [0:0]m_axis_s2mm_tkeep;
  output [40:0]m_axis_s2mm_cmd_tdata;
  output r_m_axis_s2mm_tvalid_reg_0;
  output fifo_rd_en;
  output m_axis_s2mm_tlast;
  output fifo_rst;
  input i_rstn;
  input m_axis_s2mm_cmd_tready;
  input [15:0]FS_Number;
  input i_clk;
  input AXI_Trans_Start;
  input [31:0]AXI_Trans_Addr;
  input m_axis_s2mm_tready;

  wire [31:0]AXI_Trans_Addr;
  wire AXI_Trans_Start;
  wire [7:0]B;
  wire CEP;
  wire [15:0]FS_Number;
  wire RSTP;
  wire fifo_rd_en;
  wire fifo_rst;
  wire i_clk;
  wire i_rstn;
  wire [40:0]m_axis_s2mm_cmd_tdata;
  wire m_axis_s2mm_cmd_tready;
  wire [0:0]m_axis_s2mm_tkeep;
  wire m_axis_s2mm_tlast;
  wire m_axis_s2mm_tready;
  wire [15:0]p_0_in;
  wire [15:0]p_0_in__0;
  wire [1:1]p_1_in;
  wire [12:5]r_AXI_Cur_Burst_Byte;
  wire \r_AXI_Cur_Burst_Number[0]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[1]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[2]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[3]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[4]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[5]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[6]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_1_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_2_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_3_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_4_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_5_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_6_n_0 ;
  wire \r_AXI_Cur_Burst_Number[7]_i_7_n_0 ;
  wire r_AXI_Cur_Trans_Addr;
  wire \r_AXI_Cur_Trans_Addr[0]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_10_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_2_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_3_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_4_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_5_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_6_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_7_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_8_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[12]_i_9_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[1]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_2_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_3_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_4_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_5_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_6_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_7_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_8_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[20]_i_9_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[28]_i_2_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[28]_i_3_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[28]_i_4_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[28]_i_5_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[2]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[3]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_10_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_11_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_12_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_13_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_14_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_15_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_16_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_2_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_3_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_4_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_5_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_6_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_7_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_8_n_0 ;
  wire \r_AXI_Cur_Trans_Addr[4]_i_9_n_0 ;
  wire [31:0]r_AXI_Cur_Trans_Addr_reg;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_1 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_2 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_3 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_4 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_5 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_6 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_7 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8 ;
  wire \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_1 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_2 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_3 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_4 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_5 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_6 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_7 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8 ;
  wire \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_5 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_6 ;
  wire \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_7 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_1 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_2 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_3 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_4 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_5 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_6 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_7 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8 ;
  wire \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9 ;
  wire r_AXI_Cur_Trans_Cnt0;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_2;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_3;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_4;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_5;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_6;
  wire r_AXI_Cur_Trans_Cnt0_carry__0_n_7;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_0;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_1;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_2;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_3;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_4;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_5;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_6;
  wire r_AXI_Cur_Trans_Cnt0_carry_n_7;
  wire [15:0]r_AXI_Cur_Trans_Cnt_reg;
  wire r_AXI_Remain_Number_carry__0_i_10_n_0;
  wire r_AXI_Remain_Number_carry__0_i_11_n_0;
  wire r_AXI_Remain_Number_carry__0_i_12_n_0;
  wire r_AXI_Remain_Number_carry__0_i_13_n_0;
  wire r_AXI_Remain_Number_carry__0_i_14_n_0;
  wire r_AXI_Remain_Number_carry__0_i_15_n_0;
  wire r_AXI_Remain_Number_carry__0_i_1_n_0;
  wire r_AXI_Remain_Number_carry__0_i_2_n_0;
  wire r_AXI_Remain_Number_carry__0_i_3_n_0;
  wire r_AXI_Remain_Number_carry__0_i_4_n_0;
  wire r_AXI_Remain_Number_carry__0_i_5_n_0;
  wire r_AXI_Remain_Number_carry__0_i_6_n_0;
  wire r_AXI_Remain_Number_carry__0_i_7_n_0;
  wire r_AXI_Remain_Number_carry__0_i_8_n_0;
  wire r_AXI_Remain_Number_carry__0_i_9_n_0;
  wire r_AXI_Remain_Number_carry__0_n_1;
  wire r_AXI_Remain_Number_carry__0_n_10;
  wire r_AXI_Remain_Number_carry__0_n_11;
  wire r_AXI_Remain_Number_carry__0_n_12;
  wire r_AXI_Remain_Number_carry__0_n_13;
  wire r_AXI_Remain_Number_carry__0_n_14;
  wire r_AXI_Remain_Number_carry__0_n_15;
  wire r_AXI_Remain_Number_carry__0_n_2;
  wire r_AXI_Remain_Number_carry__0_n_3;
  wire r_AXI_Remain_Number_carry__0_n_4;
  wire r_AXI_Remain_Number_carry__0_n_5;
  wire r_AXI_Remain_Number_carry__0_n_6;
  wire r_AXI_Remain_Number_carry__0_n_7;
  wire r_AXI_Remain_Number_carry__0_n_8;
  wire r_AXI_Remain_Number_carry__0_n_9;
  wire r_AXI_Remain_Number_carry_i_10_n_0;
  wire r_AXI_Remain_Number_carry_i_11_n_0;
  wire r_AXI_Remain_Number_carry_i_12_n_0;
  wire r_AXI_Remain_Number_carry_i_13_n_0;
  wire r_AXI_Remain_Number_carry_i_14_n_0;
  wire r_AXI_Remain_Number_carry_i_15_n_0;
  wire r_AXI_Remain_Number_carry_i_16_n_0;
  wire r_AXI_Remain_Number_carry_i_17_n_0;
  wire r_AXI_Remain_Number_carry_i_18_n_0;
  wire r_AXI_Remain_Number_carry_i_19_n_0;
  wire r_AXI_Remain_Number_carry_i_1_n_0;
  wire r_AXI_Remain_Number_carry_i_20_n_0;
  wire r_AXI_Remain_Number_carry_i_2_n_0;
  wire r_AXI_Remain_Number_carry_i_3_n_0;
  wire r_AXI_Remain_Number_carry_i_4_n_0;
  wire r_AXI_Remain_Number_carry_i_5_n_0;
  wire r_AXI_Remain_Number_carry_i_6_n_0;
  wire r_AXI_Remain_Number_carry_i_7_n_0;
  wire r_AXI_Remain_Number_carry_i_8_n_0;
  wire r_AXI_Remain_Number_carry_i_9_n_0;
  wire r_AXI_Remain_Number_carry_n_0;
  wire r_AXI_Remain_Number_carry_n_1;
  wire r_AXI_Remain_Number_carry_n_10;
  wire r_AXI_Remain_Number_carry_n_11;
  wire r_AXI_Remain_Number_carry_n_12;
  wire r_AXI_Remain_Number_carry_n_13;
  wire r_AXI_Remain_Number_carry_n_14;
  wire r_AXI_Remain_Number_carry_n_15;
  wire r_AXI_Remain_Number_carry_n_2;
  wire r_AXI_Remain_Number_carry_n_3;
  wire r_AXI_Remain_Number_carry_n_4;
  wire r_AXI_Remain_Number_carry_n_5;
  wire r_AXI_Remain_Number_carry_n_6;
  wire r_AXI_Remain_Number_carry_n_7;
  wire r_AXI_Remain_Number_carry_n_8;
  wire r_AXI_Remain_Number_carry_n_9;
  wire [15:0]r_AXI_Remain_Number_reg;
  wire \r_AXI_Trans_Start_d_reg_n_0_[1] ;
  wire r_AXI_Trans_Start_pos;
  wire r_AXI_Trans_Start_pos0;
  wire r_fifo_rst_i_1_n_0;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0 ;
  wire \r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0 ;
  wire r_m_axis_s2mm_cmd_tvalid_i_1_n_0;
  wire r_m_axis_s2mm_cmd_tvalid_i_2_n_0;
  wire r_m_axis_s2mm_cmd_tvalid_i_3_n_0;
  wire r_m_axis_s2mm_cmd_tvalid_reg_0;
  wire r_m_axis_s2mm_tlast4;
  wire r_m_axis_s2mm_tlast4_carry__0_i_1_n_0;
  wire r_m_axis_s2mm_tlast4_carry__0_i_2_n_0;
  wire r_m_axis_s2mm_tlast4_carry__0_i_3_n_0;
  wire r_m_axis_s2mm_tlast4_carry__0_n_6;
  wire r_m_axis_s2mm_tlast4_carry__0_n_7;
  wire r_m_axis_s2mm_tlast4_carry_i_10_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_1_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_2_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_3_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_4_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_5_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_6_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_7_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_8_n_0;
  wire r_m_axis_s2mm_tlast4_carry_i_9_n_0;
  wire r_m_axis_s2mm_tlast4_carry_n_0;
  wire r_m_axis_s2mm_tlast4_carry_n_1;
  wire r_m_axis_s2mm_tlast4_carry_n_2;
  wire r_m_axis_s2mm_tlast4_carry_n_3;
  wire r_m_axis_s2mm_tlast4_carry_n_4;
  wire r_m_axis_s2mm_tlast4_carry_n_5;
  wire r_m_axis_s2mm_tlast4_carry_n_6;
  wire r_m_axis_s2mm_tlast4_carry_n_7;
  wire r_m_axis_s2mm_tlast_i_2_n_0;
  wire r_m_axis_s2mm_tlast_i_3_n_0;
  wire r_m_axis_s2mm_tlast_i_4_n_0;
  wire r_m_axis_s2mm_tlast_i_5_n_0;
  wire r_m_axis_s2mm_tlast_i_6_n_0;
  wire r_m_axis_s2mm_tlast_i_7_n_0;
  wire r_m_axis_s2mm_tlast_i_8_n_0;
  wire r_m_axis_s2mm_tvalid2;
  wire r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0;
  wire r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0;
  wire r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0;
  wire r_m_axis_s2mm_tvalid2_carry__0_n_6;
  wire r_m_axis_s2mm_tvalid2_carry__0_n_7;
  wire r_m_axis_s2mm_tvalid2_carry_i_1_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_2_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_3_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_4_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_5_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_6_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_7_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_8_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_i_9_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_n_0;
  wire r_m_axis_s2mm_tvalid2_carry_n_1;
  wire r_m_axis_s2mm_tvalid2_carry_n_2;
  wire r_m_axis_s2mm_tvalid2_carry_n_3;
  wire r_m_axis_s2mm_tvalid2_carry_n_4;
  wire r_m_axis_s2mm_tvalid2_carry_n_5;
  wire r_m_axis_s2mm_tvalid2_carry_n_6;
  wire r_m_axis_s2mm_tvalid2_carry_n_7;
  wire r_m_axis_s2mm_tvalid_i_1_n_0;
  wire r_m_axis_s2mm_tvalid_i_2_n_0;
  wire r_m_axis_s2mm_tvalid_i_3_n_0;
  wire r_m_axis_s2mm_tvalid_i_4_n_0;
  wire r_m_axis_s2mm_tvalid_i_5_n_0;
  wire r_m_axis_s2mm_tvalid_i_6_n_0;
  wire r_m_axis_s2mm_tvalid_i_7_n_0;
  wire r_m_axis_s2mm_tvalid_i_8_n_0;
  wire r_m_axis_s2mm_tvalid_reg_0;
  wire r_s_cnt0;
  wire r_s_cnt0_carry__0_n_2;
  wire r_s_cnt0_carry__0_n_3;
  wire r_s_cnt0_carry__0_n_4;
  wire r_s_cnt0_carry__0_n_5;
  wire r_s_cnt0_carry__0_n_6;
  wire r_s_cnt0_carry__0_n_7;
  wire r_s_cnt0_carry_n_0;
  wire r_s_cnt0_carry_n_1;
  wire r_s_cnt0_carry_n_2;
  wire r_s_cnt0_carry_n_3;
  wire r_s_cnt0_carry_n_4;
  wire r_s_cnt0_carry_n_5;
  wire r_s_cnt0_carry_n_6;
  wire r_s_cnt0_carry_n_7;
  wire [15:2]r_s_cnt_reg;
  wire \r_s_cnt_reg_n_0_[0] ;
  wire \r_s_cnt_reg_n_0_[1] ;
  wire [2:0]r_st_current;
  wire \r_st_current[0]_i_1_n_0 ;
  wire \r_st_current[1]_i_1_n_0 ;
  wire \r_st_current[2]_i_1_n_0 ;
  wire \r_st_current[2]_i_2_n_0 ;
  wire \r_st_current[2]_i_3_n_0 ;
  wire \r_st_current[2]_i_4_n_0 ;
  wire \r_st_current[2]_i_5_n_0 ;
  wire \r_st_current[2]_i_6_n_0 ;
  wire [2:0]r_st_prev;
  wire [7:3]\NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_O_UNCONNECTED ;
  wire [7:6]NLW_r_AXI_Cur_Trans_Cnt0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_r_AXI_Cur_Trans_Cnt0_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_r_AXI_Remain_Number_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_r_m_axis_s2mm_tlast4_carry_O_UNCONNECTED;
  wire [7:3]NLW_r_m_axis_s2mm_tlast4_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_r_m_axis_s2mm_tlast4_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_r_m_axis_s2mm_tvalid2_carry_O_UNCONNECTED;
  wire [7:3]NLW_r_m_axis_s2mm_tvalid2_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_r_m_axis_s2mm_tvalid2_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_r_s_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_r_s_cnt0_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    fifo_rd_en_INST_0
       (.I0(r_m_axis_s2mm_tvalid_reg_0),
        .I1(m_axis_s2mm_tready),
        .O(fifo_rd_en));
  LUT3 #(
    .INIT(8'h04)) 
    \r_AXI_Cur_Burst_Byte[12]_i_1 
       (.I0(r_st_current[1]),
        .I1(r_st_current[0]),
        .I2(r_st_current[2]),
        .O(CEP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[10] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[5]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[10]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[11] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[6]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[11]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[12] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[7]_i_2_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[12]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[5] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[0]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[5]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[6] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[1]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[6]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[7] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[2]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[7]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[8] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[3]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[8]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Byte_reg[9] 
       (.C(i_clk),
        .CE(CEP),
        .D(\r_AXI_Cur_Burst_Number[4]_i_1_n_0 ),
        .Q(r_AXI_Cur_Burst_Byte[9]),
        .R(RSTP));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[0]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[0]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[0]),
        .O(\r_AXI_Cur_Burst_Number[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[1]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[1]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[1]),
        .O(\r_AXI_Cur_Burst_Number[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[2]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[2]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[2]),
        .O(\r_AXI_Cur_Burst_Number[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[3]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[3]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[3]),
        .O(\r_AXI_Cur_Burst_Number[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[4]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[4]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[4]),
        .O(\r_AXI_Cur_Burst_Number[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[5]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[5]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[5]),
        .O(\r_AXI_Cur_Burst_Number[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[6]_i_1 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[6]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[6]),
        .O(\r_AXI_Cur_Burst_Number[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \r_AXI_Cur_Burst_Number[7]_i_1 
       (.I0(r_st_current[2]),
        .I1(r_st_current[0]),
        .I2(r_st_current[1]),
        .I3(i_rstn),
        .O(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    \r_AXI_Cur_Burst_Number[7]_i_2 
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ),
        .I1(r_AXI_Remain_Number_reg[7]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ),
        .I4(FS_Number[7]),
        .O(\r_AXI_Cur_Burst_Number[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_AXI_Cur_Burst_Number[7]_i_3 
       (.I0(r_AXI_Remain_Number_reg[12]),
        .I1(r_AXI_Remain_Number_reg[13]),
        .I2(r_AXI_Remain_Number_reg[14]),
        .I3(r_AXI_Remain_Number_reg[15]),
        .I4(\r_AXI_Cur_Burst_Number[7]_i_6_n_0 ),
        .O(\r_AXI_Cur_Burst_Number[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \r_AXI_Cur_Burst_Number[7]_i_4 
       (.I0(r_st_current[2]),
        .I1(r_st_current[0]),
        .I2(r_st_current[1]),
        .I3(r_st_prev[0]),
        .I4(r_st_prev[1]),
        .I5(r_st_prev[2]),
        .O(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_AXI_Cur_Burst_Number[7]_i_5 
       (.I0(FS_Number[12]),
        .I1(FS_Number[13]),
        .I2(FS_Number[14]),
        .I3(FS_Number[15]),
        .I4(\r_AXI_Cur_Burst_Number[7]_i_7_n_0 ),
        .O(\r_AXI_Cur_Burst_Number[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_AXI_Cur_Burst_Number[7]_i_6 
       (.I0(r_AXI_Remain_Number_reg[11]),
        .I1(r_AXI_Remain_Number_reg[10]),
        .I2(r_AXI_Remain_Number_reg[9]),
        .I3(r_AXI_Remain_Number_reg[8]),
        .O(\r_AXI_Cur_Burst_Number[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_AXI_Cur_Burst_Number[7]_i_7 
       (.I0(FS_Number[11]),
        .I1(FS_Number[10]),
        .I2(FS_Number[9]),
        .I3(FS_Number[8]),
        .O(\r_AXI_Cur_Burst_Number[7]_i_7_n_0 ));
  FDRE \r_AXI_Cur_Burst_Number_reg[0] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[0]_i_1_n_0 ),
        .Q(B[0]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[1] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[1]_i_1_n_0 ),
        .Q(B[1]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[2] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[2]_i_1_n_0 ),
        .Q(B[2]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[3] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[3]_i_1_n_0 ),
        .Q(B[3]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[4] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[4]_i_1_n_0 ),
        .Q(B[4]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[5] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[5]_i_1_n_0 ),
        .Q(B[5]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[6] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[6]_i_1_n_0 ),
        .Q(B[6]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Burst_Number_reg[7] 
       (.C(i_clk),
        .CE(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ),
        .D(\r_AXI_Cur_Burst_Number[7]_i_2_n_0 ),
        .Q(B[7]),
        .R(RSTP));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[0]_i_1 
       (.I0(AXI_Trans_Addr[0]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[0]),
        .O(\r_AXI_Cur_Trans_Addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[12]_i_10 
       (.I0(B[7]),
        .I1(r_AXI_Cur_Trans_Addr_reg[12]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[12]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[12]_i_2 
       (.I0(B[7]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_3 
       (.I0(AXI_Trans_Addr[19]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[19]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_4 
       (.I0(AXI_Trans_Addr[18]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[18]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_5 
       (.I0(AXI_Trans_Addr[17]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[17]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_6 
       (.I0(AXI_Trans_Addr[16]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[16]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_7 
       (.I0(AXI_Trans_Addr[15]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[15]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_8 
       (.I0(AXI_Trans_Addr[14]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[14]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[12]_i_9 
       (.I0(AXI_Trans_Addr[13]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[13]),
        .O(\r_AXI_Cur_Trans_Addr[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[1]_i_1 
       (.I0(AXI_Trans_Addr[1]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[1]),
        .O(\r_AXI_Cur_Trans_Addr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_2 
       (.I0(AXI_Trans_Addr[27]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[27]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_3 
       (.I0(AXI_Trans_Addr[26]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[26]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_4 
       (.I0(AXI_Trans_Addr[25]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[25]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_5 
       (.I0(AXI_Trans_Addr[24]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[24]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_6 
       (.I0(AXI_Trans_Addr[23]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[23]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_7 
       (.I0(AXI_Trans_Addr[22]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[22]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_8 
       (.I0(AXI_Trans_Addr[21]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[21]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[20]_i_9 
       (.I0(AXI_Trans_Addr[20]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[20]),
        .O(\r_AXI_Cur_Trans_Addr[20]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[28]_i_2 
       (.I0(AXI_Trans_Addr[31]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[31]),
        .O(\r_AXI_Cur_Trans_Addr[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[28]_i_3 
       (.I0(AXI_Trans_Addr[30]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[30]),
        .O(\r_AXI_Cur_Trans_Addr[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[28]_i_4 
       (.I0(AXI_Trans_Addr[29]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[29]),
        .O(\r_AXI_Cur_Trans_Addr[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[28]_i_5 
       (.I0(AXI_Trans_Addr[28]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[28]),
        .O(\r_AXI_Cur_Trans_Addr[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[2]_i_1 
       (.I0(AXI_Trans_Addr[2]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[2]),
        .O(\r_AXI_Cur_Trans_Addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[3]_i_1 
       (.I0(AXI_Trans_Addr[3]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[3]),
        .O(\r_AXI_Cur_Trans_Addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_10 
       (.I0(B[5]),
        .I1(r_AXI_Cur_Trans_Addr_reg[10]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[10]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_11 
       (.I0(B[4]),
        .I1(r_AXI_Cur_Trans_Addr_reg[9]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[9]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_12 
       (.I0(B[3]),
        .I1(r_AXI_Cur_Trans_Addr_reg[8]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[8]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_13 
       (.I0(B[2]),
        .I1(r_AXI_Cur_Trans_Addr_reg[7]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[7]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_14 
       (.I0(B[1]),
        .I1(r_AXI_Cur_Trans_Addr_reg[6]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[6]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_15 
       (.I0(B[0]),
        .I1(r_AXI_Cur_Trans_Addr_reg[5]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[5]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_AXI_Cur_Trans_Addr[4]_i_16 
       (.I0(AXI_Trans_Addr[4]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I2(r_AXI_Cur_Trans_Addr_reg[4]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_2 
       (.I0(B[6]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_3 
       (.I0(B[5]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_4 
       (.I0(B[4]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_5 
       (.I0(B[3]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_6 
       (.I0(B[2]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_7 
       (.I0(B[1]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_AXI_Cur_Trans_Addr[4]_i_8 
       (.I0(B[0]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r_AXI_Cur_Trans_Addr[4]_i_9 
       (.I0(B[6]),
        .I1(r_AXI_Cur_Trans_Addr_reg[11]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(AXI_Trans_Addr[11]),
        .O(\r_AXI_Cur_Trans_Addr[4]_i_9_n_0 ));
  FDRE \r_AXI_Cur_Trans_Addr_reg[0] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr[0]_i_1_n_0 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[0]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[10] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[10]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[11] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[11]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[12] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[12]),
        .R(RSTP));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \r_AXI_Cur_Trans_Addr_reg[12]_i_1 
       (.CI(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_1 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_2 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_3 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_4 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_5 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_6 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\r_AXI_Cur_Trans_Addr[12]_i_2_n_0 }),
        .O({\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14 ,\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15 }),
        .S({\r_AXI_Cur_Trans_Addr[12]_i_3_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_4_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_5_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_6_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_7_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_8_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_9_n_0 ,\r_AXI_Cur_Trans_Addr[12]_i_10_n_0 }));
  FDRE \r_AXI_Cur_Trans_Addr_reg[13] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[13]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[14] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[14]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[15] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[15]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[16] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[16]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[17] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[17]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[18] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[18]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[19] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[19]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[1] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr[1]_i_1_n_0 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[1]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[20] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[20]),
        .R(RSTP));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \r_AXI_Cur_Trans_Addr_reg[20]_i_1 
       (.CI(\r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_1 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_2 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_3 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_4 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_5 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_6 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14 ,\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15 }),
        .S({\r_AXI_Cur_Trans_Addr[20]_i_2_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_3_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_4_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_5_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_6_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_7_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_8_n_0 ,\r_AXI_Cur_Trans_Addr[20]_i_9_n_0 }));
  FDRE \r_AXI_Cur_Trans_Addr_reg[21] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[21]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[22] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[22]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[23] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[23]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[24] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[24]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[25] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[25]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[26] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[26]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[27] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[27]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[28] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[28]),
        .R(RSTP));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \r_AXI_Cur_Trans_Addr_reg[28]_i_1 
       (.CI(\r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_CO_UNCONNECTED [7:3],\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_5 ,\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_6 ,\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_O_UNCONNECTED [7:4],\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12 ,\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13 ,\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14 ,\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\r_AXI_Cur_Trans_Addr[28]_i_2_n_0 ,\r_AXI_Cur_Trans_Addr[28]_i_3_n_0 ,\r_AXI_Cur_Trans_Addr[28]_i_4_n_0 ,\r_AXI_Cur_Trans_Addr[28]_i_5_n_0 }));
  FDRE \r_AXI_Cur_Trans_Addr_reg[29] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[29]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[2] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr[2]_i_1_n_0 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[2]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[30] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[30]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[31] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[31]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[3] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr[3]_i_1_n_0 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[3]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[4] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[4]),
        .R(RSTP));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \r_AXI_Cur_Trans_Addr_reg[4]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_1 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_2 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_3 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_4 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_5 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_6 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_7 }),
        .DI({\r_AXI_Cur_Trans_Addr[4]_i_2_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_3_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_4_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_5_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_6_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_7_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_8_n_0 ,1'b0}),
        .O({\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14 ,\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15 }),
        .S({\r_AXI_Cur_Trans_Addr[4]_i_9_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_10_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_11_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_12_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_13_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_14_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_15_n_0 ,\r_AXI_Cur_Trans_Addr[4]_i_16_n_0 }));
  FDRE \r_AXI_Cur_Trans_Addr_reg[5] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[5]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[6] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[6]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[7] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[7]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[8] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[8]),
        .R(RSTP));
  FDRE \r_AXI_Cur_Trans_Addr_reg[9] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(\r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10 ),
        .Q(r_AXI_Cur_Trans_Addr_reg[9]),
        .R(RSTP));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 r_AXI_Cur_Trans_Cnt0_carry
       (.CI(r_AXI_Cur_Trans_Cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({r_AXI_Cur_Trans_Cnt0_carry_n_0,r_AXI_Cur_Trans_Cnt0_carry_n_1,r_AXI_Cur_Trans_Cnt0_carry_n_2,r_AXI_Cur_Trans_Cnt0_carry_n_3,r_AXI_Cur_Trans_Cnt0_carry_n_4,r_AXI_Cur_Trans_Cnt0_carry_n_5,r_AXI_Cur_Trans_Cnt0_carry_n_6,r_AXI_Cur_Trans_Cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(r_AXI_Cur_Trans_Cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 r_AXI_Cur_Trans_Cnt0_carry__0
       (.CI(r_AXI_Cur_Trans_Cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_r_AXI_Cur_Trans_Cnt0_carry__0_CO_UNCONNECTED[7:6],r_AXI_Cur_Trans_Cnt0_carry__0_n_2,r_AXI_Cur_Trans_Cnt0_carry__0_n_3,r_AXI_Cur_Trans_Cnt0_carry__0_n_4,r_AXI_Cur_Trans_Cnt0_carry__0_n_5,r_AXI_Cur_Trans_Cnt0_carry__0_n_6,r_AXI_Cur_Trans_Cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_AXI_Cur_Trans_Cnt0_carry__0_O_UNCONNECTED[7],p_0_in[15:9]}),
        .S({1'b0,r_AXI_Cur_Trans_Cnt_reg[15:9]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_AXI_Cur_Trans_Cnt[0]_i_1 
       (.I0(r_AXI_Cur_Trans_Cnt_reg[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \r_AXI_Cur_Trans_Cnt[15]_i_1 
       (.I0(m_axis_s2mm_tready),
        .I1(r_m_axis_s2mm_tvalid_reg_0),
        .I2(r_st_current[2]),
        .I3(r_st_current[0]),
        .I4(r_st_current[1]),
        .O(r_AXI_Cur_Trans_Cnt0));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[0] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[0]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[0]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[10] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[10]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[10]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[11] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[11]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[11]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[12] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[12]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[12]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[13] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[13]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[13]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[14] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[14]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[14]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[15] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[15]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[15]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[1] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[1]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[1]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[2] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[2]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[2]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[3] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[3]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[3]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[4] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[4]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[4]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[5] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[5]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[5]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[6] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[6]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[6]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[7] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[7]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[7]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[8] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[8]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[8]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  FDRE \r_AXI_Cur_Trans_Cnt_reg[9] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Cnt0),
        .D(p_0_in[9]),
        .Q(r_AXI_Cur_Trans_Cnt_reg[9]),
        .R(\r_AXI_Cur_Burst_Number[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00010000)) 
    \r_AXI_Remain_Number[15]_i_1 
       (.I0(r_st_prev[2]),
        .I1(r_st_prev[1]),
        .I2(r_st_prev[0]),
        .I3(r_st_current[1]),
        .I4(r_st_current[0]),
        .I5(r_st_current[2]),
        .O(r_AXI_Cur_Trans_Addr));
  CARRY8 r_AXI_Remain_Number_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({r_AXI_Remain_Number_carry_n_0,r_AXI_Remain_Number_carry_n_1,r_AXI_Remain_Number_carry_n_2,r_AXI_Remain_Number_carry_n_3,r_AXI_Remain_Number_carry_n_4,r_AXI_Remain_Number_carry_n_5,r_AXI_Remain_Number_carry_n_6,r_AXI_Remain_Number_carry_n_7}),
        .DI({r_AXI_Remain_Number_carry_i_1_n_0,r_AXI_Remain_Number_carry_i_2_n_0,r_AXI_Remain_Number_carry_i_3_n_0,r_AXI_Remain_Number_carry_i_4_n_0,r_AXI_Remain_Number_carry_i_5_n_0,r_AXI_Remain_Number_carry_i_6_n_0,r_AXI_Remain_Number_carry_i_7_n_0,r_AXI_Remain_Number_carry_i_8_n_0}),
        .O({r_AXI_Remain_Number_carry_n_8,r_AXI_Remain_Number_carry_n_9,r_AXI_Remain_Number_carry_n_10,r_AXI_Remain_Number_carry_n_11,r_AXI_Remain_Number_carry_n_12,r_AXI_Remain_Number_carry_n_13,r_AXI_Remain_Number_carry_n_14,r_AXI_Remain_Number_carry_n_15}),
        .S({r_AXI_Remain_Number_carry_i_9_n_0,r_AXI_Remain_Number_carry_i_10_n_0,r_AXI_Remain_Number_carry_i_11_n_0,r_AXI_Remain_Number_carry_i_12_n_0,r_AXI_Remain_Number_carry_i_13_n_0,r_AXI_Remain_Number_carry_i_14_n_0,r_AXI_Remain_Number_carry_i_15_n_0,r_AXI_Remain_Number_carry_i_16_n_0}));
  CARRY8 r_AXI_Remain_Number_carry__0
       (.CI(r_AXI_Remain_Number_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_r_AXI_Remain_Number_carry__0_CO_UNCONNECTED[7],r_AXI_Remain_Number_carry__0_n_1,r_AXI_Remain_Number_carry__0_n_2,r_AXI_Remain_Number_carry__0_n_3,r_AXI_Remain_Number_carry__0_n_4,r_AXI_Remain_Number_carry__0_n_5,r_AXI_Remain_Number_carry__0_n_6,r_AXI_Remain_Number_carry__0_n_7}),
        .DI({1'b0,r_AXI_Remain_Number_carry__0_i_1_n_0,r_AXI_Remain_Number_carry__0_i_2_n_0,r_AXI_Remain_Number_carry__0_i_3_n_0,r_AXI_Remain_Number_carry__0_i_4_n_0,r_AXI_Remain_Number_carry__0_i_5_n_0,r_AXI_Remain_Number_carry__0_i_6_n_0,r_AXI_Remain_Number_carry__0_i_7_n_0}),
        .O({r_AXI_Remain_Number_carry__0_n_8,r_AXI_Remain_Number_carry__0_n_9,r_AXI_Remain_Number_carry__0_n_10,r_AXI_Remain_Number_carry__0_n_11,r_AXI_Remain_Number_carry__0_n_12,r_AXI_Remain_Number_carry__0_n_13,r_AXI_Remain_Number_carry__0_n_14,r_AXI_Remain_Number_carry__0_n_15}),
        .S({r_AXI_Remain_Number_carry__0_i_8_n_0,r_AXI_Remain_Number_carry__0_i_9_n_0,r_AXI_Remain_Number_carry__0_i_10_n_0,r_AXI_Remain_Number_carry__0_i_11_n_0,r_AXI_Remain_Number_carry__0_i_12_n_0,r_AXI_Remain_Number_carry__0_i_13_n_0,r_AXI_Remain_Number_carry__0_i_14_n_0,r_AXI_Remain_Number_carry__0_i_15_n_0}));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_1
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_10
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[13]),
        .I5(FS_Number[13]),
        .O(r_AXI_Remain_Number_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_11
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[12]),
        .I5(FS_Number[12]),
        .O(r_AXI_Remain_Number_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_12
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[11]),
        .I5(FS_Number[11]),
        .O(r_AXI_Remain_Number_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_13
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[10]),
        .I5(FS_Number[10]),
        .O(r_AXI_Remain_Number_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_14
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[9]),
        .I5(FS_Number[9]),
        .O(r_AXI_Remain_Number_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_15
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[8]),
        .I5(FS_Number[8]),
        .O(r_AXI_Remain_Number_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_2
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_3
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_4
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_5
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_6
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_AXI_Remain_Number_carry__0_i_7
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_8
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[15]),
        .I5(FS_Number[15]),
        .O(r_AXI_Remain_Number_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF01FFFE000100FE)) 
    r_AXI_Remain_Number_carry__0_i_9
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(r_AXI_Remain_Number_reg[14]),
        .I5(FS_Number[14]),
        .O(r_AXI_Remain_Number_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h001E)) 
    r_AXI_Remain_Number_carry_i_1
       (.I0(B[6]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[7]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF960096)) 
    r_AXI_Remain_Number_carry_i_10
       (.I0(B[6]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(r_AXI_Remain_Number_reg[6]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(FS_Number[6]),
        .O(r_AXI_Remain_Number_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hFF960096)) 
    r_AXI_Remain_Number_carry_i_11
       (.I0(B[5]),
        .I1(r_AXI_Remain_Number_carry_i_18_n_0),
        .I2(r_AXI_Remain_Number_reg[5]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(FS_Number[5]),
        .O(r_AXI_Remain_Number_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'hFF960096)) 
    r_AXI_Remain_Number_carry_i_12
       (.I0(B[4]),
        .I1(r_AXI_Remain_Number_carry_i_19_n_0),
        .I2(r_AXI_Remain_Number_reg[4]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(FS_Number[4]),
        .O(r_AXI_Remain_Number_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'hFF960096)) 
    r_AXI_Remain_Number_carry_i_13
       (.I0(B[3]),
        .I1(r_AXI_Remain_Number_carry_i_20_n_0),
        .I2(r_AXI_Remain_Number_reg[3]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(FS_Number[3]),
        .O(r_AXI_Remain_Number_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFA9560000A956)) 
    r_AXI_Remain_Number_carry_i_14
       (.I0(B[2]),
        .I1(B[1]),
        .I2(B[0]),
        .I3(r_AXI_Remain_Number_reg[2]),
        .I4(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I5(FS_Number[2]),
        .O(r_AXI_Remain_Number_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hFF960096)) 
    r_AXI_Remain_Number_carry_i_15
       (.I0(B[0]),
        .I1(B[1]),
        .I2(r_AXI_Remain_Number_reg[1]),
        .I3(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I4(FS_Number[1]),
        .O(r_AXI_Remain_Number_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'hF606)) 
    r_AXI_Remain_Number_carry_i_16
       (.I0(B[0]),
        .I1(r_AXI_Remain_Number_reg[0]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I3(FS_Number[0]),
        .O(r_AXI_Remain_Number_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_AXI_Remain_Number_carry_i_17
       (.I0(B[5]),
        .I1(B[3]),
        .I2(B[1]),
        .I3(B[2]),
        .I4(B[0]),
        .I5(B[4]),
        .O(r_AXI_Remain_Number_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    r_AXI_Remain_Number_carry_i_18
       (.I0(B[4]),
        .I1(B[0]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B[3]),
        .O(r_AXI_Remain_Number_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    r_AXI_Remain_Number_carry_i_19
       (.I0(B[3]),
        .I1(B[1]),
        .I2(B[2]),
        .I3(B[0]),
        .O(r_AXI_Remain_Number_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    r_AXI_Remain_Number_carry_i_2
       (.I0(r_AXI_Remain_Number_carry_i_17_n_0),
        .I1(B[6]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    r_AXI_Remain_Number_carry_i_20
       (.I0(B[0]),
        .I1(B[2]),
        .I2(B[1]),
        .O(r_AXI_Remain_Number_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    r_AXI_Remain_Number_carry_i_3
       (.I0(r_AXI_Remain_Number_carry_i_18_n_0),
        .I1(B[5]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000000001FFFE)) 
    r_AXI_Remain_Number_carry_i_4
       (.I0(B[3]),
        .I1(B[1]),
        .I2(B[2]),
        .I3(B[0]),
        .I4(B[4]),
        .I5(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h000001FE)) 
    r_AXI_Remain_Number_carry_i_5
       (.I0(B[0]),
        .I1(B[2]),
        .I2(B[1]),
        .I3(B[3]),
        .I4(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0154)) 
    r_AXI_Remain_Number_carry_i_6
       (.I0(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I1(B[0]),
        .I2(B[1]),
        .I3(B[2]),
        .O(r_AXI_Remain_Number_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    r_AXI_Remain_Number_carry_i_7
       (.I0(B[1]),
        .I1(B[0]),
        .I2(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    r_AXI_Remain_Number_carry_i_8
       (.I0(B[0]),
        .I1(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .O(r_AXI_Remain_Number_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFA9560000A956)) 
    r_AXI_Remain_Number_carry_i_9
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(r_AXI_Remain_Number_reg[7]),
        .I4(\r_AXI_Cur_Burst_Number[7]_i_4_n_0 ),
        .I5(FS_Number[7]),
        .O(r_AXI_Remain_Number_carry_i_9_n_0));
  FDRE \r_AXI_Remain_Number_reg[0] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_15),
        .Q(r_AXI_Remain_Number_reg[0]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[10] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_13),
        .Q(r_AXI_Remain_Number_reg[10]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[11] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_12),
        .Q(r_AXI_Remain_Number_reg[11]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[12] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_11),
        .Q(r_AXI_Remain_Number_reg[12]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[13] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_10),
        .Q(r_AXI_Remain_Number_reg[13]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[14] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_9),
        .Q(r_AXI_Remain_Number_reg[14]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[15] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_8),
        .Q(r_AXI_Remain_Number_reg[15]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[1] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_14),
        .Q(r_AXI_Remain_Number_reg[1]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[2] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_13),
        .Q(r_AXI_Remain_Number_reg[2]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[3] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_12),
        .Q(r_AXI_Remain_Number_reg[3]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[4] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_11),
        .Q(r_AXI_Remain_Number_reg[4]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[5] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_10),
        .Q(r_AXI_Remain_Number_reg[5]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[6] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_9),
        .Q(r_AXI_Remain_Number_reg[6]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[7] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry_n_8),
        .Q(r_AXI_Remain_Number_reg[7]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[8] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_15),
        .Q(r_AXI_Remain_Number_reg[8]),
        .R(RSTP));
  FDRE \r_AXI_Remain_Number_reg[9] 
       (.C(i_clk),
        .CE(r_AXI_Cur_Trans_Addr),
        .D(r_AXI_Remain_Number_carry__0_n_14),
        .Q(r_AXI_Remain_Number_reg[9]),
        .R(RSTP));
  FDSE \r_AXI_Trans_Start_d_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(AXI_Trans_Start),
        .Q(p_1_in),
        .S(RSTP));
  FDSE \r_AXI_Trans_Start_d_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\r_AXI_Trans_Start_d_reg_n_0_[1] ),
        .S(RSTP));
  LUT2 #(
    .INIT(4'h2)) 
    r_AXI_Trans_Start_pos_i_1
       (.I0(p_1_in),
        .I1(\r_AXI_Trans_Start_d_reg_n_0_[1] ),
        .O(r_AXI_Trans_Start_pos0));
  FDRE r_AXI_Trans_Start_pos_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_AXI_Trans_Start_pos0),
        .Q(r_AXI_Trans_Start_pos),
        .R(RSTP));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    r_fifo_rst_i_1
       (.I0(r_st_current[0]),
        .I1(r_st_current[2]),
        .I2(r_st_current[1]),
        .I3(i_rstn),
        .O(r_fifo_rst_i_1_n_0));
  FDRE r_fifo_rst_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_fifo_rst_i_1_n_0),
        .Q(fifo_rst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA20FFFF)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_1 
       (.I0(\r_st_current[1]_i_1_n_0 ),
        .I1(\r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0 ),
        .I2(\r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0 ),
        .I3(\r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ),
        .I4(i_rstn),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_2 
       (.I0(r_st_current[2]),
        .I1(r_st_current[1]),
        .I2(r_st_current[0]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_3 
       (.I0(r_st_current[2]),
        .I1(r_st_current[1]),
        .I2(r_st_current[0]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55005500C0FFC000)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_4 
       (.I0(r_m_axis_s2mm_tvalid_i_2_n_0),
        .I1(r_m_axis_s2mm_cmd_tvalid_reg_0),
        .I2(m_axis_s2mm_cmd_tready),
        .I3(r_st_current[1]),
        .I4(r_AXI_Trans_Start_pos),
        .I5(r_st_current[0]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFFAAAAAAAA)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_5 
       (.I0(\r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0 ),
        .I1(r_s_cnt_reg[2]),
        .I2(r_s_cnt_reg[3]),
        .I3(r_s_cnt_reg[4]),
        .I4(\r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0 ),
        .I5(\r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0 ),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_6 
       (.I0(r_st_current[1]),
        .I1(r_st_current[2]),
        .I2(r_st_current[0]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_7 
       (.I0(r_s_cnt_reg[15]),
        .I1(r_s_cnt_reg[6]),
        .I2(r_s_cnt_reg[14]),
        .I3(\r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0 ),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_8 
       (.I0(r_st_current[1]),
        .I1(r_st_current[2]),
        .I2(r_s_cnt_reg[12]),
        .I3(r_s_cnt_reg[9]),
        .I4(r_s_cnt_reg[11]),
        .I5(r_s_cnt_reg[8]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_m_axis_s2mm_cmd_tdata[63]_i_9 
       (.I0(r_s_cnt_reg[5]),
        .I1(r_s_cnt_reg[10]),
        .I2(r_s_cnt_reg[7]),
        .I3(r_s_cnt_reg[13]),
        .O(\r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[10] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[10]),
        .Q(m_axis_s2mm_cmd_tdata[5]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[11] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[11]),
        .Q(m_axis_s2mm_cmd_tdata[6]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[12] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[12]),
        .Q(m_axis_s2mm_cmd_tdata[7]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[30] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .Q(m_axis_s2mm_cmd_tdata[8]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[32] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[0]),
        .Q(m_axis_s2mm_cmd_tdata[9]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[33] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[1]),
        .Q(m_axis_s2mm_cmd_tdata[10]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[34] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[2]),
        .Q(m_axis_s2mm_cmd_tdata[11]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[35] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[3]),
        .Q(m_axis_s2mm_cmd_tdata[12]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[36] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[4]),
        .Q(m_axis_s2mm_cmd_tdata[13]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[37] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[5]),
        .Q(m_axis_s2mm_cmd_tdata[14]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[38] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[6]),
        .Q(m_axis_s2mm_cmd_tdata[15]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[39] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[7]),
        .Q(m_axis_s2mm_cmd_tdata[16]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[40] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[8]),
        .Q(m_axis_s2mm_cmd_tdata[17]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[41] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[9]),
        .Q(m_axis_s2mm_cmd_tdata[18]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[42] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[10]),
        .Q(m_axis_s2mm_cmd_tdata[19]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[43] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[11]),
        .Q(m_axis_s2mm_cmd_tdata[20]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[44] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[12]),
        .Q(m_axis_s2mm_cmd_tdata[21]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[45] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[13]),
        .Q(m_axis_s2mm_cmd_tdata[22]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[46] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[14]),
        .Q(m_axis_s2mm_cmd_tdata[23]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[47] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[15]),
        .Q(m_axis_s2mm_cmd_tdata[24]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[48] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[16]),
        .Q(m_axis_s2mm_cmd_tdata[25]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[49] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[17]),
        .Q(m_axis_s2mm_cmd_tdata[26]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[50] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[18]),
        .Q(m_axis_s2mm_cmd_tdata[27]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[51] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[19]),
        .Q(m_axis_s2mm_cmd_tdata[28]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[52] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[20]),
        .Q(m_axis_s2mm_cmd_tdata[29]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[53] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[21]),
        .Q(m_axis_s2mm_cmd_tdata[30]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[54] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[22]),
        .Q(m_axis_s2mm_cmd_tdata[31]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[55] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[23]),
        .Q(m_axis_s2mm_cmd_tdata[32]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[56] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[24]),
        .Q(m_axis_s2mm_cmd_tdata[33]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[57] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[25]),
        .Q(m_axis_s2mm_cmd_tdata[34]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[58] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[26]),
        .Q(m_axis_s2mm_cmd_tdata[35]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[59] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[27]),
        .Q(m_axis_s2mm_cmd_tdata[36]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[5] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[5]),
        .Q(m_axis_s2mm_cmd_tdata[0]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[60] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[28]),
        .Q(m_axis_s2mm_cmd_tdata[37]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[61] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[29]),
        .Q(m_axis_s2mm_cmd_tdata[38]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[62] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[30]),
        .Q(m_axis_s2mm_cmd_tdata[39]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[63] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Trans_Addr_reg[31]),
        .Q(m_axis_s2mm_cmd_tdata[40]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[6] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[6]),
        .Q(m_axis_s2mm_cmd_tdata[1]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[7] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[7]),
        .Q(m_axis_s2mm_cmd_tdata[2]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[8] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[8]),
        .Q(m_axis_s2mm_cmd_tdata[3]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  FDRE \r_m_axis_s2mm_cmd_tdata_reg[9] 
       (.C(i_clk),
        .CE(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .D(r_AXI_Cur_Burst_Byte[9]),
        .Q(m_axis_s2mm_cmd_tdata[4]),
        .R(\r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E0E0E0E0E0)) 
    r_m_axis_s2mm_cmd_tvalid_i_1
       (.I0(r_m_axis_s2mm_cmd_tvalid_reg_0),
        .I1(\r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0 ),
        .I2(i_rstn),
        .I3(\r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ),
        .I4(r_m_axis_s2mm_cmd_tvalid_i_2_n_0),
        .I5(\r_st_current[1]_i_1_n_0 ),
        .O(r_m_axis_s2mm_cmd_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000CFCC00AA)) 
    r_m_axis_s2mm_cmd_tvalid_i_2
       (.I0(r_AXI_Trans_Start_pos),
        .I1(r_m_axis_s2mm_cmd_tvalid_i_3_n_0),
        .I2(r_m_axis_s2mm_tvalid_i_2_n_0),
        .I3(r_st_current[0]),
        .I4(r_st_current[1]),
        .I5(r_st_current[2]),
        .O(r_m_axis_s2mm_cmd_tvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    r_m_axis_s2mm_cmd_tvalid_i_3
       (.I0(r_st_current[0]),
        .I1(m_axis_s2mm_cmd_tready),
        .I2(r_m_axis_s2mm_cmd_tvalid_reg_0),
        .O(r_m_axis_s2mm_cmd_tvalid_i_3_n_0));
  FDRE r_m_axis_s2mm_cmd_tvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_m_axis_s2mm_cmd_tvalid_i_1_n_0),
        .Q(r_m_axis_s2mm_cmd_tvalid_reg_0),
        .R(1'b0));
  FDRE \r_m_axis_s2mm_tkeep_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_rstn),
        .Q(m_axis_s2mm_tkeep),
        .R(1'b0));
  CARRY8 r_m_axis_s2mm_tlast4_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({r_m_axis_s2mm_tlast4_carry_n_0,r_m_axis_s2mm_tlast4_carry_n_1,r_m_axis_s2mm_tlast4_carry_n_2,r_m_axis_s2mm_tlast4_carry_n_3,r_m_axis_s2mm_tlast4_carry_n_4,r_m_axis_s2mm_tlast4_carry_n_5,r_m_axis_s2mm_tlast4_carry_n_6,r_m_axis_s2mm_tlast4_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_m_axis_s2mm_tlast4_carry_O_UNCONNECTED[7:0]),
        .S({r_m_axis_s2mm_tlast4_carry_i_1_n_0,r_m_axis_s2mm_tlast4_carry_i_2_n_0,r_m_axis_s2mm_tlast4_carry_i_3_n_0,r_m_axis_s2mm_tlast4_carry_i_4_n_0,r_m_axis_s2mm_tlast4_carry_i_5_n_0,r_m_axis_s2mm_tlast4_carry_i_6_n_0,r_m_axis_s2mm_tlast4_carry_i_7_n_0,r_m_axis_s2mm_tlast4_carry_i_8_n_0}));
  CARRY8 r_m_axis_s2mm_tlast4_carry__0
       (.CI(r_m_axis_s2mm_tlast4_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_r_m_axis_s2mm_tlast4_carry__0_CO_UNCONNECTED[7:3],r_m_axis_s2mm_tlast4,r_m_axis_s2mm_tlast4_carry__0_n_6,r_m_axis_s2mm_tlast4_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_m_axis_s2mm_tlast4_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,r_m_axis_s2mm_tlast4_carry__0_i_1_n_0,r_m_axis_s2mm_tlast4_carry__0_i_2_n_0,r_m_axis_s2mm_tlast4_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tlast4_carry__0_i_1
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tlast4_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tlast4_carry__0_i_2
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tlast4_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tlast4_carry__0_i_3
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tlast4_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tlast4_carry_i_1
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tlast4_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_m_axis_s2mm_tlast4_carry_i_10
       (.I0(B[1]),
        .I1(B[2]),
        .O(r_m_axis_s2mm_tlast4_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tlast4_carry_i_2
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tlast4_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_m_axis_s2mm_tlast4_carry_i_3
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[15]),
        .O(r_m_axis_s2mm_tlast4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h01000000000000FE)) 
    r_m_axis_s2mm_tlast4_carry_i_4
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[14]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[12]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[13]),
        .O(r_m_axis_s2mm_tlast4_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h01000000000000FE)) 
    r_m_axis_s2mm_tlast4_carry_i_5
       (.I0(B[7]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[11]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[10]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[9]),
        .O(r_m_axis_s2mm_tlast4_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h4002014014000014)) 
    r_m_axis_s2mm_tlast4_carry_i_6
       (.I0(r_AXI_Cur_Trans_Cnt_reg[8]),
        .I1(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I2(B[6]),
        .I3(B[7]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[7]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[6]),
        .O(r_m_axis_s2mm_tlast4_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h4002014014000014)) 
    r_m_axis_s2mm_tlast4_carry_i_7
       (.I0(r_m_axis_s2mm_tvalid2_carry_i_9_n_0),
        .I1(r_m_axis_s2mm_tlast4_carry_i_10_n_0),
        .I2(B[3]),
        .I3(B[4]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[4]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[3]),
        .O(r_m_axis_s2mm_tlast4_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0960000000000960)) 
    r_m_axis_s2mm_tlast4_carry_i_8
       (.I0(r_AXI_Cur_Trans_Cnt_reg[2]),
        .I1(B[2]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[1]),
        .I3(B[1]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[0]),
        .I5(B[0]),
        .O(r_m_axis_s2mm_tlast4_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    r_m_axis_s2mm_tlast4_carry_i_9
       (.I0(B[5]),
        .I1(B[3]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B[4]),
        .O(r_m_axis_s2mm_tlast4_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_m_axis_s2mm_tlast_i_1
       (.I0(i_rstn),
        .O(RSTP));
  LUT6 #(
    .INIT(64'hFFFF7F00FFFF0000)) 
    r_m_axis_s2mm_tlast_i_2
       (.I0(r_m_axis_s2mm_tvalid2),
        .I1(m_axis_s2mm_tready),
        .I2(r_m_axis_s2mm_tvalid_reg_0),
        .I3(r_m_axis_s2mm_tlast_i_3_n_0),
        .I4(r_m_axis_s2mm_tlast_i_4_n_0),
        .I5(m_axis_s2mm_tlast),
        .O(r_m_axis_s2mm_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    r_m_axis_s2mm_tlast_i_3
       (.I0(r_st_current[1]),
        .I1(r_st_current[0]),
        .I2(r_st_current[2]),
        .O(r_m_axis_s2mm_tlast_i_3_n_0));
  LUT5 #(
    .INIT(32'h8888888F)) 
    r_m_axis_s2mm_tlast_i_4
       (.I0(r_AXI_Cur_Trans_Cnt0),
        .I1(r_m_axis_s2mm_tlast4),
        .I2(r_m_axis_s2mm_tlast4_carry_i_9_n_0),
        .I3(r_m_axis_s2mm_tlast_i_5_n_0),
        .I4(r_m_axis_s2mm_tlast_i_6_n_0),
        .O(r_m_axis_s2mm_tlast_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_m_axis_s2mm_tlast_i_5
       (.I0(r_AXI_Cur_Trans_Cnt_reg[10]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[15]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[13]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[4]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[2]),
        .I5(r_m_axis_s2mm_tlast_i_7_n_0),
        .O(r_m_axis_s2mm_tlast_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_m_axis_s2mm_tlast_i_6
       (.I0(r_m_axis_s2mm_tlast_i_8_n_0),
        .I1(r_AXI_Cur_Trans_Cnt_reg[8]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[12]),
        .I3(B[6]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[6]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[9]),
        .O(r_m_axis_s2mm_tlast_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    r_m_axis_s2mm_tlast_i_7
       (.I0(r_st_current[2]),
        .I1(r_st_current[0]),
        .I2(r_st_current[1]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[3]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[5]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[1]),
        .O(r_m_axis_s2mm_tlast_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    r_m_axis_s2mm_tlast_i_8
       (.I0(r_AXI_Cur_Trans_Cnt_reg[11]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[7]),
        .I2(B[7]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[14]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[0]),
        .I5(B[0]),
        .O(r_m_axis_s2mm_tlast_i_8_n_0));
  FDRE r_m_axis_s2mm_tlast_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_m_axis_s2mm_tlast_i_2_n_0),
        .Q(m_axis_s2mm_tlast),
        .R(RSTP));
  CARRY8 r_m_axis_s2mm_tvalid2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({r_m_axis_s2mm_tvalid2_carry_n_0,r_m_axis_s2mm_tvalid2_carry_n_1,r_m_axis_s2mm_tvalid2_carry_n_2,r_m_axis_s2mm_tvalid2_carry_n_3,r_m_axis_s2mm_tvalid2_carry_n_4,r_m_axis_s2mm_tvalid2_carry_n_5,r_m_axis_s2mm_tvalid2_carry_n_6,r_m_axis_s2mm_tvalid2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_m_axis_s2mm_tvalid2_carry_O_UNCONNECTED[7:0]),
        .S({r_m_axis_s2mm_tvalid2_carry_i_1_n_0,r_m_axis_s2mm_tvalid2_carry_i_2_n_0,r_m_axis_s2mm_tvalid2_carry_i_3_n_0,r_m_axis_s2mm_tvalid2_carry_i_4_n_0,r_m_axis_s2mm_tvalid2_carry_i_5_n_0,r_m_axis_s2mm_tvalid2_carry_i_6_n_0,r_m_axis_s2mm_tvalid2_carry_i_7_n_0,r_m_axis_s2mm_tvalid2_carry_i_8_n_0}));
  CARRY8 r_m_axis_s2mm_tvalid2_carry__0
       (.CI(r_m_axis_s2mm_tvalid2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_r_m_axis_s2mm_tvalid2_carry__0_CO_UNCONNECTED[7:3],r_m_axis_s2mm_tvalid2,r_m_axis_s2mm_tvalid2_carry__0_n_6,r_m_axis_s2mm_tvalid2_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_m_axis_s2mm_tvalid2_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0,r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0,r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tvalid2_carry__0_i_1
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tvalid2_carry__0_i_2
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tvalid2_carry__0_i_3
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tvalid2_carry_i_1
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    r_m_axis_s2mm_tvalid2_carry_i_2
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    r_m_axis_s2mm_tvalid2_carry_i_3
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[15]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h01000000000000FE)) 
    r_m_axis_s2mm_tvalid2_carry_i_4
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[14]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[13]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[12]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h01000000000000FE)) 
    r_m_axis_s2mm_tvalid2_carry_i_5
       (.I0(B[7]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[11]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[10]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[9]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h4002014014000014)) 
    r_m_axis_s2mm_tvalid2_carry_i_6
       (.I0(r_AXI_Cur_Trans_Cnt_reg[8]),
        .I1(r_AXI_Remain_Number_carry_i_17_n_0),
        .I2(B[6]),
        .I3(B[7]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[7]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[6]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h4002014014000014)) 
    r_m_axis_s2mm_tvalid2_carry_i_7
       (.I0(r_m_axis_s2mm_tvalid2_carry_i_9_n_0),
        .I1(r_AXI_Remain_Number_carry_i_20_n_0),
        .I2(B[3]),
        .I3(B[4]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[4]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[3]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h4120000800084120)) 
    r_m_axis_s2mm_tvalid2_carry_i_8
       (.I0(r_AXI_Cur_Trans_Cnt_reg[0]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[1]),
        .I2(B[1]),
        .I3(B[0]),
        .I4(B[2]),
        .I5(r_AXI_Cur_Trans_Cnt_reg[2]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    r_m_axis_s2mm_tvalid2_carry_i_9
       (.I0(r_AXI_Cur_Trans_Cnt_reg[5]),
        .I1(B[5]),
        .O(r_m_axis_s2mm_tvalid2_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h000000002AAA0000)) 
    r_m_axis_s2mm_tvalid_i_1
       (.I0(r_m_axis_s2mm_tlast_i_3_n_0),
        .I1(r_m_axis_s2mm_tvalid_reg_0),
        .I2(m_axis_s2mm_tready),
        .I3(r_m_axis_s2mm_tvalid2),
        .I4(i_rstn),
        .I5(r_m_axis_s2mm_tvalid_i_2_n_0),
        .O(r_m_axis_s2mm_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    r_m_axis_s2mm_tvalid_i_2
       (.I0(r_m_axis_s2mm_tvalid_i_3_n_0),
        .I1(r_m_axis_s2mm_tvalid_i_4_n_0),
        .I2(r_m_axis_s2mm_tvalid_i_5_n_0),
        .I3(r_m_axis_s2mm_tvalid_i_6_n_0),
        .I4(r_m_axis_s2mm_tvalid_i_7_n_0),
        .I5(r_m_axis_s2mm_tvalid_i_8_n_0),
        .O(r_m_axis_s2mm_tvalid_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    r_m_axis_s2mm_tvalid_i_3
       (.I0(r_AXI_Cur_Trans_Cnt_reg[1]),
        .I1(B[1]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[15]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[12]),
        .I4(r_AXI_Cur_Trans_Cnt_reg[14]),
        .O(r_m_axis_s2mm_tvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    r_m_axis_s2mm_tvalid_i_4
       (.I0(B[0]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[0]),
        .I2(B[6]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[6]),
        .O(r_m_axis_s2mm_tvalid_i_4_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    r_m_axis_s2mm_tvalid_i_5
       (.I0(B[4]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[4]),
        .I2(B[7]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[7]),
        .O(r_m_axis_s2mm_tvalid_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    r_m_axis_s2mm_tvalid_i_6
       (.I0(B[5]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[5]),
        .I2(B[3]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[3]),
        .O(r_m_axis_s2mm_tvalid_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    r_m_axis_s2mm_tvalid_i_7
       (.I0(B[2]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[2]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[9]),
        .O(r_m_axis_s2mm_tvalid_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    r_m_axis_s2mm_tvalid_i_8
       (.I0(r_AXI_Cur_Trans_Cnt_reg[10]),
        .I1(r_AXI_Cur_Trans_Cnt_reg[8]),
        .I2(r_AXI_Cur_Trans_Cnt_reg[13]),
        .I3(r_AXI_Cur_Trans_Cnt_reg[11]),
        .O(r_m_axis_s2mm_tvalid_i_8_n_0));
  FDRE r_m_axis_s2mm_tvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_m_axis_s2mm_tvalid_i_1_n_0),
        .Q(r_m_axis_s2mm_tvalid_reg_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 r_s_cnt0_carry
       (.CI(\r_s_cnt_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({r_s_cnt0_carry_n_0,r_s_cnt0_carry_n_1,r_s_cnt0_carry_n_2,r_s_cnt0_carry_n_3,r_s_cnt0_carry_n_4,r_s_cnt0_carry_n_5,r_s_cnt0_carry_n_6,r_s_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S({r_s_cnt_reg[8:2],\r_s_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 r_s_cnt0_carry__0
       (.CI(r_s_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_r_s_cnt0_carry__0_CO_UNCONNECTED[7:6],r_s_cnt0_carry__0_n_2,r_s_cnt0_carry__0_n_3,r_s_cnt0_carry__0_n_4,r_s_cnt0_carry__0_n_5,r_s_cnt0_carry__0_n_6,r_s_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_s_cnt0_carry__0_O_UNCONNECTED[7],p_0_in__0[15:9]}),
        .S({1'b0,r_s_cnt_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \r_s_cnt[0]_i_1 
       (.I0(\r_s_cnt_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \r_s_cnt[15]_i_1 
       (.I0(i_rstn),
        .I1(r_st_current[0]),
        .I2(r_st_current[2]),
        .I3(r_st_current[1]),
        .O(r_s_cnt0));
  FDRE \r_s_cnt_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\r_s_cnt_reg_n_0_[0] ),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(r_s_cnt_reg[10]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[11]),
        .Q(r_s_cnt_reg[11]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[12]),
        .Q(r_s_cnt_reg[12]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[13]),
        .Q(r_s_cnt_reg[13]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[14]),
        .Q(r_s_cnt_reg[14]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[15]),
        .Q(r_s_cnt_reg[15]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\r_s_cnt_reg_n_0_[1] ),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(r_s_cnt_reg[2]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(r_s_cnt_reg[3]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(r_s_cnt_reg[4]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(r_s_cnt_reg[5]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(r_s_cnt_reg[6]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(r_s_cnt_reg[7]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(r_s_cnt_reg[8]),
        .R(r_s_cnt0));
  FDRE \r_s_cnt_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(r_s_cnt_reg[9]),
        .R(r_s_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7500)) 
    \r_st_current[0]_i_1 
       (.I0(r_st_current[2]),
        .I1(r_st_current[1]),
        .I2(r_st_current[0]),
        .I3(\r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0 ),
        .I4(\r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ),
        .O(\r_st_current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1544)) 
    \r_st_current[1]_i_1 
       (.I0(r_st_current[2]),
        .I1(r_st_current[0]),
        .I2(r_m_axis_s2mm_tvalid_i_2_n_0),
        .I3(r_st_current[1]),
        .O(\r_st_current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88CC8888FCCCCCCC)) 
    \r_st_current[2]_i_1 
       (.I0(\r_st_current[2]_i_2_n_0 ),
        .I1(\r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0 ),
        .I2(r_m_axis_s2mm_tvalid_i_2_n_0),
        .I3(r_st_current[1]),
        .I4(r_st_current[0]),
        .I5(r_st_current[2]),
        .O(\r_st_current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \r_st_current[2]_i_2 
       (.I0(r_AXI_Remain_Number_reg[15]),
        .I1(\r_st_current[2]_i_3_n_0 ),
        .I2(r_AXI_Remain_Number_reg[13]),
        .I3(r_AXI_Remain_Number_reg[14]),
        .I4(r_AXI_Remain_Number_reg[12]),
        .O(\r_st_current[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_st_current[2]_i_3 
       (.I0(\r_st_current[2]_i_4_n_0 ),
        .I1(r_AXI_Remain_Number_reg[9]),
        .I2(r_AXI_Remain_Number_reg[11]),
        .I3(r_AXI_Remain_Number_reg[10]),
        .I4(\r_st_current[2]_i_5_n_0 ),
        .I5(\r_st_current[2]_i_6_n_0 ),
        .O(\r_st_current[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \r_st_current[2]_i_4 
       (.I0(B[6]),
        .I1(r_AXI_Remain_Number_reg[6]),
        .I2(r_AXI_Remain_Number_reg[7]),
        .I3(B[7]),
        .I4(r_AXI_Remain_Number_reg[8]),
        .O(\r_st_current[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_st_current[2]_i_5 
       (.I0(B[0]),
        .I1(r_AXI_Remain_Number_reg[0]),
        .I2(r_AXI_Remain_Number_reg[2]),
        .I3(B[2]),
        .I4(r_AXI_Remain_Number_reg[1]),
        .I5(B[1]),
        .O(\r_st_current[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_st_current[2]_i_6 
       (.I0(r_AXI_Remain_Number_reg[4]),
        .I1(B[4]),
        .I2(r_AXI_Remain_Number_reg[5]),
        .I3(B[5]),
        .I4(B[3]),
        .I5(r_AXI_Remain_Number_reg[3]),
        .O(\r_st_current[2]_i_6_n_0 ));
  FDRE \r_st_current_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_st_current[0]_i_1_n_0 ),
        .Q(r_st_current[0]),
        .R(RSTP));
  FDRE \r_st_current_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_st_current[1]_i_1_n_0 ),
        .Q(r_st_current[1]),
        .R(RSTP));
  FDRE \r_st_current_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_st_current[2]_i_1_n_0 ),
        .Q(r_st_current[2]),
        .R(RSTP));
  FDRE \r_st_prev_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(r_st_current[0]),
        .Q(r_st_prev[0]),
        .R(RSTP));
  FDRE \r_st_prev_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(r_st_current[1]),
        .Q(r_st_prev[1]),
        .R(RSTP));
  FDRE \r_st_prev_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(r_st_current[2]),
        .Q(r_st_prev[2]),
        .R(RSTP));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
