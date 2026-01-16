-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jan  5 16:25:02 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_xpm_cdc_gen_0_0 -prefix
--               system_xpm_cdc_gen_0_0_ system_xpm_cdc_gen_0_0_sim_netlist.vhdl
-- Design      : system_xpm_cdc_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xpm_cdc_gen_0_0_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 1;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is 32;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_xpm_cdc_gen_0_0_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end system_xpm_cdc_gen_0_0_xpm_cdc_array_single;

architecture STRUCTURE of system_xpm_cdc_gen_0_0_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][9]\ : label is "ARRAY_SINGLE";
begin
  dest_out(31 downto 0) <= \syncstages_ff[3]\(31 downto 0);
\src_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(0),
      Q => async_path_bit(0),
      R => '0'
    );
\src_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(10),
      Q => async_path_bit(10),
      R => '0'
    );
\src_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(11),
      Q => async_path_bit(11),
      R => '0'
    );
\src_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(12),
      Q => async_path_bit(12),
      R => '0'
    );
\src_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(13),
      Q => async_path_bit(13),
      R => '0'
    );
\src_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(14),
      Q => async_path_bit(14),
      R => '0'
    );
\src_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(15),
      Q => async_path_bit(15),
      R => '0'
    );
\src_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(16),
      Q => async_path_bit(16),
      R => '0'
    );
\src_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(17),
      Q => async_path_bit(17),
      R => '0'
    );
\src_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(18),
      Q => async_path_bit(18),
      R => '0'
    );
\src_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(19),
      Q => async_path_bit(19),
      R => '0'
    );
\src_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(1),
      Q => async_path_bit(1),
      R => '0'
    );
\src_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(20),
      Q => async_path_bit(20),
      R => '0'
    );
\src_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(21),
      Q => async_path_bit(21),
      R => '0'
    );
\src_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(22),
      Q => async_path_bit(22),
      R => '0'
    );
\src_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(23),
      Q => async_path_bit(23),
      R => '0'
    );
\src_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(24),
      Q => async_path_bit(24),
      R => '0'
    );
\src_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(25),
      Q => async_path_bit(25),
      R => '0'
    );
\src_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(26),
      Q => async_path_bit(26),
      R => '0'
    );
\src_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(27),
      Q => async_path_bit(27),
      R => '0'
    );
\src_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(28),
      Q => async_path_bit(28),
      R => '0'
    );
\src_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(29),
      Q => async_path_bit(29),
      R => '0'
    );
\src_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(2),
      Q => async_path_bit(2),
      R => '0'
    );
\src_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(30),
      Q => async_path_bit(30),
      R => '0'
    );
\src_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(31),
      Q => async_path_bit(31),
      R => '0'
    );
\src_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(3),
      Q => async_path_bit(3),
      R => '0'
    );
\src_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(4),
      Q => async_path_bit(4),
      R => '0'
    );
\src_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(5),
      Q => async_path_bit(5),
      R => '0'
    );
\src_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(6),
      Q => async_path_bit(6),
      R => '0'
    );
\src_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(7),
      Q => async_path_bit(7),
      R => '0'
    );
\src_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(8),
      Q => async_path_bit(8),
      R => '0'
    );
\src_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(9),
      Q => async_path_bit(9),
      R => '0'
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(16),
      Q => \syncstages_ff[0]\(16),
      R => '0'
    );
\syncstages_ff_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(17),
      Q => \syncstages_ff[0]\(17),
      R => '0'
    );
\syncstages_ff_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(18),
      Q => \syncstages_ff[0]\(18),
      R => '0'
    );
\syncstages_ff_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(19),
      Q => \syncstages_ff[0]\(19),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(20),
      Q => \syncstages_ff[0]\(20),
      R => '0'
    );
\syncstages_ff_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(21),
      Q => \syncstages_ff[0]\(21),
      R => '0'
    );
\syncstages_ff_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(22),
      Q => \syncstages_ff[0]\(22),
      R => '0'
    );
\syncstages_ff_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(23),
      Q => \syncstages_ff[0]\(23),
      R => '0'
    );
\syncstages_ff_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(24),
      Q => \syncstages_ff[0]\(24),
      R => '0'
    );
