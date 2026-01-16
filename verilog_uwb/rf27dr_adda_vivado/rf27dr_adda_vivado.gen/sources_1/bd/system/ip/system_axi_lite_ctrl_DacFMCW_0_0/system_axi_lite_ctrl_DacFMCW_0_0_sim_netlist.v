// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 15 16:45:30 2026
// Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_axi_lite_ctrl_DacFMCW_0_0/system_axi_lite_ctrl_DacFMCW_0_0_sim_netlist.v
// Design      : system_axi_lite_ctrl_DacFMCW_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu27dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_lite_ctrl_DacFMCW_0_0,axi_lite_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_lite_ctrl,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module system_axi_lite_ctrl_DacFMCW_0_0
   (FMCW_R,
    FMCW_S,
    FMCW_N,
    FMCW_IDX,
    USER_RST_N,
    FS_Number,
    Chirp_clk,
    Frame_clk,
    FS_Start,
    FS_Div,
    PL_Addr_Flag,
    PL_Done_Flag,
    AXI_Trans_Addr,
    cal_delay_num,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output [31:0]FMCW_R;
  output [31:0]FMCW_S;
  output [31:0]FMCW_N;
  output [7:0]FMCW_IDX;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 USER_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME USER_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output USER_RST_N;
  output [15:0]FS_Number;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Chirp_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Chirp_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_lite_ctrl_DacFMCW_0_0_Chirp_clk, INSERT_VIP 0" *) output Chirp_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Frame_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Frame_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_lite_ctrl_DacFMCW_0_0_Frame_clk, INSERT_VIP 0" *) output Frame_clk;
  output FS_Start;
  output [7:0]FS_Div;
  output PL_Addr_Flag;
  output PL_Done_Flag;
  output [31:0]AXI_Trans_Addr;
  output [31:0]cal_delay_num;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 153600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [5:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 153600000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire [31:0]AXI_Trans_Addr;
  wire Chirp_clk;
  wire [7:0]FMCW_IDX;
  wire [31:0]FMCW_N;
  wire [31:0]FMCW_R;
  wire [31:0]FMCW_S;
  wire [7:0]FS_Div;
  wire [15:0]FS_Number;
  wire FS_Start;
  wire Frame_clk;
  wire PL_Addr_Flag;
  wire PL_Done_Flag;
  wire S_AXI_ACLK;
  wire [5:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire USER_RST_N;
  wire [31:0]cal_delay_num;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axi_lite_ctrl_DacFMCW_0_0_axi_lite_ctrl inst
       (.AXI_Trans_Addr(AXI_Trans_Addr),
        .Chirp_clk(Chirp_clk),
        .FMCW_IDX(FMCW_IDX),
        .FMCW_N(FMCW_N),
        .FMCW_R(FMCW_R),
        .FMCW_S(FMCW_S),
        .FS_Div(FS_Div),
        .FS_Number(FS_Number),
        .FS_Start(FS_Start),
        .Frame_clk(Frame_clk),
        .PL_Addr_Flag(PL_Addr_Flag),
        .PL_Done_Flag(PL_Done_Flag),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[5:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[5:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .USER_RST_N(USER_RST_N),
        .cal_delay_num(cal_delay_num));
endmodule

(* ORIG_REF_NAME = "axi_lite_ctrl" *) 
module system_axi_lite_ctrl_DacFMCW_0_0_axi_lite_ctrl
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    USER_RST_N,
    FMCW_R,
    FMCW_S,
    FMCW_N,
    FMCW_IDX,
    FS_Number,
    Chirp_clk,
    Frame_clk,
    FS_Start,
    FS_Div,
    PL_Addr_Flag,
    PL_Done_Flag,
    AXI_Trans_Addr,
    cal_delay_num,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_WSTRB,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output USER_RST_N;
  output [31:0]FMCW_R;
  output [31:0]FMCW_S;
  output [31:0]FMCW_N;
  output [7:0]FMCW_IDX;
  output [15:0]FS_Number;
  output Chirp_clk;
  output Frame_clk;
  output FS_Start;
  output [7:0]FS_Div;
  output PL_Addr_Flag;
  output PL_Done_Flag;
  output [31:0]AXI_Trans_Addr;
  output [31:0]cal_delay_num;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ACLK;
  input [3:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_ARADDR;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  (* RTL_KEEP = "true" *) wire [31:0]AXI_Trans_Addr;
  wire AXI_Trans_Addr1;
  wire \AXI_Trans_Addr1_inferred__0/i__carry__0_n_6 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry__0_n_7 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_0 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_1 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_2 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_3 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_4 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_5 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_6 ;
  wire \AXI_Trans_Addr1_inferred__0/i__carry_n_7 ;
  wire AXI_Trans_Addr2;
  wire AXI_Trans_Addr2_carry__0_i_1_n_0;
  wire AXI_Trans_Addr2_carry__0_i_2_n_0;
  wire AXI_Trans_Addr2_carry__0_i_3_n_0;
  wire AXI_Trans_Addr2_carry__0_n_6;
  wire AXI_Trans_Addr2_carry__0_n_7;
  wire AXI_Trans_Addr2_carry_i_1_n_0;
  wire AXI_Trans_Addr2_carry_i_2_n_0;
  wire AXI_Trans_Addr2_carry_i_3_n_0;
  wire AXI_Trans_Addr2_carry_i_4_n_0;
  wire AXI_Trans_Addr2_carry_i_5_n_0;
  wire AXI_Trans_Addr2_carry_i_6_n_0;
  wire AXI_Trans_Addr2_carry_i_7_n_0;
  wire AXI_Trans_Addr2_carry_i_8_n_0;
  wire AXI_Trans_Addr2_carry_n_0;
  wire AXI_Trans_Addr2_carry_n_1;
  wire AXI_Trans_Addr2_carry_n_2;
  wire AXI_Trans_Addr2_carry_n_3;
  wire AXI_Trans_Addr2_carry_n_4;
  wire AXI_Trans_Addr2_carry_n_5;
  wire AXI_Trans_Addr2_carry_n_6;
  wire AXI_Trans_Addr2_carry_n_7;
  wire \AXI_Trans_Addr[0]_i_1_n_0 ;
  wire \AXI_Trans_Addr[10]_i_1_n_0 ;
  wire \AXI_Trans_Addr[10]_i_2_n_0 ;
  wire \AXI_Trans_Addr[11]_i_1_n_0 ;
  wire \AXI_Trans_Addr[11]_i_3_n_0 ;
  wire \AXI_Trans_Addr[11]_i_4_n_0 ;
  wire \AXI_Trans_Addr[11]_i_5_n_0 ;
  wire \AXI_Trans_Addr[11]_i_6_n_0 ;
  wire \AXI_Trans_Addr[11]_i_7_n_0 ;
  wire \AXI_Trans_Addr[11]_i_8_n_0 ;
  wire \AXI_Trans_Addr[11]_i_9_n_0 ;
  wire \AXI_Trans_Addr[12]_i_1_n_0 ;
  wire \AXI_Trans_Addr[13]_i_1_n_0 ;
  wire \AXI_Trans_Addr[13]_i_2_n_0 ;
  wire \AXI_Trans_Addr[14]_i_1_n_0 ;
  wire \AXI_Trans_Addr[15]_i_1_n_0 ;
  wire \AXI_Trans_Addr[15]_i_2_n_0 ;
  wire \AXI_Trans_Addr[16]_i_1_n_0 ;
  wire \AXI_Trans_Addr[17]_i_1_n_0 ;
  wire \AXI_Trans_Addr[18]_i_1_n_0 ;
  wire \AXI_Trans_Addr[18]_i_2_n_0 ;
  wire \AXI_Trans_Addr[19]_i_10_n_0 ;
  wire \AXI_Trans_Addr[19]_i_1_n_0 ;
  wire \AXI_Trans_Addr[19]_i_3_n_0 ;
  wire \AXI_Trans_Addr[19]_i_4_n_0 ;
  wire \AXI_Trans_Addr[19]_i_5_n_0 ;
  wire \AXI_Trans_Addr[19]_i_6_n_0 ;
  wire \AXI_Trans_Addr[19]_i_7_n_0 ;
  wire \AXI_Trans_Addr[19]_i_8_n_0 ;
  wire \AXI_Trans_Addr[19]_i_9_n_0 ;
  wire \AXI_Trans_Addr[1]_i_1_n_0 ;
  wire \AXI_Trans_Addr[20]_i_1_n_0 ;
  wire \AXI_Trans_Addr[20]_i_2_n_0 ;
  wire \AXI_Trans_Addr[21]_i_1_n_0 ;
  wire \AXI_Trans_Addr[22]_i_1_n_0 ;
  wire \AXI_Trans_Addr[23]_i_1_n_0 ;
  wire \AXI_Trans_Addr[24]_i_1_n_0 ;
  wire \AXI_Trans_Addr[25]_i_1_n_0 ;
  wire \AXI_Trans_Addr[26]_i_1_n_0 ;
  wire \AXI_Trans_Addr[27]_i_1_n_0 ;
  wire \AXI_Trans_Addr[27]_i_3_n_0 ;
  wire \AXI_Trans_Addr[28]_i_1_n_0 ;
  wire \AXI_Trans_Addr[29]_i_1_n_0 ;
  wire \AXI_Trans_Addr[2]_i_1_n_0 ;
  wire \AXI_Trans_Addr[30]_i_1_n_0 ;
  wire \AXI_Trans_Addr[30]_i_2_n_0 ;
  wire \AXI_Trans_Addr[31]_i_1_n_0 ;
  wire \AXI_Trans_Addr[3]_i_1_n_0 ;
  wire \AXI_Trans_Addr[4]_i_1_n_0 ;
  wire \AXI_Trans_Addr[5]_i_1_n_0 ;
  wire \AXI_Trans_Addr[6]_i_1_n_0 ;
  wire \AXI_Trans_Addr[7]_i_1_n_0 ;
  wire \AXI_Trans_Addr[8]_i_1_n_0 ;
  wire \AXI_Trans_Addr[9]_i_1_n_0 ;
  wire \AXI_Trans_Addr[9]_i_2_n_0 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_0 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_1 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_10 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_11 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_12 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_13 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_14 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_15 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_2 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_3 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_4 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_5 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_6 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_7 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_8 ;
  wire \AXI_Trans_Addr_reg[11]_i_2_n_9 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_0 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_1 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_10 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_11 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_12 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_13 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_14 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_15 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_2 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_3 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_4 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_5 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_6 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_7 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_8 ;
  wire \AXI_Trans_Addr_reg[19]_i_2_n_9 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_0 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_1 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_10 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_11 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_12 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_13 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_14 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_15 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_2 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_3 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_4 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_5 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_6 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_7 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_8 ;
  wire \AXI_Trans_Addr_reg[27]_i_2_n_9 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_12 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_13 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_14 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_15 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_5 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_6 ;
  wire \AXI_Trans_Addr_reg[31]_i_2_n_7 ;
  (* RTL_KEEP = "true" *) wire [31:0]Chirp_Cnt;
  wire Chirp_Cnt1_carry__0_i_10_n_0;
  wire Chirp_Cnt1_carry__0_i_11_n_0;
  wire Chirp_Cnt1_carry__0_i_12_n_0;
  wire Chirp_Cnt1_carry__0_i_13_n_0;
  wire Chirp_Cnt1_carry__0_i_14_n_0;
  wire Chirp_Cnt1_carry__0_i_15_n_0;
  wire Chirp_Cnt1_carry__0_i_16_n_0;
  wire Chirp_Cnt1_carry__0_i_1_n_0;
  wire Chirp_Cnt1_carry__0_i_2_n_0;
  wire Chirp_Cnt1_carry__0_i_3_n_0;
  wire Chirp_Cnt1_carry__0_i_4_n_0;
  wire Chirp_Cnt1_carry__0_i_5_n_0;
  wire Chirp_Cnt1_carry__0_i_6_n_0;
  wire Chirp_Cnt1_carry__0_i_7_n_0;
  wire Chirp_Cnt1_carry__0_i_8_n_0;
  wire Chirp_Cnt1_carry__0_i_9_n_0;
  wire Chirp_Cnt1_carry__0_n_0;
  wire Chirp_Cnt1_carry__0_n_1;
  wire Chirp_Cnt1_carry__0_n_2;
  wire Chirp_Cnt1_carry__0_n_3;
  wire Chirp_Cnt1_carry__0_n_4;
  wire Chirp_Cnt1_carry__0_n_5;
  wire Chirp_Cnt1_carry__0_n_6;
  wire Chirp_Cnt1_carry__0_n_7;
  wire Chirp_Cnt1_carry_i_10_n_0;
  wire Chirp_Cnt1_carry_i_11_n_0;
  wire Chirp_Cnt1_carry_i_12_n_0;
  wire Chirp_Cnt1_carry_i_13_n_0;
  wire Chirp_Cnt1_carry_i_14_n_0;
  wire Chirp_Cnt1_carry_i_15_n_0;
  wire Chirp_Cnt1_carry_i_16_n_0;
  wire Chirp_Cnt1_carry_i_1_n_0;
  wire Chirp_Cnt1_carry_i_2_n_0;
  wire Chirp_Cnt1_carry_i_3_n_0;
  wire Chirp_Cnt1_carry_i_4_n_0;
  wire Chirp_Cnt1_carry_i_5_n_0;
  wire Chirp_Cnt1_carry_i_6_n_0;
  wire Chirp_Cnt1_carry_i_7_n_0;
  wire Chirp_Cnt1_carry_i_8_n_0;
  wire Chirp_Cnt1_carry_i_9_n_0;
  wire Chirp_Cnt1_carry_n_0;
  wire Chirp_Cnt1_carry_n_1;
  wire Chirp_Cnt1_carry_n_2;
  wire Chirp_Cnt1_carry_n_3;
  wire Chirp_Cnt1_carry_n_4;
  wire Chirp_Cnt1_carry_n_5;
  wire Chirp_Cnt1_carry_n_6;
  wire Chirp_Cnt1_carry_n_7;
  wire \Chirp_Cnt[0]_i_1_n_0 ;
  wire \Chirp_Cnt[31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire Chirp_Cnt_EN;
  wire [31:0]Chirp_Cnt_EN1;
  wire Chirp_Cnt_EN2__0_n_100;
  wire Chirp_Cnt_EN2__0_n_101;
  wire Chirp_Cnt_EN2__0_n_102;
  wire Chirp_Cnt_EN2__0_n_103;
  wire Chirp_Cnt_EN2__0_n_104;
  wire Chirp_Cnt_EN2__0_n_105;
  wire Chirp_Cnt_EN2__0_n_58;
  wire Chirp_Cnt_EN2__0_n_59;
  wire Chirp_Cnt_EN2__0_n_60;
  wire Chirp_Cnt_EN2__0_n_61;
  wire Chirp_Cnt_EN2__0_n_62;
  wire Chirp_Cnt_EN2__0_n_63;
  wire Chirp_Cnt_EN2__0_n_64;
  wire Chirp_Cnt_EN2__0_n_65;
  wire Chirp_Cnt_EN2__0_n_66;
  wire Chirp_Cnt_EN2__0_n_67;
  wire Chirp_Cnt_EN2__0_n_68;
  wire Chirp_Cnt_EN2__0_n_69;
  wire Chirp_Cnt_EN2__0_n_70;
  wire Chirp_Cnt_EN2__0_n_71;
  wire Chirp_Cnt_EN2__0_n_72;
  wire Chirp_Cnt_EN2__0_n_73;
  wire Chirp_Cnt_EN2__0_n_74;
  wire Chirp_Cnt_EN2__0_n_75;
  wire Chirp_Cnt_EN2__0_n_76;
  wire Chirp_Cnt_EN2__0_n_77;
  wire Chirp_Cnt_EN2__0_n_78;
  wire Chirp_Cnt_EN2__0_n_79;
  wire Chirp_Cnt_EN2__0_n_80;
  wire Chirp_Cnt_EN2__0_n_81;
  wire Chirp_Cnt_EN2__0_n_82;
  wire Chirp_Cnt_EN2__0_n_83;
  wire Chirp_Cnt_EN2__0_n_84;
  wire Chirp_Cnt_EN2__0_n_85;
  wire Chirp_Cnt_EN2__0_n_86;
  wire Chirp_Cnt_EN2__0_n_87;
  wire Chirp_Cnt_EN2__0_n_88;
  wire Chirp_Cnt_EN2__0_n_89;
  wire Chirp_Cnt_EN2__0_n_90;
  wire Chirp_Cnt_EN2__0_n_91;
  wire Chirp_Cnt_EN2__0_n_92;
  wire Chirp_Cnt_EN2__0_n_93;
  wire Chirp_Cnt_EN2__0_n_94;
  wire Chirp_Cnt_EN2__0_n_95;
  wire Chirp_Cnt_EN2__0_n_96;
  wire Chirp_Cnt_EN2__0_n_97;
  wire Chirp_Cnt_EN2__0_n_98;
  wire Chirp_Cnt_EN2__0_n_99;
  wire Chirp_Cnt_EN2_n_100;
  wire Chirp_Cnt_EN2_n_101;
  wire Chirp_Cnt_EN2_n_102;
  wire Chirp_Cnt_EN2_n_103;
  wire Chirp_Cnt_EN2_n_104;
  wire Chirp_Cnt_EN2_n_105;
  wire Chirp_Cnt_EN2_n_106;
  wire Chirp_Cnt_EN2_n_107;
  wire Chirp_Cnt_EN2_n_108;
  wire Chirp_Cnt_EN2_n_109;
  wire Chirp_Cnt_EN2_n_110;
  wire Chirp_Cnt_EN2_n_111;
  wire Chirp_Cnt_EN2_n_112;
  wire Chirp_Cnt_EN2_n_113;
  wire Chirp_Cnt_EN2_n_114;
  wire Chirp_Cnt_EN2_n_115;
  wire Chirp_Cnt_EN2_n_116;
  wire Chirp_Cnt_EN2_n_117;
  wire Chirp_Cnt_EN2_n_118;
  wire Chirp_Cnt_EN2_n_119;
  wire Chirp_Cnt_EN2_n_120;
  wire Chirp_Cnt_EN2_n_121;
  wire Chirp_Cnt_EN2_n_122;
  wire Chirp_Cnt_EN2_n_123;
  wire Chirp_Cnt_EN2_n_124;
  wire Chirp_Cnt_EN2_n_125;
  wire Chirp_Cnt_EN2_n_126;
  wire Chirp_Cnt_EN2_n_127;
  wire Chirp_Cnt_EN2_n_128;
  wire Chirp_Cnt_EN2_n_129;
  wire Chirp_Cnt_EN2_n_130;
  wire Chirp_Cnt_EN2_n_131;
  wire Chirp_Cnt_EN2_n_132;
  wire Chirp_Cnt_EN2_n_133;
  wire Chirp_Cnt_EN2_n_134;
  wire Chirp_Cnt_EN2_n_135;
  wire Chirp_Cnt_EN2_n_136;
  wire Chirp_Cnt_EN2_n_137;
  wire Chirp_Cnt_EN2_n_138;
  wire Chirp_Cnt_EN2_n_139;
  wire Chirp_Cnt_EN2_n_140;
  wire Chirp_Cnt_EN2_n_141;
  wire Chirp_Cnt_EN2_n_142;
  wire Chirp_Cnt_EN2_n_143;
  wire Chirp_Cnt_EN2_n_144;
  wire Chirp_Cnt_EN2_n_145;
  wire Chirp_Cnt_EN2_n_146;
  wire Chirp_Cnt_EN2_n_147;
  wire Chirp_Cnt_EN2_n_148;
  wire Chirp_Cnt_EN2_n_149;
  wire Chirp_Cnt_EN2_n_150;
  wire Chirp_Cnt_EN2_n_151;
  wire Chirp_Cnt_EN2_n_152;
  wire Chirp_Cnt_EN2_n_153;
  wire Chirp_Cnt_EN2_n_58;
  wire Chirp_Cnt_EN2_n_59;
  wire Chirp_Cnt_EN2_n_60;
  wire Chirp_Cnt_EN2_n_61;
  wire Chirp_Cnt_EN2_n_62;
  wire Chirp_Cnt_EN2_n_63;
  wire Chirp_Cnt_EN2_n_64;
  wire Chirp_Cnt_EN2_n_65;
  wire Chirp_Cnt_EN2_n_66;
  wire Chirp_Cnt_EN2_n_67;
  wire Chirp_Cnt_EN2_n_68;
  wire Chirp_Cnt_EN2_n_69;
  wire Chirp_Cnt_EN2_n_70;
  wire Chirp_Cnt_EN2_n_71;
  wire Chirp_Cnt_EN2_n_72;
  wire Chirp_Cnt_EN2_n_73;
  wire Chirp_Cnt_EN2_n_74;
  wire Chirp_Cnt_EN2_n_75;
  wire Chirp_Cnt_EN2_n_76;
  wire Chirp_Cnt_EN2_n_77;
  wire Chirp_Cnt_EN2_n_78;
  wire Chirp_Cnt_EN2_n_79;
  wire Chirp_Cnt_EN2_n_80;
  wire Chirp_Cnt_EN2_n_81;
  wire Chirp_Cnt_EN2_n_82;
  wire Chirp_Cnt_EN2_n_83;
  wire Chirp_Cnt_EN2_n_84;
  wire Chirp_Cnt_EN2_n_85;
  wire Chirp_Cnt_EN2_n_86;
  wire Chirp_Cnt_EN2_n_87;
  wire Chirp_Cnt_EN2_n_88;
  wire Chirp_Cnt_EN2_n_89;
  wire Chirp_Cnt_EN2_n_90;
  wire Chirp_Cnt_EN2_n_91;
  wire Chirp_Cnt_EN2_n_92;
  wire Chirp_Cnt_EN2_n_93;
  wire Chirp_Cnt_EN2_n_94;
  wire Chirp_Cnt_EN2_n_95;
  wire Chirp_Cnt_EN2_n_96;
  wire Chirp_Cnt_EN2_n_97;
  wire Chirp_Cnt_EN2_n_98;
  wire Chirp_Cnt_EN2_n_99;
  wire Chirp_Cnt_EN3__0_carry__0_i_1_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_2_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_3_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_4_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_5_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_6_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_7_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_i_8_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_n_0;
  wire Chirp_Cnt_EN3__0_carry__0_n_1;
  wire Chirp_Cnt_EN3__0_carry__0_n_10;
  wire Chirp_Cnt_EN3__0_carry__0_n_11;
  wire Chirp_Cnt_EN3__0_carry__0_n_12;
  wire Chirp_Cnt_EN3__0_carry__0_n_13;
  wire Chirp_Cnt_EN3__0_carry__0_n_14;
  wire Chirp_Cnt_EN3__0_carry__0_n_15;
  wire Chirp_Cnt_EN3__0_carry__0_n_2;
  wire Chirp_Cnt_EN3__0_carry__0_n_3;
  wire Chirp_Cnt_EN3__0_carry__0_n_4;
  wire Chirp_Cnt_EN3__0_carry__0_n_5;
  wire Chirp_Cnt_EN3__0_carry__0_n_6;
  wire Chirp_Cnt_EN3__0_carry__0_n_7;
  wire Chirp_Cnt_EN3__0_carry__0_n_8;
  wire Chirp_Cnt_EN3__0_carry__0_n_9;
  wire Chirp_Cnt_EN3__0_carry__1_i_1_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_2_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_3_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_4_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_5_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_6_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_7_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_i_8_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_n_0;
  wire Chirp_Cnt_EN3__0_carry__1_n_1;
  wire Chirp_Cnt_EN3__0_carry__1_n_10;
  wire Chirp_Cnt_EN3__0_carry__1_n_11;
  wire Chirp_Cnt_EN3__0_carry__1_n_12;
  wire Chirp_Cnt_EN3__0_carry__1_n_13;
  wire Chirp_Cnt_EN3__0_carry__1_n_14;
  wire Chirp_Cnt_EN3__0_carry__1_n_15;
  wire Chirp_Cnt_EN3__0_carry__1_n_2;
  wire Chirp_Cnt_EN3__0_carry__1_n_3;
  wire Chirp_Cnt_EN3__0_carry__1_n_4;
  wire Chirp_Cnt_EN3__0_carry__1_n_5;
  wire Chirp_Cnt_EN3__0_carry__1_n_6;
  wire Chirp_Cnt_EN3__0_carry__1_n_7;
  wire Chirp_Cnt_EN3__0_carry__1_n_8;
  wire Chirp_Cnt_EN3__0_carry__1_n_9;
  wire Chirp_Cnt_EN3__0_carry__2_i_1_n_0;
  wire Chirp_Cnt_EN3__0_carry__2_i_2_n_0;
  wire Chirp_Cnt_EN3__0_carry__2_i_3_n_0;
  wire Chirp_Cnt_EN3__0_carry__2_i_4_n_0;
  wire Chirp_Cnt_EN3__0_carry__2_i_5_n_0;
  wire Chirp_Cnt_EN3__0_carry__2_n_11;
  wire Chirp_Cnt_EN3__0_carry__2_n_12;
  wire Chirp_Cnt_EN3__0_carry__2_n_13;
  wire Chirp_Cnt_EN3__0_carry__2_n_14;
  wire Chirp_Cnt_EN3__0_carry__2_n_15;
  wire Chirp_Cnt_EN3__0_carry__2_n_4;
  wire Chirp_Cnt_EN3__0_carry__2_n_5;
  wire Chirp_Cnt_EN3__0_carry__2_n_6;
  wire Chirp_Cnt_EN3__0_carry__2_n_7;
  wire Chirp_Cnt_EN3__0_carry_i_1_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_2_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_3_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_4_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_5_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_6_n_0;
  wire Chirp_Cnt_EN3__0_carry_i_7_n_0;
  wire Chirp_Cnt_EN3__0_carry_n_0;
  wire Chirp_Cnt_EN3__0_carry_n_1;
  wire Chirp_Cnt_EN3__0_carry_n_10;
  wire Chirp_Cnt_EN3__0_carry_n_11;
  wire Chirp_Cnt_EN3__0_carry_n_12;
  wire Chirp_Cnt_EN3__0_carry_n_13;
  wire Chirp_Cnt_EN3__0_carry_n_14;
  wire Chirp_Cnt_EN3__0_carry_n_15;
  wire Chirp_Cnt_EN3__0_carry_n_2;
  wire Chirp_Cnt_EN3__0_carry_n_3;
  wire Chirp_Cnt_EN3__0_carry_n_4;
  wire Chirp_Cnt_EN3__0_carry_n_5;
  wire Chirp_Cnt_EN3__0_carry_n_6;
  wire Chirp_Cnt_EN3__0_carry_n_7;
  wire Chirp_Cnt_EN3__0_carry_n_8;
  wire Chirp_Cnt_EN3__0_carry_n_9;
  wire Chirp_Cnt_EN3__85_carry__0_i_10_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_11_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_12_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_13_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_14_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_15_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_16_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_1_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_2_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_3_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_4_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_5_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_6_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_7_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_8_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_i_9_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_n_0;
  wire Chirp_Cnt_EN3__85_carry__0_n_1;
  wire Chirp_Cnt_EN3__85_carry__0_n_10;
  wire Chirp_Cnt_EN3__85_carry__0_n_11;
  wire Chirp_Cnt_EN3__85_carry__0_n_12;
  wire Chirp_Cnt_EN3__85_carry__0_n_13;
  wire Chirp_Cnt_EN3__85_carry__0_n_14;
  wire Chirp_Cnt_EN3__85_carry__0_n_15;
  wire Chirp_Cnt_EN3__85_carry__0_n_2;
  wire Chirp_Cnt_EN3__85_carry__0_n_3;
  wire Chirp_Cnt_EN3__85_carry__0_n_4;
  wire Chirp_Cnt_EN3__85_carry__0_n_5;
  wire Chirp_Cnt_EN3__85_carry__0_n_6;
  wire Chirp_Cnt_EN3__85_carry__0_n_7;
  wire Chirp_Cnt_EN3__85_carry__0_n_8;
  wire Chirp_Cnt_EN3__85_carry__0_n_9;
  wire Chirp_Cnt_EN3__85_carry__1_i_10_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_11_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_12_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_13_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_14_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_15_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_16_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_1_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_2_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_3_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_4_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_5_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_6_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_7_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_8_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_i_9_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_n_0;
  wire Chirp_Cnt_EN3__85_carry__1_n_1;
  wire Chirp_Cnt_EN3__85_carry__1_n_10;
  wire Chirp_Cnt_EN3__85_carry__1_n_11;
  wire Chirp_Cnt_EN3__85_carry__1_n_12;
  wire Chirp_Cnt_EN3__85_carry__1_n_13;
  wire Chirp_Cnt_EN3__85_carry__1_n_14;
  wire Chirp_Cnt_EN3__85_carry__1_n_15;
  wire Chirp_Cnt_EN3__85_carry__1_n_2;
  wire Chirp_Cnt_EN3__85_carry__1_n_3;
  wire Chirp_Cnt_EN3__85_carry__1_n_4;
  wire Chirp_Cnt_EN3__85_carry__1_n_5;
  wire Chirp_Cnt_EN3__85_carry__1_n_6;
  wire Chirp_Cnt_EN3__85_carry__1_n_7;
  wire Chirp_Cnt_EN3__85_carry__1_n_8;
  wire Chirp_Cnt_EN3__85_carry__1_n_9;
  wire Chirp_Cnt_EN3__85_carry__2_i_1_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_2_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_3_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_4_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_5_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_6_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_7_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_8_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_i_9_n_0;
  wire Chirp_Cnt_EN3__85_carry__2_n_11;
  wire Chirp_Cnt_EN3__85_carry__2_n_12;
  wire Chirp_Cnt_EN3__85_carry__2_n_13;
  wire Chirp_Cnt_EN3__85_carry__2_n_14;
  wire Chirp_Cnt_EN3__85_carry__2_n_15;
  wire Chirp_Cnt_EN3__85_carry__2_n_4;
  wire Chirp_Cnt_EN3__85_carry__2_n_5;
  wire Chirp_Cnt_EN3__85_carry__2_n_6;
  wire Chirp_Cnt_EN3__85_carry__2_n_7;
  wire Chirp_Cnt_EN3__85_carry_i_10_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_11_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_1_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_2_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_3_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_4_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_5_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_6_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_7_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_8_n_0;
  wire Chirp_Cnt_EN3__85_carry_i_9_n_0;
  wire Chirp_Cnt_EN3__85_carry_n_0;
  wire Chirp_Cnt_EN3__85_carry_n_1;
  wire Chirp_Cnt_EN3__85_carry_n_10;
  wire Chirp_Cnt_EN3__85_carry_n_11;
  wire Chirp_Cnt_EN3__85_carry_n_12;
  wire Chirp_Cnt_EN3__85_carry_n_13;
  wire Chirp_Cnt_EN3__85_carry_n_14;
  wire Chirp_Cnt_EN3__85_carry_n_15;
  wire Chirp_Cnt_EN3__85_carry_n_2;
  wire Chirp_Cnt_EN3__85_carry_n_3;
  wire Chirp_Cnt_EN3__85_carry_n_4;
  wire Chirp_Cnt_EN3__85_carry_n_5;
  wire Chirp_Cnt_EN3__85_carry_n_6;
  wire Chirp_Cnt_EN3__85_carry_n_7;
  wire Chirp_Cnt_EN3__85_carry_n_8;
  wire Chirp_Cnt_EN3__85_carry_n_9;
  wire Chirp_Cnt_EN_i_1_n_0;
  wire Chirp_Cnt_EN_reg0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_10_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_11_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_12_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_13_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_14_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_15_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_16_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_1_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_2_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_3_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_4_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_5_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_6_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_7_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_8_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_i_9_n_0;
  wire Chirp_Cnt_EN_reg0_carry__0_n_1;
  wire Chirp_Cnt_EN_reg0_carry__0_n_2;
  wire Chirp_Cnt_EN_reg0_carry__0_n_3;
  wire Chirp_Cnt_EN_reg0_carry__0_n_4;
  wire Chirp_Cnt_EN_reg0_carry__0_n_5;
  wire Chirp_Cnt_EN_reg0_carry__0_n_6;
  wire Chirp_Cnt_EN_reg0_carry__0_n_7;
  wire Chirp_Cnt_EN_reg0_carry_i_10_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_11_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_12_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_13_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_14_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_15_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_16_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_1_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_2_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_3_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_4_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_5_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_6_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_7_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_8_n_0;
  wire Chirp_Cnt_EN_reg0_carry_i_9_n_0;
  wire Chirp_Cnt_EN_reg0_carry_n_0;
  wire Chirp_Cnt_EN_reg0_carry_n_1;
  wire Chirp_Cnt_EN_reg0_carry_n_2;
  wire Chirp_Cnt_EN_reg0_carry_n_3;
  wire Chirp_Cnt_EN_reg0_carry_n_4;
  wire Chirp_Cnt_EN_reg0_carry_n_5;
  wire Chirp_Cnt_EN_reg0_carry_n_6;
  wire Chirp_Cnt_EN_reg0_carry_n_7;
  wire Chirp_Cnt_reg0_carry__0_n_0;
  wire Chirp_Cnt_reg0_carry__0_n_1;
  wire Chirp_Cnt_reg0_carry__0_n_10;
  wire Chirp_Cnt_reg0_carry__0_n_11;
  wire Chirp_Cnt_reg0_carry__0_n_12;
  wire Chirp_Cnt_reg0_carry__0_n_13;
  wire Chirp_Cnt_reg0_carry__0_n_14;
  wire Chirp_Cnt_reg0_carry__0_n_15;
  wire Chirp_Cnt_reg0_carry__0_n_2;
  wire Chirp_Cnt_reg0_carry__0_n_3;
  wire Chirp_Cnt_reg0_carry__0_n_4;
  wire Chirp_Cnt_reg0_carry__0_n_5;
  wire Chirp_Cnt_reg0_carry__0_n_6;
  wire Chirp_Cnt_reg0_carry__0_n_7;
  wire Chirp_Cnt_reg0_carry__0_n_8;
  wire Chirp_Cnt_reg0_carry__0_n_9;
  wire Chirp_Cnt_reg0_carry__1_n_0;
  wire Chirp_Cnt_reg0_carry__1_n_1;
  wire Chirp_Cnt_reg0_carry__1_n_10;
  wire Chirp_Cnt_reg0_carry__1_n_11;
  wire Chirp_Cnt_reg0_carry__1_n_12;
  wire Chirp_Cnt_reg0_carry__1_n_13;
  wire Chirp_Cnt_reg0_carry__1_n_14;
  wire Chirp_Cnt_reg0_carry__1_n_15;
  wire Chirp_Cnt_reg0_carry__1_n_2;
  wire Chirp_Cnt_reg0_carry__1_n_3;
  wire Chirp_Cnt_reg0_carry__1_n_4;
  wire Chirp_Cnt_reg0_carry__1_n_5;
  wire Chirp_Cnt_reg0_carry__1_n_6;
  wire Chirp_Cnt_reg0_carry__1_n_7;
  wire Chirp_Cnt_reg0_carry__1_n_8;
  wire Chirp_Cnt_reg0_carry__1_n_9;
  wire Chirp_Cnt_reg0_carry__2_n_10;
  wire Chirp_Cnt_reg0_carry__2_n_11;
  wire Chirp_Cnt_reg0_carry__2_n_12;
  wire Chirp_Cnt_reg0_carry__2_n_13;
  wire Chirp_Cnt_reg0_carry__2_n_14;
  wire Chirp_Cnt_reg0_carry__2_n_15;
  wire Chirp_Cnt_reg0_carry__2_n_2;
  wire Chirp_Cnt_reg0_carry__2_n_3;
  wire Chirp_Cnt_reg0_carry__2_n_4;
  wire Chirp_Cnt_reg0_carry__2_n_5;
  wire Chirp_Cnt_reg0_carry__2_n_6;
  wire Chirp_Cnt_reg0_carry__2_n_7;
  wire Chirp_Cnt_reg0_carry__2_n_9;
  wire Chirp_Cnt_reg0_carry_n_0;
  wire Chirp_Cnt_reg0_carry_n_1;
  wire Chirp_Cnt_reg0_carry_n_10;
  wire Chirp_Cnt_reg0_carry_n_11;
  wire Chirp_Cnt_reg0_carry_n_12;
  wire Chirp_Cnt_reg0_carry_n_13;
  wire Chirp_Cnt_reg0_carry_n_14;
  wire Chirp_Cnt_reg0_carry_n_15;
  wire Chirp_Cnt_reg0_carry_n_2;
  wire Chirp_Cnt_reg0_carry_n_3;
  wire Chirp_Cnt_reg0_carry_n_4;
  wire Chirp_Cnt_reg0_carry_n_5;
  wire Chirp_Cnt_reg0_carry_n_6;
  wire Chirp_Cnt_reg0_carry_n_7;
  wire Chirp_Cnt_reg0_carry_n_8;
  wire Chirp_Cnt_reg0_carry_n_9;
  (* RTL_KEEP = "true" *) wire Chirp_clk;
  wire Chirp_clk_i_1_n_0;
  wire Chirp_clk_reg0_carry__0_i_10_n_0;
  wire Chirp_clk_reg0_carry__0_i_11_n_0;
  wire Chirp_clk_reg0_carry__0_i_12_n_0;
  wire Chirp_clk_reg0_carry__0_i_13_n_0;
  wire Chirp_clk_reg0_carry__0_i_14_n_0;
  wire Chirp_clk_reg0_carry__0_i_15_n_0;
  wire Chirp_clk_reg0_carry__0_i_16_n_0;
  wire Chirp_clk_reg0_carry__0_i_1_n_0;
  wire Chirp_clk_reg0_carry__0_i_2_n_0;
  wire Chirp_clk_reg0_carry__0_i_3_n_0;
  wire Chirp_clk_reg0_carry__0_i_4_n_0;
  wire Chirp_clk_reg0_carry__0_i_5_n_0;
  wire Chirp_clk_reg0_carry__0_i_6_n_0;
  wire Chirp_clk_reg0_carry__0_i_7_n_0;
  wire Chirp_clk_reg0_carry__0_i_8_n_0;
  wire Chirp_clk_reg0_carry__0_i_9_n_0;
  wire Chirp_clk_reg0_carry__0_n_0;
  wire Chirp_clk_reg0_carry__0_n_1;
  wire Chirp_clk_reg0_carry__0_n_2;
  wire Chirp_clk_reg0_carry__0_n_3;
  wire Chirp_clk_reg0_carry__0_n_4;
  wire Chirp_clk_reg0_carry__0_n_5;
  wire Chirp_clk_reg0_carry__0_n_6;
  wire Chirp_clk_reg0_carry__0_n_7;
  wire Chirp_clk_reg0_carry_i_10_n_0;
  wire Chirp_clk_reg0_carry_i_11_n_0;
  wire Chirp_clk_reg0_carry_i_12_n_0;
  wire Chirp_clk_reg0_carry_i_13_n_0;
  wire Chirp_clk_reg0_carry_i_14_n_0;
  wire Chirp_clk_reg0_carry_i_15_n_0;
  wire Chirp_clk_reg0_carry_i_16_n_0;
  wire Chirp_clk_reg0_carry_i_1_n_0;
  wire Chirp_clk_reg0_carry_i_2_n_0;
  wire Chirp_clk_reg0_carry_i_3_n_0;
  wire Chirp_clk_reg0_carry_i_4_n_0;
  wire Chirp_clk_reg0_carry_i_5_n_0;
  wire Chirp_clk_reg0_carry_i_6_n_0;
  wire Chirp_clk_reg0_carry_i_7_n_0;
  wire Chirp_clk_reg0_carry_i_8_n_0;
  wire Chirp_clk_reg0_carry_i_9_n_0;
  wire Chirp_clk_reg0_carry_n_0;
  wire Chirp_clk_reg0_carry_n_1;
  wire Chirp_clk_reg0_carry_n_2;
  wire Chirp_clk_reg0_carry_n_3;
  wire Chirp_clk_reg0_carry_n_4;
  wire Chirp_clk_reg0_carry_n_5;
  wire Chirp_clk_reg0_carry_n_6;
  wire Chirp_clk_reg0_carry_n_7;
  (* RTL_KEEP = "true" *) wire [15:0]FMCW_Adc_Delay_us;
  (* RTL_KEEP = "true" *) wire [31:0]FMCW_Chirp_Cycle_us;
  wire \FMCW_Chirp_Cycle_us[31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]FMCW_Chirp_Number;
  (* RTL_KEEP = "true" *) wire [15:0]FMCW_Frame_Cycle_ms;
  (* RTL_KEEP = "true" *) wire [7:0]FMCW_IDX;
  (* RTL_KEEP = "true" *) wire [31:0]FMCW_N;
  (* RTL_KEEP = "true" *) wire [31:0]FMCW_R;
  wire \FMCW_R[31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [31:0]FMCW_S;
  (* RTL_KEEP = "true" *) wire [7:0]FS_Div;
  (* RTL_KEEP = "true" *) wire [15:0]FS_Number;
  (* RTL_KEEP = "true" *) wire FS_Start;
  wire FS_Start_reg0_carry__0_i_10_n_0;
  wire FS_Start_reg0_carry__0_i_11_n_0;
  wire FS_Start_reg0_carry__0_i_12_n_0;
  wire FS_Start_reg0_carry__0_i_13_n_0;
  wire FS_Start_reg0_carry__0_i_14_n_0;
  wire FS_Start_reg0_carry__0_i_15_n_0;
  wire FS_Start_reg0_carry__0_i_16_n_0;
  wire FS_Start_reg0_carry__0_i_1_n_0;
  wire FS_Start_reg0_carry__0_i_2_n_0;
  wire FS_Start_reg0_carry__0_i_3_n_0;
  wire FS_Start_reg0_carry__0_i_4_n_0;
  wire FS_Start_reg0_carry__0_i_5_n_0;
  wire FS_Start_reg0_carry__0_i_6_n_0;
  wire FS_Start_reg0_carry__0_i_7_n_0;
  wire FS_Start_reg0_carry__0_i_8_n_0;
  wire FS_Start_reg0_carry__0_i_9_n_0;
  wire FS_Start_reg0_carry__0_n_0;
  wire FS_Start_reg0_carry__0_n_1;
  wire FS_Start_reg0_carry__0_n_2;
  wire FS_Start_reg0_carry__0_n_3;
  wire FS_Start_reg0_carry__0_n_4;
  wire FS_Start_reg0_carry__0_n_5;
  wire FS_Start_reg0_carry__0_n_6;
  wire FS_Start_reg0_carry__0_n_7;
  wire FS_Start_reg0_carry_i_10_n_0;
  wire FS_Start_reg0_carry_i_11_n_0;
  wire FS_Start_reg0_carry_i_12_n_0;
  wire FS_Start_reg0_carry_i_13_n_0;
  wire FS_Start_reg0_carry_i_14_n_0;
  wire FS_Start_reg0_carry_i_15_n_0;
  wire FS_Start_reg0_carry_i_16_n_0;
  wire FS_Start_reg0_carry_i_1_n_0;
  wire FS_Start_reg0_carry_i_2_n_0;
  wire FS_Start_reg0_carry_i_3_n_0;
  wire FS_Start_reg0_carry_i_4_n_0;
  wire FS_Start_reg0_carry_i_5_n_0;
  wire FS_Start_reg0_carry_i_6_n_0;
  wire FS_Start_reg0_carry_i_7_n_0;
  wire FS_Start_reg0_carry_i_8_n_0;
  wire FS_Start_reg0_carry_i_9_n_0;
  wire FS_Start_reg0_carry_n_0;
  wire FS_Start_reg0_carry_n_1;
  wire FS_Start_reg0_carry_n_2;
  wire FS_Start_reg0_carry_n_3;
  wire FS_Start_reg0_carry_n_4;
  wire FS_Start_reg0_carry_n_5;
  wire FS_Start_reg0_carry_n_6;
  wire FS_Start_reg0_carry_n_7;
  wire [31:0]FS_Start_reg1;
  wire FS_Start_reg1__0_carry__0_i_10_n_0;
  wire FS_Start_reg1__0_carry__0_i_11_n_0;
  wire FS_Start_reg1__0_carry__0_i_12_n_0;
  wire FS_Start_reg1__0_carry__0_i_13_n_0;
  wire FS_Start_reg1__0_carry__0_i_14_n_0;
  wire FS_Start_reg1__0_carry__0_i_15_n_0;
  wire FS_Start_reg1__0_carry__0_i_16_n_0;
  wire FS_Start_reg1__0_carry__0_i_17_n_0;
  wire FS_Start_reg1__0_carry__0_i_1_n_0;
  wire FS_Start_reg1__0_carry__0_i_1_n_1;
  wire FS_Start_reg1__0_carry__0_i_1_n_2;
  wire FS_Start_reg1__0_carry__0_i_1_n_3;
  wire FS_Start_reg1__0_carry__0_i_1_n_4;
  wire FS_Start_reg1__0_carry__0_i_1_n_5;
  wire FS_Start_reg1__0_carry__0_i_1_n_6;
  wire FS_Start_reg1__0_carry__0_i_1_n_7;
  wire FS_Start_reg1__0_carry__0_i_2_n_0;
  wire FS_Start_reg1__0_carry__0_i_3_n_0;
  wire FS_Start_reg1__0_carry__0_i_4_n_0;
  wire FS_Start_reg1__0_carry__0_i_5_n_0;
  wire FS_Start_reg1__0_carry__0_i_6_n_0;
  wire FS_Start_reg1__0_carry__0_i_7_n_0;
  wire FS_Start_reg1__0_carry__0_i_8_n_0;
  wire FS_Start_reg1__0_carry__0_i_9_n_0;
  wire FS_Start_reg1__0_carry__0_n_0;
  wire FS_Start_reg1__0_carry__0_n_1;
  wire FS_Start_reg1__0_carry__0_n_10;
  wire FS_Start_reg1__0_carry__0_n_11;
  wire FS_Start_reg1__0_carry__0_n_12;
  wire FS_Start_reg1__0_carry__0_n_13;
  wire FS_Start_reg1__0_carry__0_n_14;
  wire FS_Start_reg1__0_carry__0_n_15;
  wire FS_Start_reg1__0_carry__0_n_2;
  wire FS_Start_reg1__0_carry__0_n_3;
  wire FS_Start_reg1__0_carry__0_n_4;
  wire FS_Start_reg1__0_carry__0_n_5;
  wire FS_Start_reg1__0_carry__0_n_6;
  wire FS_Start_reg1__0_carry__0_n_7;
  wire FS_Start_reg1__0_carry__0_n_8;
  wire FS_Start_reg1__0_carry__0_n_9;
  wire FS_Start_reg1__0_carry__1_i_1_n_0;
  wire FS_Start_reg1__0_carry__1_i_1_n_1;
  wire FS_Start_reg1__0_carry__1_i_1_n_2;
  wire FS_Start_reg1__0_carry__1_i_1_n_3;
  wire FS_Start_reg1__0_carry__1_i_1_n_4;
  wire FS_Start_reg1__0_carry__1_i_1_n_5;
  wire FS_Start_reg1__0_carry__1_i_1_n_6;
  wire FS_Start_reg1__0_carry__1_i_1_n_7;
  wire FS_Start_reg1__0_carry__1_i_2_n_0;
  wire FS_Start_reg1__0_carry__1_i_3_n_0;
  wire FS_Start_reg1__0_carry__1_i_4_n_0;
  wire FS_Start_reg1__0_carry__1_i_5_n_0;
  wire FS_Start_reg1__0_carry__1_i_6_n_0;
  wire FS_Start_reg1__0_carry__1_i_7_n_0;
  wire FS_Start_reg1__0_carry__1_i_8_n_0;
  wire FS_Start_reg1__0_carry__1_i_9_n_0;
  wire FS_Start_reg1__0_carry__1_n_0;
  wire FS_Start_reg1__0_carry__1_n_1;
  wire FS_Start_reg1__0_carry__1_n_10;
  wire FS_Start_reg1__0_carry__1_n_11;
  wire FS_Start_reg1__0_carry__1_n_12;
  wire FS_Start_reg1__0_carry__1_n_13;
  wire FS_Start_reg1__0_carry__1_n_14;
  wire FS_Start_reg1__0_carry__1_n_15;
  wire FS_Start_reg1__0_carry__1_n_2;
  wire FS_Start_reg1__0_carry__1_n_3;
  wire FS_Start_reg1__0_carry__1_n_4;
  wire FS_Start_reg1__0_carry__1_n_5;
  wire FS_Start_reg1__0_carry__1_n_6;
  wire FS_Start_reg1__0_carry__1_n_7;
  wire FS_Start_reg1__0_carry__1_n_8;
  wire FS_Start_reg1__0_carry__1_n_9;
  wire FS_Start_reg1__0_carry__2_i_1_n_2;
  wire FS_Start_reg1__0_carry__2_i_1_n_3;
  wire FS_Start_reg1__0_carry__2_i_1_n_4;
  wire FS_Start_reg1__0_carry__2_i_1_n_5;
  wire FS_Start_reg1__0_carry__2_i_1_n_6;
  wire FS_Start_reg1__0_carry__2_i_1_n_7;
  wire FS_Start_reg1__0_carry__2_i_2_n_0;
  wire FS_Start_reg1__0_carry__2_i_3_n_0;
  wire FS_Start_reg1__0_carry__2_i_4_n_0;
  wire FS_Start_reg1__0_carry__2_i_5_n_0;
  wire FS_Start_reg1__0_carry__2_i_6_n_0;
  wire FS_Start_reg1__0_carry__2_n_11;
  wire FS_Start_reg1__0_carry__2_n_12;
  wire FS_Start_reg1__0_carry__2_n_13;
  wire FS_Start_reg1__0_carry__2_n_14;
  wire FS_Start_reg1__0_carry__2_n_15;
  wire FS_Start_reg1__0_carry__2_n_4;
  wire FS_Start_reg1__0_carry__2_n_5;
  wire FS_Start_reg1__0_carry__2_n_6;
  wire FS_Start_reg1__0_carry__2_n_7;
  wire FS_Start_reg1__0_carry_i_10_n_0;
  wire FS_Start_reg1__0_carry_i_11_n_0;
  wire FS_Start_reg1__0_carry_i_12_n_0;
  wire FS_Start_reg1__0_carry_i_13_n_0;
  wire FS_Start_reg1__0_carry_i_14_n_0;
  wire FS_Start_reg1__0_carry_i_15_n_0;
  wire FS_Start_reg1__0_carry_i_16_n_0;
  wire FS_Start_reg1__0_carry_i_1_n_0;
  wire FS_Start_reg1__0_carry_i_1_n_1;
  wire FS_Start_reg1__0_carry_i_1_n_2;
  wire FS_Start_reg1__0_carry_i_1_n_3;
  wire FS_Start_reg1__0_carry_i_1_n_4;
  wire FS_Start_reg1__0_carry_i_1_n_5;
  wire FS_Start_reg1__0_carry_i_1_n_6;
  wire FS_Start_reg1__0_carry_i_1_n_7;
  wire FS_Start_reg1__0_carry_i_2_n_0;
  wire FS_Start_reg1__0_carry_i_3_n_0;
  wire FS_Start_reg1__0_carry_i_4_n_0;
  wire FS_Start_reg1__0_carry_i_5_n_0;
  wire FS_Start_reg1__0_carry_i_6_n_0;
  wire FS_Start_reg1__0_carry_i_7_n_0;
  wire FS_Start_reg1__0_carry_i_8_n_0;
  wire FS_Start_reg1__0_carry_i_9_n_0;
  wire FS_Start_reg1__0_carry_n_0;
  wire FS_Start_reg1__0_carry_n_1;
  wire FS_Start_reg1__0_carry_n_10;
  wire FS_Start_reg1__0_carry_n_11;
  wire FS_Start_reg1__0_carry_n_12;
  wire FS_Start_reg1__0_carry_n_13;
  wire FS_Start_reg1__0_carry_n_14;
  wire FS_Start_reg1__0_carry_n_2;
  wire FS_Start_reg1__0_carry_n_3;
  wire FS_Start_reg1__0_carry_n_4;
  wire FS_Start_reg1__0_carry_n_5;
  wire FS_Start_reg1__0_carry_n_6;
  wire FS_Start_reg1__0_carry_n_7;
  wire FS_Start_reg1__0_carry_n_8;
  wire FS_Start_reg1__0_carry_n_9;
  wire FS_Start_reg1__85_carry__0_i_10_n_0;
  wire FS_Start_reg1__85_carry__0_i_11_n_0;
  wire FS_Start_reg1__85_carry__0_i_12_n_0;
  wire FS_Start_reg1__85_carry__0_i_13_n_0;
  wire FS_Start_reg1__85_carry__0_i_14_n_0;
  wire FS_Start_reg1__85_carry__0_i_15_n_0;
  wire FS_Start_reg1__85_carry__0_i_16_n_0;
  wire FS_Start_reg1__85_carry__0_i_1_n_0;
  wire FS_Start_reg1__85_carry__0_i_2_n_0;
  wire FS_Start_reg1__85_carry__0_i_3_n_0;
  wire FS_Start_reg1__85_carry__0_i_4_n_0;
  wire FS_Start_reg1__85_carry__0_i_5_n_0;
  wire FS_Start_reg1__85_carry__0_i_6_n_0;
  wire FS_Start_reg1__85_carry__0_i_7_n_0;
  wire FS_Start_reg1__85_carry__0_i_8_n_0;
  wire FS_Start_reg1__85_carry__0_i_9_n_0;
  wire FS_Start_reg1__85_carry__0_n_0;
  wire FS_Start_reg1__85_carry__0_n_1;
  wire FS_Start_reg1__85_carry__0_n_2;
  wire FS_Start_reg1__85_carry__0_n_3;
  wire FS_Start_reg1__85_carry__0_n_4;
  wire FS_Start_reg1__85_carry__0_n_5;
  wire FS_Start_reg1__85_carry__0_n_6;
  wire FS_Start_reg1__85_carry__0_n_7;
  wire FS_Start_reg1__85_carry__1_i_10_n_0;
  wire FS_Start_reg1__85_carry__1_i_11_n_0;
  wire FS_Start_reg1__85_carry__1_i_12_n_0;
  wire FS_Start_reg1__85_carry__1_i_13_n_0;
  wire FS_Start_reg1__85_carry__1_i_14_n_0;
  wire FS_Start_reg1__85_carry__1_i_15_n_0;
  wire FS_Start_reg1__85_carry__1_i_16_n_0;
  wire FS_Start_reg1__85_carry__1_i_1_n_0;
  wire FS_Start_reg1__85_carry__1_i_2_n_0;
  wire FS_Start_reg1__85_carry__1_i_3_n_0;
  wire FS_Start_reg1__85_carry__1_i_4_n_0;
  wire FS_Start_reg1__85_carry__1_i_5_n_0;
  wire FS_Start_reg1__85_carry__1_i_6_n_0;
  wire FS_Start_reg1__85_carry__1_i_7_n_0;
  wire FS_Start_reg1__85_carry__1_i_8_n_0;
  wire FS_Start_reg1__85_carry__1_i_9_n_0;
  wire FS_Start_reg1__85_carry__1_n_0;
  wire FS_Start_reg1__85_carry__1_n_1;
  wire FS_Start_reg1__85_carry__1_n_2;
  wire FS_Start_reg1__85_carry__1_n_3;
  wire FS_Start_reg1__85_carry__1_n_4;
  wire FS_Start_reg1__85_carry__1_n_5;
  wire FS_Start_reg1__85_carry__1_n_6;
  wire FS_Start_reg1__85_carry__1_n_7;
  wire FS_Start_reg1__85_carry__2_i_1_n_0;
  wire FS_Start_reg1__85_carry__2_i_2_n_0;
  wire FS_Start_reg1__85_carry__2_i_3_n_0;
  wire FS_Start_reg1__85_carry__2_i_4_n_0;
  wire FS_Start_reg1__85_carry__2_i_5_n_0;
  wire FS_Start_reg1__85_carry__2_i_6_n_0;
  wire FS_Start_reg1__85_carry__2_i_7_n_0;
  wire FS_Start_reg1__85_carry__2_i_8_n_0;
  wire FS_Start_reg1__85_carry__2_i_9_n_0;
  wire FS_Start_reg1__85_carry__2_n_4;
  wire FS_Start_reg1__85_carry__2_n_5;
  wire FS_Start_reg1__85_carry__2_n_6;
  wire FS_Start_reg1__85_carry__2_n_7;
  wire FS_Start_reg1__85_carry_i_10_n_0;
  wire FS_Start_reg1__85_carry_i_11_n_0;
  wire FS_Start_reg1__85_carry_i_1_n_0;
  wire FS_Start_reg1__85_carry_i_2_n_0;
  wire FS_Start_reg1__85_carry_i_3_n_0;
  wire FS_Start_reg1__85_carry_i_4_n_0;
  wire FS_Start_reg1__85_carry_i_5_n_0;
  wire FS_Start_reg1__85_carry_i_6_n_0;
  wire FS_Start_reg1__85_carry_i_7_n_0;
  wire FS_Start_reg1__85_carry_i_8_n_0;
  wire FS_Start_reg1__85_carry_i_9_n_0;
  wire FS_Start_reg1__85_carry_n_0;
  wire FS_Start_reg1__85_carry_n_1;
  wire FS_Start_reg1__85_carry_n_2;
  wire FS_Start_reg1__85_carry_n_3;
  wire FS_Start_reg1__85_carry_n_4;
  wire FS_Start_reg1__85_carry_n_5;
  wire FS_Start_reg1__85_carry_n_6;
  wire FS_Start_reg1__85_carry_n_7;
  wire [31:0]FS_Start_reg2;
  (* RTL_KEEP = "true" *) wire [31:0]Frame_Cnt;
  wire Frame_Cnt0_carry__0_i_10_n_0;
  wire Frame_Cnt0_carry__0_i_11_n_0;
  wire Frame_Cnt0_carry__0_i_12_n_0;
  wire Frame_Cnt0_carry__0_i_13_n_0;
  wire Frame_Cnt0_carry__0_i_14_n_0;
  wire Frame_Cnt0_carry__0_i_15_n_0;
  wire Frame_Cnt0_carry__0_i_16_n_0;
  wire Frame_Cnt0_carry__0_i_1_n_0;
  wire Frame_Cnt0_carry__0_i_2_n_0;
  wire Frame_Cnt0_carry__0_i_3_n_0;
  wire Frame_Cnt0_carry__0_i_4_n_0;
  wire Frame_Cnt0_carry__0_i_5_n_0;
  wire Frame_Cnt0_carry__0_i_6_n_0;
  wire Frame_Cnt0_carry__0_i_7_n_0;
  wire Frame_Cnt0_carry__0_i_8_n_0;
  wire Frame_Cnt0_carry__0_i_9_n_0;
  wire Frame_Cnt0_carry__0_n_0;
  wire Frame_Cnt0_carry__0_n_1;
  wire Frame_Cnt0_carry__0_n_2;
  wire Frame_Cnt0_carry__0_n_3;
  wire Frame_Cnt0_carry__0_n_4;
  wire Frame_Cnt0_carry__0_n_5;
  wire Frame_Cnt0_carry__0_n_6;
  wire Frame_Cnt0_carry__0_n_7;
  wire Frame_Cnt0_carry_i_10_n_0;
  wire Frame_Cnt0_carry_i_11_n_0;
  wire Frame_Cnt0_carry_i_12_n_0;
  wire Frame_Cnt0_carry_i_13_n_0;
  wire Frame_Cnt0_carry_i_14_n_0;
  wire Frame_Cnt0_carry_i_15_n_0;
  wire Frame_Cnt0_carry_i_16_n_0;
  wire Frame_Cnt0_carry_i_1_n_0;
  wire Frame_Cnt0_carry_i_2_n_0;
  wire Frame_Cnt0_carry_i_3_n_0;
  wire Frame_Cnt0_carry_i_4_n_0;
  wire Frame_Cnt0_carry_i_5_n_0;
  wire Frame_Cnt0_carry_i_6_n_0;
  wire Frame_Cnt0_carry_i_7_n_0;
  wire Frame_Cnt0_carry_i_8_n_0;
  wire Frame_Cnt0_carry_i_9_n_0;
  wire Frame_Cnt0_carry_n_0;
  wire Frame_Cnt0_carry_n_1;
  wire Frame_Cnt0_carry_n_2;
  wire Frame_Cnt0_carry_n_3;
  wire Frame_Cnt0_carry_n_4;
  wire Frame_Cnt0_carry_n_5;
  wire Frame_Cnt0_carry_n_6;
  wire Frame_Cnt0_carry_n_7;
  wire Frame_Cnt1_n_100;
  wire Frame_Cnt1_n_101;
  wire Frame_Cnt1_n_102;
  wire Frame_Cnt1_n_103;
  wire Frame_Cnt1_n_104;
  wire Frame_Cnt1_n_105;
  wire Frame_Cnt1_n_72;
  wire Frame_Cnt1_n_73;
  wire Frame_Cnt1_n_74;
  wire Frame_Cnt1_n_75;
  wire Frame_Cnt1_n_76;
  wire Frame_Cnt1_n_77;
  wire Frame_Cnt1_n_78;
  wire Frame_Cnt1_n_79;
  wire Frame_Cnt1_n_80;
  wire Frame_Cnt1_n_81;
  wire Frame_Cnt1_n_82;
  wire Frame_Cnt1_n_83;
  wire Frame_Cnt1_n_84;
  wire Frame_Cnt1_n_85;
  wire Frame_Cnt1_n_86;
  wire Frame_Cnt1_n_87;
  wire Frame_Cnt1_n_88;
  wire Frame_Cnt1_n_89;
  wire Frame_Cnt1_n_90;
  wire Frame_Cnt1_n_91;
  wire Frame_Cnt1_n_92;
  wire Frame_Cnt1_n_93;
  wire Frame_Cnt1_n_94;
  wire Frame_Cnt1_n_95;
  wire Frame_Cnt1_n_96;
  wire Frame_Cnt1_n_97;
  wire Frame_Cnt1_n_98;
  wire Frame_Cnt1_n_99;
  wire \Frame_Cnt[0]_i_1_n_0 ;
  wire \Frame_Cnt[31]_i_1_n_0 ;
  wire Frame_Cnt_reg0_carry__0_n_0;
  wire Frame_Cnt_reg0_carry__0_n_1;
  wire Frame_Cnt_reg0_carry__0_n_10;
  wire Frame_Cnt_reg0_carry__0_n_11;
  wire Frame_Cnt_reg0_carry__0_n_12;
  wire Frame_Cnt_reg0_carry__0_n_13;
  wire Frame_Cnt_reg0_carry__0_n_14;
  wire Frame_Cnt_reg0_carry__0_n_15;
  wire Frame_Cnt_reg0_carry__0_n_2;
  wire Frame_Cnt_reg0_carry__0_n_3;
  wire Frame_Cnt_reg0_carry__0_n_4;
  wire Frame_Cnt_reg0_carry__0_n_5;
  wire Frame_Cnt_reg0_carry__0_n_6;
  wire Frame_Cnt_reg0_carry__0_n_7;
  wire Frame_Cnt_reg0_carry__0_n_8;
  wire Frame_Cnt_reg0_carry__0_n_9;
  wire Frame_Cnt_reg0_carry__1_n_0;
  wire Frame_Cnt_reg0_carry__1_n_1;
  wire Frame_Cnt_reg0_carry__1_n_10;
  wire Frame_Cnt_reg0_carry__1_n_11;
  wire Frame_Cnt_reg0_carry__1_n_12;
  wire Frame_Cnt_reg0_carry__1_n_13;
  wire Frame_Cnt_reg0_carry__1_n_14;
  wire Frame_Cnt_reg0_carry__1_n_15;
  wire Frame_Cnt_reg0_carry__1_n_2;
  wire Frame_Cnt_reg0_carry__1_n_3;
  wire Frame_Cnt_reg0_carry__1_n_4;
  wire Frame_Cnt_reg0_carry__1_n_5;
  wire Frame_Cnt_reg0_carry__1_n_6;
  wire Frame_Cnt_reg0_carry__1_n_7;
  wire Frame_Cnt_reg0_carry__1_n_8;
  wire Frame_Cnt_reg0_carry__1_n_9;
  wire Frame_Cnt_reg0_carry__2_n_10;
  wire Frame_Cnt_reg0_carry__2_n_11;
  wire Frame_Cnt_reg0_carry__2_n_12;
  wire Frame_Cnt_reg0_carry__2_n_13;
  wire Frame_Cnt_reg0_carry__2_n_14;
  wire Frame_Cnt_reg0_carry__2_n_15;
  wire Frame_Cnt_reg0_carry__2_n_2;
  wire Frame_Cnt_reg0_carry__2_n_3;
  wire Frame_Cnt_reg0_carry__2_n_4;
  wire Frame_Cnt_reg0_carry__2_n_5;
  wire Frame_Cnt_reg0_carry__2_n_6;
  wire Frame_Cnt_reg0_carry__2_n_7;
  wire Frame_Cnt_reg0_carry__2_n_9;
  wire Frame_Cnt_reg0_carry_n_0;
  wire Frame_Cnt_reg0_carry_n_1;
  wire Frame_Cnt_reg0_carry_n_10;
  wire Frame_Cnt_reg0_carry_n_11;
  wire Frame_Cnt_reg0_carry_n_12;
  wire Frame_Cnt_reg0_carry_n_13;
  wire Frame_Cnt_reg0_carry_n_14;
  wire Frame_Cnt_reg0_carry_n_15;
  wire Frame_Cnt_reg0_carry_n_2;
  wire Frame_Cnt_reg0_carry_n_3;
  wire Frame_Cnt_reg0_carry_n_4;
  wire Frame_Cnt_reg0_carry_n_5;
  wire Frame_Cnt_reg0_carry_n_6;
  wire Frame_Cnt_reg0_carry_n_7;
  wire Frame_Cnt_reg0_carry_n_8;
  wire Frame_Cnt_reg0_carry_n_9;
  (* RTL_KEEP = "true" *) wire Frame_clk;
  wire Frame_clk_i_1_n_0;
  (* RTL_KEEP = "true" *) wire PL_Addr_Flag;
  wire PL_Addr_Flag_i_1_n_0;
  (* RTL_KEEP = "true" *) wire PL_Done_Flag;
  wire PL_Done_Flag_i_1_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_10_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_11_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_12_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_13_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_14_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_15_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_16_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_1;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_2;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_3;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_4;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_5;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_6;
  wire PL_Done_Flag_reg0_carry__0_i_17_n_7;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_1;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_2;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_3;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_4;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_5;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_6;
  wire PL_Done_Flag_reg0_carry__0_i_18_n_7;
  wire PL_Done_Flag_reg0_carry__0_i_19_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_1_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_20_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_21_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_22_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_23_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_24_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_25_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_26_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_27_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_28_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_29_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_2_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_30_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_31_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_32_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_33_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_3_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_4_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_5_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_6_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_7_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_8_n_0;
  wire PL_Done_Flag_reg0_carry__0_i_9_n_0;
  wire PL_Done_Flag_reg0_carry__0_n_0;
  wire PL_Done_Flag_reg0_carry__0_n_1;
  wire PL_Done_Flag_reg0_carry__0_n_2;
  wire PL_Done_Flag_reg0_carry__0_n_3;
  wire PL_Done_Flag_reg0_carry__0_n_4;
  wire PL_Done_Flag_reg0_carry__0_n_5;
  wire PL_Done_Flag_reg0_carry__0_n_6;
  wire PL_Done_Flag_reg0_carry__0_n_7;
  wire PL_Done_Flag_reg0_carry_i_10_n_0;
  wire PL_Done_Flag_reg0_carry_i_11_n_0;
  wire PL_Done_Flag_reg0_carry_i_12_n_0;
  wire PL_Done_Flag_reg0_carry_i_13_n_0;
  wire PL_Done_Flag_reg0_carry_i_14_n_0;
  wire PL_Done_Flag_reg0_carry_i_15_n_0;
  wire PL_Done_Flag_reg0_carry_i_16_n_0;
  wire PL_Done_Flag_reg0_carry_i_17_n_0;
  wire PL_Done_Flag_reg0_carry_i_17_n_1;
  wire PL_Done_Flag_reg0_carry_i_17_n_2;
  wire PL_Done_Flag_reg0_carry_i_17_n_3;
  wire PL_Done_Flag_reg0_carry_i_17_n_4;
  wire PL_Done_Flag_reg0_carry_i_17_n_5;
  wire PL_Done_Flag_reg0_carry_i_17_n_6;
  wire PL_Done_Flag_reg0_carry_i_17_n_7;
  wire PL_Done_Flag_reg0_carry_i_18_n_0;
  wire PL_Done_Flag_reg0_carry_i_18_n_1;
  wire PL_Done_Flag_reg0_carry_i_18_n_2;
  wire PL_Done_Flag_reg0_carry_i_18_n_3;
  wire PL_Done_Flag_reg0_carry_i_18_n_4;
  wire PL_Done_Flag_reg0_carry_i_18_n_5;
  wire PL_Done_Flag_reg0_carry_i_18_n_6;
  wire PL_Done_Flag_reg0_carry_i_18_n_7;
  wire PL_Done_Flag_reg0_carry_i_19_n_0;
  wire PL_Done_Flag_reg0_carry_i_1_n_0;
  wire PL_Done_Flag_reg0_carry_i_20_n_0;
  wire PL_Done_Flag_reg0_carry_i_21_n_0;
  wire PL_Done_Flag_reg0_carry_i_22_n_0;
  wire PL_Done_Flag_reg0_carry_i_23_n_0;
  wire PL_Done_Flag_reg0_carry_i_24_n_0;
  wire PL_Done_Flag_reg0_carry_i_25_n_0;
  wire PL_Done_Flag_reg0_carry_i_26_n_0;
  wire PL_Done_Flag_reg0_carry_i_27_n_0;
  wire PL_Done_Flag_reg0_carry_i_28_n_0;
  wire PL_Done_Flag_reg0_carry_i_29_n_0;
  wire PL_Done_Flag_reg0_carry_i_2_n_0;
  wire PL_Done_Flag_reg0_carry_i_30_n_0;
  wire PL_Done_Flag_reg0_carry_i_31_n_0;
  wire PL_Done_Flag_reg0_carry_i_32_n_0;
  wire PL_Done_Flag_reg0_carry_i_33_n_0;
  wire PL_Done_Flag_reg0_carry_i_34_n_0;
  wire PL_Done_Flag_reg0_carry_i_3_n_0;
  wire PL_Done_Flag_reg0_carry_i_4_n_0;
  wire PL_Done_Flag_reg0_carry_i_5_n_0;
  wire PL_Done_Flag_reg0_carry_i_6_n_0;
  wire PL_Done_Flag_reg0_carry_i_7_n_0;
  wire PL_Done_Flag_reg0_carry_i_8_n_0;
  wire PL_Done_Flag_reg0_carry_i_9_n_0;
  wire PL_Done_Flag_reg0_carry_n_0;
  wire PL_Done_Flag_reg0_carry_n_1;
  wire PL_Done_Flag_reg0_carry_n_2;
  wire PL_Done_Flag_reg0_carry_n_3;
  wire PL_Done_Flag_reg0_carry_n_4;
  wire PL_Done_Flag_reg0_carry_n_5;
  wire PL_Done_Flag_reg0_carry_n_6;
  wire PL_Done_Flag_reg0_carry_n_7;
  wire [31:0]PL_Done_Flag_reg1;
  wire PL_Done_Flag_reg2__0_n_100;
  wire PL_Done_Flag_reg2__0_n_101;
  wire PL_Done_Flag_reg2__0_n_102;
  wire PL_Done_Flag_reg2__0_n_103;
  wire PL_Done_Flag_reg2__0_n_104;
  wire PL_Done_Flag_reg2__0_n_105;
  wire PL_Done_Flag_reg2__0_n_58;
  wire PL_Done_Flag_reg2__0_n_59;
  wire PL_Done_Flag_reg2__0_n_60;
  wire PL_Done_Flag_reg2__0_n_61;
  wire PL_Done_Flag_reg2__0_n_62;
  wire PL_Done_Flag_reg2__0_n_63;
  wire PL_Done_Flag_reg2__0_n_64;
  wire PL_Done_Flag_reg2__0_n_65;
  wire PL_Done_Flag_reg2__0_n_66;
  wire PL_Done_Flag_reg2__0_n_67;
  wire PL_Done_Flag_reg2__0_n_68;
  wire PL_Done_Flag_reg2__0_n_69;
  wire PL_Done_Flag_reg2__0_n_70;
  wire PL_Done_Flag_reg2__0_n_71;
  wire PL_Done_Flag_reg2__0_n_72;
  wire PL_Done_Flag_reg2__0_n_73;
  wire PL_Done_Flag_reg2__0_n_74;
  wire PL_Done_Flag_reg2__0_n_75;
  wire PL_Done_Flag_reg2__0_n_76;
  wire PL_Done_Flag_reg2__0_n_77;
  wire PL_Done_Flag_reg2__0_n_78;
  wire PL_Done_Flag_reg2__0_n_79;
  wire PL_Done_Flag_reg2__0_n_80;
  wire PL_Done_Flag_reg2__0_n_81;
  wire PL_Done_Flag_reg2__0_n_82;
  wire PL_Done_Flag_reg2__0_n_83;
  wire PL_Done_Flag_reg2__0_n_84;
  wire PL_Done_Flag_reg2__0_n_85;
  wire PL_Done_Flag_reg2__0_n_86;
  wire PL_Done_Flag_reg2__0_n_87;
  wire PL_Done_Flag_reg2__0_n_88;
  wire PL_Done_Flag_reg2__0_n_89;
  wire PL_Done_Flag_reg2__0_n_90;
  wire PL_Done_Flag_reg2__0_n_91;
  wire PL_Done_Flag_reg2__0_n_92;
  wire PL_Done_Flag_reg2__0_n_93;
  wire PL_Done_Flag_reg2__0_n_94;
  wire PL_Done_Flag_reg2__0_n_95;
  wire PL_Done_Flag_reg2__0_n_96;
  wire PL_Done_Flag_reg2__0_n_97;
  wire PL_Done_Flag_reg2__0_n_98;
  wire PL_Done_Flag_reg2__0_n_99;
  wire PL_Done_Flag_reg2_i_18_n_0;
  wire PL_Done_Flag_reg2_i_19_n_0;
  wire PL_Done_Flag_reg2_n_100;
  wire PL_Done_Flag_reg2_n_101;
  wire PL_Done_Flag_reg2_n_102;
  wire PL_Done_Flag_reg2_n_103;
  wire PL_Done_Flag_reg2_n_104;
  wire PL_Done_Flag_reg2_n_105;
  wire PL_Done_Flag_reg2_n_106;
  wire PL_Done_Flag_reg2_n_107;
  wire PL_Done_Flag_reg2_n_108;
  wire PL_Done_Flag_reg2_n_109;
  wire PL_Done_Flag_reg2_n_110;
  wire PL_Done_Flag_reg2_n_111;
  wire PL_Done_Flag_reg2_n_112;
  wire PL_Done_Flag_reg2_n_113;
  wire PL_Done_Flag_reg2_n_114;
  wire PL_Done_Flag_reg2_n_115;
  wire PL_Done_Flag_reg2_n_116;
  wire PL_Done_Flag_reg2_n_117;
  wire PL_Done_Flag_reg2_n_118;
  wire PL_Done_Flag_reg2_n_119;
  wire PL_Done_Flag_reg2_n_120;
  wire PL_Done_Flag_reg2_n_121;
  wire PL_Done_Flag_reg2_n_122;
  wire PL_Done_Flag_reg2_n_123;
  wire PL_Done_Flag_reg2_n_124;
  wire PL_Done_Flag_reg2_n_125;
  wire PL_Done_Flag_reg2_n_126;
  wire PL_Done_Flag_reg2_n_127;
  wire PL_Done_Flag_reg2_n_128;
  wire PL_Done_Flag_reg2_n_129;
  wire PL_Done_Flag_reg2_n_130;
  wire PL_Done_Flag_reg2_n_131;
  wire PL_Done_Flag_reg2_n_132;
  wire PL_Done_Flag_reg2_n_133;
  wire PL_Done_Flag_reg2_n_134;
  wire PL_Done_Flag_reg2_n_135;
  wire PL_Done_Flag_reg2_n_136;
  wire PL_Done_Flag_reg2_n_137;
  wire PL_Done_Flag_reg2_n_138;
  wire PL_Done_Flag_reg2_n_139;
  wire PL_Done_Flag_reg2_n_140;
  wire PL_Done_Flag_reg2_n_141;
  wire PL_Done_Flag_reg2_n_142;
  wire PL_Done_Flag_reg2_n_143;
  wire PL_Done_Flag_reg2_n_144;
  wire PL_Done_Flag_reg2_n_145;
  wire PL_Done_Flag_reg2_n_146;
  wire PL_Done_Flag_reg2_n_147;
  wire PL_Done_Flag_reg2_n_148;
  wire PL_Done_Flag_reg2_n_149;
  wire PL_Done_Flag_reg2_n_150;
  wire PL_Done_Flag_reg2_n_151;
  wire PL_Done_Flag_reg2_n_152;
  wire PL_Done_Flag_reg2_n_153;
  wire PL_Done_Flag_reg2_n_58;
  wire PL_Done_Flag_reg2_n_59;
  wire PL_Done_Flag_reg2_n_60;
  wire PL_Done_Flag_reg2_n_61;
  wire PL_Done_Flag_reg2_n_62;
  wire PL_Done_Flag_reg2_n_63;
  wire PL_Done_Flag_reg2_n_64;
  wire PL_Done_Flag_reg2_n_65;
  wire PL_Done_Flag_reg2_n_66;
  wire PL_Done_Flag_reg2_n_67;
  wire PL_Done_Flag_reg2_n_68;
  wire PL_Done_Flag_reg2_n_69;
  wire PL_Done_Flag_reg2_n_70;
  wire PL_Done_Flag_reg2_n_71;
  wire PL_Done_Flag_reg2_n_72;
  wire PL_Done_Flag_reg2_n_73;
  wire PL_Done_Flag_reg2_n_74;
  wire PL_Done_Flag_reg2_n_75;
  wire PL_Done_Flag_reg2_n_76;
  wire PL_Done_Flag_reg2_n_77;
  wire PL_Done_Flag_reg2_n_78;
  wire PL_Done_Flag_reg2_n_79;
  wire PL_Done_Flag_reg2_n_80;
  wire PL_Done_Flag_reg2_n_81;
  wire PL_Done_Flag_reg2_n_82;
  wire PL_Done_Flag_reg2_n_83;
  wire PL_Done_Flag_reg2_n_84;
  wire PL_Done_Flag_reg2_n_85;
  wire PL_Done_Flag_reg2_n_86;
  wire PL_Done_Flag_reg2_n_87;
  wire PL_Done_Flag_reg2_n_88;
  wire PL_Done_Flag_reg2_n_89;
  wire PL_Done_Flag_reg2_n_90;
  wire PL_Done_Flag_reg2_n_91;
  wire PL_Done_Flag_reg2_n_92;
  wire PL_Done_Flag_reg2_n_93;
  wire PL_Done_Flag_reg2_n_94;
  wire PL_Done_Flag_reg2_n_95;
  wire PL_Done_Flag_reg2_n_96;
  wire PL_Done_Flag_reg2_n_97;
  wire PL_Done_Flag_reg2_n_98;
  wire PL_Done_Flag_reg2_n_99;
  wire [16:0]PL_Done_Flag_reg3;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  (* RTL_KEEP = "true" *) wire USER_RST_N;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  (* RTL_KEEP = "true" *) wire [31:0]cal_delay_num;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [3:0]p_0_in__0;
  wire [15:0]p_1_in__0;
  wire p_1_out_carry__0_i_10_n_0;
  wire p_1_out_carry__0_i_11_n_0;
  wire p_1_out_carry__0_i_12_n_0;
  wire p_1_out_carry__0_i_13_n_0;
  wire p_1_out_carry__0_i_14_n_0;
  wire p_1_out_carry__0_i_15_n_0;
  wire p_1_out_carry__0_i_16_n_0;
  wire p_1_out_carry__0_i_17_n_0;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_1_n_1;
  wire p_1_out_carry__0_i_1_n_2;
  wire p_1_out_carry__0_i_1_n_3;
  wire p_1_out_carry__0_i_1_n_4;
  wire p_1_out_carry__0_i_1_n_5;
  wire p_1_out_carry__0_i_1_n_6;
  wire p_1_out_carry__0_i_1_n_7;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry__0_i_5_n_0;
  wire p_1_out_carry__0_i_6_n_0;
  wire p_1_out_carry__0_i_7_n_0;
  wire p_1_out_carry__0_i_8_n_0;
  wire p_1_out_carry__0_i_9_n_0;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__0_n_4;
  wire p_1_out_carry__0_n_5;
  wire p_1_out_carry__0_n_6;
  wire p_1_out_carry__0_n_7;
  wire p_1_out_carry__1_i_10_n_0;
  wire p_1_out_carry__1_i_11_n_0;
  wire p_1_out_carry__1_i_12_n_0;
  wire p_1_out_carry__1_i_13_n_0;
  wire p_1_out_carry__1_i_14_n_0;
  wire p_1_out_carry__1_i_15_n_0;
  wire p_1_out_carry__1_i_16_n_0;
  wire p_1_out_carry__1_i_17_n_0;
  wire p_1_out_carry__1_i_1_n_0;
  wire p_1_out_carry__1_i_1_n_1;
  wire p_1_out_carry__1_i_1_n_2;
  wire p_1_out_carry__1_i_1_n_3;
  wire p_1_out_carry__1_i_1_n_4;
  wire p_1_out_carry__1_i_1_n_5;
  wire p_1_out_carry__1_i_1_n_6;
  wire p_1_out_carry__1_i_1_n_7;
  wire p_1_out_carry__1_i_2_n_0;
  wire p_1_out_carry__1_i_3_n_0;
  wire p_1_out_carry__1_i_4_n_0;
  wire p_1_out_carry__1_i_5_n_0;
  wire p_1_out_carry__1_i_6_n_0;
  wire p_1_out_carry__1_i_7_n_0;
  wire p_1_out_carry__1_i_8_n_0;
  wire p_1_out_carry__1_i_9_n_0;
  wire p_1_out_carry__1_n_0;
  wire p_1_out_carry__1_n_1;
  wire p_1_out_carry__1_n_2;
  wire p_1_out_carry__1_n_3;
  wire p_1_out_carry__1_n_4;
  wire p_1_out_carry__1_n_5;
  wire p_1_out_carry__1_n_6;
  wire p_1_out_carry__1_n_7;
  wire p_1_out_carry__2_i_10_n_0;
  wire p_1_out_carry__2_i_11_n_0;
  wire p_1_out_carry__2_i_12_n_0;
  wire p_1_out_carry__2_i_13_n_0;
  wire p_1_out_carry__2_i_14_n_0;
  wire p_1_out_carry__2_i_15_n_0;
  wire p_1_out_carry__2_i_16_n_0;
  wire p_1_out_carry__2_i_1_n_1;
  wire p_1_out_carry__2_i_1_n_2;
  wire p_1_out_carry__2_i_1_n_3;
  wire p_1_out_carry__2_i_1_n_4;
  wire p_1_out_carry__2_i_1_n_5;
  wire p_1_out_carry__2_i_1_n_6;
  wire p_1_out_carry__2_i_1_n_7;
  wire p_1_out_carry__2_i_2_n_0;
  wire p_1_out_carry__2_i_3_n_0;
  wire p_1_out_carry__2_i_4_n_0;
  wire p_1_out_carry__2_i_5_n_0;
  wire p_1_out_carry__2_i_6_n_0;
  wire p_1_out_carry__2_i_7_n_0;
  wire p_1_out_carry__2_i_8_n_0;
  wire p_1_out_carry__2_i_9_n_0;
  wire p_1_out_carry__2_n_0;
  wire p_1_out_carry__2_n_1;
  wire p_1_out_carry__2_n_2;
  wire p_1_out_carry__2_n_3;
  wire p_1_out_carry__2_n_4;
  wire p_1_out_carry__2_n_5;
  wire p_1_out_carry__2_n_6;
  wire p_1_out_carry__2_n_7;
  wire p_1_out_carry_i_10_n_0;
  wire p_1_out_carry_i_11_n_0;
  wire p_1_out_carry_i_12_n_0;
  wire p_1_out_carry_i_13_n_0;
  wire p_1_out_carry_i_14_n_0;
  wire p_1_out_carry_i_15_n_0;
  wire p_1_out_carry_i_16_n_0;
  wire p_1_out_carry_i_17_n_0;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_1_n_1;
  wire p_1_out_carry_i_1_n_2;
  wire p_1_out_carry_i_1_n_3;
  wire p_1_out_carry_i_1_n_4;
  wire p_1_out_carry_i_1_n_5;
  wire p_1_out_carry_i_1_n_6;
  wire p_1_out_carry_i_1_n_7;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_i_5_n_0;
  wire p_1_out_carry_i_6_n_0;
  wire p_1_out_carry_i_7_n_0;
  wire p_1_out_carry_i_8_n_0;
  wire p_1_out_carry_i_9_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_1_out_carry_n_4;
  wire p_1_out_carry_n_5;
  wire p_1_out_carry_n_6;
  wire p_1_out_carry_n_7;
  wire [15:0]p_2_in;
  wire [31:0]reg_data_out;
  wire [3:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[1] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg_n_0_[0] ;
  wire \slv_reg6_reg_n_0_[10] ;
  wire \slv_reg6_reg_n_0_[11] ;
  wire \slv_reg6_reg_n_0_[12] ;
  wire \slv_reg6_reg_n_0_[13] ;
  wire \slv_reg6_reg_n_0_[14] ;
  wire \slv_reg6_reg_n_0_[15] ;
  wire \slv_reg6_reg_n_0_[16] ;
  wire \slv_reg6_reg_n_0_[17] ;
  wire \slv_reg6_reg_n_0_[18] ;
  wire \slv_reg6_reg_n_0_[19] ;
  wire \slv_reg6_reg_n_0_[1] ;
  wire \slv_reg6_reg_n_0_[20] ;
  wire \slv_reg6_reg_n_0_[21] ;
  wire \slv_reg6_reg_n_0_[22] ;
  wire \slv_reg6_reg_n_0_[23] ;
  wire \slv_reg6_reg_n_0_[24] ;
  wire \slv_reg6_reg_n_0_[25] ;
  wire \slv_reg6_reg_n_0_[26] ;
  wire \slv_reg6_reg_n_0_[27] ;
  wire \slv_reg6_reg_n_0_[28] ;
  wire \slv_reg6_reg_n_0_[29] ;
  wire \slv_reg6_reg_n_0_[2] ;
  wire \slv_reg6_reg_n_0_[30] ;
  wire \slv_reg6_reg_n_0_[31] ;
  wire \slv_reg6_reg_n_0_[3] ;
  wire \slv_reg6_reg_n_0_[4] ;
  wire \slv_reg6_reg_n_0_[5] ;
  wire \slv_reg6_reg_n_0_[6] ;
  wire \slv_reg6_reg_n_0_[7] ;
  wire \slv_reg6_reg_n_0_[8] ;
  wire \slv_reg6_reg_n_0_[9] ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire [7:0]\NLW_AXI_Trans_Addr1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:3]\NLW_AXI_Trans_Addr1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [7:0]\NLW_AXI_Trans_Addr1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:0]NLW_AXI_Trans_Addr2_carry_O_UNCONNECTED;
  wire [7:3]NLW_AXI_Trans_Addr2_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_AXI_Trans_Addr2_carry__0_O_UNCONNECTED;
  wire [7:3]\NLW_AXI_Trans_Addr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:4]\NLW_AXI_Trans_Addr_reg[31]_i_2_O_UNCONNECTED ;
  wire [7:0]NLW_Chirp_Cnt1_carry_O_UNCONNECTED;
  wire [7:0]NLW_Chirp_Cnt1_carry__0_O_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_OVERFLOW_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Chirp_Cnt_EN2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Chirp_Cnt_EN2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Chirp_Cnt_EN2_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_Chirp_Cnt_EN2_XOROUT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_OVERFLOW_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Chirp_Cnt_EN2__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Chirp_Cnt_EN2__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Chirp_Cnt_EN2__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Chirp_Cnt_EN2__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_Chirp_Cnt_EN2__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_Chirp_Cnt_EN2__0_XOROUT_UNCONNECTED;
  wire [7:4]NLW_Chirp_Cnt_EN3__0_carry__2_CO_UNCONNECTED;
  wire [7:5]NLW_Chirp_Cnt_EN3__0_carry__2_O_UNCONNECTED;
  wire [7:4]NLW_Chirp_Cnt_EN3__85_carry__2_CO_UNCONNECTED;
  wire [7:5]NLW_Chirp_Cnt_EN3__85_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_Chirp_Cnt_EN_reg0_carry_O_UNCONNECTED;
  wire [7:0]NLW_Chirp_Cnt_EN_reg0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_Chirp_Cnt_reg0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_Chirp_Cnt_reg0_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_Chirp_clk_reg0_carry_O_UNCONNECTED;
  wire [7:0]NLW_Chirp_clk_reg0_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_FS_Start_reg0_carry_O_UNCONNECTED;
  wire [7:0]NLW_FS_Start_reg0_carry__0_O_UNCONNECTED;
  wire [7:4]NLW_FS_Start_reg1__0_carry__2_CO_UNCONNECTED;
  wire [7:5]NLW_FS_Start_reg1__0_carry__2_O_UNCONNECTED;
  wire [6:6]NLW_FS_Start_reg1__0_carry__2_i_1_CO_UNCONNECTED;
  wire [7:7]NLW_FS_Start_reg1__0_carry__2_i_1_O_UNCONNECTED;
  wire [7:4]NLW_FS_Start_reg1__85_carry__2_CO_UNCONNECTED;
  wire [7:5]NLW_FS_Start_reg1__85_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_Frame_Cnt0_carry_O_UNCONNECTED;
  wire [7:0]NLW_Frame_Cnt0_carry__0_O_UNCONNECTED;
  wire NLW_Frame_Cnt1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Frame_Cnt1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Frame_Cnt1_OVERFLOW_UNCONNECTED;
  wire NLW_Frame_Cnt1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Frame_Cnt1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Frame_Cnt1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Frame_Cnt1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Frame_Cnt1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Frame_Cnt1_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_Frame_Cnt1_P_UNCONNECTED;
  wire [47:0]NLW_Frame_Cnt1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_Frame_Cnt1_XOROUT_UNCONNECTED;
  wire [7:6]NLW_Frame_Cnt_reg0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_Frame_Cnt_reg0_carry__2_O_UNCONNECTED;
  wire [7:0]NLW_PL_Done_Flag_reg0_carry_O_UNCONNECTED;
  wire [7:0]NLW_PL_Done_Flag_reg0_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_PL_Done_Flag_reg0_carry__0_i_17_CO_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_OVERFLOW_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_PATTERNDETECT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_PL_Done_Flag_reg2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_PL_Done_Flag_reg2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_PL_Done_Flag_reg2_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_PL_Done_Flag_reg2_XOROUT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_OVERFLOW_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_PL_Done_Flag_reg2__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_PL_Done_Flag_reg2__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_PL_Done_Flag_reg2__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_PL_Done_Flag_reg2__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_PL_Done_Flag_reg2__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_PL_Done_Flag_reg2__0_XOROUT_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry_O_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry__2_O_UNCONNECTED;
  wire [7:7]NLW_p_1_out_carry__2_i_1_CO_UNCONNECTED;

  CARRY8 \AXI_Trans_Addr1_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\AXI_Trans_Addr1_inferred__0/i__carry_n_0 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_1 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_2 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_3 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_4 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_5 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_6 ,\AXI_Trans_Addr1_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_AXI_Trans_Addr1_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY8 \AXI_Trans_Addr1_inferred__0/i__carry__0 
       (.CI(\AXI_Trans_Addr1_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_AXI_Trans_Addr1_inferred__0/i__carry__0_CO_UNCONNECTED [7:3],AXI_Trans_Addr1,\AXI_Trans_Addr1_inferred__0/i__carry__0_n_6 ,\AXI_Trans_Addr1_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_AXI_Trans_Addr1_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  CARRY8 AXI_Trans_Addr2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({AXI_Trans_Addr2_carry_n_0,AXI_Trans_Addr2_carry_n_1,AXI_Trans_Addr2_carry_n_2,AXI_Trans_Addr2_carry_n_3,AXI_Trans_Addr2_carry_n_4,AXI_Trans_Addr2_carry_n_5,AXI_Trans_Addr2_carry_n_6,AXI_Trans_Addr2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_AXI_Trans_Addr2_carry_O_UNCONNECTED[7:0]),
        .S({AXI_Trans_Addr2_carry_i_1_n_0,AXI_Trans_Addr2_carry_i_2_n_0,AXI_Trans_Addr2_carry_i_3_n_0,AXI_Trans_Addr2_carry_i_4_n_0,AXI_Trans_Addr2_carry_i_5_n_0,AXI_Trans_Addr2_carry_i_6_n_0,AXI_Trans_Addr2_carry_i_7_n_0,AXI_Trans_Addr2_carry_i_8_n_0}));
  CARRY8 AXI_Trans_Addr2_carry__0
       (.CI(AXI_Trans_Addr2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_AXI_Trans_Addr2_carry__0_CO_UNCONNECTED[7:3],AXI_Trans_Addr2,AXI_Trans_Addr2_carry__0_n_6,AXI_Trans_Addr2_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_AXI_Trans_Addr2_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,AXI_Trans_Addr2_carry__0_i_1_n_0,AXI_Trans_Addr2_carry__0_i_2_n_0,AXI_Trans_Addr2_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'h41)) 
    AXI_Trans_Addr2_carry__0_i_1
       (.I0(Frame_Cnt[31]),
        .I1(Frame_Cnt1_n_74),
        .I2(Frame_Cnt[30]),
        .O(AXI_Trans_Addr2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry__0_i_2
       (.I0(Frame_Cnt[28]),
        .I1(Frame_Cnt1_n_76),
        .I2(Frame_Cnt[29]),
        .I3(Frame_Cnt1_n_75),
        .I4(Frame_Cnt1_n_77),
        .I5(Frame_Cnt[27]),
        .O(AXI_Trans_Addr2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry__0_i_3
       (.I0(Frame_Cnt[24]),
        .I1(Frame_Cnt1_n_80),
        .I2(Frame_Cnt[25]),
        .I3(Frame_Cnt1_n_79),
        .I4(Frame_Cnt1_n_78),
        .I5(Frame_Cnt[26]),
        .O(AXI_Trans_Addr2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_1
       (.I0(Frame_Cnt[22]),
        .I1(Frame_Cnt1_n_82),
        .I2(Frame_Cnt[23]),
        .I3(Frame_Cnt1_n_81),
        .I4(Frame_Cnt1_n_83),
        .I5(Frame_Cnt[21]),
        .O(AXI_Trans_Addr2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_2
       (.I0(Frame_Cnt[18]),
        .I1(Frame_Cnt1_n_86),
        .I2(Frame_Cnt[19]),
        .I3(Frame_Cnt1_n_85),
        .I4(Frame_Cnt1_n_84),
        .I5(Frame_Cnt[20]),
        .O(AXI_Trans_Addr2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_3
       (.I0(Frame_Cnt[16]),
        .I1(Frame_Cnt1_n_88),
        .I2(Frame_Cnt[17]),
        .I3(Frame_Cnt1_n_87),
        .I4(Frame_Cnt1_n_89),
        .I5(Frame_Cnt[15]),
        .O(AXI_Trans_Addr2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_4
       (.I0(Frame_Cnt[12]),
        .I1(Frame_Cnt1_n_92),
        .I2(Frame_Cnt[13]),
        .I3(Frame_Cnt1_n_91),
        .I4(Frame_Cnt1_n_90),
        .I5(Frame_Cnt[14]),
        .O(AXI_Trans_Addr2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_5
       (.I0(Frame_Cnt[10]),
        .I1(Frame_Cnt1_n_94),
        .I2(Frame_Cnt[11]),
        .I3(Frame_Cnt1_n_93),
        .I4(Frame_Cnt1_n_95),
        .I5(Frame_Cnt[9]),
        .O(AXI_Trans_Addr2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_6
       (.I0(Frame_Cnt[6]),
        .I1(Frame_Cnt1_n_98),
        .I2(Frame_Cnt[7]),
        .I3(Frame_Cnt1_n_97),
        .I4(Frame_Cnt1_n_96),
        .I5(Frame_Cnt[8]),
        .O(AXI_Trans_Addr2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_7
       (.I0(Frame_Cnt[4]),
        .I1(Frame_Cnt1_n_100),
        .I2(Frame_Cnt[5]),
        .I3(Frame_Cnt1_n_99),
        .I4(Frame_Cnt1_n_101),
        .I5(Frame_Cnt[3]),
        .O(AXI_Trans_Addr2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AXI_Trans_Addr2_carry_i_8
       (.I0(Frame_Cnt[0]),
        .I1(Frame_Cnt1_n_104),
        .I2(Frame_Cnt[1]),
        .I3(Frame_Cnt1_n_103),
        .I4(Frame_Cnt1_n_102),
        .I5(Frame_Cnt[2]),
        .O(AXI_Trans_Addr2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[0]_i_1 
       (.I0(AXI_Trans_Addr[0]),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3CAA)) 
    \AXI_Trans_Addr[10]_i_1 
       (.I0(\AXI_Trans_Addr_reg[11]_i_2_n_9 ),
        .I1(\AXI_Trans_Addr[10]_i_2_n_0 ),
        .I2(FS_Number[5]),
        .I3(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \AXI_Trans_Addr[10]_i_2 
       (.I0(FS_Number[4]),
        .I1(FS_Number[2]),
        .I2(FS_Number[0]),
        .I3(FS_Number[1]),
        .I4(FS_Number[3]),
        .O(\AXI_Trans_Addr[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3CAA)) 
    \AXI_Trans_Addr[11]_i_1 
       (.I0(\AXI_Trans_Addr_reg[11]_i_2_n_8 ),
        .I1(\AXI_Trans_Addr[13]_i_2_n_0 ),
        .I2(FS_Number[6]),
        .I3(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_3 
       (.I0(AXI_Trans_Addr[11]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[6]),
        .O(\AXI_Trans_Addr[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_4 
       (.I0(AXI_Trans_Addr[10]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[5]),
        .O(\AXI_Trans_Addr[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_5 
       (.I0(AXI_Trans_Addr[9]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[4]),
        .O(\AXI_Trans_Addr[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_6 
       (.I0(AXI_Trans_Addr[8]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[3]),
        .O(\AXI_Trans_Addr[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_7 
       (.I0(AXI_Trans_Addr[7]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[2]),
        .O(\AXI_Trans_Addr[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_8 
       (.I0(AXI_Trans_Addr[6]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[1]),
        .O(\AXI_Trans_Addr[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[11]_i_9 
       (.I0(AXI_Trans_Addr[5]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[0]),
        .O(\AXI_Trans_Addr[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h03FCAAAA)) 
    \AXI_Trans_Addr[12]_i_1 
       (.I0(\AXI_Trans_Addr_reg[19]_i_2_n_15 ),
        .I1(FS_Number[6]),
        .I2(\AXI_Trans_Addr[13]_i_2_n_0 ),
        .I3(FS_Number[7]),
        .I4(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5556FFFF55560000)) 
    \AXI_Trans_Addr[13]_i_1 
       (.I0(FS_Number[8]),
        .I1(FS_Number[6]),
        .I2(\AXI_Trans_Addr[13]_i_2_n_0 ),
        .I3(FS_Number[7]),
        .I4(AXI_Trans_Addr2),
        .I5(\AXI_Trans_Addr_reg[19]_i_2_n_14 ),
        .O(\AXI_Trans_Addr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \AXI_Trans_Addr[13]_i_2 
       (.I0(FS_Number[5]),
        .I1(FS_Number[3]),
        .I2(FS_Number[1]),
        .I3(FS_Number[0]),
        .I4(FS_Number[2]),
        .I5(FS_Number[4]),
        .O(\AXI_Trans_Addr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h56FF5600)) 
    \AXI_Trans_Addr[14]_i_1 
       (.I0(FS_Number[9]),
        .I1(\AXI_Trans_Addr[15]_i_2_n_0 ),
        .I2(FS_Number[8]),
        .I3(AXI_Trans_Addr2),
        .I4(\AXI_Trans_Addr_reg[19]_i_2_n_13 ),
        .O(\AXI_Trans_Addr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5556FFFF55560000)) 
    \AXI_Trans_Addr[15]_i_1 
       (.I0(FS_Number[10]),
        .I1(FS_Number[8]),
        .I2(\AXI_Trans_Addr[15]_i_2_n_0 ),
        .I3(FS_Number[9]),
        .I4(AXI_Trans_Addr2),
        .I5(\AXI_Trans_Addr_reg[19]_i_2_n_12 ),
        .O(\AXI_Trans_Addr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \AXI_Trans_Addr[15]_i_2 
       (.I0(FS_Number[7]),
        .I1(\AXI_Trans_Addr[13]_i_2_n_0 ),
        .I2(FS_Number[6]),
        .O(\AXI_Trans_Addr[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \AXI_Trans_Addr[16]_i_1 
       (.I0(FS_Number[11]),
        .I1(\AXI_Trans_Addr[18]_i_2_n_0 ),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[19]_i_2_n_11 ),
        .O(\AXI_Trans_Addr[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h56FF5600)) 
    \AXI_Trans_Addr[17]_i_1 
       (.I0(FS_Number[12]),
        .I1(\AXI_Trans_Addr[18]_i_2_n_0 ),
        .I2(FS_Number[11]),
        .I3(AXI_Trans_Addr2),
        .I4(\AXI_Trans_Addr_reg[19]_i_2_n_10 ),
        .O(\AXI_Trans_Addr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5556FFFF55560000)) 
    \AXI_Trans_Addr[18]_i_1 
       (.I0(FS_Number[13]),
        .I1(FS_Number[11]),
        .I2(\AXI_Trans_Addr[18]_i_2_n_0 ),
        .I3(FS_Number[12]),
        .I4(AXI_Trans_Addr2),
        .I5(\AXI_Trans_Addr_reg[19]_i_2_n_9 ),
        .O(\AXI_Trans_Addr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \AXI_Trans_Addr[18]_i_2 
       (.I0(FS_Number[10]),
        .I1(FS_Number[8]),
        .I2(FS_Number[6]),
        .I3(\AXI_Trans_Addr[13]_i_2_n_0 ),
        .I4(FS_Number[7]),
        .I5(FS_Number[9]),
        .O(\AXI_Trans_Addr[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h56FF5600)) 
    \AXI_Trans_Addr[19]_i_1 
       (.I0(FS_Number[14]),
        .I1(\AXI_Trans_Addr[20]_i_2_n_0 ),
        .I2(FS_Number[13]),
        .I3(AXI_Trans_Addr2),
        .I4(\AXI_Trans_Addr_reg[19]_i_2_n_8 ),
        .O(\AXI_Trans_Addr[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_10 
       (.I0(AXI_Trans_Addr[12]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[7]),
        .O(\AXI_Trans_Addr[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_3 
       (.I0(AXI_Trans_Addr[19]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[14]),
        .O(\AXI_Trans_Addr[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_4 
       (.I0(AXI_Trans_Addr[18]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[13]),
        .O(\AXI_Trans_Addr[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_5 
       (.I0(AXI_Trans_Addr[17]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[12]),
        .O(\AXI_Trans_Addr[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_6 
       (.I0(AXI_Trans_Addr[16]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[11]),
        .O(\AXI_Trans_Addr[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_7 
       (.I0(AXI_Trans_Addr[15]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[10]),
        .O(\AXI_Trans_Addr[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_8 
       (.I0(AXI_Trans_Addr[14]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[9]),
        .O(\AXI_Trans_Addr[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[19]_i_9 
       (.I0(AXI_Trans_Addr[13]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[8]),
        .O(\AXI_Trans_Addr[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[1]_i_1 
       (.I0(AXI_Trans_Addr[1]),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333CAAAAAAAA)) 
    \AXI_Trans_Addr[20]_i_1 
       (.I0(\AXI_Trans_Addr_reg[27]_i_2_n_15 ),
        .I1(FS_Number[15]),
        .I2(FS_Number[13]),
        .I3(\AXI_Trans_Addr[20]_i_2_n_0 ),
        .I4(FS_Number[14]),
        .I5(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \AXI_Trans_Addr[20]_i_2 
       (.I0(FS_Number[12]),
        .I1(FS_Number[10]),
        .I2(FS_Number[8]),
        .I3(\AXI_Trans_Addr[15]_i_2_n_0 ),
        .I4(FS_Number[9]),
        .I5(FS_Number[11]),
        .O(\AXI_Trans_Addr[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AXI_Trans_Addr[21]_i_1 
       (.I0(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I1(AXI_Trans_Addr2),
        .I2(\AXI_Trans_Addr_reg[27]_i_2_n_14 ),
        .O(\AXI_Trans_Addr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AXI_Trans_Addr[22]_i_1 
       (.I0(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I1(AXI_Trans_Addr2),
        .I2(\AXI_Trans_Addr_reg[27]_i_2_n_13 ),
        .O(\AXI_Trans_Addr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AXI_Trans_Addr[23]_i_1 
       (.I0(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I1(AXI_Trans_Addr2),
        .I2(\AXI_Trans_Addr_reg[27]_i_2_n_12 ),
        .O(\AXI_Trans_Addr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB874)) 
    \AXI_Trans_Addr[24]_i_1 
       (.I0(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I1(AXI_Trans_Addr2),
        .I2(\AXI_Trans_Addr_reg[27]_i_2_n_11 ),
        .I3(PL_Addr_Flag),
        .O(\AXI_Trans_Addr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI_Trans_Addr[25]_i_1 
       (.I0(PL_Addr_Flag),
        .I1(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[27]_i_2_n_10 ),
        .O(\AXI_Trans_Addr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDDF0)) 
    \AXI_Trans_Addr[26]_i_1 
       (.I0(PL_Addr_Flag),
        .I1(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I2(\AXI_Trans_Addr_reg[27]_i_2_n_9 ),
        .I3(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI_Trans_Addr[27]_i_1 
       (.I0(PL_Addr_Flag),
        .I1(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[27]_i_2_n_8 ),
        .O(\AXI_Trans_Addr[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AXI_Trans_Addr[27]_i_3 
       (.I0(AXI_Trans_Addr[20]),
        .I1(AXI_Trans_Addr1),
        .I2(FS_Number[15]),
        .O(\AXI_Trans_Addr[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI_Trans_Addr[28]_i_1 
       (.I0(PL_Addr_Flag),
        .I1(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[31]_i_2_n_15 ),
        .O(\AXI_Trans_Addr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI_Trans_Addr[29]_i_1 
       (.I0(PL_Addr_Flag),
        .I1(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[31]_i_2_n_14 ),
        .O(\AXI_Trans_Addr[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[2]_i_1 
       (.I0(AXI_Trans_Addr[2]),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2EEE)) 
    \AXI_Trans_Addr[30]_i_1 
       (.I0(\AXI_Trans_Addr_reg[31]_i_2_n_13 ),
        .I1(AXI_Trans_Addr2),
        .I2(PL_Addr_Flag),
        .I3(\AXI_Trans_Addr[30]_i_2_n_0 ),
        .O(\AXI_Trans_Addr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \AXI_Trans_Addr[30]_i_2 
       (.I0(FS_Number[15]),
        .I1(FS_Number[13]),
        .I2(FS_Number[11]),
        .I3(\AXI_Trans_Addr[18]_i_2_n_0 ),
        .I4(FS_Number[12]),
        .I5(FS_Number[14]),
        .O(\AXI_Trans_Addr[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[31]_i_1 
       (.I0(\AXI_Trans_Addr_reg[31]_i_2_n_12 ),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[3]_i_1 
       (.I0(AXI_Trans_Addr[3]),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \AXI_Trans_Addr[4]_i_1 
       (.I0(\AXI_Trans_Addr_reg[11]_i_2_n_15 ),
        .I1(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \AXI_Trans_Addr[5]_i_1 
       (.I0(FS_Number[0]),
        .I1(AXI_Trans_Addr2),
        .I2(\AXI_Trans_Addr_reg[11]_i_2_n_14 ),
        .O(\AXI_Trans_Addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \AXI_Trans_Addr[6]_i_1 
       (.I0(FS_Number[1]),
        .I1(FS_Number[0]),
        .I2(AXI_Trans_Addr2),
        .I3(\AXI_Trans_Addr_reg[11]_i_2_n_13 ),
        .O(\AXI_Trans_Addr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h56FF5600)) 
    \AXI_Trans_Addr[7]_i_1 
       (.I0(FS_Number[2]),
        .I1(FS_Number[0]),
        .I2(FS_Number[1]),
        .I3(AXI_Trans_Addr2),
        .I4(\AXI_Trans_Addr_reg[11]_i_2_n_12 ),
        .O(\AXI_Trans_Addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003FFFCAAAAAAAA)) 
    \AXI_Trans_Addr[8]_i_1 
       (.I0(\AXI_Trans_Addr_reg[11]_i_2_n_11 ),
        .I1(FS_Number[2]),
        .I2(FS_Number[0]),
        .I3(FS_Number[1]),
        .I4(FS_Number[3]),
        .I5(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3CAA)) 
    \AXI_Trans_Addr[9]_i_1 
       (.I0(\AXI_Trans_Addr_reg[11]_i_2_n_10 ),
        .I1(\AXI_Trans_Addr[9]_i_2_n_0 ),
        .I2(FS_Number[4]),
        .I3(AXI_Trans_Addr2),
        .O(\AXI_Trans_Addr[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \AXI_Trans_Addr[9]_i_2 
       (.I0(FS_Number[3]),
        .I1(FS_Number[1]),
        .I2(FS_Number[0]),
        .I3(FS_Number[2]),
        .O(\AXI_Trans_Addr[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[0]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[0]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[10]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[10]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[11]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[11]),
        .R(Chirp_clk_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \AXI_Trans_Addr_reg[11]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\AXI_Trans_Addr_reg[11]_i_2_n_0 ,\AXI_Trans_Addr_reg[11]_i_2_n_1 ,\AXI_Trans_Addr_reg[11]_i_2_n_2 ,\AXI_Trans_Addr_reg[11]_i_2_n_3 ,\AXI_Trans_Addr_reg[11]_i_2_n_4 ,\AXI_Trans_Addr_reg[11]_i_2_n_5 ,\AXI_Trans_Addr_reg[11]_i_2_n_6 ,\AXI_Trans_Addr_reg[11]_i_2_n_7 }),
        .DI({AXI_Trans_Addr[11:5],1'b0}),
        .O({\AXI_Trans_Addr_reg[11]_i_2_n_8 ,\AXI_Trans_Addr_reg[11]_i_2_n_9 ,\AXI_Trans_Addr_reg[11]_i_2_n_10 ,\AXI_Trans_Addr_reg[11]_i_2_n_11 ,\AXI_Trans_Addr_reg[11]_i_2_n_12 ,\AXI_Trans_Addr_reg[11]_i_2_n_13 ,\AXI_Trans_Addr_reg[11]_i_2_n_14 ,\AXI_Trans_Addr_reg[11]_i_2_n_15 }),
        .S({\AXI_Trans_Addr[11]_i_3_n_0 ,\AXI_Trans_Addr[11]_i_4_n_0 ,\AXI_Trans_Addr[11]_i_5_n_0 ,\AXI_Trans_Addr[11]_i_6_n_0 ,\AXI_Trans_Addr[11]_i_7_n_0 ,\AXI_Trans_Addr[11]_i_8_n_0 ,\AXI_Trans_Addr[11]_i_9_n_0 ,AXI_Trans_Addr[4]}));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[12]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[12]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[13]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[13]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[14]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[14]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[15]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[15]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[16]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[16]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[17]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[17]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[18]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[18]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[19]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[19]),
        .R(Chirp_clk_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \AXI_Trans_Addr_reg[19]_i_2 
       (.CI(\AXI_Trans_Addr_reg[11]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\AXI_Trans_Addr_reg[19]_i_2_n_0 ,\AXI_Trans_Addr_reg[19]_i_2_n_1 ,\AXI_Trans_Addr_reg[19]_i_2_n_2 ,\AXI_Trans_Addr_reg[19]_i_2_n_3 ,\AXI_Trans_Addr_reg[19]_i_2_n_4 ,\AXI_Trans_Addr_reg[19]_i_2_n_5 ,\AXI_Trans_Addr_reg[19]_i_2_n_6 ,\AXI_Trans_Addr_reg[19]_i_2_n_7 }),
        .DI(AXI_Trans_Addr[19:12]),
        .O({\AXI_Trans_Addr_reg[19]_i_2_n_8 ,\AXI_Trans_Addr_reg[19]_i_2_n_9 ,\AXI_Trans_Addr_reg[19]_i_2_n_10 ,\AXI_Trans_Addr_reg[19]_i_2_n_11 ,\AXI_Trans_Addr_reg[19]_i_2_n_12 ,\AXI_Trans_Addr_reg[19]_i_2_n_13 ,\AXI_Trans_Addr_reg[19]_i_2_n_14 ,\AXI_Trans_Addr_reg[19]_i_2_n_15 }),
        .S({\AXI_Trans_Addr[19]_i_3_n_0 ,\AXI_Trans_Addr[19]_i_4_n_0 ,\AXI_Trans_Addr[19]_i_5_n_0 ,\AXI_Trans_Addr[19]_i_6_n_0 ,\AXI_Trans_Addr[19]_i_7_n_0 ,\AXI_Trans_Addr[19]_i_8_n_0 ,\AXI_Trans_Addr[19]_i_9_n_0 ,\AXI_Trans_Addr[19]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[1]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[1]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[20]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[20]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[21]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[21]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[22]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[22]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[23]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[23]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[24]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[24]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[25]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[25]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[26]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[26]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[27]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[27]),
        .R(Chirp_clk_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \AXI_Trans_Addr_reg[27]_i_2 
       (.CI(\AXI_Trans_Addr_reg[19]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\AXI_Trans_Addr_reg[27]_i_2_n_0 ,\AXI_Trans_Addr_reg[27]_i_2_n_1 ,\AXI_Trans_Addr_reg[27]_i_2_n_2 ,\AXI_Trans_Addr_reg[27]_i_2_n_3 ,\AXI_Trans_Addr_reg[27]_i_2_n_4 ,\AXI_Trans_Addr_reg[27]_i_2_n_5 ,\AXI_Trans_Addr_reg[27]_i_2_n_6 ,\AXI_Trans_Addr_reg[27]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,AXI_Trans_Addr[20]}),
        .O({\AXI_Trans_Addr_reg[27]_i_2_n_8 ,\AXI_Trans_Addr_reg[27]_i_2_n_9 ,\AXI_Trans_Addr_reg[27]_i_2_n_10 ,\AXI_Trans_Addr_reg[27]_i_2_n_11 ,\AXI_Trans_Addr_reg[27]_i_2_n_12 ,\AXI_Trans_Addr_reg[27]_i_2_n_13 ,\AXI_Trans_Addr_reg[27]_i_2_n_14 ,\AXI_Trans_Addr_reg[27]_i_2_n_15 }),
        .S({AXI_Trans_Addr[27:21],\AXI_Trans_Addr[27]_i_3_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[28]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[28]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[29]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[29]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[2]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[2]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[30]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[30]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[31]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[31]),
        .R(Chirp_clk_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \AXI_Trans_Addr_reg[31]_i_2 
       (.CI(\AXI_Trans_Addr_reg[27]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_AXI_Trans_Addr_reg[31]_i_2_CO_UNCONNECTED [7:3],\AXI_Trans_Addr_reg[31]_i_2_n_5 ,\AXI_Trans_Addr_reg[31]_i_2_n_6 ,\AXI_Trans_Addr_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_AXI_Trans_Addr_reg[31]_i_2_O_UNCONNECTED [7:4],\AXI_Trans_Addr_reg[31]_i_2_n_12 ,\AXI_Trans_Addr_reg[31]_i_2_n_13 ,\AXI_Trans_Addr_reg[31]_i_2_n_14 ,\AXI_Trans_Addr_reg[31]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,AXI_Trans_Addr[31:28]}));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[3]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[3]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[4]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[4]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[5]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[5]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[6]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[6]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[7]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[7]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[8]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[8]),
        .R(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \AXI_Trans_Addr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\AXI_Trans_Addr[9]_i_1_n_0 ),
        .Q(AXI_Trans_Addr[9]),
        .R(Chirp_clk_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Chirp_Cnt1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt1_carry_n_0,Chirp_Cnt1_carry_n_1,Chirp_Cnt1_carry_n_2,Chirp_Cnt1_carry_n_3,Chirp_Cnt1_carry_n_4,Chirp_Cnt1_carry_n_5,Chirp_Cnt1_carry_n_6,Chirp_Cnt1_carry_n_7}),
        .DI({Chirp_Cnt1_carry_i_1_n_0,Chirp_Cnt1_carry_i_2_n_0,Chirp_Cnt1_carry_i_3_n_0,Chirp_Cnt1_carry_i_4_n_0,Chirp_Cnt1_carry_i_5_n_0,Chirp_Cnt1_carry_i_6_n_0,Chirp_Cnt1_carry_i_7_n_0,Chirp_Cnt1_carry_i_8_n_0}),
        .O(NLW_Chirp_Cnt1_carry_O_UNCONNECTED[7:0]),
        .S({Chirp_Cnt1_carry_i_9_n_0,Chirp_Cnt1_carry_i_10_n_0,Chirp_Cnt1_carry_i_11_n_0,Chirp_Cnt1_carry_i_12_n_0,Chirp_Cnt1_carry_i_13_n_0,Chirp_Cnt1_carry_i_14_n_0,Chirp_Cnt1_carry_i_15_n_0,Chirp_Cnt1_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Chirp_Cnt1_carry__0
       (.CI(Chirp_Cnt1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt1_carry__0_n_0,Chirp_Cnt1_carry__0_n_1,Chirp_Cnt1_carry__0_n_2,Chirp_Cnt1_carry__0_n_3,Chirp_Cnt1_carry__0_n_4,Chirp_Cnt1_carry__0_n_5,Chirp_Cnt1_carry__0_n_6,Chirp_Cnt1_carry__0_n_7}),
        .DI({Chirp_Cnt1_carry__0_i_1_n_0,Chirp_Cnt1_carry__0_i_2_n_0,Chirp_Cnt1_carry__0_i_3_n_0,Chirp_Cnt1_carry__0_i_4_n_0,Chirp_Cnt1_carry__0_i_5_n_0,Chirp_Cnt1_carry__0_i_6_n_0,Chirp_Cnt1_carry__0_i_7_n_0,Chirp_Cnt1_carry__0_i_8_n_0}),
        .O(NLW_Chirp_Cnt1_carry__0_O_UNCONNECTED[7:0]),
        .S({Chirp_Cnt1_carry__0_i_9_n_0,Chirp_Cnt1_carry__0_i_10_n_0,Chirp_Cnt1_carry__0_i_11_n_0,Chirp_Cnt1_carry__0_i_12_n_0,Chirp_Cnt1_carry__0_i_13_n_0,Chirp_Cnt1_carry__0_i_14_n_0,Chirp_Cnt1_carry__0_i_15_n_0,Chirp_Cnt1_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_1
       (.I0(Chirp_Cnt[31]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_11),
        .I2(Chirp_Cnt[30]),
        .I3(Chirp_Cnt_EN3__85_carry__2_n_12),
        .O(Chirp_Cnt1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_10
       (.I0(Chirp_Cnt_EN3__85_carry__2_n_13),
        .I1(Chirp_Cnt[29]),
        .I2(Chirp_Cnt_EN3__85_carry__2_n_14),
        .I3(Chirp_Cnt[28]),
        .O(Chirp_Cnt1_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_11
       (.I0(Chirp_Cnt_EN3__85_carry__2_n_15),
        .I1(Chirp_Cnt[27]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_8),
        .I3(Chirp_Cnt[26]),
        .O(Chirp_Cnt1_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_12
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_9),
        .I1(Chirp_Cnt[25]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_10),
        .I3(Chirp_Cnt[24]),
        .O(Chirp_Cnt1_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_13
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_11),
        .I1(Chirp_Cnt[23]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_12),
        .I3(Chirp_Cnt[22]),
        .O(Chirp_Cnt1_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_14
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_13),
        .I1(Chirp_Cnt[21]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_14),
        .I3(Chirp_Cnt[20]),
        .O(Chirp_Cnt1_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_15
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_15),
        .I1(Chirp_Cnt[19]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_8),
        .I3(Chirp_Cnt[18]),
        .O(Chirp_Cnt1_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_16
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_9),
        .I1(Chirp_Cnt[17]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_10),
        .I3(Chirp_Cnt[16]),
        .O(Chirp_Cnt1_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_2
       (.I0(Chirp_Cnt[29]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_13),
        .I2(Chirp_Cnt[28]),
        .I3(Chirp_Cnt_EN3__85_carry__2_n_14),
        .O(Chirp_Cnt1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_3
       (.I0(Chirp_Cnt[27]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_15),
        .I2(Chirp_Cnt[26]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_8),
        .O(Chirp_Cnt1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_4
       (.I0(Chirp_Cnt[25]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_9),
        .I2(Chirp_Cnt[24]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_10),
        .O(Chirp_Cnt1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_5
       (.I0(Chirp_Cnt[23]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_11),
        .I2(Chirp_Cnt[22]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_12),
        .O(Chirp_Cnt1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_6
       (.I0(Chirp_Cnt[21]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_13),
        .I2(Chirp_Cnt[20]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_14),
        .O(Chirp_Cnt1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_7
       (.I0(Chirp_Cnt[19]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_15),
        .I2(Chirp_Cnt[18]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_8),
        .O(Chirp_Cnt1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry__0_i_8
       (.I0(Chirp_Cnt[17]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_9),
        .I2(Chirp_Cnt[16]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_10),
        .O(Chirp_Cnt1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry__0_i_9
       (.I0(Chirp_Cnt_EN3__85_carry__2_n_11),
        .I1(Chirp_Cnt[31]),
        .I2(Chirp_Cnt_EN3__85_carry__2_n_12),
        .I3(Chirp_Cnt[30]),
        .O(Chirp_Cnt1_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_1
       (.I0(Chirp_Cnt[15]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_11),
        .I2(Chirp_Cnt[14]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_12),
        .O(Chirp_Cnt1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_10
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_13),
        .I1(Chirp_Cnt[13]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_14),
        .I3(Chirp_Cnt[12]),
        .O(Chirp_Cnt1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_11
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_15),
        .I1(Chirp_Cnt[11]),
        .I2(Chirp_Cnt_EN3__85_carry_n_8),
        .I3(Chirp_Cnt[10]),
        .O(Chirp_Cnt1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_12
       (.I0(Chirp_Cnt_EN3__85_carry_n_9),
        .I1(Chirp_Cnt[9]),
        .I2(Chirp_Cnt_EN3__85_carry_n_10),
        .I3(Chirp_Cnt[8]),
        .O(Chirp_Cnt1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_13
       (.I0(Chirp_Cnt_EN3__85_carry_n_11),
        .I1(Chirp_Cnt[7]),
        .I2(Chirp_Cnt_EN3__85_carry_n_12),
        .I3(Chirp_Cnt[6]),
        .O(Chirp_Cnt1_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_14
       (.I0(Chirp_Cnt_EN3__85_carry_n_13),
        .I1(Chirp_Cnt[5]),
        .I2(Chirp_Cnt_EN3__85_carry_n_14),
        .I3(Chirp_Cnt[4]),
        .O(Chirp_Cnt1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_15
       (.I0(Chirp_Cnt_EN3__85_carry_n_15),
        .I1(Chirp_Cnt[3]),
        .I2(Chirp_Cnt[2]),
        .I3(FMCW_Chirp_Cycle_us[2]),
        .O(Chirp_Cnt1_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_16
       (.I0(Chirp_Cnt[1]),
        .I1(FMCW_Chirp_Cycle_us[1]),
        .I2(FMCW_Chirp_Cycle_us[0]),
        .I3(Chirp_Cnt[0]),
        .O(Chirp_Cnt1_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_2
       (.I0(Chirp_Cnt[13]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_13),
        .I2(Chirp_Cnt[12]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_14),
        .O(Chirp_Cnt1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_3
       (.I0(Chirp_Cnt[11]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_15),
        .I2(Chirp_Cnt[10]),
        .I3(Chirp_Cnt_EN3__85_carry_n_8),
        .O(Chirp_Cnt1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_4
       (.I0(Chirp_Cnt[9]),
        .I1(Chirp_Cnt_EN3__85_carry_n_9),
        .I2(Chirp_Cnt[8]),
        .I3(Chirp_Cnt_EN3__85_carry_n_10),
        .O(Chirp_Cnt1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_5
       (.I0(Chirp_Cnt[7]),
        .I1(Chirp_Cnt_EN3__85_carry_n_11),
        .I2(Chirp_Cnt[6]),
        .I3(Chirp_Cnt_EN3__85_carry_n_12),
        .O(Chirp_Cnt1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_6
       (.I0(Chirp_Cnt[5]),
        .I1(Chirp_Cnt_EN3__85_carry_n_13),
        .I2(Chirp_Cnt[4]),
        .I3(Chirp_Cnt_EN3__85_carry_n_14),
        .O(Chirp_Cnt1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt1_carry_i_7
       (.I0(Chirp_Cnt[3]),
        .I1(Chirp_Cnt_EN3__85_carry_n_15),
        .I2(Chirp_Cnt[2]),
        .I3(FMCW_Chirp_Cycle_us[2]),
        .O(Chirp_Cnt1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    Chirp_Cnt1_carry_i_8
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .I1(Chirp_Cnt[1]),
        .I2(Chirp_Cnt[0]),
        .I3(FMCW_Chirp_Cycle_us[0]),
        .O(Chirp_Cnt1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt1_carry_i_9
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_11),
        .I1(Chirp_Cnt[15]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_12),
        .I3(Chirp_Cnt[14]),
        .O(Chirp_Cnt1_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \Chirp_Cnt[0]_i_1 
       (.I0(Chirp_Cnt[0]),
        .O(\Chirp_Cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \Chirp_Cnt[31]_i_1 
       (.I0(Chirp_Cnt_EN),
        .I1(Chirp_Cnt1_carry__0_n_0),
        .I2(USER_RST_N),
        .O(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    Chirp_Cnt_EN2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__0_n_10,Chirp_Cnt_EN3__85_carry__0_n_11,Chirp_Cnt_EN3__85_carry__0_n_12,Chirp_Cnt_EN3__85_carry__0_n_13,Chirp_Cnt_EN3__85_carry__0_n_14,Chirp_Cnt_EN3__85_carry__0_n_15,Chirp_Cnt_EN3__85_carry_n_8,Chirp_Cnt_EN3__85_carry_n_9,Chirp_Cnt_EN3__85_carry_n_10,Chirp_Cnt_EN3__85_carry_n_11,Chirp_Cnt_EN3__85_carry_n_12,Chirp_Cnt_EN3__85_carry_n_13,Chirp_Cnt_EN3__85_carry_n_14,Chirp_Cnt_EN3__85_carry_n_15,FMCW_Chirp_Cycle_us[2:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Chirp_Cnt_EN2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,FMCW_Chirp_Number}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Chirp_Cnt_EN2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Chirp_Cnt_EN2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Chirp_Cnt_EN2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Chirp_Cnt_EN2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Chirp_Cnt_EN2_OVERFLOW_UNCONNECTED),
        .P({Chirp_Cnt_EN2_n_58,Chirp_Cnt_EN2_n_59,Chirp_Cnt_EN2_n_60,Chirp_Cnt_EN2_n_61,Chirp_Cnt_EN2_n_62,Chirp_Cnt_EN2_n_63,Chirp_Cnt_EN2_n_64,Chirp_Cnt_EN2_n_65,Chirp_Cnt_EN2_n_66,Chirp_Cnt_EN2_n_67,Chirp_Cnt_EN2_n_68,Chirp_Cnt_EN2_n_69,Chirp_Cnt_EN2_n_70,Chirp_Cnt_EN2_n_71,Chirp_Cnt_EN2_n_72,Chirp_Cnt_EN2_n_73,Chirp_Cnt_EN2_n_74,Chirp_Cnt_EN2_n_75,Chirp_Cnt_EN2_n_76,Chirp_Cnt_EN2_n_77,Chirp_Cnt_EN2_n_78,Chirp_Cnt_EN2_n_79,Chirp_Cnt_EN2_n_80,Chirp_Cnt_EN2_n_81,Chirp_Cnt_EN2_n_82,Chirp_Cnt_EN2_n_83,Chirp_Cnt_EN2_n_84,Chirp_Cnt_EN2_n_85,Chirp_Cnt_EN2_n_86,Chirp_Cnt_EN2_n_87,Chirp_Cnt_EN2_n_88,Chirp_Cnt_EN2_n_89,Chirp_Cnt_EN2_n_90,Chirp_Cnt_EN2_n_91,Chirp_Cnt_EN2_n_92,Chirp_Cnt_EN2_n_93,Chirp_Cnt_EN2_n_94,Chirp_Cnt_EN2_n_95,Chirp_Cnt_EN2_n_96,Chirp_Cnt_EN2_n_97,Chirp_Cnt_EN2_n_98,Chirp_Cnt_EN2_n_99,Chirp_Cnt_EN2_n_100,Chirp_Cnt_EN2_n_101,Chirp_Cnt_EN2_n_102,Chirp_Cnt_EN2_n_103,Chirp_Cnt_EN2_n_104,Chirp_Cnt_EN2_n_105}),
        .PATTERNBDETECT(NLW_Chirp_Cnt_EN2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Chirp_Cnt_EN2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Chirp_Cnt_EN2_n_106,Chirp_Cnt_EN2_n_107,Chirp_Cnt_EN2_n_108,Chirp_Cnt_EN2_n_109,Chirp_Cnt_EN2_n_110,Chirp_Cnt_EN2_n_111,Chirp_Cnt_EN2_n_112,Chirp_Cnt_EN2_n_113,Chirp_Cnt_EN2_n_114,Chirp_Cnt_EN2_n_115,Chirp_Cnt_EN2_n_116,Chirp_Cnt_EN2_n_117,Chirp_Cnt_EN2_n_118,Chirp_Cnt_EN2_n_119,Chirp_Cnt_EN2_n_120,Chirp_Cnt_EN2_n_121,Chirp_Cnt_EN2_n_122,Chirp_Cnt_EN2_n_123,Chirp_Cnt_EN2_n_124,Chirp_Cnt_EN2_n_125,Chirp_Cnt_EN2_n_126,Chirp_Cnt_EN2_n_127,Chirp_Cnt_EN2_n_128,Chirp_Cnt_EN2_n_129,Chirp_Cnt_EN2_n_130,Chirp_Cnt_EN2_n_131,Chirp_Cnt_EN2_n_132,Chirp_Cnt_EN2_n_133,Chirp_Cnt_EN2_n_134,Chirp_Cnt_EN2_n_135,Chirp_Cnt_EN2_n_136,Chirp_Cnt_EN2_n_137,Chirp_Cnt_EN2_n_138,Chirp_Cnt_EN2_n_139,Chirp_Cnt_EN2_n_140,Chirp_Cnt_EN2_n_141,Chirp_Cnt_EN2_n_142,Chirp_Cnt_EN2_n_143,Chirp_Cnt_EN2_n_144,Chirp_Cnt_EN2_n_145,Chirp_Cnt_EN2_n_146,Chirp_Cnt_EN2_n_147,Chirp_Cnt_EN2_n_148,Chirp_Cnt_EN2_n_149,Chirp_Cnt_EN2_n_150,Chirp_Cnt_EN2_n_151,Chirp_Cnt_EN2_n_152,Chirp_Cnt_EN2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Chirp_Cnt_EN2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_Chirp_Cnt_EN2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    Chirp_Cnt_EN2__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,FMCW_Chirp_Number}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Chirp_Cnt_EN2__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__2_n_11,Chirp_Cnt_EN3__85_carry__2_n_12,Chirp_Cnt_EN3__85_carry__2_n_13,Chirp_Cnt_EN3__85_carry__2_n_14,Chirp_Cnt_EN3__85_carry__2_n_15,Chirp_Cnt_EN3__85_carry__1_n_8,Chirp_Cnt_EN3__85_carry__1_n_9,Chirp_Cnt_EN3__85_carry__1_n_10,Chirp_Cnt_EN3__85_carry__1_n_11,Chirp_Cnt_EN3__85_carry__1_n_12,Chirp_Cnt_EN3__85_carry__1_n_13,Chirp_Cnt_EN3__85_carry__1_n_14,Chirp_Cnt_EN3__85_carry__1_n_15,Chirp_Cnt_EN3__85_carry__0_n_8,Chirp_Cnt_EN3__85_carry__0_n_9}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Chirp_Cnt_EN2__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Chirp_Cnt_EN2__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Chirp_Cnt_EN2__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Chirp_Cnt_EN2__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Chirp_Cnt_EN2__0_OVERFLOW_UNCONNECTED),
        .P({Chirp_Cnt_EN2__0_n_58,Chirp_Cnt_EN2__0_n_59,Chirp_Cnt_EN2__0_n_60,Chirp_Cnt_EN2__0_n_61,Chirp_Cnt_EN2__0_n_62,Chirp_Cnt_EN2__0_n_63,Chirp_Cnt_EN2__0_n_64,Chirp_Cnt_EN2__0_n_65,Chirp_Cnt_EN2__0_n_66,Chirp_Cnt_EN2__0_n_67,Chirp_Cnt_EN2__0_n_68,Chirp_Cnt_EN2__0_n_69,Chirp_Cnt_EN2__0_n_70,Chirp_Cnt_EN2__0_n_71,Chirp_Cnt_EN2__0_n_72,Chirp_Cnt_EN2__0_n_73,Chirp_Cnt_EN2__0_n_74,Chirp_Cnt_EN2__0_n_75,Chirp_Cnt_EN2__0_n_76,Chirp_Cnt_EN2__0_n_77,Chirp_Cnt_EN2__0_n_78,Chirp_Cnt_EN2__0_n_79,Chirp_Cnt_EN2__0_n_80,Chirp_Cnt_EN2__0_n_81,Chirp_Cnt_EN2__0_n_82,Chirp_Cnt_EN2__0_n_83,Chirp_Cnt_EN2__0_n_84,Chirp_Cnt_EN2__0_n_85,Chirp_Cnt_EN2__0_n_86,Chirp_Cnt_EN2__0_n_87,Chirp_Cnt_EN2__0_n_88,Chirp_Cnt_EN2__0_n_89,Chirp_Cnt_EN2__0_n_90,Chirp_Cnt_EN2__0_n_91,Chirp_Cnt_EN2__0_n_92,Chirp_Cnt_EN2__0_n_93,Chirp_Cnt_EN2__0_n_94,Chirp_Cnt_EN2__0_n_95,Chirp_Cnt_EN2__0_n_96,Chirp_Cnt_EN2__0_n_97,Chirp_Cnt_EN2__0_n_98,Chirp_Cnt_EN2__0_n_99,Chirp_Cnt_EN2__0_n_100,Chirp_Cnt_EN2__0_n_101,Chirp_Cnt_EN2__0_n_102,Chirp_Cnt_EN2__0_n_103,Chirp_Cnt_EN2__0_n_104,Chirp_Cnt_EN2__0_n_105}),
        .PATTERNBDETECT(NLW_Chirp_Cnt_EN2__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Chirp_Cnt_EN2__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({Chirp_Cnt_EN2_n_106,Chirp_Cnt_EN2_n_107,Chirp_Cnt_EN2_n_108,Chirp_Cnt_EN2_n_109,Chirp_Cnt_EN2_n_110,Chirp_Cnt_EN2_n_111,Chirp_Cnt_EN2_n_112,Chirp_Cnt_EN2_n_113,Chirp_Cnt_EN2_n_114,Chirp_Cnt_EN2_n_115,Chirp_Cnt_EN2_n_116,Chirp_Cnt_EN2_n_117,Chirp_Cnt_EN2_n_118,Chirp_Cnt_EN2_n_119,Chirp_Cnt_EN2_n_120,Chirp_Cnt_EN2_n_121,Chirp_Cnt_EN2_n_122,Chirp_Cnt_EN2_n_123,Chirp_Cnt_EN2_n_124,Chirp_Cnt_EN2_n_125,Chirp_Cnt_EN2_n_126,Chirp_Cnt_EN2_n_127,Chirp_Cnt_EN2_n_128,Chirp_Cnt_EN2_n_129,Chirp_Cnt_EN2_n_130,Chirp_Cnt_EN2_n_131,Chirp_Cnt_EN2_n_132,Chirp_Cnt_EN2_n_133,Chirp_Cnt_EN2_n_134,Chirp_Cnt_EN2_n_135,Chirp_Cnt_EN2_n_136,Chirp_Cnt_EN2_n_137,Chirp_Cnt_EN2_n_138,Chirp_Cnt_EN2_n_139,Chirp_Cnt_EN2_n_140,Chirp_Cnt_EN2_n_141,Chirp_Cnt_EN2_n_142,Chirp_Cnt_EN2_n_143,Chirp_Cnt_EN2_n_144,Chirp_Cnt_EN2_n_145,Chirp_Cnt_EN2_n_146,Chirp_Cnt_EN2_n_147,Chirp_Cnt_EN2_n_148,Chirp_Cnt_EN2_n_149,Chirp_Cnt_EN2_n_150,Chirp_Cnt_EN2_n_151,Chirp_Cnt_EN2_n_152,Chirp_Cnt_EN2_n_153}),
        .PCOUT(NLW_Chirp_Cnt_EN2__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Chirp_Cnt_EN2__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_Chirp_Cnt_EN2__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__0_carry_n_0,Chirp_Cnt_EN3__0_carry_n_1,Chirp_Cnt_EN3__0_carry_n_2,Chirp_Cnt_EN3__0_carry_n_3,Chirp_Cnt_EN3__0_carry_n_4,Chirp_Cnt_EN3__0_carry_n_5,Chirp_Cnt_EN3__0_carry_n_6,Chirp_Cnt_EN3__0_carry_n_7}),
        .DI({FMCW_Chirp_Cycle_us[5:0],1'b0,1'b1}),
        .O({Chirp_Cnt_EN3__0_carry_n_8,Chirp_Cnt_EN3__0_carry_n_9,Chirp_Cnt_EN3__0_carry_n_10,Chirp_Cnt_EN3__0_carry_n_11,Chirp_Cnt_EN3__0_carry_n_12,Chirp_Cnt_EN3__0_carry_n_13,Chirp_Cnt_EN3__0_carry_n_14,Chirp_Cnt_EN3__0_carry_n_15}),
        .S({Chirp_Cnt_EN3__0_carry_i_1_n_0,Chirp_Cnt_EN3__0_carry_i_2_n_0,Chirp_Cnt_EN3__0_carry_i_3_n_0,Chirp_Cnt_EN3__0_carry_i_4_n_0,Chirp_Cnt_EN3__0_carry_i_5_n_0,Chirp_Cnt_EN3__0_carry_i_6_n_0,Chirp_Cnt_EN3__0_carry_i_7_n_0,FMCW_Chirp_Cycle_us[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__0_carry__0
       (.CI(Chirp_Cnt_EN3__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__0_carry__0_n_0,Chirp_Cnt_EN3__0_carry__0_n_1,Chirp_Cnt_EN3__0_carry__0_n_2,Chirp_Cnt_EN3__0_carry__0_n_3,Chirp_Cnt_EN3__0_carry__0_n_4,Chirp_Cnt_EN3__0_carry__0_n_5,Chirp_Cnt_EN3__0_carry__0_n_6,Chirp_Cnt_EN3__0_carry__0_n_7}),
        .DI(FMCW_Chirp_Cycle_us[13:6]),
        .O({Chirp_Cnt_EN3__0_carry__0_n_8,Chirp_Cnt_EN3__0_carry__0_n_9,Chirp_Cnt_EN3__0_carry__0_n_10,Chirp_Cnt_EN3__0_carry__0_n_11,Chirp_Cnt_EN3__0_carry__0_n_12,Chirp_Cnt_EN3__0_carry__0_n_13,Chirp_Cnt_EN3__0_carry__0_n_14,Chirp_Cnt_EN3__0_carry__0_n_15}),
        .S({Chirp_Cnt_EN3__0_carry__0_i_1_n_0,Chirp_Cnt_EN3__0_carry__0_i_2_n_0,Chirp_Cnt_EN3__0_carry__0_i_3_n_0,Chirp_Cnt_EN3__0_carry__0_i_4_n_0,Chirp_Cnt_EN3__0_carry__0_i_5_n_0,Chirp_Cnt_EN3__0_carry__0_i_6_n_0,Chirp_Cnt_EN3__0_carry__0_i_7_n_0,Chirp_Cnt_EN3__0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_1
       (.I0(FMCW_Chirp_Cycle_us[13]),
        .I1(FMCW_Chirp_Cycle_us[15]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_2
       (.I0(FMCW_Chirp_Cycle_us[12]),
        .I1(FMCW_Chirp_Cycle_us[14]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_3
       (.I0(FMCW_Chirp_Cycle_us[11]),
        .I1(FMCW_Chirp_Cycle_us[13]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_4
       (.I0(FMCW_Chirp_Cycle_us[10]),
        .I1(FMCW_Chirp_Cycle_us[12]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_5
       (.I0(FMCW_Chirp_Cycle_us[9]),
        .I1(FMCW_Chirp_Cycle_us[11]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_6
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(FMCW_Chirp_Cycle_us[10]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_7
       (.I0(FMCW_Chirp_Cycle_us[7]),
        .I1(FMCW_Chirp_Cycle_us[9]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__0_i_8
       (.I0(FMCW_Chirp_Cycle_us[6]),
        .I1(FMCW_Chirp_Cycle_us[8]),
        .O(Chirp_Cnt_EN3__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__0_carry__1
       (.CI(Chirp_Cnt_EN3__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__0_carry__1_n_0,Chirp_Cnt_EN3__0_carry__1_n_1,Chirp_Cnt_EN3__0_carry__1_n_2,Chirp_Cnt_EN3__0_carry__1_n_3,Chirp_Cnt_EN3__0_carry__1_n_4,Chirp_Cnt_EN3__0_carry__1_n_5,Chirp_Cnt_EN3__0_carry__1_n_6,Chirp_Cnt_EN3__0_carry__1_n_7}),
        .DI(FMCW_Chirp_Cycle_us[21:14]),
        .O({Chirp_Cnt_EN3__0_carry__1_n_8,Chirp_Cnt_EN3__0_carry__1_n_9,Chirp_Cnt_EN3__0_carry__1_n_10,Chirp_Cnt_EN3__0_carry__1_n_11,Chirp_Cnt_EN3__0_carry__1_n_12,Chirp_Cnt_EN3__0_carry__1_n_13,Chirp_Cnt_EN3__0_carry__1_n_14,Chirp_Cnt_EN3__0_carry__1_n_15}),
        .S({Chirp_Cnt_EN3__0_carry__1_i_1_n_0,Chirp_Cnt_EN3__0_carry__1_i_2_n_0,Chirp_Cnt_EN3__0_carry__1_i_3_n_0,Chirp_Cnt_EN3__0_carry__1_i_4_n_0,Chirp_Cnt_EN3__0_carry__1_i_5_n_0,Chirp_Cnt_EN3__0_carry__1_i_6_n_0,Chirp_Cnt_EN3__0_carry__1_i_7_n_0,Chirp_Cnt_EN3__0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_1
       (.I0(FMCW_Chirp_Cycle_us[21]),
        .I1(FMCW_Chirp_Cycle_us[23]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_2
       (.I0(FMCW_Chirp_Cycle_us[20]),
        .I1(FMCW_Chirp_Cycle_us[22]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_3
       (.I0(FMCW_Chirp_Cycle_us[19]),
        .I1(FMCW_Chirp_Cycle_us[21]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_4
       (.I0(FMCW_Chirp_Cycle_us[18]),
        .I1(FMCW_Chirp_Cycle_us[20]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_5
       (.I0(FMCW_Chirp_Cycle_us[17]),
        .I1(FMCW_Chirp_Cycle_us[19]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_6
       (.I0(FMCW_Chirp_Cycle_us[16]),
        .I1(FMCW_Chirp_Cycle_us[18]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_7
       (.I0(FMCW_Chirp_Cycle_us[15]),
        .I1(FMCW_Chirp_Cycle_us[17]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__1_i_8
       (.I0(FMCW_Chirp_Cycle_us[14]),
        .I1(FMCW_Chirp_Cycle_us[16]),
        .O(Chirp_Cnt_EN3__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__0_carry__2
       (.CI(Chirp_Cnt_EN3__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_Chirp_Cnt_EN3__0_carry__2_CO_UNCONNECTED[7:4],Chirp_Cnt_EN3__0_carry__2_n_4,Chirp_Cnt_EN3__0_carry__2_n_5,Chirp_Cnt_EN3__0_carry__2_n_6,Chirp_Cnt_EN3__0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,FMCW_Chirp_Cycle_us[25:22]}),
        .O({NLW_Chirp_Cnt_EN3__0_carry__2_O_UNCONNECTED[7:5],Chirp_Cnt_EN3__0_carry__2_n_11,Chirp_Cnt_EN3__0_carry__2_n_12,Chirp_Cnt_EN3__0_carry__2_n_13,Chirp_Cnt_EN3__0_carry__2_n_14,Chirp_Cnt_EN3__0_carry__2_n_15}),
        .S({1'b0,1'b0,1'b0,Chirp_Cnt_EN3__0_carry__2_i_1_n_0,Chirp_Cnt_EN3__0_carry__2_i_2_n_0,Chirp_Cnt_EN3__0_carry__2_i_3_n_0,Chirp_Cnt_EN3__0_carry__2_i_4_n_0,Chirp_Cnt_EN3__0_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__2_i_1
       (.I0(FMCW_Chirp_Cycle_us[26]),
        .I1(FMCW_Chirp_Cycle_us[28]),
        .O(Chirp_Cnt_EN3__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__2_i_2
       (.I0(FMCW_Chirp_Cycle_us[25]),
        .I1(FMCW_Chirp_Cycle_us[27]),
        .O(Chirp_Cnt_EN3__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__2_i_3
       (.I0(FMCW_Chirp_Cycle_us[24]),
        .I1(FMCW_Chirp_Cycle_us[26]),
        .O(Chirp_Cnt_EN3__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__2_i_4
       (.I0(FMCW_Chirp_Cycle_us[23]),
        .I1(FMCW_Chirp_Cycle_us[25]),
        .O(Chirp_Cnt_EN3__0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry__2_i_5
       (.I0(FMCW_Chirp_Cycle_us[22]),
        .I1(FMCW_Chirp_Cycle_us[24]),
        .O(Chirp_Cnt_EN3__0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_1
       (.I0(FMCW_Chirp_Cycle_us[5]),
        .I1(FMCW_Chirp_Cycle_us[7]),
        .O(Chirp_Cnt_EN3__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_2
       (.I0(FMCW_Chirp_Cycle_us[4]),
        .I1(FMCW_Chirp_Cycle_us[6]),
        .O(Chirp_Cnt_EN3__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_3
       (.I0(FMCW_Chirp_Cycle_us[3]),
        .I1(FMCW_Chirp_Cycle_us[5]),
        .O(Chirp_Cnt_EN3__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_4
       (.I0(FMCW_Chirp_Cycle_us[2]),
        .I1(FMCW_Chirp_Cycle_us[4]),
        .O(Chirp_Cnt_EN3__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_5
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .I1(FMCW_Chirp_Cycle_us[3]),
        .O(Chirp_Cnt_EN3__0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Chirp_Cnt_EN3__0_carry_i_6
       (.I0(FMCW_Chirp_Cycle_us[0]),
        .I1(FMCW_Chirp_Cycle_us[2]),
        .O(Chirp_Cnt_EN3__0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Chirp_Cnt_EN3__0_carry_i_7
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .O(Chirp_Cnt_EN3__0_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__85_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__85_carry_n_0,Chirp_Cnt_EN3__85_carry_n_1,Chirp_Cnt_EN3__85_carry_n_2,Chirp_Cnt_EN3__85_carry_n_3,Chirp_Cnt_EN3__85_carry_n_4,Chirp_Cnt_EN3__85_carry_n_5,Chirp_Cnt_EN3__85_carry_n_6,Chirp_Cnt_EN3__85_carry_n_7}),
        .DI({Chirp_Cnt_EN3__85_carry_i_1_n_0,Chirp_Cnt_EN3__85_carry_i_2_n_0,Chirp_Cnt_EN3__85_carry_i_3_n_0,FMCW_Chirp_Cycle_us[0],FMCW_Chirp_Cycle_us[6:3]}),
        .O({Chirp_Cnt_EN3__85_carry_n_8,Chirp_Cnt_EN3__85_carry_n_9,Chirp_Cnt_EN3__85_carry_n_10,Chirp_Cnt_EN3__85_carry_n_11,Chirp_Cnt_EN3__85_carry_n_12,Chirp_Cnt_EN3__85_carry_n_13,Chirp_Cnt_EN3__85_carry_n_14,Chirp_Cnt_EN3__85_carry_n_15}),
        .S({Chirp_Cnt_EN3__85_carry_i_4_n_0,Chirp_Cnt_EN3__85_carry_i_5_n_0,Chirp_Cnt_EN3__85_carry_i_6_n_0,Chirp_Cnt_EN3__85_carry_i_7_n_0,Chirp_Cnt_EN3__85_carry_i_8_n_0,Chirp_Cnt_EN3__85_carry_i_9_n_0,Chirp_Cnt_EN3__85_carry_i_10_n_0,Chirp_Cnt_EN3__85_carry_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__85_carry__0
       (.CI(Chirp_Cnt_EN3__85_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__85_carry__0_n_0,Chirp_Cnt_EN3__85_carry__0_n_1,Chirp_Cnt_EN3__85_carry__0_n_2,Chirp_Cnt_EN3__85_carry__0_n_3,Chirp_Cnt_EN3__85_carry__0_n_4,Chirp_Cnt_EN3__85_carry__0_n_5,Chirp_Cnt_EN3__85_carry__0_n_6,Chirp_Cnt_EN3__85_carry__0_n_7}),
        .DI({Chirp_Cnt_EN3__85_carry__0_i_1_n_0,Chirp_Cnt_EN3__85_carry__0_i_2_n_0,Chirp_Cnt_EN3__85_carry__0_i_3_n_0,Chirp_Cnt_EN3__85_carry__0_i_4_n_0,Chirp_Cnt_EN3__85_carry__0_i_5_n_0,Chirp_Cnt_EN3__85_carry__0_i_6_n_0,Chirp_Cnt_EN3__85_carry__0_i_7_n_0,Chirp_Cnt_EN3__85_carry__0_i_8_n_0}),
        .O({Chirp_Cnt_EN3__85_carry__0_n_8,Chirp_Cnt_EN3__85_carry__0_n_9,Chirp_Cnt_EN3__85_carry__0_n_10,Chirp_Cnt_EN3__85_carry__0_n_11,Chirp_Cnt_EN3__85_carry__0_n_12,Chirp_Cnt_EN3__85_carry__0_n_13,Chirp_Cnt_EN3__85_carry__0_n_14,Chirp_Cnt_EN3__85_carry__0_n_15}),
        .S({Chirp_Cnt_EN3__85_carry__0_i_9_n_0,Chirp_Cnt_EN3__85_carry__0_i_10_n_0,Chirp_Cnt_EN3__85_carry__0_i_11_n_0,Chirp_Cnt_EN3__85_carry__0_i_12_n_0,Chirp_Cnt_EN3__85_carry__0_i_13_n_0,Chirp_Cnt_EN3__85_carry__0_i_14_n_0,Chirp_Cnt_EN3__85_carry__0_i_15_n_0,Chirp_Cnt_EN3__85_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_1
       (.I0(FMCW_Chirp_Cycle_us[10]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_9),
        .I2(FMCW_Chirp_Cycle_us[17]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_10
       (.I0(FMCW_Chirp_Cycle_us[10]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_9),
        .I2(FMCW_Chirp_Cycle_us[17]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_2_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_11
       (.I0(FMCW_Chirp_Cycle_us[9]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_10),
        .I2(FMCW_Chirp_Cycle_us[16]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_3_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_12
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_11),
        .I2(FMCW_Chirp_Cycle_us[15]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_4_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_13
       (.I0(FMCW_Chirp_Cycle_us[7]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_12),
        .I2(FMCW_Chirp_Cycle_us[14]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_5_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_14
       (.I0(FMCW_Chirp_Cycle_us[6]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_13),
        .I2(FMCW_Chirp_Cycle_us[13]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_6_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_15
       (.I0(FMCW_Chirp_Cycle_us[5]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_14),
        .I2(FMCW_Chirp_Cycle_us[12]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_7_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_16
       (.I0(FMCW_Chirp_Cycle_us[4]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_15),
        .I2(FMCW_Chirp_Cycle_us[11]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_8_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_2
       (.I0(FMCW_Chirp_Cycle_us[9]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_10),
        .I2(FMCW_Chirp_Cycle_us[16]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_3
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_11),
        .I2(FMCW_Chirp_Cycle_us[15]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_4
       (.I0(FMCW_Chirp_Cycle_us[7]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_12),
        .I2(FMCW_Chirp_Cycle_us[14]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_5
       (.I0(FMCW_Chirp_Cycle_us[6]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_13),
        .I2(FMCW_Chirp_Cycle_us[13]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_6
       (.I0(FMCW_Chirp_Cycle_us[5]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_14),
        .I2(FMCW_Chirp_Cycle_us[12]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_7
       (.I0(FMCW_Chirp_Cycle_us[4]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_15),
        .I2(FMCW_Chirp_Cycle_us[11]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__0_i_8
       (.I0(FMCW_Chirp_Cycle_us[3]),
        .I1(Chirp_Cnt_EN3__0_carry_n_8),
        .I2(FMCW_Chirp_Cycle_us[10]),
        .O(Chirp_Cnt_EN3__85_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__0_i_9
       (.I0(FMCW_Chirp_Cycle_us[11]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_8),
        .I2(FMCW_Chirp_Cycle_us[18]),
        .I3(Chirp_Cnt_EN3__85_carry__0_i_1_n_0),
        .O(Chirp_Cnt_EN3__85_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__85_carry__1
       (.CI(Chirp_Cnt_EN3__85_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN3__85_carry__1_n_0,Chirp_Cnt_EN3__85_carry__1_n_1,Chirp_Cnt_EN3__85_carry__1_n_2,Chirp_Cnt_EN3__85_carry__1_n_3,Chirp_Cnt_EN3__85_carry__1_n_4,Chirp_Cnt_EN3__85_carry__1_n_5,Chirp_Cnt_EN3__85_carry__1_n_6,Chirp_Cnt_EN3__85_carry__1_n_7}),
        .DI({Chirp_Cnt_EN3__85_carry__1_i_1_n_0,Chirp_Cnt_EN3__85_carry__1_i_2_n_0,Chirp_Cnt_EN3__85_carry__1_i_3_n_0,Chirp_Cnt_EN3__85_carry__1_i_4_n_0,Chirp_Cnt_EN3__85_carry__1_i_5_n_0,Chirp_Cnt_EN3__85_carry__1_i_6_n_0,Chirp_Cnt_EN3__85_carry__1_i_7_n_0,Chirp_Cnt_EN3__85_carry__1_i_8_n_0}),
        .O({Chirp_Cnt_EN3__85_carry__1_n_8,Chirp_Cnt_EN3__85_carry__1_n_9,Chirp_Cnt_EN3__85_carry__1_n_10,Chirp_Cnt_EN3__85_carry__1_n_11,Chirp_Cnt_EN3__85_carry__1_n_12,Chirp_Cnt_EN3__85_carry__1_n_13,Chirp_Cnt_EN3__85_carry__1_n_14,Chirp_Cnt_EN3__85_carry__1_n_15}),
        .S({Chirp_Cnt_EN3__85_carry__1_i_9_n_0,Chirp_Cnt_EN3__85_carry__1_i_10_n_0,Chirp_Cnt_EN3__85_carry__1_i_11_n_0,Chirp_Cnt_EN3__85_carry__1_i_12_n_0,Chirp_Cnt_EN3__85_carry__1_i_13_n_0,Chirp_Cnt_EN3__85_carry__1_i_14_n_0,Chirp_Cnt_EN3__85_carry__1_i_15_n_0,Chirp_Cnt_EN3__85_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_1
       (.I0(FMCW_Chirp_Cycle_us[18]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_9),
        .I2(FMCW_Chirp_Cycle_us[25]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_10
       (.I0(FMCW_Chirp_Cycle_us[18]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_9),
        .I2(FMCW_Chirp_Cycle_us[25]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_2_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_11
       (.I0(FMCW_Chirp_Cycle_us[17]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_10),
        .I2(FMCW_Chirp_Cycle_us[24]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_3_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_12
       (.I0(FMCW_Chirp_Cycle_us[16]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_11),
        .I2(FMCW_Chirp_Cycle_us[23]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_4_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_13
       (.I0(FMCW_Chirp_Cycle_us[15]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_12),
        .I2(FMCW_Chirp_Cycle_us[22]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_5_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_14
       (.I0(FMCW_Chirp_Cycle_us[14]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_13),
        .I2(FMCW_Chirp_Cycle_us[21]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_6_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_15
       (.I0(FMCW_Chirp_Cycle_us[13]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_14),
        .I2(FMCW_Chirp_Cycle_us[20]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_7_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_16
       (.I0(FMCW_Chirp_Cycle_us[12]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_15),
        .I2(FMCW_Chirp_Cycle_us[19]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_8_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_2
       (.I0(FMCW_Chirp_Cycle_us[17]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_10),
        .I2(FMCW_Chirp_Cycle_us[24]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_3
       (.I0(FMCW_Chirp_Cycle_us[16]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_11),
        .I2(FMCW_Chirp_Cycle_us[23]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_4
       (.I0(FMCW_Chirp_Cycle_us[15]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_12),
        .I2(FMCW_Chirp_Cycle_us[22]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_5
       (.I0(FMCW_Chirp_Cycle_us[14]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_13),
        .I2(FMCW_Chirp_Cycle_us[21]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_6
       (.I0(FMCW_Chirp_Cycle_us[13]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_14),
        .I2(FMCW_Chirp_Cycle_us[20]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_7
       (.I0(FMCW_Chirp_Cycle_us[12]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_15),
        .I2(FMCW_Chirp_Cycle_us[19]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__1_i_8
       (.I0(FMCW_Chirp_Cycle_us[11]),
        .I1(Chirp_Cnt_EN3__0_carry__0_n_8),
        .I2(FMCW_Chirp_Cycle_us[18]),
        .O(Chirp_Cnt_EN3__85_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__1_i_9
       (.I0(FMCW_Chirp_Cycle_us[26]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_8),
        .I2(FMCW_Chirp_Cycle_us[19]),
        .I3(Chirp_Cnt_EN3__85_carry__1_i_1_n_0),
        .O(Chirp_Cnt_EN3__85_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_EN3__85_carry__2
       (.CI(Chirp_Cnt_EN3__85_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_Chirp_Cnt_EN3__85_carry__2_CO_UNCONNECTED[7:4],Chirp_Cnt_EN3__85_carry__2_n_4,Chirp_Cnt_EN3__85_carry__2_n_5,Chirp_Cnt_EN3__85_carry__2_n_6,Chirp_Cnt_EN3__85_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__2_i_1_n_0,Chirp_Cnt_EN3__85_carry__2_i_2_n_0,Chirp_Cnt_EN3__85_carry__2_i_3_n_0,Chirp_Cnt_EN3__85_carry__2_i_4_n_0}),
        .O({NLW_Chirp_Cnt_EN3__85_carry__2_O_UNCONNECTED[7:5],Chirp_Cnt_EN3__85_carry__2_n_11,Chirp_Cnt_EN3__85_carry__2_n_12,Chirp_Cnt_EN3__85_carry__2_n_13,Chirp_Cnt_EN3__85_carry__2_n_14,Chirp_Cnt_EN3__85_carry__2_n_15}),
        .S({1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__2_i_5_n_0,Chirp_Cnt_EN3__85_carry__2_i_6_n_0,Chirp_Cnt_EN3__85_carry__2_i_7_n_0,Chirp_Cnt_EN3__85_carry__2_i_8_n_0,Chirp_Cnt_EN3__85_carry__2_i_9_n_0}));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__2_i_1
       (.I0(Chirp_Cnt_EN3__0_carry__2_n_13),
        .I1(FMCW_Chirp_Cycle_us[22]),
        .I2(FMCW_Chirp_Cycle_us[29]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__2_i_2
       (.I0(FMCW_Chirp_Cycle_us[21]),
        .I1(Chirp_Cnt_EN3__0_carry__2_n_14),
        .I2(FMCW_Chirp_Cycle_us[28]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__2_i_3
       (.I0(FMCW_Chirp_Cycle_us[20]),
        .I1(Chirp_Cnt_EN3__0_carry__2_n_15),
        .I2(FMCW_Chirp_Cycle_us[27]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry__2_i_4
       (.I0(FMCW_Chirp_Cycle_us[26]),
        .I1(Chirp_Cnt_EN3__0_carry__1_n_8),
        .I2(FMCW_Chirp_Cycle_us[19]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    Chirp_Cnt_EN3__85_carry__2_i_5
       (.I0(FMCW_Chirp_Cycle_us[30]),
        .I1(FMCW_Chirp_Cycle_us[23]),
        .I2(Chirp_Cnt_EN3__0_carry__2_n_12),
        .I3(Chirp_Cnt_EN3__0_carry__2_n_11),
        .I4(FMCW_Chirp_Cycle_us[31]),
        .I5(FMCW_Chirp_Cycle_us[24]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__2_i_6
       (.I0(Chirp_Cnt_EN3__85_carry__2_i_1_n_0),
        .I1(Chirp_Cnt_EN3__0_carry__2_n_12),
        .I2(FMCW_Chirp_Cycle_us[30]),
        .I3(FMCW_Chirp_Cycle_us[23]),
        .O(Chirp_Cnt_EN3__85_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__2_i_7
       (.I0(Chirp_Cnt_EN3__0_carry__2_n_13),
        .I1(FMCW_Chirp_Cycle_us[22]),
        .I2(FMCW_Chirp_Cycle_us[29]),
        .I3(Chirp_Cnt_EN3__85_carry__2_i_2_n_0),
        .O(Chirp_Cnt_EN3__85_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__2_i_8
       (.I0(FMCW_Chirp_Cycle_us[21]),
        .I1(Chirp_Cnt_EN3__0_carry__2_n_14),
        .I2(FMCW_Chirp_Cycle_us[28]),
        .I3(Chirp_Cnt_EN3__85_carry__2_i_3_n_0),
        .O(Chirp_Cnt_EN3__85_carry__2_i_8_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry__2_i_9
       (.I0(FMCW_Chirp_Cycle_us[20]),
        .I1(Chirp_Cnt_EN3__0_carry__2_n_15),
        .I2(FMCW_Chirp_Cycle_us[27]),
        .I3(Chirp_Cnt_EN3__85_carry__2_i_4_n_0),
        .O(Chirp_Cnt_EN3__85_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry_i_1
       (.I0(Chirp_Cnt_EN3__0_carry_n_9),
        .I1(FMCW_Chirp_Cycle_us[9]),
        .I2(FMCW_Chirp_Cycle_us[2]),
        .O(Chirp_Cnt_EN3__85_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Chirp_Cnt_EN3__85_carry_i_10
       (.I0(FMCW_Chirp_Cycle_us[4]),
        .I1(Chirp_Cnt_EN3__0_carry_n_14),
        .O(Chirp_Cnt_EN3__85_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Chirp_Cnt_EN3__85_carry_i_11
       (.I0(FMCW_Chirp_Cycle_us[3]),
        .I1(Chirp_Cnt_EN3__0_carry_n_15),
        .O(Chirp_Cnt_EN3__85_carry_i_11_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Chirp_Cnt_EN3__85_carry_i_2
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(Chirp_Cnt_EN3__0_carry_n_10),
        .I2(FMCW_Chirp_Cycle_us[1]),
        .O(Chirp_Cnt_EN3__85_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Chirp_Cnt_EN3__85_carry_i_3
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .I1(Chirp_Cnt_EN3__0_carry_n_10),
        .I2(FMCW_Chirp_Cycle_us[8]),
        .O(Chirp_Cnt_EN3__85_carry_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry_i_4
       (.I0(FMCW_Chirp_Cycle_us[3]),
        .I1(Chirp_Cnt_EN3__0_carry_n_8),
        .I2(FMCW_Chirp_Cycle_us[10]),
        .I3(Chirp_Cnt_EN3__85_carry_i_1_n_0),
        .O(Chirp_Cnt_EN3__85_carry_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Chirp_Cnt_EN3__85_carry_i_5
       (.I0(Chirp_Cnt_EN3__0_carry_n_9),
        .I1(FMCW_Chirp_Cycle_us[9]),
        .I2(FMCW_Chirp_Cycle_us[2]),
        .I3(Chirp_Cnt_EN3__85_carry_i_2_n_0),
        .O(Chirp_Cnt_EN3__85_carry_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Chirp_Cnt_EN3__85_carry_i_6
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(Chirp_Cnt_EN3__0_carry_n_10),
        .I2(FMCW_Chirp_Cycle_us[1]),
        .I3(Chirp_Cnt_EN3__0_carry_n_11),
        .I4(FMCW_Chirp_Cycle_us[7]),
        .O(Chirp_Cnt_EN3__85_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Chirp_Cnt_EN3__85_carry_i_7
       (.I0(Chirp_Cnt_EN3__0_carry_n_11),
        .I1(FMCW_Chirp_Cycle_us[7]),
        .I2(FMCW_Chirp_Cycle_us[0]),
        .O(Chirp_Cnt_EN3__85_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Chirp_Cnt_EN3__85_carry_i_8
       (.I0(FMCW_Chirp_Cycle_us[6]),
        .I1(Chirp_Cnt_EN3__0_carry_n_12),
        .O(Chirp_Cnt_EN3__85_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Chirp_Cnt_EN3__85_carry_i_9
       (.I0(FMCW_Chirp_Cycle_us[5]),
        .I1(Chirp_Cnt_EN3__0_carry_n_13),
        .O(Chirp_Cnt_EN3__85_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    Chirp_Cnt_EN_i_1
       (.I0(p_1_out_carry__2_n_0),
        .I1(Chirp_Cnt_EN_reg0),
        .I2(USER_RST_N),
        .O(Chirp_Cnt_EN_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE Chirp_Cnt_EN_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_EN_i_1_n_0),
        .Q(Chirp_Cnt_EN),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Chirp_Cnt_EN_reg0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN_reg0_carry_n_0,Chirp_Cnt_EN_reg0_carry_n_1,Chirp_Cnt_EN_reg0_carry_n_2,Chirp_Cnt_EN_reg0_carry_n_3,Chirp_Cnt_EN_reg0_carry_n_4,Chirp_Cnt_EN_reg0_carry_n_5,Chirp_Cnt_EN_reg0_carry_n_6,Chirp_Cnt_EN_reg0_carry_n_7}),
        .DI({Chirp_Cnt_EN_reg0_carry_i_1_n_0,Chirp_Cnt_EN_reg0_carry_i_2_n_0,Chirp_Cnt_EN_reg0_carry_i_3_n_0,Chirp_Cnt_EN_reg0_carry_i_4_n_0,Chirp_Cnt_EN_reg0_carry_i_5_n_0,Chirp_Cnt_EN_reg0_carry_i_6_n_0,Chirp_Cnt_EN_reg0_carry_i_7_n_0,Chirp_Cnt_EN_reg0_carry_i_8_n_0}),
        .O(NLW_Chirp_Cnt_EN_reg0_carry_O_UNCONNECTED[7:0]),
        .S({Chirp_Cnt_EN_reg0_carry_i_9_n_0,Chirp_Cnt_EN_reg0_carry_i_10_n_0,Chirp_Cnt_EN_reg0_carry_i_11_n_0,Chirp_Cnt_EN_reg0_carry_i_12_n_0,Chirp_Cnt_EN_reg0_carry_i_13_n_0,Chirp_Cnt_EN_reg0_carry_i_14_n_0,Chirp_Cnt_EN_reg0_carry_i_15_n_0,Chirp_Cnt_EN_reg0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Chirp_Cnt_EN_reg0_carry__0
       (.CI(Chirp_Cnt_EN_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_EN_reg0,Chirp_Cnt_EN_reg0_carry__0_n_1,Chirp_Cnt_EN_reg0_carry__0_n_2,Chirp_Cnt_EN_reg0_carry__0_n_3,Chirp_Cnt_EN_reg0_carry__0_n_4,Chirp_Cnt_EN_reg0_carry__0_n_5,Chirp_Cnt_EN_reg0_carry__0_n_6,Chirp_Cnt_EN_reg0_carry__0_n_7}),
        .DI({Chirp_Cnt_EN_reg0_carry__0_i_1_n_0,Chirp_Cnt_EN_reg0_carry__0_i_2_n_0,Chirp_Cnt_EN_reg0_carry__0_i_3_n_0,Chirp_Cnt_EN_reg0_carry__0_i_4_n_0,Chirp_Cnt_EN_reg0_carry__0_i_5_n_0,Chirp_Cnt_EN_reg0_carry__0_i_6_n_0,Chirp_Cnt_EN_reg0_carry__0_i_7_n_0,Chirp_Cnt_EN_reg0_carry__0_i_8_n_0}),
        .O(NLW_Chirp_Cnt_EN_reg0_carry__0_O_UNCONNECTED[7:0]),
        .S({Chirp_Cnt_EN_reg0_carry__0_i_9_n_0,Chirp_Cnt_EN_reg0_carry__0_i_10_n_0,Chirp_Cnt_EN_reg0_carry__0_i_11_n_0,Chirp_Cnt_EN_reg0_carry__0_i_12_n_0,Chirp_Cnt_EN_reg0_carry__0_i_13_n_0,Chirp_Cnt_EN_reg0_carry__0_i_14_n_0,Chirp_Cnt_EN_reg0_carry__0_i_15_n_0,Chirp_Cnt_EN_reg0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    Chirp_Cnt_EN_reg0_carry__0_i_1
       (.I0(Frame_Cnt[31]),
        .I1(Frame_Cnt1_n_74),
        .I2(Frame_Cnt[30]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_10
       (.I0(Frame_Cnt1_n_75),
        .I1(Frame_Cnt[29]),
        .I2(Frame_Cnt1_n_76),
        .I3(Frame_Cnt[28]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_11
       (.I0(Frame_Cnt1_n_77),
        .I1(Frame_Cnt[27]),
        .I2(Frame_Cnt1_n_78),
        .I3(Frame_Cnt[26]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_12
       (.I0(Frame_Cnt1_n_79),
        .I1(Frame_Cnt[25]),
        .I2(Frame_Cnt1_n_80),
        .I3(Frame_Cnt[24]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_13
       (.I0(Frame_Cnt1_n_81),
        .I1(Frame_Cnt[23]),
        .I2(Frame_Cnt1_n_82),
        .I3(Frame_Cnt[22]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_14
       (.I0(Frame_Cnt1_n_83),
        .I1(Frame_Cnt[21]),
        .I2(Frame_Cnt1_n_84),
        .I3(Frame_Cnt[20]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_15
       (.I0(Frame_Cnt1_n_85),
        .I1(Frame_Cnt[19]),
        .I2(Frame_Cnt1_n_86),
        .I3(Frame_Cnt[18]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry__0_i_16
       (.I0(Frame_Cnt1_n_87),
        .I1(Frame_Cnt[17]),
        .I2(Frame_Cnt1_n_88),
        .I3(Frame_Cnt[16]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_2
       (.I0(Frame_Cnt[29]),
        .I1(Frame_Cnt1_n_75),
        .I2(Frame_Cnt[28]),
        .I3(Frame_Cnt1_n_76),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_3
       (.I0(Frame_Cnt[27]),
        .I1(Frame_Cnt1_n_77),
        .I2(Frame_Cnt[26]),
        .I3(Frame_Cnt1_n_78),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_4
       (.I0(Frame_Cnt[25]),
        .I1(Frame_Cnt1_n_79),
        .I2(Frame_Cnt[24]),
        .I3(Frame_Cnt1_n_80),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_5
       (.I0(Frame_Cnt[23]),
        .I1(Frame_Cnt1_n_81),
        .I2(Frame_Cnt[22]),
        .I3(Frame_Cnt1_n_82),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_6
       (.I0(Frame_Cnt[21]),
        .I1(Frame_Cnt1_n_83),
        .I2(Frame_Cnt[20]),
        .I3(Frame_Cnt1_n_84),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_7
       (.I0(Frame_Cnt[19]),
        .I1(Frame_Cnt1_n_85),
        .I2(Frame_Cnt[18]),
        .I3(Frame_Cnt1_n_86),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry__0_i_8
       (.I0(Frame_Cnt[17]),
        .I1(Frame_Cnt1_n_87),
        .I2(Frame_Cnt[16]),
        .I3(Frame_Cnt1_n_88),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    Chirp_Cnt_EN_reg0_carry__0_i_9
       (.I0(Frame_Cnt[31]),
        .I1(Frame_Cnt1_n_74),
        .I2(Frame_Cnt[30]),
        .O(Chirp_Cnt_EN_reg0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_1
       (.I0(Frame_Cnt[15]),
        .I1(Frame_Cnt1_n_89),
        .I2(Frame_Cnt[14]),
        .I3(Frame_Cnt1_n_90),
        .O(Chirp_Cnt_EN_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_10
       (.I0(Frame_Cnt1_n_91),
        .I1(Frame_Cnt[13]),
        .I2(Frame_Cnt1_n_92),
        .I3(Frame_Cnt[12]),
        .O(Chirp_Cnt_EN_reg0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_11
       (.I0(Frame_Cnt1_n_93),
        .I1(Frame_Cnt[11]),
        .I2(Frame_Cnt1_n_94),
        .I3(Frame_Cnt[10]),
        .O(Chirp_Cnt_EN_reg0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_12
       (.I0(Frame_Cnt1_n_95),
        .I1(Frame_Cnt[9]),
        .I2(Frame_Cnt1_n_96),
        .I3(Frame_Cnt[8]),
        .O(Chirp_Cnt_EN_reg0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_13
       (.I0(Frame_Cnt1_n_97),
        .I1(Frame_Cnt[7]),
        .I2(Frame_Cnt1_n_98),
        .I3(Frame_Cnt[6]),
        .O(Chirp_Cnt_EN_reg0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_14
       (.I0(Frame_Cnt1_n_99),
        .I1(Frame_Cnt[5]),
        .I2(Frame_Cnt1_n_100),
        .I3(Frame_Cnt[4]),
        .O(Chirp_Cnt_EN_reg0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_15
       (.I0(Frame_Cnt1_n_101),
        .I1(Frame_Cnt[3]),
        .I2(Frame_Cnt1_n_102),
        .I3(Frame_Cnt[2]),
        .O(Chirp_Cnt_EN_reg0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_16
       (.I0(Frame_Cnt1_n_103),
        .I1(Frame_Cnt[1]),
        .I2(Frame_Cnt1_n_104),
        .I3(Frame_Cnt[0]),
        .O(Chirp_Cnt_EN_reg0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_2
       (.I0(Frame_Cnt[13]),
        .I1(Frame_Cnt1_n_91),
        .I2(Frame_Cnt[12]),
        .I3(Frame_Cnt1_n_92),
        .O(Chirp_Cnt_EN_reg0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_3
       (.I0(Frame_Cnt[11]),
        .I1(Frame_Cnt1_n_93),
        .I2(Frame_Cnt[10]),
        .I3(Frame_Cnt1_n_94),
        .O(Chirp_Cnt_EN_reg0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_4
       (.I0(Frame_Cnt[9]),
        .I1(Frame_Cnt1_n_95),
        .I2(Frame_Cnt[8]),
        .I3(Frame_Cnt1_n_96),
        .O(Chirp_Cnt_EN_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_5
       (.I0(Frame_Cnt[7]),
        .I1(Frame_Cnt1_n_97),
        .I2(Frame_Cnt[6]),
        .I3(Frame_Cnt1_n_98),
        .O(Chirp_Cnt_EN_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_6
       (.I0(Frame_Cnt[5]),
        .I1(Frame_Cnt1_n_99),
        .I2(Frame_Cnt[4]),
        .I3(Frame_Cnt1_n_100),
        .O(Chirp_Cnt_EN_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_7
       (.I0(Frame_Cnt[3]),
        .I1(Frame_Cnt1_n_101),
        .I2(Frame_Cnt[2]),
        .I3(Frame_Cnt1_n_102),
        .O(Chirp_Cnt_EN_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_Cnt_EN_reg0_carry_i_8
       (.I0(Frame_Cnt[1]),
        .I1(Frame_Cnt1_n_103),
        .I2(Frame_Cnt[0]),
        .I3(Frame_Cnt1_n_104),
        .O(Chirp_Cnt_EN_reg0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_Cnt_EN_reg0_carry_i_9
       (.I0(Frame_Cnt1_n_89),
        .I1(Frame_Cnt[15]),
        .I2(Frame_Cnt1_n_90),
        .I3(Frame_Cnt[14]),
        .O(Chirp_Cnt_EN_reg0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_reg0_carry
       (.CI(Chirp_Cnt[0]),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_reg0_carry_n_0,Chirp_Cnt_reg0_carry_n_1,Chirp_Cnt_reg0_carry_n_2,Chirp_Cnt_reg0_carry_n_3,Chirp_Cnt_reg0_carry_n_4,Chirp_Cnt_reg0_carry_n_5,Chirp_Cnt_reg0_carry_n_6,Chirp_Cnt_reg0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Chirp_Cnt_reg0_carry_n_8,Chirp_Cnt_reg0_carry_n_9,Chirp_Cnt_reg0_carry_n_10,Chirp_Cnt_reg0_carry_n_11,Chirp_Cnt_reg0_carry_n_12,Chirp_Cnt_reg0_carry_n_13,Chirp_Cnt_reg0_carry_n_14,Chirp_Cnt_reg0_carry_n_15}),
        .S(Chirp_Cnt[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_reg0_carry__0
       (.CI(Chirp_Cnt_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_reg0_carry__0_n_0,Chirp_Cnt_reg0_carry__0_n_1,Chirp_Cnt_reg0_carry__0_n_2,Chirp_Cnt_reg0_carry__0_n_3,Chirp_Cnt_reg0_carry__0_n_4,Chirp_Cnt_reg0_carry__0_n_5,Chirp_Cnt_reg0_carry__0_n_6,Chirp_Cnt_reg0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Chirp_Cnt_reg0_carry__0_n_8,Chirp_Cnt_reg0_carry__0_n_9,Chirp_Cnt_reg0_carry__0_n_10,Chirp_Cnt_reg0_carry__0_n_11,Chirp_Cnt_reg0_carry__0_n_12,Chirp_Cnt_reg0_carry__0_n_13,Chirp_Cnt_reg0_carry__0_n_14,Chirp_Cnt_reg0_carry__0_n_15}),
        .S(Chirp_Cnt[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_reg0_carry__1
       (.CI(Chirp_Cnt_reg0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_Cnt_reg0_carry__1_n_0,Chirp_Cnt_reg0_carry__1_n_1,Chirp_Cnt_reg0_carry__1_n_2,Chirp_Cnt_reg0_carry__1_n_3,Chirp_Cnt_reg0_carry__1_n_4,Chirp_Cnt_reg0_carry__1_n_5,Chirp_Cnt_reg0_carry__1_n_6,Chirp_Cnt_reg0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Chirp_Cnt_reg0_carry__1_n_8,Chirp_Cnt_reg0_carry__1_n_9,Chirp_Cnt_reg0_carry__1_n_10,Chirp_Cnt_reg0_carry__1_n_11,Chirp_Cnt_reg0_carry__1_n_12,Chirp_Cnt_reg0_carry__1_n_13,Chirp_Cnt_reg0_carry__1_n_14,Chirp_Cnt_reg0_carry__1_n_15}),
        .S(Chirp_Cnt[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Chirp_Cnt_reg0_carry__2
       (.CI(Chirp_Cnt_reg0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_Chirp_Cnt_reg0_carry__2_CO_UNCONNECTED[7:6],Chirp_Cnt_reg0_carry__2_n_2,Chirp_Cnt_reg0_carry__2_n_3,Chirp_Cnt_reg0_carry__2_n_4,Chirp_Cnt_reg0_carry__2_n_5,Chirp_Cnt_reg0_carry__2_n_6,Chirp_Cnt_reg0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Chirp_Cnt_reg0_carry__2_O_UNCONNECTED[7],Chirp_Cnt_reg0_carry__2_n_9,Chirp_Cnt_reg0_carry__2_n_10,Chirp_Cnt_reg0_carry__2_n_11,Chirp_Cnt_reg0_carry__2_n_12,Chirp_Cnt_reg0_carry__2_n_13,Chirp_Cnt_reg0_carry__2_n_14,Chirp_Cnt_reg0_carry__2_n_15}),
        .S({1'b0,Chirp_Cnt[31:25]}));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Chirp_Cnt[0]_i_1_n_0 ),
        .Q(Chirp_Cnt[0]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_14),
        .Q(Chirp_Cnt[10]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_13),
        .Q(Chirp_Cnt[11]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_12),
        .Q(Chirp_Cnt[12]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_11),
        .Q(Chirp_Cnt[13]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_10),
        .Q(Chirp_Cnt[14]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_9),
        .Q(Chirp_Cnt[15]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_8),
        .Q(Chirp_Cnt[16]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_15),
        .Q(Chirp_Cnt[17]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_14),
        .Q(Chirp_Cnt[18]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_13),
        .Q(Chirp_Cnt[19]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_15),
        .Q(Chirp_Cnt[1]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_12),
        .Q(Chirp_Cnt[20]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_11),
        .Q(Chirp_Cnt[21]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_10),
        .Q(Chirp_Cnt[22]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_9),
        .Q(Chirp_Cnt[23]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__1_n_8),
        .Q(Chirp_Cnt[24]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_15),
        .Q(Chirp_Cnt[25]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_14),
        .Q(Chirp_Cnt[26]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_13),
        .Q(Chirp_Cnt[27]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_12),
        .Q(Chirp_Cnt[28]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_11),
        .Q(Chirp_Cnt[29]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_14),
        .Q(Chirp_Cnt[2]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_10),
        .Q(Chirp_Cnt[30]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__2_n_9),
        .Q(Chirp_Cnt[31]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_13),
        .Q(Chirp_Cnt[3]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_12),
        .Q(Chirp_Cnt[4]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_11),
        .Q(Chirp_Cnt[5]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_10),
        .Q(Chirp_Cnt[6]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_9),
        .Q(Chirp_Cnt[7]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry_n_8),
        .Q(Chirp_Cnt[8]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Chirp_Cnt_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_Cnt_reg0_carry__0_n_15),
        .Q(Chirp_Cnt[9]),
        .R(\Chirp_Cnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    Chirp_clk_i_1
       (.I0(USER_RST_N),
        .O(Chirp_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE Chirp_clk_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Chirp_clk_reg0_carry__0_n_0),
        .Q(Chirp_clk),
        .R(Chirp_clk_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 Chirp_clk_reg0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Chirp_clk_reg0_carry_n_0,Chirp_clk_reg0_carry_n_1,Chirp_clk_reg0_carry_n_2,Chirp_clk_reg0_carry_n_3,Chirp_clk_reg0_carry_n_4,Chirp_clk_reg0_carry_n_5,Chirp_clk_reg0_carry_n_6,Chirp_clk_reg0_carry_n_7}),
        .DI({Chirp_clk_reg0_carry_i_1_n_0,Chirp_clk_reg0_carry_i_2_n_0,Chirp_clk_reg0_carry_i_3_n_0,Chirp_clk_reg0_carry_i_4_n_0,Chirp_clk_reg0_carry_i_5_n_0,Chirp_clk_reg0_carry_i_6_n_0,Chirp_clk_reg0_carry_i_7_n_0,Chirp_clk_reg0_carry_i_8_n_0}),
        .O(NLW_Chirp_clk_reg0_carry_O_UNCONNECTED[7:0]),
        .S({Chirp_clk_reg0_carry_i_9_n_0,Chirp_clk_reg0_carry_i_10_n_0,Chirp_clk_reg0_carry_i_11_n_0,Chirp_clk_reg0_carry_i_12_n_0,Chirp_clk_reg0_carry_i_13_n_0,Chirp_clk_reg0_carry_i_14_n_0,Chirp_clk_reg0_carry_i_15_n_0,Chirp_clk_reg0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 Chirp_clk_reg0_carry__0
       (.CI(Chirp_clk_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Chirp_clk_reg0_carry__0_n_0,Chirp_clk_reg0_carry__0_n_1,Chirp_clk_reg0_carry__0_n_2,Chirp_clk_reg0_carry__0_n_3,Chirp_clk_reg0_carry__0_n_4,Chirp_clk_reg0_carry__0_n_5,Chirp_clk_reg0_carry__0_n_6,Chirp_clk_reg0_carry__0_n_7}),
        .DI({Chirp_clk_reg0_carry__0_i_1_n_0,Chirp_clk_reg0_carry__0_i_2_n_0,Chirp_clk_reg0_carry__0_i_3_n_0,Chirp_clk_reg0_carry__0_i_4_n_0,Chirp_clk_reg0_carry__0_i_5_n_0,Chirp_clk_reg0_carry__0_i_6_n_0,Chirp_clk_reg0_carry__0_i_7_n_0,Chirp_clk_reg0_carry__0_i_8_n_0}),
        .O(NLW_Chirp_clk_reg0_carry__0_O_UNCONNECTED[7:0]),
        .S({Chirp_clk_reg0_carry__0_i_9_n_0,Chirp_clk_reg0_carry__0_i_10_n_0,Chirp_clk_reg0_carry__0_i_11_n_0,Chirp_clk_reg0_carry__0_i_12_n_0,Chirp_clk_reg0_carry__0_i_13_n_0,Chirp_clk_reg0_carry__0_i_14_n_0,Chirp_clk_reg0_carry__0_i_15_n_0,Chirp_clk_reg0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    Chirp_clk_reg0_carry__0_i_1
       (.I0(Chirp_Cnt[31]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_11),
        .I2(Chirp_Cnt[30]),
        .O(Chirp_clk_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_10
       (.I0(Chirp_Cnt_EN3__85_carry__2_n_12),
        .I1(Chirp_Cnt[29]),
        .I2(Chirp_Cnt_EN3__85_carry__2_n_13),
        .I3(Chirp_Cnt[28]),
        .O(Chirp_clk_reg0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_11
       (.I0(Chirp_Cnt_EN3__85_carry__2_n_14),
        .I1(Chirp_Cnt[27]),
        .I2(Chirp_Cnt_EN3__85_carry__2_n_15),
        .I3(Chirp_Cnt[26]),
        .O(Chirp_clk_reg0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_12
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_8),
        .I1(Chirp_Cnt[25]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_9),
        .I3(Chirp_Cnt[24]),
        .O(Chirp_clk_reg0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_13
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_10),
        .I1(Chirp_Cnt[23]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_11),
        .I3(Chirp_Cnt[22]),
        .O(Chirp_clk_reg0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_14
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_12),
        .I1(Chirp_Cnt[21]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_13),
        .I3(Chirp_Cnt[20]),
        .O(Chirp_clk_reg0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_15
       (.I0(Chirp_Cnt_EN3__85_carry__1_n_14),
        .I1(Chirp_Cnt[19]),
        .I2(Chirp_Cnt_EN3__85_carry__1_n_15),
        .I3(Chirp_Cnt[18]),
        .O(Chirp_clk_reg0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry__0_i_16
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_8),
        .I1(Chirp_Cnt[17]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_9),
        .I3(Chirp_Cnt[16]),
        .O(Chirp_clk_reg0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_2
       (.I0(Chirp_Cnt[29]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_12),
        .I2(Chirp_Cnt[28]),
        .I3(Chirp_Cnt_EN3__85_carry__2_n_13),
        .O(Chirp_clk_reg0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_3
       (.I0(Chirp_Cnt[27]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_14),
        .I2(Chirp_Cnt[26]),
        .I3(Chirp_Cnt_EN3__85_carry__2_n_15),
        .O(Chirp_clk_reg0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_4
       (.I0(Chirp_Cnt[25]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_8),
        .I2(Chirp_Cnt[24]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_9),
        .O(Chirp_clk_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_5
       (.I0(Chirp_Cnt[23]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_10),
        .I2(Chirp_Cnt[22]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_11),
        .O(Chirp_clk_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_6
       (.I0(Chirp_Cnt[21]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_12),
        .I2(Chirp_Cnt[20]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_13),
        .O(Chirp_clk_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_7
       (.I0(Chirp_Cnt[19]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_14),
        .I2(Chirp_Cnt[18]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_15),
        .O(Chirp_clk_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry__0_i_8
       (.I0(Chirp_Cnt[17]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_8),
        .I2(Chirp_Cnt[16]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_9),
        .O(Chirp_clk_reg0_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    Chirp_clk_reg0_carry__0_i_9
       (.I0(Chirp_Cnt[31]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_11),
        .I2(Chirp_Cnt[30]),
        .O(Chirp_clk_reg0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_1
       (.I0(Chirp_Cnt[15]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_10),
        .I2(Chirp_Cnt[14]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_11),
        .O(Chirp_clk_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_10
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_12),
        .I1(Chirp_Cnt[13]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_13),
        .I3(Chirp_Cnt[12]),
        .O(Chirp_clk_reg0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_11
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_14),
        .I1(Chirp_Cnt[11]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_15),
        .I3(Chirp_Cnt[10]),
        .O(Chirp_clk_reg0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_12
       (.I0(Chirp_Cnt_EN3__85_carry_n_8),
        .I1(Chirp_Cnt[9]),
        .I2(Chirp_Cnt_EN3__85_carry_n_9),
        .I3(Chirp_Cnt[8]),
        .O(Chirp_clk_reg0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_13
       (.I0(Chirp_Cnt_EN3__85_carry_n_10),
        .I1(Chirp_Cnt[7]),
        .I2(Chirp_Cnt_EN3__85_carry_n_11),
        .I3(Chirp_Cnt[6]),
        .O(Chirp_clk_reg0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_14
       (.I0(Chirp_Cnt_EN3__85_carry_n_12),
        .I1(Chirp_Cnt[5]),
        .I2(Chirp_Cnt_EN3__85_carry_n_13),
        .I3(Chirp_Cnt[4]),
        .O(Chirp_clk_reg0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_15
       (.I0(Chirp_Cnt_EN3__85_carry_n_14),
        .I1(Chirp_Cnt[3]),
        .I2(Chirp_Cnt_EN3__85_carry_n_15),
        .I3(Chirp_Cnt[2]),
        .O(Chirp_clk_reg0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_16
       (.I0(Chirp_Cnt[1]),
        .I1(FMCW_Chirp_Cycle_us[2]),
        .I2(Chirp_Cnt[0]),
        .I3(FMCW_Chirp_Cycle_us[1]),
        .O(Chirp_clk_reg0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_2
       (.I0(Chirp_Cnt[13]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_12),
        .I2(Chirp_Cnt[12]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_13),
        .O(Chirp_clk_reg0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_3
       (.I0(Chirp_Cnt[11]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_14),
        .I2(Chirp_Cnt[10]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_15),
        .O(Chirp_clk_reg0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_4
       (.I0(Chirp_Cnt[9]),
        .I1(Chirp_Cnt_EN3__85_carry_n_8),
        .I2(Chirp_Cnt[8]),
        .I3(Chirp_Cnt_EN3__85_carry_n_9),
        .O(Chirp_clk_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_5
       (.I0(Chirp_Cnt[7]),
        .I1(Chirp_Cnt_EN3__85_carry_n_10),
        .I2(Chirp_Cnt[6]),
        .I3(Chirp_Cnt_EN3__85_carry_n_11),
        .O(Chirp_clk_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_6
       (.I0(Chirp_Cnt[5]),
        .I1(Chirp_Cnt_EN3__85_carry_n_12),
        .I2(Chirp_Cnt[4]),
        .I3(Chirp_Cnt_EN3__85_carry_n_13),
        .O(Chirp_clk_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Chirp_clk_reg0_carry_i_7
       (.I0(Chirp_Cnt[3]),
        .I1(Chirp_Cnt_EN3__85_carry_n_14),
        .I2(Chirp_Cnt[2]),
        .I3(Chirp_Cnt_EN3__85_carry_n_15),
        .O(Chirp_clk_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    Chirp_clk_reg0_carry_i_8
       (.I0(FMCW_Chirp_Cycle_us[2]),
        .I1(Chirp_Cnt[1]),
        .I2(Chirp_Cnt[0]),
        .I3(FMCW_Chirp_Cycle_us[1]),
        .O(Chirp_clk_reg0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Chirp_clk_reg0_carry_i_9
       (.I0(Chirp_Cnt_EN3__85_carry__0_n_10),
        .I1(Chirp_Cnt[15]),
        .I2(Chirp_Cnt_EN3__85_carry__0_n_11),
        .I3(Chirp_Cnt[14]),
        .O(Chirp_clk_reg0_carry_i_9_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[16] ),
        .Q(FMCW_Adc_Delay_us[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[26] ),
        .Q(FMCW_Adc_Delay_us[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[27] ),
        .Q(FMCW_Adc_Delay_us[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[28] ),
        .Q(FMCW_Adc_Delay_us[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[29] ),
        .Q(FMCW_Adc_Delay_us[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[30] ),
        .Q(FMCW_Adc_Delay_us[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[31] ),
        .Q(FMCW_Adc_Delay_us[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[17] ),
        .Q(FMCW_Adc_Delay_us[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[18] ),
        .Q(FMCW_Adc_Delay_us[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[19] ),
        .Q(FMCW_Adc_Delay_us[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[20] ),
        .Q(FMCW_Adc_Delay_us[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[21] ),
        .Q(FMCW_Adc_Delay_us[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[22] ),
        .Q(FMCW_Adc_Delay_us[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[23] ),
        .Q(FMCW_Adc_Delay_us[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[24] ),
        .Q(FMCW_Adc_Delay_us[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Adc_Delay_us_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[25] ),
        .Q(FMCW_Adc_Delay_us[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \FMCW_Chirp_Cycle_us[31]_i_1 
       (.I0(\slv_reg4_reg_n_0_[0] ),
        .I1(S_AXI_ARESETN),
        .O(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(FMCW_Chirp_Cycle_us[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(FMCW_Chirp_Cycle_us[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(FMCW_Chirp_Cycle_us[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(FMCW_Chirp_Cycle_us[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(FMCW_Chirp_Cycle_us[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(FMCW_Chirp_Cycle_us[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(FMCW_Chirp_Cycle_us[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[16]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[17]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[18]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[19]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(FMCW_Chirp_Cycle_us[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[20]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[21]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[22]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[23]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[24]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[25]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[26]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[27]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[28]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[29]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(FMCW_Chirp_Cycle_us[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[30]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(FMCW_Chirp_Cycle_us[31]),
        .R(\FMCW_Chirp_Cycle_us[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(FMCW_Chirp_Cycle_us[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(FMCW_Chirp_Cycle_us[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(FMCW_Chirp_Cycle_us[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(FMCW_Chirp_Cycle_us[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(FMCW_Chirp_Cycle_us[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(FMCW_Chirp_Cycle_us[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Cycle_us_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(FMCW_Chirp_Cycle_us[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[16] ),
        .Q(FMCW_Chirp_Number[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[26] ),
        .Q(FMCW_Chirp_Number[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[27] ),
        .Q(FMCW_Chirp_Number[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[28] ),
        .Q(FMCW_Chirp_Number[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[29] ),
        .Q(FMCW_Chirp_Number[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[30] ),
        .Q(FMCW_Chirp_Number[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[31] ),
        .Q(FMCW_Chirp_Number[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[17] ),
        .Q(FMCW_Chirp_Number[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[18] ),
        .Q(FMCW_Chirp_Number[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[19] ),
        .Q(FMCW_Chirp_Number[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[20] ),
        .Q(FMCW_Chirp_Number[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[21] ),
        .Q(FMCW_Chirp_Number[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[22] ),
        .Q(FMCW_Chirp_Number[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[23] ),
        .Q(FMCW_Chirp_Number[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[24] ),
        .Q(FMCW_Chirp_Number[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Chirp_Number_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg5_reg_n_0_[25] ),
        .Q(FMCW_Chirp_Number[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[0] ),
        .Q(FMCW_Frame_Cycle_ms[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[10] ),
        .Q(FMCW_Frame_Cycle_ms[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[11] ),
        .Q(FMCW_Frame_Cycle_ms[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[12] ),
        .Q(FMCW_Frame_Cycle_ms[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[13] ),
        .Q(FMCW_Frame_Cycle_ms[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[14] ),
        .Q(FMCW_Frame_Cycle_ms[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[15] ),
        .Q(FMCW_Frame_Cycle_ms[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[1] ),
        .Q(FMCW_Frame_Cycle_ms[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[2] ),
        .Q(FMCW_Frame_Cycle_ms[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[3] ),
        .Q(FMCW_Frame_Cycle_ms[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[4] ),
        .Q(FMCW_Frame_Cycle_ms[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[5] ),
        .Q(FMCW_Frame_Cycle_ms[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[6] ),
        .Q(FMCW_Frame_Cycle_ms[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[7] ),
        .Q(FMCW_Frame_Cycle_ms[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[8] ),
        .Q(FMCW_Frame_Cycle_ms[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_Frame_Cycle_ms_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg6_reg_n_0_[9] ),
        .Q(FMCW_Frame_Cycle_ms[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[0] ),
        .Q(FMCW_IDX[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[1] ),
        .Q(FMCW_IDX[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[2] ),
        .Q(FMCW_IDX[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[3] ),
        .Q(FMCW_IDX[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[4] ),
        .Q(FMCW_IDX[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[5] ),
        .Q(FMCW_IDX[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[6] ),
        .Q(FMCW_IDX[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_IDX_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[7] ),
        .Q(FMCW_IDX[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[0]),
        .Q(FMCW_N[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[10]),
        .Q(FMCW_N[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[11]),
        .Q(FMCW_N[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[12]),
        .Q(FMCW_N[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[13]),
        .Q(FMCW_N[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[14]),
        .Q(FMCW_N[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[15]),
        .Q(FMCW_N[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[16]),
        .Q(FMCW_N[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[17]),
        .Q(FMCW_N[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[18]),
        .Q(FMCW_N[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[19]),
        .Q(FMCW_N[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[1]),
        .Q(FMCW_N[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[20]),
        .Q(FMCW_N[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[21]),
        .Q(FMCW_N[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[22]),
        .Q(FMCW_N[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[23]),
        .Q(FMCW_N[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[24]),
        .Q(FMCW_N[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[25]),
        .Q(FMCW_N[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[26]),
        .Q(FMCW_N[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[27]),
        .Q(FMCW_N[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[28]),
        .Q(FMCW_N[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[29]),
        .Q(FMCW_N[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[2]),
        .Q(FMCW_N[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[30]),
        .Q(FMCW_N[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[31]),
        .Q(FMCW_N[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[3]),
        .Q(FMCW_N[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[4]),
        .Q(FMCW_N[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[5]),
        .Q(FMCW_N[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[6]),
        .Q(FMCW_N[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[7]),
        .Q(FMCW_N[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[8]),
        .Q(FMCW_N[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_N_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg2[9]),
        .Q(FMCW_N[9]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \FMCW_R[31]_i_1 
       (.I0(\slv_reg4_reg_n_0_[0] ),
        .O(\FMCW_R[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[0]),
        .Q(FMCW_R[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[10]),
        .Q(FMCW_R[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[11]),
        .Q(FMCW_R[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[12]),
        .Q(FMCW_R[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[13]),
        .Q(FMCW_R[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[14]),
        .Q(FMCW_R[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[15]),
        .Q(FMCW_R[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[16]),
        .Q(FMCW_R[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[17]),
        .Q(FMCW_R[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[18]),
        .Q(FMCW_R[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[19]),
        .Q(FMCW_R[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[1]),
        .Q(FMCW_R[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[20]),
        .Q(FMCW_R[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[21]),
        .Q(FMCW_R[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[22]),
        .Q(FMCW_R[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[23]),
        .Q(FMCW_R[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[24]),
        .Q(FMCW_R[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[25]),
        .Q(FMCW_R[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[26]),
        .Q(FMCW_R[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[27]),
        .Q(FMCW_R[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[28]),
        .Q(FMCW_R[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[29]),
        .Q(FMCW_R[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[2]),
        .Q(FMCW_R[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[30]),
        .Q(FMCW_R[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[31]),
        .Q(FMCW_R[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[3]),
        .Q(FMCW_R[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[4]),
        .Q(FMCW_R[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[5]),
        .Q(FMCW_R[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[6]),
        .Q(FMCW_R[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[7]),
        .Q(FMCW_R[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[8]),
        .Q(FMCW_R[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_R_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg0[9]),
        .Q(FMCW_R[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[0]),
        .Q(FMCW_S[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[10]),
        .Q(FMCW_S[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[11]),
        .Q(FMCW_S[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[12]),
        .Q(FMCW_S[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[13]),
        .Q(FMCW_S[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[14]),
        .Q(FMCW_S[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[15]),
        .Q(FMCW_S[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[16]),
        .Q(FMCW_S[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[17]),
        .Q(FMCW_S[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[18]),
        .Q(FMCW_S[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[19]),
        .Q(FMCW_S[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[1]),
        .Q(FMCW_S[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[20]),
        .Q(FMCW_S[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[21]),
        .Q(FMCW_S[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[22]),
        .Q(FMCW_S[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[23]),
        .Q(FMCW_S[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[24]),
        .Q(FMCW_S[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[25]),
        .Q(FMCW_S[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[26]),
        .Q(FMCW_S[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[27]),
        .Q(FMCW_S[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[28]),
        .Q(FMCW_S[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[29]),
        .Q(FMCW_S[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[2]),
        .Q(FMCW_S[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[30]),
        .Q(FMCW_S[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[31]),
        .Q(FMCW_S[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[3]),
        .Q(FMCW_S[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[4]),
        .Q(FMCW_S[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[5]),
        .Q(FMCW_S[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[6]),
        .Q(FMCW_S[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[7]),
        .Q(FMCW_S[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[8]),
        .Q(FMCW_S[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FMCW_S_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(slv_reg1[9]),
        .Q(FMCW_S[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDSE \FS_Div_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[8] ),
        .Q(FS_Div[0]),
        .S(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[9] ),
        .Q(FS_Div[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[10] ),
        .Q(FS_Div[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[11] ),
        .Q(FS_Div[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[12] ),
        .Q(FS_Div[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[13] ),
        .Q(FS_Div[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[14] ),
        .Q(FS_Div[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Div_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(\slv_reg3_reg_n_0_[15] ),
        .Q(FS_Div[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(FS_Number[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(FS_Number[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(FS_Number[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(FS_Number[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(FS_Number[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(FS_Number[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(FS_Number[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(FS_Number[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(FS_Number[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(FS_Number[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(FS_Number[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(FS_Number[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDSE \FS_Number_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(FS_Number[6]),
        .S(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(FS_Number[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(FS_Number[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \FS_Number_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FMCW_R[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(FS_Number[9]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE FS_Start_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(FS_Start_reg0_carry__0_n_0),
        .Q(FS_Start),
        .R(Chirp_clk_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 FS_Start_reg0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg0_carry_n_0,FS_Start_reg0_carry_n_1,FS_Start_reg0_carry_n_2,FS_Start_reg0_carry_n_3,FS_Start_reg0_carry_n_4,FS_Start_reg0_carry_n_5,FS_Start_reg0_carry_n_6,FS_Start_reg0_carry_n_7}),
        .DI({FS_Start_reg0_carry_i_1_n_0,FS_Start_reg0_carry_i_2_n_0,FS_Start_reg0_carry_i_3_n_0,FS_Start_reg0_carry_i_4_n_0,FS_Start_reg0_carry_i_5_n_0,FS_Start_reg0_carry_i_6_n_0,FS_Start_reg0_carry_i_7_n_0,FS_Start_reg0_carry_i_8_n_0}),
        .O(NLW_FS_Start_reg0_carry_O_UNCONNECTED[7:0]),
        .S({FS_Start_reg0_carry_i_9_n_0,FS_Start_reg0_carry_i_10_n_0,FS_Start_reg0_carry_i_11_n_0,FS_Start_reg0_carry_i_12_n_0,FS_Start_reg0_carry_i_13_n_0,FS_Start_reg0_carry_i_14_n_0,FS_Start_reg0_carry_i_15_n_0,FS_Start_reg0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 FS_Start_reg0_carry__0
       (.CI(FS_Start_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg0_carry__0_n_0,FS_Start_reg0_carry__0_n_1,FS_Start_reg0_carry__0_n_2,FS_Start_reg0_carry__0_n_3,FS_Start_reg0_carry__0_n_4,FS_Start_reg0_carry__0_n_5,FS_Start_reg0_carry__0_n_6,FS_Start_reg0_carry__0_n_7}),
        .DI({FS_Start_reg0_carry__0_i_1_n_0,FS_Start_reg0_carry__0_i_2_n_0,FS_Start_reg0_carry__0_i_3_n_0,FS_Start_reg0_carry__0_i_4_n_0,FS_Start_reg0_carry__0_i_5_n_0,FS_Start_reg0_carry__0_i_6_n_0,FS_Start_reg0_carry__0_i_7_n_0,FS_Start_reg0_carry__0_i_8_n_0}),
        .O(NLW_FS_Start_reg0_carry__0_O_UNCONNECTED[7:0]),
        .S({FS_Start_reg0_carry__0_i_9_n_0,FS_Start_reg0_carry__0_i_10_n_0,FS_Start_reg0_carry__0_i_11_n_0,FS_Start_reg0_carry__0_i_12_n_0,FS_Start_reg0_carry__0_i_13_n_0,FS_Start_reg0_carry__0_i_14_n_0,FS_Start_reg0_carry__0_i_15_n_0,FS_Start_reg0_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_1
       (.I0(Chirp_Cnt[31]),
        .I1(FS_Start_reg1[31]),
        .I2(Chirp_Cnt[30]),
        .I3(FS_Start_reg1[30]),
        .O(FS_Start_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_10
       (.I0(FS_Start_reg1[29]),
        .I1(Chirp_Cnt[29]),
        .I2(FS_Start_reg1[28]),
        .I3(Chirp_Cnt[28]),
        .O(FS_Start_reg0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_11
       (.I0(FS_Start_reg1[27]),
        .I1(Chirp_Cnt[27]),
        .I2(FS_Start_reg1[26]),
        .I3(Chirp_Cnt[26]),
        .O(FS_Start_reg0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_12
       (.I0(FS_Start_reg1[25]),
        .I1(Chirp_Cnt[25]),
        .I2(FS_Start_reg1[24]),
        .I3(Chirp_Cnt[24]),
        .O(FS_Start_reg0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_13
       (.I0(FS_Start_reg1[23]),
        .I1(Chirp_Cnt[23]),
        .I2(FS_Start_reg1[22]),
        .I3(Chirp_Cnt[22]),
        .O(FS_Start_reg0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_14
       (.I0(FS_Start_reg1[21]),
        .I1(Chirp_Cnt[21]),
        .I2(FS_Start_reg1[20]),
        .I3(Chirp_Cnt[20]),
        .O(FS_Start_reg0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_15
       (.I0(FS_Start_reg1[19]),
        .I1(Chirp_Cnt[19]),
        .I2(FS_Start_reg1[18]),
        .I3(Chirp_Cnt[18]),
        .O(FS_Start_reg0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_16
       (.I0(FS_Start_reg1[17]),
        .I1(Chirp_Cnt[17]),
        .I2(FS_Start_reg1[16]),
        .I3(Chirp_Cnt[16]),
        .O(FS_Start_reg0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_2
       (.I0(Chirp_Cnt[29]),
        .I1(FS_Start_reg1[29]),
        .I2(Chirp_Cnt[28]),
        .I3(FS_Start_reg1[28]),
        .O(FS_Start_reg0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_3
       (.I0(Chirp_Cnt[27]),
        .I1(FS_Start_reg1[27]),
        .I2(Chirp_Cnt[26]),
        .I3(FS_Start_reg1[26]),
        .O(FS_Start_reg0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_4
       (.I0(Chirp_Cnt[25]),
        .I1(FS_Start_reg1[25]),
        .I2(Chirp_Cnt[24]),
        .I3(FS_Start_reg1[24]),
        .O(FS_Start_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_5
       (.I0(Chirp_Cnt[23]),
        .I1(FS_Start_reg1[23]),
        .I2(Chirp_Cnt[22]),
        .I3(FS_Start_reg1[22]),
        .O(FS_Start_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_6
       (.I0(Chirp_Cnt[21]),
        .I1(FS_Start_reg1[21]),
        .I2(Chirp_Cnt[20]),
        .I3(FS_Start_reg1[20]),
        .O(FS_Start_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_7
       (.I0(Chirp_Cnt[19]),
        .I1(FS_Start_reg1[19]),
        .I2(Chirp_Cnt[18]),
        .I3(FS_Start_reg1[18]),
        .O(FS_Start_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry__0_i_8
       (.I0(Chirp_Cnt[17]),
        .I1(FS_Start_reg1[17]),
        .I2(Chirp_Cnt[16]),
        .I3(FS_Start_reg1[16]),
        .O(FS_Start_reg0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry__0_i_9
       (.I0(FS_Start_reg1[31]),
        .I1(Chirp_Cnt[31]),
        .I2(FS_Start_reg1[30]),
        .I3(Chirp_Cnt[30]),
        .O(FS_Start_reg0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_1
       (.I0(Chirp_Cnt[15]),
        .I1(FS_Start_reg1[15]),
        .I2(Chirp_Cnt[14]),
        .I3(FS_Start_reg1[14]),
        .O(FS_Start_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_10
       (.I0(FS_Start_reg1[13]),
        .I1(Chirp_Cnt[13]),
        .I2(FS_Start_reg1[12]),
        .I3(Chirp_Cnt[12]),
        .O(FS_Start_reg0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_11
       (.I0(FS_Start_reg1[11]),
        .I1(Chirp_Cnt[11]),
        .I2(FS_Start_reg1[10]),
        .I3(Chirp_Cnt[10]),
        .O(FS_Start_reg0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_12
       (.I0(FS_Start_reg1[9]),
        .I1(Chirp_Cnt[9]),
        .I2(FS_Start_reg1[8]),
        .I3(Chirp_Cnt[8]),
        .O(FS_Start_reg0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_13
       (.I0(FS_Start_reg1[7]),
        .I1(Chirp_Cnt[7]),
        .I2(FS_Start_reg1[6]),
        .I3(Chirp_Cnt[6]),
        .O(FS_Start_reg0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_14
       (.I0(FS_Start_reg1[5]),
        .I1(Chirp_Cnt[5]),
        .I2(FS_Start_reg1[4]),
        .I3(Chirp_Cnt[4]),
        .O(FS_Start_reg0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_15
       (.I0(FS_Start_reg1[3]),
        .I1(Chirp_Cnt[3]),
        .I2(FS_Start_reg2[2]),
        .I3(Chirp_Cnt[2]),
        .O(FS_Start_reg0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_16
       (.I0(FS_Start_reg2[1]),
        .I1(Chirp_Cnt[1]),
        .I2(FS_Start_reg1[0]),
        .I3(Chirp_Cnt[0]),
        .O(FS_Start_reg0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_2
       (.I0(Chirp_Cnt[13]),
        .I1(FS_Start_reg1[13]),
        .I2(Chirp_Cnt[12]),
        .I3(FS_Start_reg1[12]),
        .O(FS_Start_reg0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_3
       (.I0(Chirp_Cnt[11]),
        .I1(FS_Start_reg1[11]),
        .I2(Chirp_Cnt[10]),
        .I3(FS_Start_reg1[10]),
        .O(FS_Start_reg0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_4
       (.I0(Chirp_Cnt[9]),
        .I1(FS_Start_reg1[9]),
        .I2(Chirp_Cnt[8]),
        .I3(FS_Start_reg1[8]),
        .O(FS_Start_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_5
       (.I0(Chirp_Cnt[7]),
        .I1(FS_Start_reg1[7]),
        .I2(Chirp_Cnt[6]),
        .I3(FS_Start_reg1[6]),
        .O(FS_Start_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_6
       (.I0(Chirp_Cnt[5]),
        .I1(FS_Start_reg1[5]),
        .I2(Chirp_Cnt[4]),
        .I3(FS_Start_reg1[4]),
        .O(FS_Start_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_7
       (.I0(Chirp_Cnt[3]),
        .I1(FS_Start_reg1[3]),
        .I2(Chirp_Cnt[2]),
        .I3(FS_Start_reg2[2]),
        .O(FS_Start_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    FS_Start_reg0_carry_i_8
       (.I0(Chirp_Cnt[1]),
        .I1(FS_Start_reg2[1]),
        .I2(Chirp_Cnt[0]),
        .I3(FS_Start_reg1[0]),
        .O(FS_Start_reg0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FS_Start_reg0_carry_i_9
       (.I0(FS_Start_reg1[15]),
        .I1(Chirp_Cnt[15]),
        .I2(FS_Start_reg1[14]),
        .I3(Chirp_Cnt[14]),
        .O(FS_Start_reg0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry_n_0,FS_Start_reg1__0_carry_n_1,FS_Start_reg1__0_carry_n_2,FS_Start_reg1__0_carry_n_3,FS_Start_reg1__0_carry_n_4,FS_Start_reg1__0_carry_n_5,FS_Start_reg1__0_carry_n_6,FS_Start_reg1__0_carry_n_7}),
        .DI({FS_Start_reg2[5:0],1'b0,1'b1}),
        .O({FS_Start_reg1__0_carry_n_8,FS_Start_reg1__0_carry_n_9,FS_Start_reg1__0_carry_n_10,FS_Start_reg1__0_carry_n_11,FS_Start_reg1__0_carry_n_12,FS_Start_reg1__0_carry_n_13,FS_Start_reg1__0_carry_n_14,FS_Start_reg1[0]}),
        .S({FS_Start_reg1__0_carry_i_2_n_0,FS_Start_reg1__0_carry_i_3_n_0,FS_Start_reg1__0_carry_i_4_n_0,FS_Start_reg1__0_carry_i_5_n_0,FS_Start_reg1__0_carry_i_6_n_0,FS_Start_reg1__0_carry_i_7_n_0,FS_Start_reg1__0_carry_i_8_n_0,FS_Start_reg2[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__0_carry__0
       (.CI(FS_Start_reg1__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry__0_n_0,FS_Start_reg1__0_carry__0_n_1,FS_Start_reg1__0_carry__0_n_2,FS_Start_reg1__0_carry__0_n_3,FS_Start_reg1__0_carry__0_n_4,FS_Start_reg1__0_carry__0_n_5,FS_Start_reg1__0_carry__0_n_6,FS_Start_reg1__0_carry__0_n_7}),
        .DI(FS_Start_reg2[13:6]),
        .O({FS_Start_reg1__0_carry__0_n_8,FS_Start_reg1__0_carry__0_n_9,FS_Start_reg1__0_carry__0_n_10,FS_Start_reg1__0_carry__0_n_11,FS_Start_reg1__0_carry__0_n_12,FS_Start_reg1__0_carry__0_n_13,FS_Start_reg1__0_carry__0_n_14,FS_Start_reg1__0_carry__0_n_15}),
        .S({FS_Start_reg1__0_carry__0_i_2_n_0,FS_Start_reg1__0_carry__0_i_3_n_0,FS_Start_reg1__0_carry__0_i_4_n_0,FS_Start_reg1__0_carry__0_i_5_n_0,FS_Start_reg1__0_carry__0_i_6_n_0,FS_Start_reg1__0_carry__0_i_7_n_0,FS_Start_reg1__0_carry__0_i_8_n_0,FS_Start_reg1__0_carry__0_i_9_n_0}));
  CARRY8 FS_Start_reg1__0_carry__0_i_1
       (.CI(FS_Start_reg1__0_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry__0_i_1_n_0,FS_Start_reg1__0_carry__0_i_1_n_1,FS_Start_reg1__0_carry__0_i_1_n_2,FS_Start_reg1__0_carry__0_i_1_n_3,FS_Start_reg1__0_carry__0_i_1_n_4,FS_Start_reg1__0_carry__0_i_1_n_5,FS_Start_reg1__0_carry__0_i_1_n_6,FS_Start_reg1__0_carry__0_i_1_n_7}),
        .DI(FMCW_Chirp_Cycle_us[16:9]),
        .O(FS_Start_reg2[15:8]),
        .S({FS_Start_reg1__0_carry__0_i_10_n_0,FS_Start_reg1__0_carry__0_i_11_n_0,FS_Start_reg1__0_carry__0_i_12_n_0,FS_Start_reg1__0_carry__0_i_13_n_0,FS_Start_reg1__0_carry__0_i_14_n_0,FS_Start_reg1__0_carry__0_i_15_n_0,FS_Start_reg1__0_carry__0_i_16_n_0,FS_Start_reg1__0_carry__0_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_10
       (.I0(FMCW_Chirp_Cycle_us[16]),
        .I1(FMCW_Adc_Delay_us[15]),
        .O(FS_Start_reg1__0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_11
       (.I0(FMCW_Chirp_Cycle_us[15]),
        .I1(FMCW_Adc_Delay_us[14]),
        .O(FS_Start_reg1__0_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_12
       (.I0(FMCW_Chirp_Cycle_us[14]),
        .I1(FMCW_Adc_Delay_us[13]),
        .O(FS_Start_reg1__0_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_13
       (.I0(FMCW_Chirp_Cycle_us[13]),
        .I1(FMCW_Adc_Delay_us[12]),
        .O(FS_Start_reg1__0_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_14
       (.I0(FMCW_Chirp_Cycle_us[12]),
        .I1(FMCW_Adc_Delay_us[11]),
        .O(FS_Start_reg1__0_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_15
       (.I0(FMCW_Chirp_Cycle_us[11]),
        .I1(FMCW_Adc_Delay_us[10]),
        .O(FS_Start_reg1__0_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_16
       (.I0(FMCW_Chirp_Cycle_us[10]),
        .I1(FMCW_Adc_Delay_us[9]),
        .O(FS_Start_reg1__0_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry__0_i_17
       (.I0(FMCW_Chirp_Cycle_us[9]),
        .I1(FMCW_Adc_Delay_us[8]),
        .O(FS_Start_reg1__0_carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_2
       (.I0(FS_Start_reg2[13]),
        .I1(FS_Start_reg2[15]),
        .O(FS_Start_reg1__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_3
       (.I0(FS_Start_reg2[12]),
        .I1(FS_Start_reg2[14]),
        .O(FS_Start_reg1__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_4
       (.I0(FS_Start_reg2[11]),
        .I1(FS_Start_reg2[13]),
        .O(FS_Start_reg1__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_5
       (.I0(FS_Start_reg2[10]),
        .I1(FS_Start_reg2[12]),
        .O(FS_Start_reg1__0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_6
       (.I0(FS_Start_reg2[9]),
        .I1(FS_Start_reg2[11]),
        .O(FS_Start_reg1__0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_7
       (.I0(FS_Start_reg2[8]),
        .I1(FS_Start_reg2[10]),
        .O(FS_Start_reg1__0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_8
       (.I0(FS_Start_reg2[7]),
        .I1(FS_Start_reg2[9]),
        .O(FS_Start_reg1__0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__0_i_9
       (.I0(FS_Start_reg2[6]),
        .I1(FS_Start_reg2[8]),
        .O(FS_Start_reg1__0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__0_carry__1
       (.CI(FS_Start_reg1__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry__1_n_0,FS_Start_reg1__0_carry__1_n_1,FS_Start_reg1__0_carry__1_n_2,FS_Start_reg1__0_carry__1_n_3,FS_Start_reg1__0_carry__1_n_4,FS_Start_reg1__0_carry__1_n_5,FS_Start_reg1__0_carry__1_n_6,FS_Start_reg1__0_carry__1_n_7}),
        .DI(FS_Start_reg2[21:14]),
        .O({FS_Start_reg1__0_carry__1_n_8,FS_Start_reg1__0_carry__1_n_9,FS_Start_reg1__0_carry__1_n_10,FS_Start_reg1__0_carry__1_n_11,FS_Start_reg1__0_carry__1_n_12,FS_Start_reg1__0_carry__1_n_13,FS_Start_reg1__0_carry__1_n_14,FS_Start_reg1__0_carry__1_n_15}),
        .S({FS_Start_reg1__0_carry__1_i_2_n_0,FS_Start_reg1__0_carry__1_i_3_n_0,FS_Start_reg1__0_carry__1_i_4_n_0,FS_Start_reg1__0_carry__1_i_5_n_0,FS_Start_reg1__0_carry__1_i_6_n_0,FS_Start_reg1__0_carry__1_i_7_n_0,FS_Start_reg1__0_carry__1_i_8_n_0,FS_Start_reg1__0_carry__1_i_9_n_0}));
  CARRY8 FS_Start_reg1__0_carry__1_i_1
       (.CI(FS_Start_reg1__0_carry__0_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry__1_i_1_n_0,FS_Start_reg1__0_carry__1_i_1_n_1,FS_Start_reg1__0_carry__1_i_1_n_2,FS_Start_reg1__0_carry__1_i_1_n_3,FS_Start_reg1__0_carry__1_i_1_n_4,FS_Start_reg1__0_carry__1_i_1_n_5,FS_Start_reg1__0_carry__1_i_1_n_6,FS_Start_reg1__0_carry__1_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(FS_Start_reg2[23:16]),
        .S(FMCW_Chirp_Cycle_us[24:17]));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_2
       (.I0(FS_Start_reg2[21]),
        .I1(FS_Start_reg2[23]),
        .O(FS_Start_reg1__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_3
       (.I0(FS_Start_reg2[20]),
        .I1(FS_Start_reg2[22]),
        .O(FS_Start_reg1__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_4
       (.I0(FS_Start_reg2[19]),
        .I1(FS_Start_reg2[21]),
        .O(FS_Start_reg1__0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_5
       (.I0(FS_Start_reg2[18]),
        .I1(FS_Start_reg2[20]),
        .O(FS_Start_reg1__0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_6
       (.I0(FS_Start_reg2[17]),
        .I1(FS_Start_reg2[19]),
        .O(FS_Start_reg1__0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_7
       (.I0(FS_Start_reg2[16]),
        .I1(FS_Start_reg2[18]),
        .O(FS_Start_reg1__0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_8
       (.I0(FS_Start_reg2[15]),
        .I1(FS_Start_reg2[17]),
        .O(FS_Start_reg1__0_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__1_i_9
       (.I0(FS_Start_reg2[14]),
        .I1(FS_Start_reg2[16]),
        .O(FS_Start_reg1__0_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__0_carry__2
       (.CI(FS_Start_reg1__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_FS_Start_reg1__0_carry__2_CO_UNCONNECTED[7:4],FS_Start_reg1__0_carry__2_n_4,FS_Start_reg1__0_carry__2_n_5,FS_Start_reg1__0_carry__2_n_6,FS_Start_reg1__0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,FS_Start_reg2[25:22]}),
        .O({NLW_FS_Start_reg1__0_carry__2_O_UNCONNECTED[7:5],FS_Start_reg1__0_carry__2_n_11,FS_Start_reg1__0_carry__2_n_12,FS_Start_reg1__0_carry__2_n_13,FS_Start_reg1__0_carry__2_n_14,FS_Start_reg1__0_carry__2_n_15}),
        .S({1'b0,1'b0,1'b0,FS_Start_reg1__0_carry__2_i_2_n_0,FS_Start_reg1__0_carry__2_i_3_n_0,FS_Start_reg1__0_carry__2_i_4_n_0,FS_Start_reg1__0_carry__2_i_5_n_0,FS_Start_reg1__0_carry__2_i_6_n_0}));
  CARRY8 FS_Start_reg1__0_carry__2_i_1
       (.CI(FS_Start_reg1__0_carry__1_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg2[31],NLW_FS_Start_reg1__0_carry__2_i_1_CO_UNCONNECTED[6],FS_Start_reg1__0_carry__2_i_1_n_2,FS_Start_reg1__0_carry__2_i_1_n_3,FS_Start_reg1__0_carry__2_i_1_n_4,FS_Start_reg1__0_carry__2_i_1_n_5,FS_Start_reg1__0_carry__2_i_1_n_6,FS_Start_reg1__0_carry__2_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_FS_Start_reg1__0_carry__2_i_1_O_UNCONNECTED[7],FS_Start_reg2[30:24]}),
        .S({1'b1,FMCW_Chirp_Cycle_us[31:25]}));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__2_i_2
       (.I0(FS_Start_reg2[26]),
        .I1(FS_Start_reg2[28]),
        .O(FS_Start_reg1__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__2_i_3
       (.I0(FS_Start_reg2[25]),
        .I1(FS_Start_reg2[27]),
        .O(FS_Start_reg1__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__2_i_4
       (.I0(FS_Start_reg2[24]),
        .I1(FS_Start_reg2[26]),
        .O(FS_Start_reg1__0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__2_i_5
       (.I0(FS_Start_reg2[23]),
        .I1(FS_Start_reg2[25]),
        .O(FS_Start_reg1__0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry__2_i_6
       (.I0(FS_Start_reg2[22]),
        .I1(FS_Start_reg2[24]),
        .O(FS_Start_reg1__0_carry__2_i_6_n_0));
  CARRY8 FS_Start_reg1__0_carry_i_1
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__0_carry_i_1_n_0,FS_Start_reg1__0_carry_i_1_n_1,FS_Start_reg1__0_carry_i_1_n_2,FS_Start_reg1__0_carry_i_1_n_3,FS_Start_reg1__0_carry_i_1_n_4,FS_Start_reg1__0_carry_i_1_n_5,FS_Start_reg1__0_carry_i_1_n_6,FS_Start_reg1__0_carry_i_1_n_7}),
        .DI(FMCW_Chirp_Cycle_us[8:1]),
        .O(FS_Start_reg2[7:0]),
        .S({FS_Start_reg1__0_carry_i_9_n_0,FS_Start_reg1__0_carry_i_10_n_0,FS_Start_reg1__0_carry_i_11_n_0,FS_Start_reg1__0_carry_i_12_n_0,FS_Start_reg1__0_carry_i_13_n_0,FS_Start_reg1__0_carry_i_14_n_0,FS_Start_reg1__0_carry_i_15_n_0,FS_Start_reg1__0_carry_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_10
       (.I0(FMCW_Chirp_Cycle_us[7]),
        .I1(FMCW_Adc_Delay_us[6]),
        .O(FS_Start_reg1__0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_11
       (.I0(FMCW_Chirp_Cycle_us[6]),
        .I1(FMCW_Adc_Delay_us[5]),
        .O(FS_Start_reg1__0_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_12
       (.I0(FMCW_Chirp_Cycle_us[5]),
        .I1(FMCW_Adc_Delay_us[4]),
        .O(FS_Start_reg1__0_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_13
       (.I0(FMCW_Chirp_Cycle_us[4]),
        .I1(FMCW_Adc_Delay_us[3]),
        .O(FS_Start_reg1__0_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_14
       (.I0(FMCW_Chirp_Cycle_us[3]),
        .I1(FMCW_Adc_Delay_us[2]),
        .O(FS_Start_reg1__0_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_15
       (.I0(FMCW_Chirp_Cycle_us[2]),
        .I1(FMCW_Adc_Delay_us[1]),
        .O(FS_Start_reg1__0_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_16
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .I1(FMCW_Adc_Delay_us[0]),
        .O(FS_Start_reg1__0_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_2
       (.I0(FS_Start_reg2[5]),
        .I1(FS_Start_reg2[7]),
        .O(FS_Start_reg1__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_3
       (.I0(FS_Start_reg2[4]),
        .I1(FS_Start_reg2[6]),
        .O(FS_Start_reg1__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_4
       (.I0(FS_Start_reg2[3]),
        .I1(FS_Start_reg2[5]),
        .O(FS_Start_reg1__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_5
       (.I0(FS_Start_reg2[2]),
        .I1(FS_Start_reg2[4]),
        .O(FS_Start_reg1__0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_6
       (.I0(FS_Start_reg2[1]),
        .I1(FS_Start_reg2[3]),
        .O(FS_Start_reg1__0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FS_Start_reg1__0_carry_i_7
       (.I0(FS_Start_reg2[0]),
        .I1(FS_Start_reg2[2]),
        .O(FS_Start_reg1__0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    FS_Start_reg1__0_carry_i_8
       (.I0(FS_Start_reg2[1]),
        .O(FS_Start_reg1__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__0_carry_i_9
       (.I0(FMCW_Chirp_Cycle_us[8]),
        .I1(FMCW_Adc_Delay_us[7]),
        .O(FS_Start_reg1__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__85_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__85_carry_n_0,FS_Start_reg1__85_carry_n_1,FS_Start_reg1__85_carry_n_2,FS_Start_reg1__85_carry_n_3,FS_Start_reg1__85_carry_n_4,FS_Start_reg1__85_carry_n_5,FS_Start_reg1__85_carry_n_6,FS_Start_reg1__85_carry_n_7}),
        .DI({FS_Start_reg1__85_carry_i_1_n_0,FS_Start_reg1__85_carry_i_2_n_0,FS_Start_reg1__85_carry_i_3_n_0,FS_Start_reg2[0],FS_Start_reg2[6:3]}),
        .O(FS_Start_reg1[10:3]),
        .S({FS_Start_reg1__85_carry_i_4_n_0,FS_Start_reg1__85_carry_i_5_n_0,FS_Start_reg1__85_carry_i_6_n_0,FS_Start_reg1__85_carry_i_7_n_0,FS_Start_reg1__85_carry_i_8_n_0,FS_Start_reg1__85_carry_i_9_n_0,FS_Start_reg1__85_carry_i_10_n_0,FS_Start_reg1__85_carry_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__85_carry__0
       (.CI(FS_Start_reg1__85_carry_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__85_carry__0_n_0,FS_Start_reg1__85_carry__0_n_1,FS_Start_reg1__85_carry__0_n_2,FS_Start_reg1__85_carry__0_n_3,FS_Start_reg1__85_carry__0_n_4,FS_Start_reg1__85_carry__0_n_5,FS_Start_reg1__85_carry__0_n_6,FS_Start_reg1__85_carry__0_n_7}),
        .DI({FS_Start_reg1__85_carry__0_i_1_n_0,FS_Start_reg1__85_carry__0_i_2_n_0,FS_Start_reg1__85_carry__0_i_3_n_0,FS_Start_reg1__85_carry__0_i_4_n_0,FS_Start_reg1__85_carry__0_i_5_n_0,FS_Start_reg1__85_carry__0_i_6_n_0,FS_Start_reg1__85_carry__0_i_7_n_0,FS_Start_reg1__85_carry__0_i_8_n_0}),
        .O(FS_Start_reg1[18:11]),
        .S({FS_Start_reg1__85_carry__0_i_9_n_0,FS_Start_reg1__85_carry__0_i_10_n_0,FS_Start_reg1__85_carry__0_i_11_n_0,FS_Start_reg1__85_carry__0_i_12_n_0,FS_Start_reg1__85_carry__0_i_13_n_0,FS_Start_reg1__85_carry__0_i_14_n_0,FS_Start_reg1__85_carry__0_i_15_n_0,FS_Start_reg1__85_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_1
       (.I0(FS_Start_reg2[10]),
        .I1(FS_Start_reg1__0_carry__0_n_9),
        .I2(FS_Start_reg2[17]),
        .O(FS_Start_reg1__85_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_10
       (.I0(FS_Start_reg2[10]),
        .I1(FS_Start_reg1__0_carry__0_n_9),
        .I2(FS_Start_reg2[17]),
        .I3(FS_Start_reg1__85_carry__0_i_2_n_0),
        .O(FS_Start_reg1__85_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_11
       (.I0(FS_Start_reg2[9]),
        .I1(FS_Start_reg1__0_carry__0_n_10),
        .I2(FS_Start_reg2[16]),
        .I3(FS_Start_reg1__85_carry__0_i_3_n_0),
        .O(FS_Start_reg1__85_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_12
       (.I0(FS_Start_reg2[8]),
        .I1(FS_Start_reg1__0_carry__0_n_11),
        .I2(FS_Start_reg2[15]),
        .I3(FS_Start_reg1__85_carry__0_i_4_n_0),
        .O(FS_Start_reg1__85_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_13
       (.I0(FS_Start_reg2[7]),
        .I1(FS_Start_reg1__0_carry__0_n_12),
        .I2(FS_Start_reg2[14]),
        .I3(FS_Start_reg1__85_carry__0_i_5_n_0),
        .O(FS_Start_reg1__85_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_14
       (.I0(FS_Start_reg2[6]),
        .I1(FS_Start_reg1__0_carry__0_n_13),
        .I2(FS_Start_reg2[13]),
        .I3(FS_Start_reg1__85_carry__0_i_6_n_0),
        .O(FS_Start_reg1__85_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_15
       (.I0(FS_Start_reg2[5]),
        .I1(FS_Start_reg1__0_carry__0_n_14),
        .I2(FS_Start_reg2[12]),
        .I3(FS_Start_reg1__85_carry__0_i_7_n_0),
        .O(FS_Start_reg1__85_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_16
       (.I0(FS_Start_reg2[4]),
        .I1(FS_Start_reg1__0_carry__0_n_15),
        .I2(FS_Start_reg2[11]),
        .I3(FS_Start_reg1__85_carry__0_i_8_n_0),
        .O(FS_Start_reg1__85_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_2
       (.I0(FS_Start_reg2[9]),
        .I1(FS_Start_reg1__0_carry__0_n_10),
        .I2(FS_Start_reg2[16]),
        .O(FS_Start_reg1__85_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_3
       (.I0(FS_Start_reg2[8]),
        .I1(FS_Start_reg1__0_carry__0_n_11),
        .I2(FS_Start_reg2[15]),
        .O(FS_Start_reg1__85_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_4
       (.I0(FS_Start_reg2[7]),
        .I1(FS_Start_reg1__0_carry__0_n_12),
        .I2(FS_Start_reg2[14]),
        .O(FS_Start_reg1__85_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_5
       (.I0(FS_Start_reg2[6]),
        .I1(FS_Start_reg1__0_carry__0_n_13),
        .I2(FS_Start_reg2[13]),
        .O(FS_Start_reg1__85_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_6
       (.I0(FS_Start_reg2[5]),
        .I1(FS_Start_reg1__0_carry__0_n_14),
        .I2(FS_Start_reg2[12]),
        .O(FS_Start_reg1__85_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_7
       (.I0(FS_Start_reg2[4]),
        .I1(FS_Start_reg1__0_carry__0_n_15),
        .I2(FS_Start_reg2[11]),
        .O(FS_Start_reg1__85_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__0_i_8
       (.I0(FS_Start_reg2[3]),
        .I1(FS_Start_reg1__0_carry_n_8),
        .I2(FS_Start_reg2[10]),
        .O(FS_Start_reg1__85_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__0_i_9
       (.I0(FS_Start_reg2[11]),
        .I1(FS_Start_reg1__0_carry__0_n_8),
        .I2(FS_Start_reg2[18]),
        .I3(FS_Start_reg1__85_carry__0_i_1_n_0),
        .O(FS_Start_reg1__85_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__85_carry__1
       (.CI(FS_Start_reg1__85_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({FS_Start_reg1__85_carry__1_n_0,FS_Start_reg1__85_carry__1_n_1,FS_Start_reg1__85_carry__1_n_2,FS_Start_reg1__85_carry__1_n_3,FS_Start_reg1__85_carry__1_n_4,FS_Start_reg1__85_carry__1_n_5,FS_Start_reg1__85_carry__1_n_6,FS_Start_reg1__85_carry__1_n_7}),
        .DI({FS_Start_reg1__85_carry__1_i_1_n_0,FS_Start_reg1__85_carry__1_i_2_n_0,FS_Start_reg1__85_carry__1_i_3_n_0,FS_Start_reg1__85_carry__1_i_4_n_0,FS_Start_reg1__85_carry__1_i_5_n_0,FS_Start_reg1__85_carry__1_i_6_n_0,FS_Start_reg1__85_carry__1_i_7_n_0,FS_Start_reg1__85_carry__1_i_8_n_0}),
        .O(FS_Start_reg1[26:19]),
        .S({FS_Start_reg1__85_carry__1_i_9_n_0,FS_Start_reg1__85_carry__1_i_10_n_0,FS_Start_reg1__85_carry__1_i_11_n_0,FS_Start_reg1__85_carry__1_i_12_n_0,FS_Start_reg1__85_carry__1_i_13_n_0,FS_Start_reg1__85_carry__1_i_14_n_0,FS_Start_reg1__85_carry__1_i_15_n_0,FS_Start_reg1__85_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_1
       (.I0(FS_Start_reg2[18]),
        .I1(FS_Start_reg1__0_carry__1_n_9),
        .I2(FS_Start_reg2[25]),
        .O(FS_Start_reg1__85_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_10
       (.I0(FS_Start_reg2[18]),
        .I1(FS_Start_reg1__0_carry__1_n_9),
        .I2(FS_Start_reg2[25]),
        .I3(FS_Start_reg1__85_carry__1_i_2_n_0),
        .O(FS_Start_reg1__85_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_11
       (.I0(FS_Start_reg2[17]),
        .I1(FS_Start_reg1__0_carry__1_n_10),
        .I2(FS_Start_reg2[24]),
        .I3(FS_Start_reg1__85_carry__1_i_3_n_0),
        .O(FS_Start_reg1__85_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_12
       (.I0(FS_Start_reg2[16]),
        .I1(FS_Start_reg1__0_carry__1_n_11),
        .I2(FS_Start_reg2[23]),
        .I3(FS_Start_reg1__85_carry__1_i_4_n_0),
        .O(FS_Start_reg1__85_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_13
       (.I0(FS_Start_reg2[15]),
        .I1(FS_Start_reg1__0_carry__1_n_12),
        .I2(FS_Start_reg2[22]),
        .I3(FS_Start_reg1__85_carry__1_i_5_n_0),
        .O(FS_Start_reg1__85_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_14
       (.I0(FS_Start_reg2[14]),
        .I1(FS_Start_reg1__0_carry__1_n_13),
        .I2(FS_Start_reg2[21]),
        .I3(FS_Start_reg1__85_carry__1_i_6_n_0),
        .O(FS_Start_reg1__85_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_15
       (.I0(FS_Start_reg2[13]),
        .I1(FS_Start_reg1__0_carry__1_n_14),
        .I2(FS_Start_reg2[20]),
        .I3(FS_Start_reg1__85_carry__1_i_7_n_0),
        .O(FS_Start_reg1__85_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_16
       (.I0(FS_Start_reg2[12]),
        .I1(FS_Start_reg1__0_carry__1_n_15),
        .I2(FS_Start_reg2[19]),
        .I3(FS_Start_reg1__85_carry__1_i_8_n_0),
        .O(FS_Start_reg1__85_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_2
       (.I0(FS_Start_reg2[17]),
        .I1(FS_Start_reg1__0_carry__1_n_10),
        .I2(FS_Start_reg2[24]),
        .O(FS_Start_reg1__85_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_3
       (.I0(FS_Start_reg2[16]),
        .I1(FS_Start_reg1__0_carry__1_n_11),
        .I2(FS_Start_reg2[23]),
        .O(FS_Start_reg1__85_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_4
       (.I0(FS_Start_reg2[15]),
        .I1(FS_Start_reg1__0_carry__1_n_12),
        .I2(FS_Start_reg2[22]),
        .O(FS_Start_reg1__85_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_5
       (.I0(FS_Start_reg2[14]),
        .I1(FS_Start_reg1__0_carry__1_n_13),
        .I2(FS_Start_reg2[21]),
        .O(FS_Start_reg1__85_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_6
       (.I0(FS_Start_reg2[13]),
        .I1(FS_Start_reg1__0_carry__1_n_14),
        .I2(FS_Start_reg2[20]),
        .O(FS_Start_reg1__85_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_7
       (.I0(FS_Start_reg2[12]),
        .I1(FS_Start_reg1__0_carry__1_n_15),
        .I2(FS_Start_reg2[19]),
        .O(FS_Start_reg1__85_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__1_i_8
       (.I0(FS_Start_reg2[11]),
        .I1(FS_Start_reg1__0_carry__0_n_8),
        .I2(FS_Start_reg2[18]),
        .O(FS_Start_reg1__85_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__1_i_9
       (.I0(FS_Start_reg2[26]),
        .I1(FS_Start_reg1__0_carry__1_n_8),
        .I2(FS_Start_reg2[19]),
        .I3(FS_Start_reg1__85_carry__1_i_1_n_0),
        .O(FS_Start_reg1__85_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 FS_Start_reg1__85_carry__2
       (.CI(FS_Start_reg1__85_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_FS_Start_reg1__85_carry__2_CO_UNCONNECTED[7:4],FS_Start_reg1__85_carry__2_n_4,FS_Start_reg1__85_carry__2_n_5,FS_Start_reg1__85_carry__2_n_6,FS_Start_reg1__85_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,FS_Start_reg1__85_carry__2_i_1_n_0,FS_Start_reg1__85_carry__2_i_2_n_0,FS_Start_reg1__85_carry__2_i_3_n_0,FS_Start_reg1__85_carry__2_i_4_n_0}),
        .O({NLW_FS_Start_reg1__85_carry__2_O_UNCONNECTED[7:5],FS_Start_reg1[31:27]}),
        .S({1'b0,1'b0,1'b0,FS_Start_reg1__85_carry__2_i_5_n_0,FS_Start_reg1__85_carry__2_i_6_n_0,FS_Start_reg1__85_carry__2_i_7_n_0,FS_Start_reg1__85_carry__2_i_8_n_0,FS_Start_reg1__85_carry__2_i_9_n_0}));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__2_i_1
       (.I0(FS_Start_reg1__0_carry__2_n_13),
        .I1(FS_Start_reg2[22]),
        .I2(FS_Start_reg2[29]),
        .O(FS_Start_reg1__85_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__2_i_2
       (.I0(FS_Start_reg2[21]),
        .I1(FS_Start_reg1__0_carry__2_n_14),
        .I2(FS_Start_reg2[28]),
        .O(FS_Start_reg1__85_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__2_i_3
       (.I0(FS_Start_reg2[20]),
        .I1(FS_Start_reg1__0_carry__2_n_15),
        .I2(FS_Start_reg2[27]),
        .O(FS_Start_reg1__85_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry__2_i_4
       (.I0(FS_Start_reg2[26]),
        .I1(FS_Start_reg1__0_carry__1_n_8),
        .I2(FS_Start_reg2[19]),
        .O(FS_Start_reg1__85_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    FS_Start_reg1__85_carry__2_i_5
       (.I0(FS_Start_reg2[30]),
        .I1(FS_Start_reg2[23]),
        .I2(FS_Start_reg1__0_carry__2_n_12),
        .I3(FS_Start_reg1__0_carry__2_n_11),
        .I4(FS_Start_reg2[31]),
        .I5(FS_Start_reg2[24]),
        .O(FS_Start_reg1__85_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__2_i_6
       (.I0(FS_Start_reg1__85_carry__2_i_1_n_0),
        .I1(FS_Start_reg1__0_carry__2_n_12),
        .I2(FS_Start_reg2[30]),
        .I3(FS_Start_reg2[23]),
        .O(FS_Start_reg1__85_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__2_i_7
       (.I0(FS_Start_reg1__0_carry__2_n_13),
        .I1(FS_Start_reg2[22]),
        .I2(FS_Start_reg2[29]),
        .I3(FS_Start_reg1__85_carry__2_i_2_n_0),
        .O(FS_Start_reg1__85_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__2_i_8
       (.I0(FS_Start_reg2[21]),
        .I1(FS_Start_reg1__0_carry__2_n_14),
        .I2(FS_Start_reg2[28]),
        .I3(FS_Start_reg1__85_carry__2_i_3_n_0),
        .O(FS_Start_reg1__85_carry__2_i_8_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry__2_i_9
       (.I0(FS_Start_reg2[20]),
        .I1(FS_Start_reg1__0_carry__2_n_15),
        .I2(FS_Start_reg2[27]),
        .I3(FS_Start_reg1__85_carry__2_i_4_n_0),
        .O(FS_Start_reg1__85_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry_i_1
       (.I0(FS_Start_reg1__0_carry_n_9),
        .I1(FS_Start_reg2[9]),
        .I2(FS_Start_reg2[2]),
        .O(FS_Start_reg1__85_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__85_carry_i_10
       (.I0(FS_Start_reg2[4]),
        .I1(FS_Start_reg1__0_carry_n_14),
        .O(FS_Start_reg1__85_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__85_carry_i_11
       (.I0(FS_Start_reg2[3]),
        .I1(FS_Start_reg2[0]),
        .O(FS_Start_reg1__85_carry_i_11_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    FS_Start_reg1__85_carry_i_2
       (.I0(FS_Start_reg2[8]),
        .I1(FS_Start_reg1__0_carry_n_10),
        .I2(FS_Start_reg2[1]),
        .O(FS_Start_reg1__85_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    FS_Start_reg1__85_carry_i_3
       (.I0(FS_Start_reg2[1]),
        .I1(FS_Start_reg1__0_carry_n_10),
        .I2(FS_Start_reg2[8]),
        .O(FS_Start_reg1__85_carry_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry_i_4
       (.I0(FS_Start_reg2[3]),
        .I1(FS_Start_reg1__0_carry_n_8),
        .I2(FS_Start_reg2[10]),
        .I3(FS_Start_reg1__85_carry_i_1_n_0),
        .O(FS_Start_reg1__85_carry_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    FS_Start_reg1__85_carry_i_5
       (.I0(FS_Start_reg1__0_carry_n_9),
        .I1(FS_Start_reg2[9]),
        .I2(FS_Start_reg2[2]),
        .I3(FS_Start_reg1__85_carry_i_2_n_0),
        .O(FS_Start_reg1__85_carry_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    FS_Start_reg1__85_carry_i_6
       (.I0(FS_Start_reg2[8]),
        .I1(FS_Start_reg1__0_carry_n_10),
        .I2(FS_Start_reg2[1]),
        .I3(FS_Start_reg1__0_carry_n_11),
        .I4(FS_Start_reg2[7]),
        .O(FS_Start_reg1__85_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    FS_Start_reg1__85_carry_i_7
       (.I0(FS_Start_reg1__0_carry_n_11),
        .I1(FS_Start_reg2[7]),
        .I2(FS_Start_reg2[0]),
        .O(FS_Start_reg1__85_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__85_carry_i_8
       (.I0(FS_Start_reg2[6]),
        .I1(FS_Start_reg1__0_carry_n_12),
        .O(FS_Start_reg1__85_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FS_Start_reg1__85_carry_i_9
       (.I0(FS_Start_reg2[5]),
        .I1(FS_Start_reg1__0_carry_n_13),
        .O(FS_Start_reg1__85_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Frame_Cnt0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({Frame_Cnt0_carry_n_0,Frame_Cnt0_carry_n_1,Frame_Cnt0_carry_n_2,Frame_Cnt0_carry_n_3,Frame_Cnt0_carry_n_4,Frame_Cnt0_carry_n_5,Frame_Cnt0_carry_n_6,Frame_Cnt0_carry_n_7}),
        .DI({Frame_Cnt0_carry_i_1_n_0,Frame_Cnt0_carry_i_2_n_0,Frame_Cnt0_carry_i_3_n_0,Frame_Cnt0_carry_i_4_n_0,Frame_Cnt0_carry_i_5_n_0,Frame_Cnt0_carry_i_6_n_0,Frame_Cnt0_carry_i_7_n_0,Frame_Cnt0_carry_i_8_n_0}),
        .O(NLW_Frame_Cnt0_carry_O_UNCONNECTED[7:0]),
        .S({Frame_Cnt0_carry_i_9_n_0,Frame_Cnt0_carry_i_10_n_0,Frame_Cnt0_carry_i_11_n_0,Frame_Cnt0_carry_i_12_n_0,Frame_Cnt0_carry_i_13_n_0,Frame_Cnt0_carry_i_14_n_0,Frame_Cnt0_carry_i_15_n_0,Frame_Cnt0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 Frame_Cnt0_carry__0
       (.CI(Frame_Cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Frame_Cnt0_carry__0_n_0,Frame_Cnt0_carry__0_n_1,Frame_Cnt0_carry__0_n_2,Frame_Cnt0_carry__0_n_3,Frame_Cnt0_carry__0_n_4,Frame_Cnt0_carry__0_n_5,Frame_Cnt0_carry__0_n_6,Frame_Cnt0_carry__0_n_7}),
        .DI({Frame_Cnt0_carry__0_i_1_n_0,Frame_Cnt0_carry__0_i_2_n_0,Frame_Cnt0_carry__0_i_3_n_0,Frame_Cnt0_carry__0_i_4_n_0,Frame_Cnt0_carry__0_i_5_n_0,Frame_Cnt0_carry__0_i_6_n_0,Frame_Cnt0_carry__0_i_7_n_0,Frame_Cnt0_carry__0_i_8_n_0}),
        .O(NLW_Frame_Cnt0_carry__0_O_UNCONNECTED[7:0]),
        .S({Frame_Cnt0_carry__0_i_9_n_0,Frame_Cnt0_carry__0_i_10_n_0,Frame_Cnt0_carry__0_i_11_n_0,Frame_Cnt0_carry__0_i_12_n_0,Frame_Cnt0_carry__0_i_13_n_0,Frame_Cnt0_carry__0_i_14_n_0,Frame_Cnt0_carry__0_i_15_n_0,Frame_Cnt0_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_1
       (.I0(Frame_Cnt[31]),
        .I1(Frame_Cnt1_n_74),
        .I2(Frame_Cnt[30]),
        .I3(Frame_Cnt1_n_75),
        .O(Frame_Cnt0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_10
       (.I0(Frame_Cnt1_n_76),
        .I1(Frame_Cnt[29]),
        .I2(Frame_Cnt1_n_77),
        .I3(Frame_Cnt[28]),
        .O(Frame_Cnt0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_11
       (.I0(Frame_Cnt1_n_78),
        .I1(Frame_Cnt[27]),
        .I2(Frame_Cnt1_n_79),
        .I3(Frame_Cnt[26]),
        .O(Frame_Cnt0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_12
       (.I0(Frame_Cnt1_n_80),
        .I1(Frame_Cnt[25]),
        .I2(Frame_Cnt1_n_81),
        .I3(Frame_Cnt[24]),
        .O(Frame_Cnt0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_13
       (.I0(Frame_Cnt1_n_82),
        .I1(Frame_Cnt[23]),
        .I2(Frame_Cnt1_n_83),
        .I3(Frame_Cnt[22]),
        .O(Frame_Cnt0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_14
       (.I0(Frame_Cnt1_n_84),
        .I1(Frame_Cnt[21]),
        .I2(Frame_Cnt1_n_85),
        .I3(Frame_Cnt[20]),
        .O(Frame_Cnt0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_15
       (.I0(Frame_Cnt1_n_86),
        .I1(Frame_Cnt[19]),
        .I2(Frame_Cnt1_n_87),
        .I3(Frame_Cnt[18]),
        .O(Frame_Cnt0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_16
       (.I0(Frame_Cnt1_n_88),
        .I1(Frame_Cnt[17]),
        .I2(Frame_Cnt1_n_89),
        .I3(Frame_Cnt[16]),
        .O(Frame_Cnt0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_2
       (.I0(Frame_Cnt[29]),
        .I1(Frame_Cnt1_n_76),
        .I2(Frame_Cnt[28]),
        .I3(Frame_Cnt1_n_77),
        .O(Frame_Cnt0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_3
       (.I0(Frame_Cnt[27]),
        .I1(Frame_Cnt1_n_78),
        .I2(Frame_Cnt[26]),
        .I3(Frame_Cnt1_n_79),
        .O(Frame_Cnt0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_4
       (.I0(Frame_Cnt[25]),
        .I1(Frame_Cnt1_n_80),
        .I2(Frame_Cnt[24]),
        .I3(Frame_Cnt1_n_81),
        .O(Frame_Cnt0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_5
       (.I0(Frame_Cnt[23]),
        .I1(Frame_Cnt1_n_82),
        .I2(Frame_Cnt[22]),
        .I3(Frame_Cnt1_n_83),
        .O(Frame_Cnt0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_6
       (.I0(Frame_Cnt[21]),
        .I1(Frame_Cnt1_n_84),
        .I2(Frame_Cnt[20]),
        .I3(Frame_Cnt1_n_85),
        .O(Frame_Cnt0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_7
       (.I0(Frame_Cnt[19]),
        .I1(Frame_Cnt1_n_86),
        .I2(Frame_Cnt[18]),
        .I3(Frame_Cnt1_n_87),
        .O(Frame_Cnt0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry__0_i_8
       (.I0(Frame_Cnt[17]),
        .I1(Frame_Cnt1_n_88),
        .I2(Frame_Cnt[16]),
        .I3(Frame_Cnt1_n_89),
        .O(Frame_Cnt0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry__0_i_9
       (.I0(Frame_Cnt1_n_74),
        .I1(Frame_Cnt[31]),
        .I2(Frame_Cnt1_n_75),
        .I3(Frame_Cnt[30]),
        .O(Frame_Cnt0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_1
       (.I0(Frame_Cnt[15]),
        .I1(Frame_Cnt1_n_90),
        .I2(Frame_Cnt[14]),
        .I3(Frame_Cnt1_n_91),
        .O(Frame_Cnt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_10
       (.I0(Frame_Cnt1_n_92),
        .I1(Frame_Cnt[13]),
        .I2(Frame_Cnt1_n_93),
        .I3(Frame_Cnt[12]),
        .O(Frame_Cnt0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_11
       (.I0(Frame_Cnt1_n_94),
        .I1(Frame_Cnt[11]),
        .I2(Frame_Cnt1_n_95),
        .I3(Frame_Cnt[10]),
        .O(Frame_Cnt0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_12
       (.I0(Frame_Cnt1_n_96),
        .I1(Frame_Cnt[9]),
        .I2(Frame_Cnt1_n_97),
        .I3(Frame_Cnt[8]),
        .O(Frame_Cnt0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_13
       (.I0(Frame_Cnt1_n_98),
        .I1(Frame_Cnt[7]),
        .I2(Frame_Cnt1_n_99),
        .I3(Frame_Cnt[6]),
        .O(Frame_Cnt0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_14
       (.I0(Frame_Cnt1_n_100),
        .I1(Frame_Cnt[5]),
        .I2(Frame_Cnt1_n_101),
        .I3(Frame_Cnt[4]),
        .O(Frame_Cnt0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_15
       (.I0(Frame_Cnt1_n_102),
        .I1(Frame_Cnt[3]),
        .I2(Frame_Cnt1_n_103),
        .I3(Frame_Cnt[2]),
        .O(Frame_Cnt0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_16
       (.I0(Frame_Cnt1_n_104),
        .I1(Frame_Cnt[1]),
        .I2(Frame_Cnt1_n_105),
        .I3(Frame_Cnt[0]),
        .O(Frame_Cnt0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_2
       (.I0(Frame_Cnt[13]),
        .I1(Frame_Cnt1_n_92),
        .I2(Frame_Cnt[12]),
        .I3(Frame_Cnt1_n_93),
        .O(Frame_Cnt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_3
       (.I0(Frame_Cnt[11]),
        .I1(Frame_Cnt1_n_94),
        .I2(Frame_Cnt[10]),
        .I3(Frame_Cnt1_n_95),
        .O(Frame_Cnt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_4
       (.I0(Frame_Cnt[9]),
        .I1(Frame_Cnt1_n_96),
        .I2(Frame_Cnt[8]),
        .I3(Frame_Cnt1_n_97),
        .O(Frame_Cnt0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_5
       (.I0(Frame_Cnt[7]),
        .I1(Frame_Cnt1_n_98),
        .I2(Frame_Cnt[6]),
        .I3(Frame_Cnt1_n_99),
        .O(Frame_Cnt0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_6
       (.I0(Frame_Cnt[5]),
        .I1(Frame_Cnt1_n_100),
        .I2(Frame_Cnt[4]),
        .I3(Frame_Cnt1_n_101),
        .O(Frame_Cnt0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_7
       (.I0(Frame_Cnt[3]),
        .I1(Frame_Cnt1_n_102),
        .I2(Frame_Cnt[2]),
        .I3(Frame_Cnt1_n_103),
        .O(Frame_Cnt0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Frame_Cnt0_carry_i_8
       (.I0(Frame_Cnt[1]),
        .I1(Frame_Cnt1_n_104),
        .I2(Frame_Cnt[0]),
        .I3(Frame_Cnt1_n_105),
        .O(Frame_Cnt0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Frame_Cnt0_carry_i_9
       (.I0(Frame_Cnt1_n_90),
        .I1(Frame_Cnt[15]),
        .I2(Frame_Cnt1_n_91),
        .I3(Frame_Cnt[14]),
        .O(Frame_Cnt0_carry_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    Frame_Cnt1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Frame_Cnt1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,FMCW_Frame_Cycle_ms}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Frame_Cnt1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Frame_Cnt1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Frame_Cnt1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Frame_Cnt1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Frame_Cnt1_OVERFLOW_UNCONNECTED),
        .P({NLW_Frame_Cnt1_P_UNCONNECTED[47:34],Frame_Cnt1_n_72,Frame_Cnt1_n_73,Frame_Cnt1_n_74,Frame_Cnt1_n_75,Frame_Cnt1_n_76,Frame_Cnt1_n_77,Frame_Cnt1_n_78,Frame_Cnt1_n_79,Frame_Cnt1_n_80,Frame_Cnt1_n_81,Frame_Cnt1_n_82,Frame_Cnt1_n_83,Frame_Cnt1_n_84,Frame_Cnt1_n_85,Frame_Cnt1_n_86,Frame_Cnt1_n_87,Frame_Cnt1_n_88,Frame_Cnt1_n_89,Frame_Cnt1_n_90,Frame_Cnt1_n_91,Frame_Cnt1_n_92,Frame_Cnt1_n_93,Frame_Cnt1_n_94,Frame_Cnt1_n_95,Frame_Cnt1_n_96,Frame_Cnt1_n_97,Frame_Cnt1_n_98,Frame_Cnt1_n_99,Frame_Cnt1_n_100,Frame_Cnt1_n_101,Frame_Cnt1_n_102,Frame_Cnt1_n_103,Frame_Cnt1_n_104,Frame_Cnt1_n_105}),
        .PATTERNBDETECT(NLW_Frame_Cnt1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Frame_Cnt1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Frame_Cnt1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Frame_Cnt1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_Frame_Cnt1_XOROUT_UNCONNECTED[7:0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Frame_Cnt[0]_i_1 
       (.I0(Frame_Cnt[0]),
        .O(\Frame_Cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \Frame_Cnt[31]_i_1 
       (.I0(Frame_Cnt0_carry__0_n_0),
        .I1(USER_RST_N),
        .O(\Frame_Cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Frame_Cnt_reg0_carry
       (.CI(Frame_Cnt[0]),
        .CI_TOP(1'b0),
        .CO({Frame_Cnt_reg0_carry_n_0,Frame_Cnt_reg0_carry_n_1,Frame_Cnt_reg0_carry_n_2,Frame_Cnt_reg0_carry_n_3,Frame_Cnt_reg0_carry_n_4,Frame_Cnt_reg0_carry_n_5,Frame_Cnt_reg0_carry_n_6,Frame_Cnt_reg0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Frame_Cnt_reg0_carry_n_8,Frame_Cnt_reg0_carry_n_9,Frame_Cnt_reg0_carry_n_10,Frame_Cnt_reg0_carry_n_11,Frame_Cnt_reg0_carry_n_12,Frame_Cnt_reg0_carry_n_13,Frame_Cnt_reg0_carry_n_14,Frame_Cnt_reg0_carry_n_15}),
        .S(Frame_Cnt[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Frame_Cnt_reg0_carry__0
       (.CI(Frame_Cnt_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Frame_Cnt_reg0_carry__0_n_0,Frame_Cnt_reg0_carry__0_n_1,Frame_Cnt_reg0_carry__0_n_2,Frame_Cnt_reg0_carry__0_n_3,Frame_Cnt_reg0_carry__0_n_4,Frame_Cnt_reg0_carry__0_n_5,Frame_Cnt_reg0_carry__0_n_6,Frame_Cnt_reg0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Frame_Cnt_reg0_carry__0_n_8,Frame_Cnt_reg0_carry__0_n_9,Frame_Cnt_reg0_carry__0_n_10,Frame_Cnt_reg0_carry__0_n_11,Frame_Cnt_reg0_carry__0_n_12,Frame_Cnt_reg0_carry__0_n_13,Frame_Cnt_reg0_carry__0_n_14,Frame_Cnt_reg0_carry__0_n_15}),
        .S(Frame_Cnt[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Frame_Cnt_reg0_carry__1
       (.CI(Frame_Cnt_reg0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({Frame_Cnt_reg0_carry__1_n_0,Frame_Cnt_reg0_carry__1_n_1,Frame_Cnt_reg0_carry__1_n_2,Frame_Cnt_reg0_carry__1_n_3,Frame_Cnt_reg0_carry__1_n_4,Frame_Cnt_reg0_carry__1_n_5,Frame_Cnt_reg0_carry__1_n_6,Frame_Cnt_reg0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Frame_Cnt_reg0_carry__1_n_8,Frame_Cnt_reg0_carry__1_n_9,Frame_Cnt_reg0_carry__1_n_10,Frame_Cnt_reg0_carry__1_n_11,Frame_Cnt_reg0_carry__1_n_12,Frame_Cnt_reg0_carry__1_n_13,Frame_Cnt_reg0_carry__1_n_14,Frame_Cnt_reg0_carry__1_n_15}),
        .S(Frame_Cnt[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 Frame_Cnt_reg0_carry__2
       (.CI(Frame_Cnt_reg0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_Frame_Cnt_reg0_carry__2_CO_UNCONNECTED[7:6],Frame_Cnt_reg0_carry__2_n_2,Frame_Cnt_reg0_carry__2_n_3,Frame_Cnt_reg0_carry__2_n_4,Frame_Cnt_reg0_carry__2_n_5,Frame_Cnt_reg0_carry__2_n_6,Frame_Cnt_reg0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Frame_Cnt_reg0_carry__2_O_UNCONNECTED[7],Frame_Cnt_reg0_carry__2_n_9,Frame_Cnt_reg0_carry__2_n_10,Frame_Cnt_reg0_carry__2_n_11,Frame_Cnt_reg0_carry__2_n_12,Frame_Cnt_reg0_carry__2_n_13,Frame_Cnt_reg0_carry__2_n_14,Frame_Cnt_reg0_carry__2_n_15}),
        .S({1'b0,Frame_Cnt[31:25]}));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Frame_Cnt[0]_i_1_n_0 ),
        .Q(Frame_Cnt[0]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_14),
        .Q(Frame_Cnt[10]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_13),
        .Q(Frame_Cnt[11]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_12),
        .Q(Frame_Cnt[12]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_11),
        .Q(Frame_Cnt[13]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_10),
        .Q(Frame_Cnt[14]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_9),
        .Q(Frame_Cnt[15]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_8),
        .Q(Frame_Cnt[16]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_15),
        .Q(Frame_Cnt[17]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_14),
        .Q(Frame_Cnt[18]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_13),
        .Q(Frame_Cnt[19]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_15),
        .Q(Frame_Cnt[1]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_12),
        .Q(Frame_Cnt[20]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_11),
        .Q(Frame_Cnt[21]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_10),
        .Q(Frame_Cnt[22]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_9),
        .Q(Frame_Cnt[23]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__1_n_8),
        .Q(Frame_Cnt[24]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_15),
        .Q(Frame_Cnt[25]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_14),
        .Q(Frame_Cnt[26]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_13),
        .Q(Frame_Cnt[27]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_12),
        .Q(Frame_Cnt[28]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_11),
        .Q(Frame_Cnt[29]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_14),
        .Q(Frame_Cnt[2]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_10),
        .Q(Frame_Cnt[30]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__2_n_9),
        .Q(Frame_Cnt[31]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_13),
        .Q(Frame_Cnt[3]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_12),
        .Q(Frame_Cnt[4]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_11),
        .Q(Frame_Cnt[5]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_10),
        .Q(Frame_Cnt[6]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_9),
        .Q(Frame_Cnt[7]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry_n_8),
        .Q(Frame_Cnt[8]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \Frame_Cnt_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_Cnt_reg0_carry__0_n_15),
        .Q(Frame_Cnt[9]),
        .R(\Frame_Cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    Frame_clk_i_1
       (.I0(USER_RST_N),
        .I1(Chirp_Cnt_EN_reg0),
        .O(Frame_clk_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE Frame_clk_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Frame_clk_i_1_n_0),
        .Q(Frame_clk),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    PL_Addr_Flag_i_1
       (.I0(PL_Addr_Flag),
        .I1(AXI_Trans_Addr2),
        .I2(PL_Addr_Flag),
        .O(PL_Addr_Flag_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE PL_Addr_Flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(PL_Addr_Flag_i_1_n_0),
        .Q(PL_Addr_Flag),
        .R(Chirp_clk_i_1_n_0));
  LUT4 #(
    .INIT(16'h00E0)) 
    PL_Done_Flag_i_1
       (.I0(PL_Done_Flag_reg0_carry__0_n_0),
        .I1(PL_Done_Flag),
        .I2(USER_RST_N),
        .I3(AXI_Trans_Addr2),
        .O(PL_Done_Flag_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE PL_Done_Flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(PL_Done_Flag_i_1_n_0),
        .Q(PL_Done_Flag),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 PL_Done_Flag_reg0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({PL_Done_Flag_reg0_carry_n_0,PL_Done_Flag_reg0_carry_n_1,PL_Done_Flag_reg0_carry_n_2,PL_Done_Flag_reg0_carry_n_3,PL_Done_Flag_reg0_carry_n_4,PL_Done_Flag_reg0_carry_n_5,PL_Done_Flag_reg0_carry_n_6,PL_Done_Flag_reg0_carry_n_7}),
        .DI({PL_Done_Flag_reg0_carry_i_1_n_0,PL_Done_Flag_reg0_carry_i_2_n_0,PL_Done_Flag_reg0_carry_i_3_n_0,PL_Done_Flag_reg0_carry_i_4_n_0,PL_Done_Flag_reg0_carry_i_5_n_0,PL_Done_Flag_reg0_carry_i_6_n_0,PL_Done_Flag_reg0_carry_i_7_n_0,PL_Done_Flag_reg0_carry_i_8_n_0}),
        .O(NLW_PL_Done_Flag_reg0_carry_O_UNCONNECTED[7:0]),
        .S({PL_Done_Flag_reg0_carry_i_9_n_0,PL_Done_Flag_reg0_carry_i_10_n_0,PL_Done_Flag_reg0_carry_i_11_n_0,PL_Done_Flag_reg0_carry_i_12_n_0,PL_Done_Flag_reg0_carry_i_13_n_0,PL_Done_Flag_reg0_carry_i_14_n_0,PL_Done_Flag_reg0_carry_i_15_n_0,PL_Done_Flag_reg0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 PL_Done_Flag_reg0_carry__0
       (.CI(PL_Done_Flag_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({PL_Done_Flag_reg0_carry__0_n_0,PL_Done_Flag_reg0_carry__0_n_1,PL_Done_Flag_reg0_carry__0_n_2,PL_Done_Flag_reg0_carry__0_n_3,PL_Done_Flag_reg0_carry__0_n_4,PL_Done_Flag_reg0_carry__0_n_5,PL_Done_Flag_reg0_carry__0_n_6,PL_Done_Flag_reg0_carry__0_n_7}),
        .DI({PL_Done_Flag_reg0_carry__0_i_1_n_0,PL_Done_Flag_reg0_carry__0_i_2_n_0,PL_Done_Flag_reg0_carry__0_i_3_n_0,PL_Done_Flag_reg0_carry__0_i_4_n_0,PL_Done_Flag_reg0_carry__0_i_5_n_0,PL_Done_Flag_reg0_carry__0_i_6_n_0,PL_Done_Flag_reg0_carry__0_i_7_n_0,PL_Done_Flag_reg0_carry__0_i_8_n_0}),
        .O(NLW_PL_Done_Flag_reg0_carry__0_O_UNCONNECTED[7:0]),
        .S({PL_Done_Flag_reg0_carry__0_i_9_n_0,PL_Done_Flag_reg0_carry__0_i_10_n_0,PL_Done_Flag_reg0_carry__0_i_11_n_0,PL_Done_Flag_reg0_carry__0_i_12_n_0,PL_Done_Flag_reg0_carry__0_i_13_n_0,PL_Done_Flag_reg0_carry__0_i_14_n_0,PL_Done_Flag_reg0_carry__0_i_15_n_0,PL_Done_Flag_reg0_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_1
       (.I0(Frame_Cnt[31]),
        .I1(PL_Done_Flag_reg1[31]),
        .I2(Frame_Cnt[30]),
        .I3(PL_Done_Flag_reg1[30]),
        .O(PL_Done_Flag_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_10
       (.I0(PL_Done_Flag_reg1[29]),
        .I1(Frame_Cnt[29]),
        .I2(PL_Done_Flag_reg1[28]),
        .I3(Frame_Cnt[28]),
        .O(PL_Done_Flag_reg0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_11
       (.I0(PL_Done_Flag_reg1[27]),
        .I1(Frame_Cnt[27]),
        .I2(PL_Done_Flag_reg1[26]),
        .I3(Frame_Cnt[26]),
        .O(PL_Done_Flag_reg0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_12
       (.I0(PL_Done_Flag_reg1[25]),
        .I1(Frame_Cnt[25]),
        .I2(PL_Done_Flag_reg1[24]),
        .I3(Frame_Cnt[24]),
        .O(PL_Done_Flag_reg0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_13
       (.I0(PL_Done_Flag_reg1[23]),
        .I1(Frame_Cnt[23]),
        .I2(PL_Done_Flag_reg1[22]),
        .I3(Frame_Cnt[22]),
        .O(PL_Done_Flag_reg0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_14
       (.I0(PL_Done_Flag_reg1[21]),
        .I1(Frame_Cnt[21]),
        .I2(PL_Done_Flag_reg1[20]),
        .I3(Frame_Cnt[20]),
        .O(PL_Done_Flag_reg0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_15
       (.I0(PL_Done_Flag_reg1[19]),
        .I1(Frame_Cnt[19]),
        .I2(PL_Done_Flag_reg1[18]),
        .I3(Frame_Cnt[18]),
        .O(PL_Done_Flag_reg0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_16
       (.I0(PL_Done_Flag_reg1[17]),
        .I1(Frame_Cnt[17]),
        .I2(PL_Done_Flag_reg1[16]),
        .I3(Frame_Cnt[16]),
        .O(PL_Done_Flag_reg0_carry__0_i_16_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 PL_Done_Flag_reg0_carry__0_i_17
       (.CI(PL_Done_Flag_reg0_carry__0_i_18_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_PL_Done_Flag_reg0_carry__0_i_17_CO_UNCONNECTED[7],PL_Done_Flag_reg0_carry__0_i_17_n_1,PL_Done_Flag_reg0_carry__0_i_17_n_2,PL_Done_Flag_reg0_carry__0_i_17_n_3,PL_Done_Flag_reg0_carry__0_i_17_n_4,PL_Done_Flag_reg0_carry__0_i_17_n_5,PL_Done_Flag_reg0_carry__0_i_17_n_6,PL_Done_Flag_reg0_carry__0_i_17_n_7}),
        .DI({1'b0,Frame_Cnt1_n_74,Frame_Cnt1_n_75,Frame_Cnt1_n_76,Frame_Cnt1_n_77,Frame_Cnt1_n_78,Frame_Cnt1_n_79,Frame_Cnt1_n_80}),
        .O(PL_Done_Flag_reg1[31:24]),
        .S({PL_Done_Flag_reg2__0_n_91,PL_Done_Flag_reg0_carry__0_i_19_n_0,PL_Done_Flag_reg0_carry__0_i_20_n_0,PL_Done_Flag_reg0_carry__0_i_21_n_0,PL_Done_Flag_reg0_carry__0_i_22_n_0,PL_Done_Flag_reg0_carry__0_i_23_n_0,PL_Done_Flag_reg0_carry__0_i_24_n_0,PL_Done_Flag_reg0_carry__0_i_25_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 PL_Done_Flag_reg0_carry__0_i_18
       (.CI(PL_Done_Flag_reg0_carry_i_17_n_0),
        .CI_TOP(1'b0),
        .CO({PL_Done_Flag_reg0_carry__0_i_18_n_0,PL_Done_Flag_reg0_carry__0_i_18_n_1,PL_Done_Flag_reg0_carry__0_i_18_n_2,PL_Done_Flag_reg0_carry__0_i_18_n_3,PL_Done_Flag_reg0_carry__0_i_18_n_4,PL_Done_Flag_reg0_carry__0_i_18_n_5,PL_Done_Flag_reg0_carry__0_i_18_n_6,PL_Done_Flag_reg0_carry__0_i_18_n_7}),
        .DI({Frame_Cnt1_n_81,Frame_Cnt1_n_82,Frame_Cnt1_n_83,Frame_Cnt1_n_84,Frame_Cnt1_n_85,Frame_Cnt1_n_86,Frame_Cnt1_n_87,Frame_Cnt1_n_88}),
        .O(PL_Done_Flag_reg1[23:16]),
        .S({PL_Done_Flag_reg0_carry__0_i_26_n_0,PL_Done_Flag_reg0_carry__0_i_27_n_0,PL_Done_Flag_reg0_carry__0_i_28_n_0,PL_Done_Flag_reg0_carry__0_i_29_n_0,PL_Done_Flag_reg0_carry__0_i_30_n_0,PL_Done_Flag_reg0_carry__0_i_31_n_0,PL_Done_Flag_reg0_carry__0_i_32_n_0,PL_Done_Flag_reg0_carry__0_i_33_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_19
       (.I0(Frame_Cnt1_n_74),
        .I1(PL_Done_Flag_reg2__0_n_92),
        .O(PL_Done_Flag_reg0_carry__0_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_2
       (.I0(Frame_Cnt[29]),
        .I1(PL_Done_Flag_reg1[29]),
        .I2(Frame_Cnt[28]),
        .I3(PL_Done_Flag_reg1[28]),
        .O(PL_Done_Flag_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_20
       (.I0(Frame_Cnt1_n_75),
        .I1(PL_Done_Flag_reg2__0_n_93),
        .O(PL_Done_Flag_reg0_carry__0_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_21
       (.I0(Frame_Cnt1_n_76),
        .I1(PL_Done_Flag_reg2__0_n_94),
        .O(PL_Done_Flag_reg0_carry__0_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_22
       (.I0(Frame_Cnt1_n_77),
        .I1(PL_Done_Flag_reg2__0_n_95),
        .O(PL_Done_Flag_reg0_carry__0_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_23
       (.I0(Frame_Cnt1_n_78),
        .I1(PL_Done_Flag_reg2__0_n_96),
        .O(PL_Done_Flag_reg0_carry__0_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_24
       (.I0(Frame_Cnt1_n_79),
        .I1(PL_Done_Flag_reg2__0_n_97),
        .O(PL_Done_Flag_reg0_carry__0_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_25
       (.I0(Frame_Cnt1_n_80),
        .I1(PL_Done_Flag_reg2__0_n_98),
        .O(PL_Done_Flag_reg0_carry__0_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_26
       (.I0(Frame_Cnt1_n_81),
        .I1(PL_Done_Flag_reg2__0_n_99),
        .O(PL_Done_Flag_reg0_carry__0_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_27
       (.I0(Frame_Cnt1_n_82),
        .I1(PL_Done_Flag_reg2__0_n_100),
        .O(PL_Done_Flag_reg0_carry__0_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_28
       (.I0(Frame_Cnt1_n_83),
        .I1(PL_Done_Flag_reg2__0_n_101),
        .O(PL_Done_Flag_reg0_carry__0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_29
       (.I0(Frame_Cnt1_n_84),
        .I1(PL_Done_Flag_reg2__0_n_102),
        .O(PL_Done_Flag_reg0_carry__0_i_29_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_3
       (.I0(Frame_Cnt[27]),
        .I1(PL_Done_Flag_reg1[27]),
        .I2(Frame_Cnt[26]),
        .I3(PL_Done_Flag_reg1[26]),
        .O(PL_Done_Flag_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_30
       (.I0(Frame_Cnt1_n_85),
        .I1(PL_Done_Flag_reg2__0_n_103),
        .O(PL_Done_Flag_reg0_carry__0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_31
       (.I0(Frame_Cnt1_n_86),
        .I1(PL_Done_Flag_reg2__0_n_104),
        .O(PL_Done_Flag_reg0_carry__0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_32
       (.I0(Frame_Cnt1_n_87),
        .I1(PL_Done_Flag_reg2__0_n_105),
        .O(PL_Done_Flag_reg0_carry__0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry__0_i_33
       (.I0(Frame_Cnt1_n_88),
        .I1(PL_Done_Flag_reg2_n_89),
        .O(PL_Done_Flag_reg0_carry__0_i_33_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_4
       (.I0(Frame_Cnt[25]),
        .I1(PL_Done_Flag_reg1[25]),
        .I2(Frame_Cnt[24]),
        .I3(PL_Done_Flag_reg1[24]),
        .O(PL_Done_Flag_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_5
       (.I0(Frame_Cnt[23]),
        .I1(PL_Done_Flag_reg1[23]),
        .I2(Frame_Cnt[22]),
        .I3(PL_Done_Flag_reg1[22]),
        .O(PL_Done_Flag_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_6
       (.I0(Frame_Cnt[21]),
        .I1(PL_Done_Flag_reg1[21]),
        .I2(Frame_Cnt[20]),
        .I3(PL_Done_Flag_reg1[20]),
        .O(PL_Done_Flag_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_7
       (.I0(Frame_Cnt[19]),
        .I1(PL_Done_Flag_reg1[19]),
        .I2(Frame_Cnt[18]),
        .I3(PL_Done_Flag_reg1[18]),
        .O(PL_Done_Flag_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry__0_i_8
       (.I0(Frame_Cnt[17]),
        .I1(PL_Done_Flag_reg1[17]),
        .I2(Frame_Cnt[16]),
        .I3(PL_Done_Flag_reg1[16]),
        .O(PL_Done_Flag_reg0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry__0_i_9
       (.I0(PL_Done_Flag_reg1[31]),
        .I1(Frame_Cnt[31]),
        .I2(PL_Done_Flag_reg1[30]),
        .I3(Frame_Cnt[30]),
        .O(PL_Done_Flag_reg0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_1
       (.I0(Frame_Cnt[15]),
        .I1(PL_Done_Flag_reg1[15]),
        .I2(Frame_Cnt[14]),
        .I3(PL_Done_Flag_reg1[14]),
        .O(PL_Done_Flag_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_10
       (.I0(PL_Done_Flag_reg1[13]),
        .I1(Frame_Cnt[13]),
        .I2(PL_Done_Flag_reg1[12]),
        .I3(Frame_Cnt[12]),
        .O(PL_Done_Flag_reg0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_11
       (.I0(PL_Done_Flag_reg1[11]),
        .I1(Frame_Cnt[11]),
        .I2(PL_Done_Flag_reg1[10]),
        .I3(Frame_Cnt[10]),
        .O(PL_Done_Flag_reg0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_12
       (.I0(PL_Done_Flag_reg1[9]),
        .I1(Frame_Cnt[9]),
        .I2(PL_Done_Flag_reg1[8]),
        .I3(Frame_Cnt[8]),
        .O(PL_Done_Flag_reg0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_13
       (.I0(PL_Done_Flag_reg1[7]),
        .I1(Frame_Cnt[7]),
        .I2(PL_Done_Flag_reg1[6]),
        .I3(Frame_Cnt[6]),
        .O(PL_Done_Flag_reg0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_14
       (.I0(PL_Done_Flag_reg1[5]),
        .I1(Frame_Cnt[5]),
        .I2(PL_Done_Flag_reg1[4]),
        .I3(Frame_Cnt[4]),
        .O(PL_Done_Flag_reg0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_15
       (.I0(PL_Done_Flag_reg1[3]),
        .I1(Frame_Cnt[3]),
        .I2(PL_Done_Flag_reg1[2]),
        .I3(Frame_Cnt[2]),
        .O(PL_Done_Flag_reg0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_16
       (.I0(PL_Done_Flag_reg1[1]),
        .I1(Frame_Cnt[1]),
        .I2(PL_Done_Flag_reg1[0]),
        .I3(Frame_Cnt[0]),
        .O(PL_Done_Flag_reg0_carry_i_16_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 PL_Done_Flag_reg0_carry_i_17
       (.CI(PL_Done_Flag_reg0_carry_i_18_n_0),
        .CI_TOP(1'b0),
        .CO({PL_Done_Flag_reg0_carry_i_17_n_0,PL_Done_Flag_reg0_carry_i_17_n_1,PL_Done_Flag_reg0_carry_i_17_n_2,PL_Done_Flag_reg0_carry_i_17_n_3,PL_Done_Flag_reg0_carry_i_17_n_4,PL_Done_Flag_reg0_carry_i_17_n_5,PL_Done_Flag_reg0_carry_i_17_n_6,PL_Done_Flag_reg0_carry_i_17_n_7}),
        .DI({Frame_Cnt1_n_89,Frame_Cnt1_n_90,Frame_Cnt1_n_91,Frame_Cnt1_n_92,Frame_Cnt1_n_93,Frame_Cnt1_n_94,Frame_Cnt1_n_95,Frame_Cnt1_n_96}),
        .O(PL_Done_Flag_reg1[15:8]),
        .S({PL_Done_Flag_reg0_carry_i_19_n_0,PL_Done_Flag_reg0_carry_i_20_n_0,PL_Done_Flag_reg0_carry_i_21_n_0,PL_Done_Flag_reg0_carry_i_22_n_0,PL_Done_Flag_reg0_carry_i_23_n_0,PL_Done_Flag_reg0_carry_i_24_n_0,PL_Done_Flag_reg0_carry_i_25_n_0,PL_Done_Flag_reg0_carry_i_26_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 PL_Done_Flag_reg0_carry_i_18
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({PL_Done_Flag_reg0_carry_i_18_n_0,PL_Done_Flag_reg0_carry_i_18_n_1,PL_Done_Flag_reg0_carry_i_18_n_2,PL_Done_Flag_reg0_carry_i_18_n_3,PL_Done_Flag_reg0_carry_i_18_n_4,PL_Done_Flag_reg0_carry_i_18_n_5,PL_Done_Flag_reg0_carry_i_18_n_6,PL_Done_Flag_reg0_carry_i_18_n_7}),
        .DI({Frame_Cnt1_n_97,Frame_Cnt1_n_98,Frame_Cnt1_n_99,Frame_Cnt1_n_100,Frame_Cnt1_n_101,Frame_Cnt1_n_102,Frame_Cnt1_n_103,Frame_Cnt1_n_104}),
        .O(PL_Done_Flag_reg1[7:0]),
        .S({PL_Done_Flag_reg0_carry_i_27_n_0,PL_Done_Flag_reg0_carry_i_28_n_0,PL_Done_Flag_reg0_carry_i_29_n_0,PL_Done_Flag_reg0_carry_i_30_n_0,PL_Done_Flag_reg0_carry_i_31_n_0,PL_Done_Flag_reg0_carry_i_32_n_0,PL_Done_Flag_reg0_carry_i_33_n_0,PL_Done_Flag_reg0_carry_i_34_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_19
       (.I0(Frame_Cnt1_n_89),
        .I1(PL_Done_Flag_reg2_n_90),
        .O(PL_Done_Flag_reg0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_2
       (.I0(Frame_Cnt[13]),
        .I1(PL_Done_Flag_reg1[13]),
        .I2(Frame_Cnt[12]),
        .I3(PL_Done_Flag_reg1[12]),
        .O(PL_Done_Flag_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_20
       (.I0(Frame_Cnt1_n_90),
        .I1(PL_Done_Flag_reg2_n_91),
        .O(PL_Done_Flag_reg0_carry_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_21
       (.I0(Frame_Cnt1_n_91),
        .I1(PL_Done_Flag_reg2_n_92),
        .O(PL_Done_Flag_reg0_carry_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_22
       (.I0(Frame_Cnt1_n_92),
        .I1(PL_Done_Flag_reg2_n_93),
        .O(PL_Done_Flag_reg0_carry_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_23
       (.I0(Frame_Cnt1_n_93),
        .I1(PL_Done_Flag_reg2_n_94),
        .O(PL_Done_Flag_reg0_carry_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_24
       (.I0(Frame_Cnt1_n_94),
        .I1(PL_Done_Flag_reg2_n_95),
        .O(PL_Done_Flag_reg0_carry_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_25
       (.I0(Frame_Cnt1_n_95),
        .I1(PL_Done_Flag_reg2_n_96),
        .O(PL_Done_Flag_reg0_carry_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_26
       (.I0(Frame_Cnt1_n_96),
        .I1(PL_Done_Flag_reg2_n_97),
        .O(PL_Done_Flag_reg0_carry_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_27
       (.I0(Frame_Cnt1_n_97),
        .I1(PL_Done_Flag_reg2_n_98),
        .O(PL_Done_Flag_reg0_carry_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_28
       (.I0(Frame_Cnt1_n_98),
        .I1(PL_Done_Flag_reg2_n_99),
        .O(PL_Done_Flag_reg0_carry_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_29
       (.I0(Frame_Cnt1_n_99),
        .I1(PL_Done_Flag_reg2_n_100),
        .O(PL_Done_Flag_reg0_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_3
       (.I0(Frame_Cnt[11]),
        .I1(PL_Done_Flag_reg1[11]),
        .I2(Frame_Cnt[10]),
        .I3(PL_Done_Flag_reg1[10]),
        .O(PL_Done_Flag_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_30
       (.I0(Frame_Cnt1_n_100),
        .I1(PL_Done_Flag_reg2_n_101),
        .O(PL_Done_Flag_reg0_carry_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_31
       (.I0(Frame_Cnt1_n_101),
        .I1(PL_Done_Flag_reg2_n_102),
        .O(PL_Done_Flag_reg0_carry_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_32
       (.I0(Frame_Cnt1_n_102),
        .I1(PL_Done_Flag_reg2_n_103),
        .O(PL_Done_Flag_reg0_carry_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_33
       (.I0(Frame_Cnt1_n_103),
        .I1(PL_Done_Flag_reg2_n_104),
        .O(PL_Done_Flag_reg0_carry_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg0_carry_i_34
       (.I0(Frame_Cnt1_n_104),
        .I1(PL_Done_Flag_reg2_n_105),
        .O(PL_Done_Flag_reg0_carry_i_34_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_4
       (.I0(Frame_Cnt[9]),
        .I1(PL_Done_Flag_reg1[9]),
        .I2(Frame_Cnt[8]),
        .I3(PL_Done_Flag_reg1[8]),
        .O(PL_Done_Flag_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_5
       (.I0(Frame_Cnt[7]),
        .I1(PL_Done_Flag_reg1[7]),
        .I2(Frame_Cnt[6]),
        .I3(PL_Done_Flag_reg1[6]),
        .O(PL_Done_Flag_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_6
       (.I0(Frame_Cnt[5]),
        .I1(PL_Done_Flag_reg1[5]),
        .I2(Frame_Cnt[4]),
        .I3(PL_Done_Flag_reg1[4]),
        .O(PL_Done_Flag_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_7
       (.I0(Frame_Cnt[3]),
        .I1(PL_Done_Flag_reg1[3]),
        .I2(Frame_Cnt[2]),
        .I3(PL_Done_Flag_reg1[2]),
        .O(PL_Done_Flag_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PL_Done_Flag_reg0_carry_i_8
       (.I0(Frame_Cnt[1]),
        .I1(PL_Done_Flag_reg1[1]),
        .I2(Frame_Cnt[0]),
        .I3(PL_Done_Flag_reg1[0]),
        .O(PL_Done_Flag_reg0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PL_Done_Flag_reg0_carry_i_9
       (.I0(PL_Done_Flag_reg1[15]),
        .I1(Frame_Cnt[15]),
        .I2(PL_Done_Flag_reg1[14]),
        .I3(Frame_Cnt[14]),
        .O(PL_Done_Flag_reg0_carry_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    PL_Done_Flag_reg2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__0_n_10,Chirp_Cnt_EN3__85_carry__0_n_11,Chirp_Cnt_EN3__85_carry__0_n_12,Chirp_Cnt_EN3__85_carry__0_n_13,Chirp_Cnt_EN3__85_carry__0_n_14,Chirp_Cnt_EN3__85_carry__0_n_15,Chirp_Cnt_EN3__85_carry_n_8,Chirp_Cnt_EN3__85_carry_n_9,Chirp_Cnt_EN3__85_carry_n_10,Chirp_Cnt_EN3__85_carry_n_11,Chirp_Cnt_EN3__85_carry_n_12,Chirp_Cnt_EN3__85_carry_n_13,Chirp_Cnt_EN3__85_carry_n_14,Chirp_Cnt_EN3__85_carry_n_15,FMCW_Chirp_Cycle_us[2:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_PL_Done_Flag_reg2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,PL_Done_Flag_reg3}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_PL_Done_Flag_reg2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_PL_Done_Flag_reg2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_PL_Done_Flag_reg2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_PL_Done_Flag_reg2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_PL_Done_Flag_reg2_OVERFLOW_UNCONNECTED),
        .P({PL_Done_Flag_reg2_n_58,PL_Done_Flag_reg2_n_59,PL_Done_Flag_reg2_n_60,PL_Done_Flag_reg2_n_61,PL_Done_Flag_reg2_n_62,PL_Done_Flag_reg2_n_63,PL_Done_Flag_reg2_n_64,PL_Done_Flag_reg2_n_65,PL_Done_Flag_reg2_n_66,PL_Done_Flag_reg2_n_67,PL_Done_Flag_reg2_n_68,PL_Done_Flag_reg2_n_69,PL_Done_Flag_reg2_n_70,PL_Done_Flag_reg2_n_71,PL_Done_Flag_reg2_n_72,PL_Done_Flag_reg2_n_73,PL_Done_Flag_reg2_n_74,PL_Done_Flag_reg2_n_75,PL_Done_Flag_reg2_n_76,PL_Done_Flag_reg2_n_77,PL_Done_Flag_reg2_n_78,PL_Done_Flag_reg2_n_79,PL_Done_Flag_reg2_n_80,PL_Done_Flag_reg2_n_81,PL_Done_Flag_reg2_n_82,PL_Done_Flag_reg2_n_83,PL_Done_Flag_reg2_n_84,PL_Done_Flag_reg2_n_85,PL_Done_Flag_reg2_n_86,PL_Done_Flag_reg2_n_87,PL_Done_Flag_reg2_n_88,PL_Done_Flag_reg2_n_89,PL_Done_Flag_reg2_n_90,PL_Done_Flag_reg2_n_91,PL_Done_Flag_reg2_n_92,PL_Done_Flag_reg2_n_93,PL_Done_Flag_reg2_n_94,PL_Done_Flag_reg2_n_95,PL_Done_Flag_reg2_n_96,PL_Done_Flag_reg2_n_97,PL_Done_Flag_reg2_n_98,PL_Done_Flag_reg2_n_99,PL_Done_Flag_reg2_n_100,PL_Done_Flag_reg2_n_101,PL_Done_Flag_reg2_n_102,PL_Done_Flag_reg2_n_103,PL_Done_Flag_reg2_n_104,PL_Done_Flag_reg2_n_105}),
        .PATTERNBDETECT(NLW_PL_Done_Flag_reg2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_PL_Done_Flag_reg2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({PL_Done_Flag_reg2_n_106,PL_Done_Flag_reg2_n_107,PL_Done_Flag_reg2_n_108,PL_Done_Flag_reg2_n_109,PL_Done_Flag_reg2_n_110,PL_Done_Flag_reg2_n_111,PL_Done_Flag_reg2_n_112,PL_Done_Flag_reg2_n_113,PL_Done_Flag_reg2_n_114,PL_Done_Flag_reg2_n_115,PL_Done_Flag_reg2_n_116,PL_Done_Flag_reg2_n_117,PL_Done_Flag_reg2_n_118,PL_Done_Flag_reg2_n_119,PL_Done_Flag_reg2_n_120,PL_Done_Flag_reg2_n_121,PL_Done_Flag_reg2_n_122,PL_Done_Flag_reg2_n_123,PL_Done_Flag_reg2_n_124,PL_Done_Flag_reg2_n_125,PL_Done_Flag_reg2_n_126,PL_Done_Flag_reg2_n_127,PL_Done_Flag_reg2_n_128,PL_Done_Flag_reg2_n_129,PL_Done_Flag_reg2_n_130,PL_Done_Flag_reg2_n_131,PL_Done_Flag_reg2_n_132,PL_Done_Flag_reg2_n_133,PL_Done_Flag_reg2_n_134,PL_Done_Flag_reg2_n_135,PL_Done_Flag_reg2_n_136,PL_Done_Flag_reg2_n_137,PL_Done_Flag_reg2_n_138,PL_Done_Flag_reg2_n_139,PL_Done_Flag_reg2_n_140,PL_Done_Flag_reg2_n_141,PL_Done_Flag_reg2_n_142,PL_Done_Flag_reg2_n_143,PL_Done_Flag_reg2_n_144,PL_Done_Flag_reg2_n_145,PL_Done_Flag_reg2_n_146,PL_Done_Flag_reg2_n_147,PL_Done_Flag_reg2_n_148,PL_Done_Flag_reg2_n_149,PL_Done_Flag_reg2_n_150,PL_Done_Flag_reg2_n_151,PL_Done_Flag_reg2_n_152,PL_Done_Flag_reg2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_PL_Done_Flag_reg2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_PL_Done_Flag_reg2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    PL_Done_Flag_reg2__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PL_Done_Flag_reg3}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_PL_Done_Flag_reg2__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,Chirp_Cnt_EN3__85_carry__2_n_11,Chirp_Cnt_EN3__85_carry__2_n_12,Chirp_Cnt_EN3__85_carry__2_n_13,Chirp_Cnt_EN3__85_carry__2_n_14,Chirp_Cnt_EN3__85_carry__2_n_15,Chirp_Cnt_EN3__85_carry__1_n_8,Chirp_Cnt_EN3__85_carry__1_n_9,Chirp_Cnt_EN3__85_carry__1_n_10,Chirp_Cnt_EN3__85_carry__1_n_11,Chirp_Cnt_EN3__85_carry__1_n_12,Chirp_Cnt_EN3__85_carry__1_n_13,Chirp_Cnt_EN3__85_carry__1_n_14,Chirp_Cnt_EN3__85_carry__1_n_15,Chirp_Cnt_EN3__85_carry__0_n_8,Chirp_Cnt_EN3__85_carry__0_n_9}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_PL_Done_Flag_reg2__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_PL_Done_Flag_reg2__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_PL_Done_Flag_reg2__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_PL_Done_Flag_reg2__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_PL_Done_Flag_reg2__0_OVERFLOW_UNCONNECTED),
        .P({PL_Done_Flag_reg2__0_n_58,PL_Done_Flag_reg2__0_n_59,PL_Done_Flag_reg2__0_n_60,PL_Done_Flag_reg2__0_n_61,PL_Done_Flag_reg2__0_n_62,PL_Done_Flag_reg2__0_n_63,PL_Done_Flag_reg2__0_n_64,PL_Done_Flag_reg2__0_n_65,PL_Done_Flag_reg2__0_n_66,PL_Done_Flag_reg2__0_n_67,PL_Done_Flag_reg2__0_n_68,PL_Done_Flag_reg2__0_n_69,PL_Done_Flag_reg2__0_n_70,PL_Done_Flag_reg2__0_n_71,PL_Done_Flag_reg2__0_n_72,PL_Done_Flag_reg2__0_n_73,PL_Done_Flag_reg2__0_n_74,PL_Done_Flag_reg2__0_n_75,PL_Done_Flag_reg2__0_n_76,PL_Done_Flag_reg2__0_n_77,PL_Done_Flag_reg2__0_n_78,PL_Done_Flag_reg2__0_n_79,PL_Done_Flag_reg2__0_n_80,PL_Done_Flag_reg2__0_n_81,PL_Done_Flag_reg2__0_n_82,PL_Done_Flag_reg2__0_n_83,PL_Done_Flag_reg2__0_n_84,PL_Done_Flag_reg2__0_n_85,PL_Done_Flag_reg2__0_n_86,PL_Done_Flag_reg2__0_n_87,PL_Done_Flag_reg2__0_n_88,PL_Done_Flag_reg2__0_n_89,PL_Done_Flag_reg2__0_n_90,PL_Done_Flag_reg2__0_n_91,PL_Done_Flag_reg2__0_n_92,PL_Done_Flag_reg2__0_n_93,PL_Done_Flag_reg2__0_n_94,PL_Done_Flag_reg2__0_n_95,PL_Done_Flag_reg2__0_n_96,PL_Done_Flag_reg2__0_n_97,PL_Done_Flag_reg2__0_n_98,PL_Done_Flag_reg2__0_n_99,PL_Done_Flag_reg2__0_n_100,PL_Done_Flag_reg2__0_n_101,PL_Done_Flag_reg2__0_n_102,PL_Done_Flag_reg2__0_n_103,PL_Done_Flag_reg2__0_n_104,PL_Done_Flag_reg2__0_n_105}),
        .PATTERNBDETECT(NLW_PL_Done_Flag_reg2__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_PL_Done_Flag_reg2__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({PL_Done_Flag_reg2_n_106,PL_Done_Flag_reg2_n_107,PL_Done_Flag_reg2_n_108,PL_Done_Flag_reg2_n_109,PL_Done_Flag_reg2_n_110,PL_Done_Flag_reg2_n_111,PL_Done_Flag_reg2_n_112,PL_Done_Flag_reg2_n_113,PL_Done_Flag_reg2_n_114,PL_Done_Flag_reg2_n_115,PL_Done_Flag_reg2_n_116,PL_Done_Flag_reg2_n_117,PL_Done_Flag_reg2_n_118,PL_Done_Flag_reg2_n_119,PL_Done_Flag_reg2_n_120,PL_Done_Flag_reg2_n_121,PL_Done_Flag_reg2_n_122,PL_Done_Flag_reg2_n_123,PL_Done_Flag_reg2_n_124,PL_Done_Flag_reg2_n_125,PL_Done_Flag_reg2_n_126,PL_Done_Flag_reg2_n_127,PL_Done_Flag_reg2_n_128,PL_Done_Flag_reg2_n_129,PL_Done_Flag_reg2_n_130,PL_Done_Flag_reg2_n_131,PL_Done_Flag_reg2_n_132,PL_Done_Flag_reg2_n_133,PL_Done_Flag_reg2_n_134,PL_Done_Flag_reg2_n_135,PL_Done_Flag_reg2_n_136,PL_Done_Flag_reg2_n_137,PL_Done_Flag_reg2_n_138,PL_Done_Flag_reg2_n_139,PL_Done_Flag_reg2_n_140,PL_Done_Flag_reg2_n_141,PL_Done_Flag_reg2_n_142,PL_Done_Flag_reg2_n_143,PL_Done_Flag_reg2_n_144,PL_Done_Flag_reg2_n_145,PL_Done_Flag_reg2_n_146,PL_Done_Flag_reg2_n_147,PL_Done_Flag_reg2_n_148,PL_Done_Flag_reg2_n_149,PL_Done_Flag_reg2_n_150,PL_Done_Flag_reg2_n_151,PL_Done_Flag_reg2_n_152,PL_Done_Flag_reg2_n_153}),
        .PCOUT(NLW_PL_Done_Flag_reg2__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_PL_Done_Flag_reg2__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_PL_Done_Flag_reg2__0_XOROUT_UNCONNECTED[7:0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    PL_Done_Flag_reg2_i_1
       (.I0(FMCW_Chirp_Number[15]),
        .I1(FMCW_Chirp_Number[13]),
        .I2(FMCW_Chirp_Number[11]),
        .I3(PL_Done_Flag_reg2_i_18_n_0),
        .I4(FMCW_Chirp_Number[12]),
        .I5(FMCW_Chirp_Number[14]),
        .O(PL_Done_Flag_reg3[16]));
  LUT3 #(
    .INIT(8'h78)) 
    PL_Done_Flag_reg2_i_10
       (.I0(PL_Done_Flag_reg2_i_19_n_0),
        .I1(FMCW_Chirp_Number[6]),
        .I2(FMCW_Chirp_Number[7]),
        .O(PL_Done_Flag_reg3[7]));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg2_i_11
       (.I0(PL_Done_Flag_reg2_i_19_n_0),
        .I1(FMCW_Chirp_Number[6]),
        .O(PL_Done_Flag_reg3[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    PL_Done_Flag_reg2_i_12
       (.I0(FMCW_Chirp_Number[3]),
        .I1(FMCW_Chirp_Number[1]),
        .I2(FMCW_Chirp_Number[0]),
        .I3(FMCW_Chirp_Number[2]),
        .I4(FMCW_Chirp_Number[4]),
        .I5(FMCW_Chirp_Number[5]),
        .O(PL_Done_Flag_reg3[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    PL_Done_Flag_reg2_i_13
       (.I0(FMCW_Chirp_Number[2]),
        .I1(FMCW_Chirp_Number[0]),
        .I2(FMCW_Chirp_Number[1]),
        .I3(FMCW_Chirp_Number[3]),
        .I4(FMCW_Chirp_Number[4]),
        .O(PL_Done_Flag_reg3[4]));
  LUT4 #(
    .INIT(16'h7F80)) 
    PL_Done_Flag_reg2_i_14
       (.I0(FMCW_Chirp_Number[1]),
        .I1(FMCW_Chirp_Number[0]),
        .I2(FMCW_Chirp_Number[2]),
        .I3(FMCW_Chirp_Number[3]),
        .O(PL_Done_Flag_reg3[3]));
  LUT3 #(
    .INIT(8'h78)) 
    PL_Done_Flag_reg2_i_15
       (.I0(FMCW_Chirp_Number[0]),
        .I1(FMCW_Chirp_Number[1]),
        .I2(FMCW_Chirp_Number[2]),
        .O(PL_Done_Flag_reg3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg2_i_16
       (.I0(FMCW_Chirp_Number[0]),
        .I1(FMCW_Chirp_Number[1]),
        .O(PL_Done_Flag_reg3[1]));
  LUT1 #(
    .INIT(2'h1)) 
    PL_Done_Flag_reg2_i_17
       (.I0(FMCW_Chirp_Number[0]),
        .O(PL_Done_Flag_reg3[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    PL_Done_Flag_reg2_i_18
       (.I0(FMCW_Chirp_Number[10]),
        .I1(FMCW_Chirp_Number[8]),
        .I2(FMCW_Chirp_Number[6]),
        .I3(PL_Done_Flag_reg2_i_19_n_0),
        .I4(FMCW_Chirp_Number[7]),
        .I5(FMCW_Chirp_Number[9]),
        .O(PL_Done_Flag_reg2_i_18_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    PL_Done_Flag_reg2_i_19
       (.I0(FMCW_Chirp_Number[5]),
        .I1(FMCW_Chirp_Number[3]),
        .I2(FMCW_Chirp_Number[1]),
        .I3(FMCW_Chirp_Number[0]),
        .I4(FMCW_Chirp_Number[2]),
        .I5(FMCW_Chirp_Number[4]),
        .O(PL_Done_Flag_reg2_i_19_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    PL_Done_Flag_reg2_i_2
       (.I0(FMCW_Chirp_Number[13]),
        .I1(FMCW_Chirp_Number[11]),
        .I2(PL_Done_Flag_reg2_i_18_n_0),
        .I3(FMCW_Chirp_Number[12]),
        .I4(FMCW_Chirp_Number[14]),
        .I5(FMCW_Chirp_Number[15]),
        .O(PL_Done_Flag_reg3[15]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    PL_Done_Flag_reg2_i_3
       (.I0(FMCW_Chirp_Number[12]),
        .I1(PL_Done_Flag_reg2_i_18_n_0),
        .I2(FMCW_Chirp_Number[11]),
        .I3(FMCW_Chirp_Number[13]),
        .I4(FMCW_Chirp_Number[14]),
        .O(PL_Done_Flag_reg3[14]));
  LUT4 #(
    .INIT(16'h7F80)) 
    PL_Done_Flag_reg2_i_4
       (.I0(FMCW_Chirp_Number[11]),
        .I1(PL_Done_Flag_reg2_i_18_n_0),
        .I2(FMCW_Chirp_Number[12]),
        .I3(FMCW_Chirp_Number[13]),
        .O(PL_Done_Flag_reg3[13]));
  LUT3 #(
    .INIT(8'h78)) 
    PL_Done_Flag_reg2_i_5
       (.I0(PL_Done_Flag_reg2_i_18_n_0),
        .I1(FMCW_Chirp_Number[11]),
        .I2(FMCW_Chirp_Number[12]),
        .O(PL_Done_Flag_reg3[12]));
  LUT2 #(
    .INIT(4'h6)) 
    PL_Done_Flag_reg2_i_6
       (.I0(PL_Done_Flag_reg2_i_18_n_0),
        .I1(FMCW_Chirp_Number[11]),
        .O(PL_Done_Flag_reg3[11]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    PL_Done_Flag_reg2_i_7
       (.I0(FMCW_Chirp_Number[8]),
        .I1(FMCW_Chirp_Number[6]),
        .I2(PL_Done_Flag_reg2_i_19_n_0),
        .I3(FMCW_Chirp_Number[7]),
        .I4(FMCW_Chirp_Number[9]),
        .I5(FMCW_Chirp_Number[10]),
        .O(PL_Done_Flag_reg3[10]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    PL_Done_Flag_reg2_i_8
       (.I0(FMCW_Chirp_Number[7]),
        .I1(PL_Done_Flag_reg2_i_19_n_0),
        .I2(FMCW_Chirp_Number[6]),
        .I3(FMCW_Chirp_Number[8]),
        .I4(FMCW_Chirp_Number[9]),
        .O(PL_Done_Flag_reg3[9]));
  LUT4 #(
    .INIT(16'h7F80)) 
    PL_Done_Flag_reg2_i_9
       (.I0(FMCW_Chirp_Number[6]),
        .I1(PL_Done_Flag_reg2_i_19_n_0),
        .I2(FMCW_Chirp_Number[7]),
        .I3(FMCW_Chirp_Number[8]),
        .O(PL_Done_Flag_reg3[8]));
  (* KEEP = "yes" *) 
  FDRE USER_RST_N_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg4_reg_n_0_[0] ),
        .Q(USER_RST_N),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(sel0[3]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(p_0_in__0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(p_0_in__0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(p_0_in__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in__0[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg8[0]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[0]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[0]_i_2_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg7[0]),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[0]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg8[10]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[10]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg7[10]),
        .I1(\slv_reg6_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[10]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg8[11]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[11]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg7[11]),
        .I1(\slv_reg6_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[11]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg8[12]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[12]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg7[12]),
        .I1(\slv_reg6_reg_n_0_[12] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[12]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg8[13]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[13]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg7[13]),
        .I1(\slv_reg6_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[13]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg8[14]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[14]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg7[14]),
        .I1(\slv_reg6_reg_n_0_[14] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[14]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg8[15]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[15]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg7[15]),
        .I1(\slv_reg6_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[15]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg8[16]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[16]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(p_2_in[0]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(slv_reg7[16]),
        .I1(\slv_reg6_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[16] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg8[17]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[17]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(p_2_in[1]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(slv_reg7[17]),
        .I1(\slv_reg6_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[17] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg8[18]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[18]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(p_2_in[2]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(slv_reg7[18]),
        .I1(\slv_reg6_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[18] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg8[19]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[19]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(p_2_in[3]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(slv_reg7[19]),
        .I1(\slv_reg6_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[19] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg8[1]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[1]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[1]_i_2_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg7[1]),
        .I1(\slv_reg6_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[1]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg8[20]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[20]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(p_2_in[4]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(slv_reg7[20]),
        .I1(\slv_reg6_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[20] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg8[21]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[21]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(p_2_in[5]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg7[21]),
        .I1(\slv_reg6_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[21] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg8[22]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[22]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(p_2_in[6]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg7[22]),
        .I1(\slv_reg6_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[22] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg8[23]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[23]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(p_2_in[7]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg7[23]),
        .I1(\slv_reg6_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[23] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg8[24]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[24]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(p_2_in[8]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg7[24]),
        .I1(\slv_reg6_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[24] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg8[25]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[25]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(p_2_in[9]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg7[25]),
        .I1(\slv_reg6_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[25] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg8[26]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[26]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(p_2_in[10]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg7[26]),
        .I1(\slv_reg6_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[26] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg8[27]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[27]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(p_2_in[11]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg7[27]),
        .I1(\slv_reg6_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[27] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg8[28]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[28]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(p_2_in[12]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg7[28]),
        .I1(\slv_reg6_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[28] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg8[29]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[29]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(p_2_in[13]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg7[29]),
        .I1(\slv_reg6_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[29] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg8[2]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[2]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[2]_i_2_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg7[2]),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[2]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg8[30]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[30]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(p_2_in[14]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg7[30]),
        .I1(\slv_reg6_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[30] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg8[31]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[31]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[31]_i_4_n_0 ),
        .O(reg_data_out[31]));
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_rdata[31]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[31]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(p_2_in[15]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0[31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg7[31]),
        .I1(\slv_reg6_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[31] ),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg8[3]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[3]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[3]_i_2_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg7[3]),
        .I1(\slv_reg6_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[3]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg8[4]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[4]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[4]_i_2_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg7[4]),
        .I1(\slv_reg6_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[4]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg8[5]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[5]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[5]_i_2_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg7[5]),
        .I1(\slv_reg6_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[5]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg8[6]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[6]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[6]_i_2_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg7[6]),
        .I1(\slv_reg6_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[6]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg8[7]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[7]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[7]_i_2_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg7[7]),
        .I1(\slv_reg6_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[7]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg8[8]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[8]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[8]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg7[8]),
        .I1(\slv_reg6_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[8]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg8[9]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(slv_reg9[9]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg7[9]),
        .I1(\slv_reg6_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(p_1_in__0[9]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_3_n_0 ),
        .I1(\axi_rdata[0]_i_4_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_3_n_0 ),
        .I1(\axi_rdata[10]_i_4_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_3_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_3_n_0 ),
        .I1(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_3_n_0 ),
        .I1(\axi_rdata[13]_i_4_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(\axi_rdata[14]_i_4_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_3_n_0 ),
        .I1(\axi_rdata[15]_i_4_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_3_n_0 ),
        .I1(\axi_rdata[16]_i_4_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_3_n_0 ),
        .I1(\axi_rdata[17]_i_4_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_3_n_0 ),
        .I1(\axi_rdata[18]_i_4_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_3_n_0 ),
        .I1(\axi_rdata[19]_i_4_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_3_n_0 ),
        .I1(\axi_rdata[1]_i_4_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_3_n_0 ),
        .I1(\axi_rdata[20]_i_4_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_3_n_0 ),
        .I1(\axi_rdata[21]_i_4_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_3_n_0 ),
        .I1(\axi_rdata[22]_i_4_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_3_n_0 ),
        .I1(\axi_rdata[23]_i_4_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_3_n_0 ),
        .I1(\axi_rdata[24]_i_4_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_3_n_0 ),
        .I1(\axi_rdata[25]_i_4_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata[26]_i_4_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_3_n_0 ),
        .I1(\axi_rdata[27]_i_4_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_3_n_0 ),
        .I1(\axi_rdata[28]_i_4_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(\axi_rdata[29]_i_4_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_3_n_0 ),
        .I1(\axi_rdata[2]_i_4_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_3_n_0 ),
        .I1(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_5_n_0 ),
        .I1(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_3_n_0 ),
        .I1(\axi_rdata[3]_i_4_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_3_n_0 ),
        .I1(\axi_rdata[4]_i_4_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_3_n_0 ),
        .I1(\axi_rdata[5]_i_4_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_3_n_0 ),
        .I1(\axi_rdata[6]_i_4_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_3_n_0 ),
        .I1(\axi_rdata[7]_i_4_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_3_n_0 ),
        .I1(\axi_rdata[8]_i_4_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_3_n_0 ),
        .I1(\axi_rdata[9]_i_4_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[0]),
        .Q(cal_delay_num[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[10]),
        .Q(cal_delay_num[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[11]),
        .Q(cal_delay_num[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[12]),
        .Q(cal_delay_num[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[13]),
        .Q(cal_delay_num[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[14]),
        .Q(cal_delay_num[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[15]),
        .Q(cal_delay_num[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[16]),
        .Q(cal_delay_num[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[17]),
        .Q(cal_delay_num[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[18]),
        .Q(cal_delay_num[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[19]),
        .Q(cal_delay_num[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[1]),
        .Q(cal_delay_num[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[20]),
        .Q(cal_delay_num[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[21]),
        .Q(cal_delay_num[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[22]),
        .Q(cal_delay_num[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[23]),
        .Q(cal_delay_num[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[24]),
        .Q(cal_delay_num[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[25]),
        .Q(cal_delay_num[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[26]),
        .Q(cal_delay_num[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[27]),
        .Q(cal_delay_num[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[28]),
        .Q(cal_delay_num[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[29]),
        .Q(cal_delay_num[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[2]),
        .Q(cal_delay_num[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[30]),
        .Q(cal_delay_num[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[31]),
        .Q(cal_delay_num[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[3]),
        .Q(cal_delay_num[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[4]),
        .Q(cal_delay_num[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[5]),
        .Q(cal_delay_num[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[6]),
        .Q(cal_delay_num[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[7]),
        .Q(cal_delay_num[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[8]),
        .Q(cal_delay_num[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \cal_delay_num_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slv_reg7[9]),
        .Q(cal_delay_num[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry__0_i_1
       (.I0(Chirp_Cnt[31]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_11),
        .I2(Chirp_Cnt[30]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(Chirp_Cnt[28]),
        .I1(Chirp_Cnt_EN3__85_carry__2_n_13),
        .I2(Chirp_Cnt[29]),
        .I3(Chirp_Cnt_EN3__85_carry__2_n_12),
        .I4(Chirp_Cnt_EN3__85_carry__2_n_14),
        .I5(Chirp_Cnt[27]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(Chirp_Cnt[24]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_9),
        .I2(Chirp_Cnt[25]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_8),
        .I4(Chirp_Cnt_EN3__85_carry__2_n_15),
        .I5(Chirp_Cnt[26]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(Chirp_Cnt[22]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_11),
        .I2(Chirp_Cnt[23]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_10),
        .I4(Chirp_Cnt_EN3__85_carry__1_n_12),
        .I5(Chirp_Cnt[21]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Chirp_Cnt[18]),
        .I1(Chirp_Cnt_EN3__85_carry__1_n_15),
        .I2(Chirp_Cnt[19]),
        .I3(Chirp_Cnt_EN3__85_carry__1_n_14),
        .I4(Chirp_Cnt_EN3__85_carry__1_n_13),
        .I5(Chirp_Cnt[20]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Chirp_Cnt[16]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_9),
        .I2(Chirp_Cnt[17]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_8),
        .I4(Chirp_Cnt_EN3__85_carry__0_n_10),
        .I5(Chirp_Cnt[15]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Chirp_Cnt[12]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_13),
        .I2(Chirp_Cnt[13]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_12),
        .I4(Chirp_Cnt_EN3__85_carry__0_n_11),
        .I5(Chirp_Cnt[14]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_5
       (.I0(Chirp_Cnt[10]),
        .I1(Chirp_Cnt_EN3__85_carry__0_n_15),
        .I2(Chirp_Cnt[11]),
        .I3(Chirp_Cnt_EN3__85_carry__0_n_14),
        .I4(Chirp_Cnt_EN3__85_carry_n_8),
        .I5(Chirp_Cnt[9]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_6
       (.I0(Chirp_Cnt[6]),
        .I1(Chirp_Cnt_EN3__85_carry_n_11),
        .I2(Chirp_Cnt[7]),
        .I3(Chirp_Cnt_EN3__85_carry_n_10),
        .I4(Chirp_Cnt_EN3__85_carry_n_9),
        .I5(Chirp_Cnt[8]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_7
       (.I0(Chirp_Cnt[4]),
        .I1(Chirp_Cnt_EN3__85_carry_n_13),
        .I2(Chirp_Cnt[5]),
        .I3(Chirp_Cnt_EN3__85_carry_n_12),
        .I4(Chirp_Cnt_EN3__85_carry_n_14),
        .I5(Chirp_Cnt[3]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_8
       (.I0(FMCW_Chirp_Cycle_us[1]),
        .I1(Chirp_Cnt[0]),
        .I2(FMCW_Chirp_Cycle_us[2]),
        .I3(Chirp_Cnt[1]),
        .I4(Chirp_Cnt_EN3__85_carry_n_15),
        .I5(Chirp_Cnt[2]),
        .O(i__carry_i_8_n_0));
  CARRY8 p_1_out_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3,p_1_out_carry_n_4,p_1_out_carry_n_5,p_1_out_carry_n_6,p_1_out_carry_n_7}),
        .DI(Chirp_Cnt_EN1[7:0]),
        .O(NLW_p_1_out_carry_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0,p_1_out_carry_i_5_n_0,p_1_out_carry_i_6_n_0,p_1_out_carry_i_7_n_0,p_1_out_carry_i_8_n_0,p_1_out_carry_i_9_n_0}));
  CARRY8 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3,p_1_out_carry__0_n_4,p_1_out_carry__0_n_5,p_1_out_carry__0_n_6,p_1_out_carry__0_n_7}),
        .DI(Chirp_Cnt_EN1[15:8]),
        .O(NLW_p_1_out_carry__0_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0,p_1_out_carry__0_i_5_n_0,p_1_out_carry__0_i_6_n_0,p_1_out_carry__0_i_7_n_0,p_1_out_carry__0_i_8_n_0,p_1_out_carry__0_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 p_1_out_carry__0_i_1
       (.CI(p_1_out_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_1_n_1,p_1_out_carry__0_i_1_n_2,p_1_out_carry__0_i_1_n_3,p_1_out_carry__0_i_1_n_4,p_1_out_carry__0_i_1_n_5,p_1_out_carry__0_i_1_n_6,p_1_out_carry__0_i_1_n_7}),
        .DI({Frame_Cnt1_n_89,Frame_Cnt1_n_90,Frame_Cnt1_n_91,Frame_Cnt1_n_92,Frame_Cnt1_n_93,Frame_Cnt1_n_94,Frame_Cnt1_n_95,Frame_Cnt1_n_96}),
        .O(Chirp_Cnt_EN1[15:8]),
        .S({p_1_out_carry__0_i_10_n_0,p_1_out_carry__0_i_11_n_0,p_1_out_carry__0_i_12_n_0,p_1_out_carry__0_i_13_n_0,p_1_out_carry__0_i_14_n_0,p_1_out_carry__0_i_15_n_0,p_1_out_carry__0_i_16_n_0,p_1_out_carry__0_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_10
       (.I0(Frame_Cnt1_n_89),
        .I1(Chirp_Cnt_EN2_n_90),
        .O(p_1_out_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_11
       (.I0(Frame_Cnt1_n_90),
        .I1(Chirp_Cnt_EN2_n_91),
        .O(p_1_out_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_12
       (.I0(Frame_Cnt1_n_91),
        .I1(Chirp_Cnt_EN2_n_92),
        .O(p_1_out_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_13
       (.I0(Frame_Cnt1_n_92),
        .I1(Chirp_Cnt_EN2_n_93),
        .O(p_1_out_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_14
       (.I0(Frame_Cnt1_n_93),
        .I1(Chirp_Cnt_EN2_n_94),
        .O(p_1_out_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_15
       (.I0(Frame_Cnt1_n_94),
        .I1(Chirp_Cnt_EN2_n_95),
        .O(p_1_out_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_16
       (.I0(Frame_Cnt1_n_95),
        .I1(Chirp_Cnt_EN2_n_96),
        .O(p_1_out_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__0_i_17
       (.I0(Frame_Cnt1_n_96),
        .I1(Chirp_Cnt_EN2_n_97),
        .O(p_1_out_carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2
       (.I0(Chirp_Cnt_EN1[15]),
        .I1(Frame_Cnt[15]),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3
       (.I0(Chirp_Cnt_EN1[14]),
        .I1(Frame_Cnt[14]),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4
       (.I0(Chirp_Cnt_EN1[13]),
        .I1(Frame_Cnt[13]),
        .O(p_1_out_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_5
       (.I0(Chirp_Cnt_EN1[12]),
        .I1(Frame_Cnt[12]),
        .O(p_1_out_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_6
       (.I0(Chirp_Cnt_EN1[11]),
        .I1(Frame_Cnt[11]),
        .O(p_1_out_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_7
       (.I0(Chirp_Cnt_EN1[10]),
        .I1(Frame_Cnt[10]),
        .O(p_1_out_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_8
       (.I0(Chirp_Cnt_EN1[9]),
        .I1(Frame_Cnt[9]),
        .O(p_1_out_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_9
       (.I0(Chirp_Cnt_EN1[8]),
        .I1(Frame_Cnt[8]),
        .O(p_1_out_carry__0_i_9_n_0));
  CARRY8 p_1_out_carry__1
       (.CI(p_1_out_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__1_n_0,p_1_out_carry__1_n_1,p_1_out_carry__1_n_2,p_1_out_carry__1_n_3,p_1_out_carry__1_n_4,p_1_out_carry__1_n_5,p_1_out_carry__1_n_6,p_1_out_carry__1_n_7}),
        .DI(Chirp_Cnt_EN1[23:16]),
        .O(NLW_p_1_out_carry__1_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry__1_i_2_n_0,p_1_out_carry__1_i_3_n_0,p_1_out_carry__1_i_4_n_0,p_1_out_carry__1_i_5_n_0,p_1_out_carry__1_i_6_n_0,p_1_out_carry__1_i_7_n_0,p_1_out_carry__1_i_8_n_0,p_1_out_carry__1_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 p_1_out_carry__1_i_1
       (.CI(p_1_out_carry__0_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__1_i_1_n_0,p_1_out_carry__1_i_1_n_1,p_1_out_carry__1_i_1_n_2,p_1_out_carry__1_i_1_n_3,p_1_out_carry__1_i_1_n_4,p_1_out_carry__1_i_1_n_5,p_1_out_carry__1_i_1_n_6,p_1_out_carry__1_i_1_n_7}),
        .DI({Frame_Cnt1_n_81,Frame_Cnt1_n_82,Frame_Cnt1_n_83,Frame_Cnt1_n_84,Frame_Cnt1_n_85,Frame_Cnt1_n_86,Frame_Cnt1_n_87,Frame_Cnt1_n_88}),
        .O(Chirp_Cnt_EN1[23:16]),
        .S({p_1_out_carry__1_i_10_n_0,p_1_out_carry__1_i_11_n_0,p_1_out_carry__1_i_12_n_0,p_1_out_carry__1_i_13_n_0,p_1_out_carry__1_i_14_n_0,p_1_out_carry__1_i_15_n_0,p_1_out_carry__1_i_16_n_0,p_1_out_carry__1_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_10
       (.I0(Frame_Cnt1_n_81),
        .I1(Chirp_Cnt_EN2__0_n_99),
        .O(p_1_out_carry__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_11
       (.I0(Frame_Cnt1_n_82),
        .I1(Chirp_Cnt_EN2__0_n_100),
        .O(p_1_out_carry__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_12
       (.I0(Frame_Cnt1_n_83),
        .I1(Chirp_Cnt_EN2__0_n_101),
        .O(p_1_out_carry__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_13
       (.I0(Frame_Cnt1_n_84),
        .I1(Chirp_Cnt_EN2__0_n_102),
        .O(p_1_out_carry__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_14
       (.I0(Frame_Cnt1_n_85),
        .I1(Chirp_Cnt_EN2__0_n_103),
        .O(p_1_out_carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_15
       (.I0(Frame_Cnt1_n_86),
        .I1(Chirp_Cnt_EN2__0_n_104),
        .O(p_1_out_carry__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_16
       (.I0(Frame_Cnt1_n_87),
        .I1(Chirp_Cnt_EN2__0_n_105),
        .O(p_1_out_carry__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__1_i_17
       (.I0(Frame_Cnt1_n_88),
        .I1(Chirp_Cnt_EN2_n_89),
        .O(p_1_out_carry__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_2
       (.I0(Chirp_Cnt_EN1[23]),
        .I1(Frame_Cnt[23]),
        .O(p_1_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_3
       (.I0(Chirp_Cnt_EN1[22]),
        .I1(Frame_Cnt[22]),
        .O(p_1_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_4
       (.I0(Chirp_Cnt_EN1[21]),
        .I1(Frame_Cnt[21]),
        .O(p_1_out_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_5
       (.I0(Chirp_Cnt_EN1[20]),
        .I1(Frame_Cnt[20]),
        .O(p_1_out_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_6
       (.I0(Chirp_Cnt_EN1[19]),
        .I1(Frame_Cnt[19]),
        .O(p_1_out_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_7
       (.I0(Chirp_Cnt_EN1[18]),
        .I1(Frame_Cnt[18]),
        .O(p_1_out_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_8
       (.I0(Chirp_Cnt_EN1[17]),
        .I1(Frame_Cnt[17]),
        .O(p_1_out_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_9
       (.I0(Chirp_Cnt_EN1[16]),
        .I1(Frame_Cnt[16]),
        .O(p_1_out_carry__1_i_9_n_0));
  CARRY8 p_1_out_carry__2
       (.CI(p_1_out_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__2_n_0,p_1_out_carry__2_n_1,p_1_out_carry__2_n_2,p_1_out_carry__2_n_3,p_1_out_carry__2_n_4,p_1_out_carry__2_n_5,p_1_out_carry__2_n_6,p_1_out_carry__2_n_7}),
        .DI(Chirp_Cnt_EN1[31:24]),
        .O(NLW_p_1_out_carry__2_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry__2_i_2_n_0,p_1_out_carry__2_i_3_n_0,p_1_out_carry__2_i_4_n_0,p_1_out_carry__2_i_5_n_0,p_1_out_carry__2_i_6_n_0,p_1_out_carry__2_i_7_n_0,p_1_out_carry__2_i_8_n_0,p_1_out_carry__2_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 p_1_out_carry__2_i_1
       (.CI(p_1_out_carry__1_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_p_1_out_carry__2_i_1_CO_UNCONNECTED[7],p_1_out_carry__2_i_1_n_1,p_1_out_carry__2_i_1_n_2,p_1_out_carry__2_i_1_n_3,p_1_out_carry__2_i_1_n_4,p_1_out_carry__2_i_1_n_5,p_1_out_carry__2_i_1_n_6,p_1_out_carry__2_i_1_n_7}),
        .DI({1'b0,Frame_Cnt1_n_74,Frame_Cnt1_n_75,Frame_Cnt1_n_76,Frame_Cnt1_n_77,Frame_Cnt1_n_78,Frame_Cnt1_n_79,Frame_Cnt1_n_80}),
        .O(Chirp_Cnt_EN1[31:24]),
        .S({Chirp_Cnt_EN2__0_n_91,p_1_out_carry__2_i_10_n_0,p_1_out_carry__2_i_11_n_0,p_1_out_carry__2_i_12_n_0,p_1_out_carry__2_i_13_n_0,p_1_out_carry__2_i_14_n_0,p_1_out_carry__2_i_15_n_0,p_1_out_carry__2_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_10
       (.I0(Frame_Cnt1_n_74),
        .I1(Chirp_Cnt_EN2__0_n_92),
        .O(p_1_out_carry__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_11
       (.I0(Frame_Cnt1_n_75),
        .I1(Chirp_Cnt_EN2__0_n_93),
        .O(p_1_out_carry__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_12
       (.I0(Frame_Cnt1_n_76),
        .I1(Chirp_Cnt_EN2__0_n_94),
        .O(p_1_out_carry__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_13
       (.I0(Frame_Cnt1_n_77),
        .I1(Chirp_Cnt_EN2__0_n_95),
        .O(p_1_out_carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_14
       (.I0(Frame_Cnt1_n_78),
        .I1(Chirp_Cnt_EN2__0_n_96),
        .O(p_1_out_carry__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_15
       (.I0(Frame_Cnt1_n_79),
        .I1(Chirp_Cnt_EN2__0_n_97),
        .O(p_1_out_carry__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry__2_i_16
       (.I0(Frame_Cnt1_n_80),
        .I1(Chirp_Cnt_EN2__0_n_98),
        .O(p_1_out_carry__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_2
       (.I0(Chirp_Cnt_EN1[31]),
        .I1(Frame_Cnt[31]),
        .O(p_1_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_3
       (.I0(Chirp_Cnt_EN1[30]),
        .I1(Frame_Cnt[30]),
        .O(p_1_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_4
       (.I0(Chirp_Cnt_EN1[29]),
        .I1(Frame_Cnt[29]),
        .O(p_1_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_5
       (.I0(Chirp_Cnt_EN1[28]),
        .I1(Frame_Cnt[28]),
        .O(p_1_out_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_6
       (.I0(Chirp_Cnt_EN1[27]),
        .I1(Frame_Cnt[27]),
        .O(p_1_out_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_7
       (.I0(Chirp_Cnt_EN1[26]),
        .I1(Frame_Cnt[26]),
        .O(p_1_out_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_8
       (.I0(Chirp_Cnt_EN1[25]),
        .I1(Frame_Cnt[25]),
        .O(p_1_out_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_9
       (.I0(Chirp_Cnt_EN1[24]),
        .I1(Frame_Cnt[24]),
        .O(p_1_out_carry__2_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 p_1_out_carry_i_1
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry_i_1_n_0,p_1_out_carry_i_1_n_1,p_1_out_carry_i_1_n_2,p_1_out_carry_i_1_n_3,p_1_out_carry_i_1_n_4,p_1_out_carry_i_1_n_5,p_1_out_carry_i_1_n_6,p_1_out_carry_i_1_n_7}),
        .DI({Frame_Cnt1_n_97,Frame_Cnt1_n_98,Frame_Cnt1_n_99,Frame_Cnt1_n_100,Frame_Cnt1_n_101,Frame_Cnt1_n_102,Frame_Cnt1_n_103,Frame_Cnt1_n_104}),
        .O(Chirp_Cnt_EN1[7:0]),
        .S({p_1_out_carry_i_10_n_0,p_1_out_carry_i_11_n_0,p_1_out_carry_i_12_n_0,p_1_out_carry_i_13_n_0,p_1_out_carry_i_14_n_0,p_1_out_carry_i_15_n_0,p_1_out_carry_i_16_n_0,p_1_out_carry_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_10
       (.I0(Frame_Cnt1_n_97),
        .I1(Chirp_Cnt_EN2_n_98),
        .O(p_1_out_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_11
       (.I0(Frame_Cnt1_n_98),
        .I1(Chirp_Cnt_EN2_n_99),
        .O(p_1_out_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_12
       (.I0(Frame_Cnt1_n_99),
        .I1(Chirp_Cnt_EN2_n_100),
        .O(p_1_out_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_13
       (.I0(Frame_Cnt1_n_100),
        .I1(Chirp_Cnt_EN2_n_101),
        .O(p_1_out_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_14
       (.I0(Frame_Cnt1_n_101),
        .I1(Chirp_Cnt_EN2_n_102),
        .O(p_1_out_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_15
       (.I0(Frame_Cnt1_n_102),
        .I1(Chirp_Cnt_EN2_n_103),
        .O(p_1_out_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_16
       (.I0(Frame_Cnt1_n_103),
        .I1(Chirp_Cnt_EN2_n_104),
        .O(p_1_out_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_17
       (.I0(Frame_Cnt1_n_104),
        .I1(Chirp_Cnt_EN2_n_105),
        .O(p_1_out_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2
       (.I0(Chirp_Cnt_EN1[7]),
        .I1(Frame_Cnt[7]),
        .O(p_1_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3
       (.I0(Chirp_Cnt_EN1[6]),
        .I1(Frame_Cnt[6]),
        .O(p_1_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4
       (.I0(Chirp_Cnt_EN1[5]),
        .I1(Frame_Cnt[5]),
        .O(p_1_out_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_5
       (.I0(Chirp_Cnt_EN1[4]),
        .I1(Frame_Cnt[4]),
        .O(p_1_out_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_6
       (.I0(Chirp_Cnt_EN1[3]),
        .I1(Frame_Cnt[3]),
        .O(p_1_out_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_7
       (.I0(Chirp_Cnt_EN1[2]),
        .I1(Frame_Cnt[2]),
        .O(p_1_out_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_8
       (.I0(Chirp_Cnt_EN1[1]),
        .I1(Frame_Cnt[1]),
        .O(p_1_out_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_9
       (.I0(Chirp_Cnt_EN1[0]),
        .I1(Frame_Cnt[0]),
        .O(p_1_out_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[2]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(p_2_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(p_2_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(p_2_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(p_2_in[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(p_2_in[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(p_2_in[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(p_2_in[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(p_2_in[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(p_2_in[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(p_2_in[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(p_2_in[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(p_2_in[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(p_2_in[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(p_2_in[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(p_2_in[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(p_2_in[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg4[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg4_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(p_1_in__0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(p_1_in__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(p_1_in__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(p_1_in__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(p_1_in__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(p_1_in__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(p_1_in__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(p_1_in__0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(p_1_in__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(p_1_in__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(p_1_in__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(p_1_in__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(p_1_in__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(p_1_in__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(p_1_in__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(p_1_in__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg6_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg6_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg6_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg6_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg6_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg6_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg6_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg6_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg6_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg6_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg6_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg6_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg6_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg6_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg6_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg6_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg6_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg6_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg6_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg6_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg6_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg6_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg6_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg6_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg6_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg6_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg6_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg6_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg6_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg6_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg6_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg6_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(S_AXI_WSTRB[1]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(S_AXI_WSTRB[2]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(S_AXI_WSTRB[0]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg8[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg8[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg8[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg8[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg8[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg8[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg8[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg8[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg8[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg8[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg8[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg8[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg8[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg8[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg8[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg8[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg8[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg8[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg8[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg8[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg8[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg8[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg8[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg8[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg8[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[0]),
        .I3(S_AXI_WSTRB[1]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[0]),
        .I3(S_AXI_WSTRB[2]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[0]),
        .I3(S_AXI_WSTRB[3]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[0]),
        .I3(S_AXI_WSTRB[0]),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg9[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg9[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg9[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg9[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg9[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg9[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg9[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg9[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg9[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg9[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg9[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg9[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg9[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg9[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg9[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg9[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg9[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg9[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg9[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
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
