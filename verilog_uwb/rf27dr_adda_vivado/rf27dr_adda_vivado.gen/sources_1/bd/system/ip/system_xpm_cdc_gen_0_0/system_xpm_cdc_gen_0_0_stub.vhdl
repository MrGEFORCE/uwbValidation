-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jan  5 16:25:02 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_xpm_cdc_gen_0_0 -prefix
--               system_xpm_cdc_gen_0_0_ system_xpm_cdc_gen_0_0_stub.vhdl
-- Design      : system_xpm_cdc_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_xpm_cdc_gen_0_0 is
  Port ( 
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end system_xpm_cdc_gen_0_0;

architecture stub of system_xpm_cdc_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "src_clk,dest_clk,src_in[31:0],dest_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xpm_cdc_gen_v1_0_2,Vivado 2022.2";
begin
end;