\syncstages_ff_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(25),
      Q => \syncstages_ff[0]\(25),
      R => '0'
    );
\syncstages_ff_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(26),
      Q => \syncstages_ff[0]\(26),
      R => '0'
    );
\syncstages_ff_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(27),
      Q => \syncstages_ff[0]\(27),
      R => '0'
    );
\syncstages_ff_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(28),
      Q => \syncstages_ff[0]\(28),
      R => '0'
    );
\syncstages_ff_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(29),
      Q => \syncstages_ff[0]\(29),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(30),
      Q => \syncstages_ff[0]\(30),
      R => '0'
    );
\syncstages_ff_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(31),
      Q => \syncstages_ff[0]\(31),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(16),
      Q => \syncstages_ff[1]\(16),
      R => '0'
    );
\syncstages_ff_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(17),
      Q => \syncstages_ff[1]\(17),
      R => '0'
    );
\syncstages_ff_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(18),
      Q => \syncstages_ff[1]\(18),
      R => '0'
    );
\syncstages_ff_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(19),
      Q => \syncstages_ff[1]\(19),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(20),
      Q => \syncstages_ff[1]\(20),
      R => '0'
    );
\syncstages_ff_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(21),
      Q => \syncstages_ff[1]\(21),
      R => '0'
    );
\syncstages_ff_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(22),
      Q => \syncstages_ff[1]\(22),
      R => '0'
    );
\syncstages_ff_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(23),
      Q => \syncstages_ff[1]\(23),
      R => '0'
    );
\syncstages_ff_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(24),
      Q => \syncstages_ff[1]\(24),
      R => '0'
    );
\syncstages_ff_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(25),
      Q => \syncstages_ff[1]\(25),
      R => '0'
    );
\syncstages_ff_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(26),
      Q => \syncstages_ff[1]\(26),
      R => '0'
    );
\syncstages_ff_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(27),
      Q => \syncstages_ff[1]\(27),
      R => '0'
    );
\syncstages_ff_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(28),
      Q => \syncstages_ff[1]\(28),
      R => '0'
    );
\syncstages_ff_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(29),
      Q => \syncstages_ff[1]\(29),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(30),
      Q => \syncstages_ff[1]\(30),
      R => '0'
    );
\syncstages_ff_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(31),
      Q => \syncstages_ff[1]\(31),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(10),
      Q => \syncstages_ff[2]\(10),
      R => '0'
    );
\syncstages_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(11),
      Q => \syncstages_ff[2]\(11),
      R => '0'
    );
\syncstages_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(12),
      Q => \syncstages_ff[2]\(12),
      R => '0'
    );
\syncstages_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(13),
      Q => \syncstages_ff[2]\(13),
      R => '0'
    );
\syncstages_ff_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(14),
      Q => \syncstages_ff[2]\(14),
      R => '0'
    );
\syncstages_ff_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(15),
      Q => \syncstages_ff[2]\(15),
      R => '0'
    );
\syncstages_ff_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(16),
      Q => \syncstages_ff[2]\(16),
      R => '0'
    );
\syncstages_ff_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(17),
      Q => \syncstages_ff[2]\(17),
      R => '0'
    );
\syncstages_ff_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(18),
      Q => \syncstages_ff[2]\(18),
      R => '0'
    );
\syncstages_ff_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(19),
      Q => \syncstages_ff[2]\(19),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(20),
      Q => \syncstages_ff[2]\(20),
      R => '0'
    );
\syncstages_ff_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(21),
      Q => \syncstages_ff[2]\(21),
      R => '0'
    );
\syncstages_ff_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(22),
      Q => \syncstages_ff[2]\(22),
      R => '0'
    );
\syncstages_ff_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(23),
      Q => \syncstages_ff[2]\(23),
      R => '0'
    );
\syncstages_ff_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(24),
      Q => \syncstages_ff[2]\(24),
      R => '0'
    );
\syncstages_ff_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(25),
      Q => \syncstages_ff[2]\(25),
      R => '0'
    );
\syncstages_ff_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(26),
      Q => \syncstages_ff[2]\(26),
      R => '0'
    );
\syncstages_ff_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(27),
      Q => \syncstages_ff[2]\(27),
      R => '0'
    );
\syncstages_ff_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(28),
      Q => \syncstages_ff[2]\(28),
      R => '0'
    );
