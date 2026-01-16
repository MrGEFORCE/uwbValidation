-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jan  6 11:33:49 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/A_FPGA/RFSOC/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/ip/dds_core/dds_core_stub.vhdl
-- Design      : dds_core
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dds_core is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end dds_core;

architecture stub of dds_core is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_config_tvalid,s_axis_config_tdata[63:0],m_axis_data_tvalid,m_axis_data_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dds_compiler_v6_0_22,Vivado 2022.2";
begin
end;
