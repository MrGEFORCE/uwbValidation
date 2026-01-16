-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 15 16:19:46 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_ADC_To_FIFO_0_0/system_ADC_To_FIFO_0_0_stub.vhdl
-- Design      : system_ADC_To_FIFO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ADC_To_FIFO_0_0 is
  Port ( 
    data_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 255 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_wr_clk : out STD_LOGIC;
    FS_start : in STD_LOGIC;
    AXI_trans_start : out STD_LOGIC;
    FS_Number : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FS_Div : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mixed_datax_q_channel1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_i_channel1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_q_channel2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_i_channel2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_q_channel3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_i_channel3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_q_channel4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_datax_i_channel4 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end system_ADC_To_FIFO_0_0;

architecture stub of system_ADC_To_FIFO_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_clk,i_rstn,fifo_full,fifo_din[255:0],fifo_wr_en,fifo_wr_clk,FS_start,AXI_trans_start,FS_Number[15:0],FS_Div[7:0],mixed_datax_q_channel1[31:0],mixed_datax_i_channel1[31:0],mixed_datax_q_channel2[31:0],mixed_datax_i_channel2[31:0],mixed_datax_q_channel3[31:0],mixed_datax_i_channel3[31:0],mixed_datax_q_channel4[31:0],mixed_datax_i_channel4[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_To_FIFO,Vivado 2022.2";
begin
end;