\syncstages_ff_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(29),
      Q => \syncstages_ff[2]\(29),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(30),
      Q => \syncstages_ff[2]\(30),
      R => '0'
    );
\syncstages_ff_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(31),
      Q => \syncstages_ff[2]\(31),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(4),
      Q => \syncstages_ff[2]\(4),
      R => '0'
    );
\syncstages_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(5),
      Q => \syncstages_ff[2]\(5),
      R => '0'
    );
\syncstages_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(6),
      Q => \syncstages_ff[2]\(6),
      R => '0'
    );
\syncstages_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(7),
      Q => \syncstages_ff[2]\(7),
      R => '0'
    );
\syncstages_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(8),
      Q => \syncstages_ff[2]\(8),
      R => '0'
    );
\syncstages_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(9),
      Q => \syncstages_ff[2]\(9),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(10),
      Q => \syncstages_ff[3]\(10),
      R => '0'
    );
\syncstages_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(11),
      Q => \syncstages_ff[3]\(11),
      R => '0'
    );
\syncstages_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(12),
      Q => \syncstages_ff[3]\(12),
      R => '0'
    );
\syncstages_ff_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(13),
      Q => \syncstages_ff[3]\(13),
      R => '0'
    );
\syncstages_ff_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(14),
      Q => \syncstages_ff[3]\(14),
      R => '0'
    );
\syncstages_ff_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(15),
      Q => \syncstages_ff[3]\(15),
      R => '0'
    );
\syncstages_ff_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(16),
      Q => \syncstages_ff[3]\(16),
      R => '0'
    );
\syncstages_ff_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(17),
      Q => \syncstages_ff[3]\(17),
      R => '0'
    );
\syncstages_ff_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(18),
      Q => \syncstages_ff[3]\(18),
      R => '0'
    );
\syncstages_ff_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(19),
      Q => \syncstages_ff[3]\(19),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(20),
      Q => \syncstages_ff[3]\(20),
      R => '0'
    );
\syncstages_ff_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(21),
      Q => \syncstages_ff[3]\(21),
      R => '0'
    );
\syncstages_ff_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(22),
      Q => \syncstages_ff[3]\(22),
      R => '0'
    );
\syncstages_ff_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(23),
      Q => \syncstages_ff[3]\(23),
      R => '0'
    );
\syncstages_ff_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(24),
      Q => \syncstages_ff[3]\(24),
      R => '0'
    );
\syncstages_ff_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(25),
      Q => \syncstages_ff[3]\(25),
      R => '0'
    );
\syncstages_ff_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(26),
      Q => \syncstages_ff[3]\(26),
      R => '0'
    );
\syncstages_ff_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(27),
      Q => \syncstages_ff[3]\(27),
      R => '0'
    );
\syncstages_ff_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(28),
      Q => \syncstages_ff[3]\(28),
      R => '0'
    );
\syncstages_ff_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(29),
      Q => \syncstages_ff[3]\(29),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(30),
      Q => \syncstages_ff[3]\(30),
      R => '0'
    );
\syncstages_ff_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(31),
      Q => \syncstages_ff[3]\(31),
      R => '0'
    );
\syncstages_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(3),
      Q => \syncstages_ff[3]\(3),
      R => '0'
    );
\syncstages_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(4),
      Q => \syncstages_ff[3]\(4),
      R => '0'
    );
\syncstages_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(5),
      Q => \syncstages_ff[3]\(5),
      R => '0'
    );
\syncstages_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(6),
      Q => \syncstages_ff[3]\(6),
      R => '0'
    );
\syncstages_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(7),
      Q => \syncstages_ff[3]\(7),
      R => '0'
    );
\syncstages_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(8),
      Q => \syncstages_ff[3]\(8),
      R => '0'
    );
\syncstages_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(9),
      Q => \syncstages_ff[3]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    src_send : in STD_LOGIC;
    dest_ack : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst_in : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_out_bin : out STD_LOGIC_VECTOR ( 31 downto 0 );
    src_rcv : out STD_LOGIC;
    dest_req : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    dest_rst_out : out STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 1;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 4;
  attribute INIT : string;
  attribute INIT of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 0;
  attribute RST_USED : integer;
  attribute RST_USED of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 : entity is 32;
