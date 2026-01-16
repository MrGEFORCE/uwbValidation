-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 15 16:45:30 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_axi_lite_ctrl_DacFMCW_0_0/system_axi_lite_ctrl_DacFMCW_0_0_stub.vhdl
-- Design      : system_axi_lite_ctrl_DacFMCW_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_axi_lite_ctrl_DacFMCW_0_0 is
  Port ( 
    FMCW_R : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FMCW_S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FMCW_N : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FMCW_IDX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    USER_RST_N : out STD_LOGIC;
    FS_Number : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Chirp_clk : out STD_LOGIC;
    Frame_clk : out STD_LOGIC;
    FS_Start : out STD_LOGIC;
    FS_Div : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PL_Addr_Flag : out STD_LOGIC;
    PL_Done_Flag : out STD_LOGIC;
    AXI_Trans_Addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cal_delay_num : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );

end system_axi_lite_ctrl_DacFMCW_0_0;

architecture stub of system_axi_lite_ctrl_DacFMCW_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FMCW_R[31:0],FMCW_S[31:0],FMCW_N[31:0],FMCW_IDX[7:0],USER_RST_N,FS_Number[15:0],Chirp_clk,Frame_clk,FS_Start,FS_Div[7:0],PL_Addr_Flag,PL_Done_Flag,AXI_Trans_Addr[31:0],cal_delay_num[31:0],S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[5:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[5:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_lite_ctrl,Vivado 2022.2";
begin
end;
