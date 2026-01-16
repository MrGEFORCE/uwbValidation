-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 15 11:19:50 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_FIFO_To_DataMover_1_0/system_FIFO_To_DataMover_1_0_stub.vhdl
-- Design      : system_FIFO_To_DataMover_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_FIFO_To_DataMover_1_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    AXI_Trans_Start : in STD_LOGIC;
    FS_Number : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI_Trans_Addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 255 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    fifo_rd_clk : out STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    m_axis_s2mm_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_s2mm_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_s2mm_tlast : out STD_LOGIC;
    m_axis_s2mm_tready : in STD_LOGIC;
    m_axis_s2mm_tvalid : out STD_LOGIC;
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_cmd_tready : in STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : out STD_LOGIC
  );

end system_FIFO_To_DataMover_1_0;

architecture stub of system_FIFO_To_DataMover_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rstn,AXI_Trans_Start,FS_Number[15:0],AXI_Trans_Addr[31:0],fifo_empty,fifo_dout[255:0],fifo_rd_en,fifo_rd_clk,fifo_rst,m_axis_s2mm_tdata[255:0],m_axis_s2mm_tkeep[31:0],m_axis_s2mm_tlast,m_axis_s2mm_tready,m_axis_s2mm_tvalid,m_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_cmd_tready,m_axis_s2mm_cmd_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FIFO_To_DataMover,Vivado 2022.2";
begin
end;