end system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2;

architecture STRUCTURE of system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2 is
  signal \<const0>\ : STD_LOGIC;
  attribute DEST_SYNC_FF of xarray : label is 4;
  attribute INIT_SYNC_FF of xarray : label is 0;
  attribute SIM_ASSERT_CHK of xarray : label is 1;
  attribute SRC_INPUT_REG of xarray : label is 1;
  attribute VERSION of xarray : label is 0;
  attribute WIDTH of xarray : label is 32;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xarray : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xarray : label is "TRUE";
begin
  dest_arst <= \<const0>\;
  dest_out_bin(31) <= \<const0>\;
  dest_out_bin(30) <= \<const0>\;
  dest_out_bin(29) <= \<const0>\;
  dest_out_bin(28) <= \<const0>\;
  dest_out_bin(27) <= \<const0>\;
  dest_out_bin(26) <= \<const0>\;
  dest_out_bin(25) <= \<const0>\;
  dest_out_bin(24) <= \<const0>\;
  dest_out_bin(23) <= \<const0>\;
  dest_out_bin(22) <= \<const0>\;
  dest_out_bin(21) <= \<const0>\;
  dest_out_bin(20) <= \<const0>\;
  dest_out_bin(19) <= \<const0>\;
  dest_out_bin(18) <= \<const0>\;
  dest_out_bin(17) <= \<const0>\;
  dest_out_bin(16) <= \<const0>\;
  dest_out_bin(15) <= \<const0>\;
  dest_out_bin(14) <= \<const0>\;
  dest_out_bin(13) <= \<const0>\;
  dest_out_bin(12) <= \<const0>\;
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
  dest_pulse <= \<const0>\;
  dest_req <= \<const0>\;
  dest_rst_out <= \<const0>\;
  src_rcv <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xarray: entity work.system_xpm_cdc_gen_0_0_xpm_cdc_array_single
     port map (
      dest_clk => dest_clk,
      dest_out(31 downto 0) => dest_out(31 downto 0),
      src_clk => src_clk,
      src_in(31 downto 0) => src_in(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xpm_cdc_gen_0_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_xpm_cdc_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_xpm_cdc_gen_0_0 : entity is "system_xpm_cdc_gen_0_0,xpm_cdc_gen_v1_0_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_xpm_cdc_gen_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_xpm_cdc_gen_0_0 : entity is "xpm_cdc_gen_v1_0_2,Vivado 2022.2";
end system_xpm_cdc_gen_0_0;

architecture STRUCTURE of system_xpm_cdc_gen_0_0 is
  signal NLW_inst_dest_arst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_pulse_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_rst_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_src_rcv_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_out_bin_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of inst : label is 1;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of inst : label is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst : label is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst : label is 4;
  attribute INIT : string;
  attribute INIT of inst : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of inst : label is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of inst : label is 0;
  attribute RST_USED : integer;
  attribute RST_USED of inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst : label is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of inst : label is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of inst : label is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst : label is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dest_clk : signal is "xilinx.com:signal:clock:1.0 dest_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dest_clk : signal is "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of src_clk : signal is "xilinx.com:signal:clock:1.0 src_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER of src_clk : signal is "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 153600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.system_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_2
     port map (
      dest_ack => '1',
      dest_arst => NLW_inst_dest_arst_UNCONNECTED,
      dest_clk => dest_clk,
      dest_out(31 downto 0) => dest_out(31 downto 0),
      dest_out_bin(31 downto 0) => NLW_inst_dest_out_bin_UNCONNECTED(31 downto 0),
      dest_pulse => NLW_inst_dest_pulse_UNCONNECTED,
      dest_req => NLW_inst_dest_req_UNCONNECTED,
      dest_rst_in => '1',
      dest_rst_out => NLW_inst_dest_rst_out_UNCONNECTED,
      src_arst => '1',
      src_clk => src_clk,
      src_in(31 downto 0) => src_in(31 downto 0),
      src_in_bin(31 downto 0) => B"00000000000000000000000000000001",
      src_pulse => '1',
      src_rcv => NLW_inst_src_rcv_UNCONNECTED,
      src_rst => '1',
      src_send => '1'
    );
end STRUCTURE;
