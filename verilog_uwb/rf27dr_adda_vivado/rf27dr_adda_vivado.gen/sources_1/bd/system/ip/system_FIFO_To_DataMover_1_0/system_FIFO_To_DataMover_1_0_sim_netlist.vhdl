-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 15 11:19:50 2026
-- Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/A_FPGA/RFSOC/rf27dr_adda_vivado_V2.1/rf27dr_adda_vivado/rf27dr_adda_vivado/rf27dr_adda_vivado.gen/sources_1/bd/system/ip/system_FIFO_To_DataMover_1_0/system_FIFO_To_DataMover_1_0_sim_netlist.vhdl
-- Design      : system_FIFO_To_DataMover_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu27dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_FIFO_To_DataMover_1_0_FIFO_To_DataMover is
  port (
    r_m_axis_s2mm_cmd_tvalid_reg_0 : out STD_LOGIC;
    m_axis_s2mm_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 40 downto 0 );
    r_m_axis_s2mm_tvalid_reg_0 : out STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    m_axis_s2mm_tlast : out STD_LOGIC;
    fifo_rst : out STD_LOGIC;
    i_rstn : in STD_LOGIC;
    m_axis_s2mm_cmd_tready : in STD_LOGIC;
    FS_Number : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    AXI_Trans_Start : in STD_LOGIC;
    AXI_Trans_Addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_s2mm_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_FIFO_To_DataMover_1_0_FIFO_To_DataMover : entity is "FIFO_To_DataMover";
end system_FIFO_To_DataMover_1_0_FIFO_To_DataMover;

architecture STRUCTURE of system_FIFO_To_DataMover_1_0_FIFO_To_DataMover is
  signal B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CEP : STD_LOGIC;
  signal RSTP : STD_LOGIC;
  signal \^m_axis_s2mm_tlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal r_AXI_Cur_Burst_Byte : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal \r_AXI_Cur_Burst_Number[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_6_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Burst_Number[7]_i_7_n_0\ : STD_LOGIC;
  signal r_AXI_Cur_Trans_Addr : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_10_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_6_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_7_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_8_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[12]_i_9_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_6_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_7_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_8_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[20]_i_9_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[28]_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[28]_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[28]_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_10_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_11_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_12_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_13_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_14_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_15_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_16_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_6_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_7_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_8_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr[4]_i_9_n_0\ : STD_LOGIC;
  signal r_AXI_Cur_Trans_Addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9\ : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0 : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \r_AXI_Cur_Trans_Cnt0_carry__0_n_7\ : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_0 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_1 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_2 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_3 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_4 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_5 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_6 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt0_carry_n_7 : STD_LOGIC;
  signal r_AXI_Cur_Trans_Cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_AXI_Remain_Number_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_1\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_10\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_11\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_12\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_13\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_14\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_15\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_2\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_3\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_4\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_5\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_6\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_7\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_8\ : STD_LOGIC;
  signal \r_AXI_Remain_Number_carry__0_n_9\ : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_10_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_11_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_12_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_13_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_14_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_15_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_16_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_17_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_18_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_19_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_1_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_20_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_2_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_3_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_4_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_5_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_6_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_7_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_8_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_i_9_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_0 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_1 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_10 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_11 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_12 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_13 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_14 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_15 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_2 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_3 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_4 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_5 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_6 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_7 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_8 : STD_LOGIC;
  signal r_AXI_Remain_Number_carry_n_9 : STD_LOGIC;
  signal r_AXI_Remain_Number_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_AXI_Trans_Start_d_reg_n_0_[1]\ : STD_LOGIC;
  signal r_AXI_Trans_Start_pos : STD_LOGIC;
  signal r_AXI_Trans_Start_pos0 : STD_LOGIC;
  signal r_fifo_rst_i_1_n_0 : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0\ : STD_LOGIC;
  signal r_m_axis_s2mm_cmd_tvalid_i_1_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_cmd_tvalid_i_2_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_cmd_tvalid_i_3_n_0 : STD_LOGIC;
  signal \^r_m_axis_s2mm_cmd_tvalid_reg_0\ : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4 : STD_LOGIC;
  signal \r_m_axis_s2mm_tlast4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tlast4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tlast4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tlast4_carry__0_n_6\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tlast4_carry__0_n_7\ : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_10_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_1_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_2_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_3_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_4_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_5_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_6_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_7_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_8_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_i_9_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_1 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_2 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_3 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_4 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_5 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_6 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast4_carry_n_7 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_2_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_3_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_4_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_5_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_6_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_7_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tlast_i_8_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2 : STD_LOGIC;
  signal \r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tvalid2_carry__0_n_6\ : STD_LOGIC;
  signal \r_m_axis_s2mm_tvalid2_carry__0_n_7\ : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_1_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_2_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_3_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_4_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_5_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_6_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_7_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_8_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_i_9_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_1 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_2 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_3 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_4 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_5 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_6 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid2_carry_n_7 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_1_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_2_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_3_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_4_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_5_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_6_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_7_n_0 : STD_LOGIC;
  signal r_m_axis_s2mm_tvalid_i_8_n_0 : STD_LOGIC;
  signal \^r_m_axis_s2mm_tvalid_reg_0\ : STD_LOGIC;
  signal r_s_cnt0 : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \r_s_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal r_s_cnt0_carry_n_0 : STD_LOGIC;
  signal r_s_cnt0_carry_n_1 : STD_LOGIC;
  signal r_s_cnt0_carry_n_2 : STD_LOGIC;
  signal r_s_cnt0_carry_n_3 : STD_LOGIC;
  signal r_s_cnt0_carry_n_4 : STD_LOGIC;
  signal r_s_cnt0_carry_n_5 : STD_LOGIC;
  signal r_s_cnt0_carry_n_6 : STD_LOGIC;
  signal r_s_cnt0_carry_n_7 : STD_LOGIC;
  signal r_s_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \r_s_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_s_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal r_st_current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_st_current[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_st_current[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_5_n_0\ : STD_LOGIC;
  signal \r_st_current[2]_i_6_n_0\ : STD_LOGIC;
  signal r_st_prev : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_r_AXI_Cur_Trans_Cnt0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_r_AXI_Cur_Trans_Cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_r_AXI_Remain_Number_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_r_m_axis_s2mm_tlast4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_r_m_axis_s2mm_tlast4_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r_m_axis_s2mm_tlast4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_r_m_axis_s2mm_tvalid2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_r_m_axis_s2mm_tvalid2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r_m_axis_s2mm_tvalid2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_r_s_cnt0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_r_s_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_AXI_Cur_Trans_Addr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_AXI_Cur_Trans_Addr[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_AXI_Cur_Trans_Addr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_AXI_Cur_Trans_Addr[3]_i_1\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_AXI_Cur_Trans_Addr_reg[12]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \r_AXI_Cur_Trans_Addr_reg[20]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \r_AXI_Cur_Trans_Addr_reg[28]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \r_AXI_Cur_Trans_Addr_reg[4]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of r_AXI_Cur_Trans_Cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_AXI_Cur_Trans_Cnt0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \r_AXI_Cur_Trans_Cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_AXI_Remain_Number_carry_i_18 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_AXI_Remain_Number_carry_i_19 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_AXI_Remain_Number_carry_i_20 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of r_fifo_rst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_m_axis_s2mm_cmd_tdata[63]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_cmd_tvalid_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tlast4_carry_i_10 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tlast4_carry_i_9 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tlast_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tvalid2_carry_i_9 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tvalid_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tvalid_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_m_axis_s2mm_tvalid_i_7 : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD of r_s_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_s_cnt0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \r_st_current[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_st_current[1]_i_1\ : label is "soft_lutpair3";
begin
  m_axis_s2mm_tlast <= \^m_axis_s2mm_tlast\;
  r_m_axis_s2mm_cmd_tvalid_reg_0 <= \^r_m_axis_s2mm_cmd_tvalid_reg_0\;
  r_m_axis_s2mm_tvalid_reg_0 <= \^r_m_axis_s2mm_tvalid_reg_0\;
fifo_rd_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_m_axis_s2mm_tvalid_reg_0\,
      I1 => m_axis_s2mm_tready,
      O => fifo_rd_en
    );
\r_AXI_Cur_Burst_Byte[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_st_current(1),
      I1 => r_st_current(0),
      I2 => r_st_current(2),
      O => CEP
    );
\r_AXI_Cur_Burst_Byte_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[5]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(10),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[6]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(11),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[7]_i_2_n_0\,
      Q => r_AXI_Cur_Burst_Byte(12),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[0]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(5),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[1]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(6),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[2]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(7),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[3]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(8),
      R => RSTP
    );
\r_AXI_Cur_Burst_Byte_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => CEP,
      D => \r_AXI_Cur_Burst_Number[4]_i_1_n_0\,
      Q => r_AXI_Cur_Burst_Byte(9),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(0),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(0),
      O => \r_AXI_Cur_Burst_Number[0]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(1),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(1),
      O => \r_AXI_Cur_Burst_Number[1]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(2),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(2),
      O => \r_AXI_Cur_Burst_Number[2]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(3),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(3),
      O => \r_AXI_Cur_Burst_Number[3]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(4),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(4),
      O => \r_AXI_Cur_Burst_Number[4]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(5),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(5),
      O => \r_AXI_Cur_Burst_Number[5]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(6),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(6),
      O => \r_AXI_Cur_Burst_Number[6]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(0),
      I2 => r_st_current(1),
      I3 => i_rstn,
      O => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\,
      I1 => r_AXI_Remain_Number_reg(7),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\,
      I4 => FS_Number(7),
      O => \r_AXI_Cur_Burst_Number[7]_i_2_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_AXI_Remain_Number_reg(12),
      I1 => r_AXI_Remain_Number_reg(13),
      I2 => r_AXI_Remain_Number_reg(14),
      I3 => r_AXI_Remain_Number_reg(15),
      I4 => \r_AXI_Cur_Burst_Number[7]_i_6_n_0\,
      O => \r_AXI_Cur_Burst_Number[7]_i_3_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(0),
      I2 => r_st_current(1),
      I3 => r_st_prev(0),
      I4 => r_st_prev(1),
      I5 => r_st_prev(2),
      O => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => FS_Number(12),
      I1 => FS_Number(13),
      I2 => FS_Number(14),
      I3 => FS_Number(15),
      I4 => \r_AXI_Cur_Burst_Number[7]_i_7_n_0\,
      O => \r_AXI_Cur_Burst_Number[7]_i_5_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_AXI_Remain_Number_reg(11),
      I1 => r_AXI_Remain_Number_reg(10),
      I2 => r_AXI_Remain_Number_reg(9),
      I3 => r_AXI_Remain_Number_reg(8),
      O => \r_AXI_Cur_Burst_Number[7]_i_6_n_0\
    );
\r_AXI_Cur_Burst_Number[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FS_Number(11),
      I1 => FS_Number(10),
      I2 => FS_Number(9),
      I3 => FS_Number(8),
      O => \r_AXI_Cur_Burst_Number[7]_i_7_n_0\
    );
\r_AXI_Cur_Burst_Number_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[0]_i_1_n_0\,
      Q => B(0),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[1]_i_1_n_0\,
      Q => B(1),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[2]_i_1_n_0\,
      Q => B(2),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[3]_i_1_n_0\,
      Q => B(3),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[4]_i_1_n_0\,
      Q => B(4),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[5]_i_1_n_0\,
      Q => B(5),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[6]_i_1_n_0\,
      Q => B(6),
      R => RSTP
    );
\r_AXI_Cur_Burst_Number_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\,
      D => \r_AXI_Cur_Burst_Number[7]_i_2_n_0\,
      Q => B(7),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(0),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(0),
      O => \r_AXI_Cur_Trans_Addr[0]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Cur_Trans_Addr_reg(12),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(12),
      O => \r_AXI_Cur_Trans_Addr[12]_i_10_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(7),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[12]_i_2_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(19),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(19),
      O => \r_AXI_Cur_Trans_Addr[12]_i_3_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(18),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(18),
      O => \r_AXI_Cur_Trans_Addr[12]_i_4_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(17),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(17),
      O => \r_AXI_Cur_Trans_Addr[12]_i_5_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(16),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(16),
      O => \r_AXI_Cur_Trans_Addr[12]_i_6_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(15),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(15),
      O => \r_AXI_Cur_Trans_Addr[12]_i_7_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(14),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(14),
      O => \r_AXI_Cur_Trans_Addr[12]_i_8_n_0\
    );
\r_AXI_Cur_Trans_Addr[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(13),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(13),
      O => \r_AXI_Cur_Trans_Addr[12]_i_9_n_0\
    );
\r_AXI_Cur_Trans_Addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(1),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(1),
      O => \r_AXI_Cur_Trans_Addr[1]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(27),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(27),
      O => \r_AXI_Cur_Trans_Addr[20]_i_2_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(26),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(26),
      O => \r_AXI_Cur_Trans_Addr[20]_i_3_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(25),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(25),
      O => \r_AXI_Cur_Trans_Addr[20]_i_4_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(24),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(24),
      O => \r_AXI_Cur_Trans_Addr[20]_i_5_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(23),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(23),
      O => \r_AXI_Cur_Trans_Addr[20]_i_6_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(22),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(22),
      O => \r_AXI_Cur_Trans_Addr[20]_i_7_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(21),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(21),
      O => \r_AXI_Cur_Trans_Addr[20]_i_8_n_0\
    );
\r_AXI_Cur_Trans_Addr[20]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(20),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(20),
      O => \r_AXI_Cur_Trans_Addr[20]_i_9_n_0\
    );
\r_AXI_Cur_Trans_Addr[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(31),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(31),
      O => \r_AXI_Cur_Trans_Addr[28]_i_2_n_0\
    );
\r_AXI_Cur_Trans_Addr[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(30),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(30),
      O => \r_AXI_Cur_Trans_Addr[28]_i_3_n_0\
    );
\r_AXI_Cur_Trans_Addr[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(29),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(29),
      O => \r_AXI_Cur_Trans_Addr[28]_i_4_n_0\
    );
\r_AXI_Cur_Trans_Addr[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(28),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(28),
      O => \r_AXI_Cur_Trans_Addr[28]_i_5_n_0\
    );
\r_AXI_Cur_Trans_Addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(2),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(2),
      O => \r_AXI_Cur_Trans_Addr[2]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(3),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(3),
      O => \r_AXI_Cur_Trans_Addr[3]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(5),
      I1 => r_AXI_Cur_Trans_Addr_reg(10),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(10),
      O => \r_AXI_Cur_Trans_Addr[4]_i_10_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(4),
      I1 => r_AXI_Cur_Trans_Addr_reg(9),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(9),
      O => \r_AXI_Cur_Trans_Addr[4]_i_11_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(3),
      I1 => r_AXI_Cur_Trans_Addr_reg(8),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(8),
      O => \r_AXI_Cur_Trans_Addr[4]_i_12_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(2),
      I1 => r_AXI_Cur_Trans_Addr_reg(7),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(7),
      O => \r_AXI_Cur_Trans_Addr[4]_i_13_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(1),
      I1 => r_AXI_Cur_Trans_Addr_reg(6),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(6),
      O => \r_AXI_Cur_Trans_Addr[4]_i_14_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(0),
      I1 => r_AXI_Cur_Trans_Addr_reg(5),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(5),
      O => \r_AXI_Cur_Trans_Addr[4]_i_15_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_Trans_Addr(4),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I2 => r_AXI_Cur_Trans_Addr_reg(4),
      O => \r_AXI_Cur_Trans_Addr[4]_i_16_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(6),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_2_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(5),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_3_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(4),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_4_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(3),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_5_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(2),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_6_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(1),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_7_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(0),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Cur_Trans_Addr[4]_i_8_n_0\
    );
\r_AXI_Cur_Trans_Addr[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(6),
      I1 => r_AXI_Cur_Trans_Addr_reg(11),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => AXI_Trans_Addr(11),
      O => \r_AXI_Cur_Trans_Addr[4]_i_9_n_0\
    );
\r_AXI_Cur_Trans_Addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr[0]_i_1_n_0\,
      Q => r_AXI_Cur_Trans_Addr_reg(0),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9\,
      Q => r_AXI_Cur_Trans_Addr_reg(10),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8\,
      Q => r_AXI_Cur_Trans_Addr_reg(11),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15\,
      Q => r_AXI_Cur_Trans_Addr_reg(12),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0\,
      CO(6) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_1\,
      CO(5) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_2\,
      CO(4) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_3\,
      CO(3) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_4\,
      CO(2) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_5\,
      CO(1) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_6\,
      CO(0) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \r_AXI_Cur_Trans_Addr[12]_i_2_n_0\,
      O(7) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8\,
      O(6) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9\,
      O(5) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10\,
      O(4) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11\,
      O(3) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12\,
      O(2) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13\,
      O(1) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14\,
      O(0) => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_15\,
      S(7) => \r_AXI_Cur_Trans_Addr[12]_i_3_n_0\,
      S(6) => \r_AXI_Cur_Trans_Addr[12]_i_4_n_0\,
      S(5) => \r_AXI_Cur_Trans_Addr[12]_i_5_n_0\,
      S(4) => \r_AXI_Cur_Trans_Addr[12]_i_6_n_0\,
      S(3) => \r_AXI_Cur_Trans_Addr[12]_i_7_n_0\,
      S(2) => \r_AXI_Cur_Trans_Addr[12]_i_8_n_0\,
      S(1) => \r_AXI_Cur_Trans_Addr[12]_i_9_n_0\,
      S(0) => \r_AXI_Cur_Trans_Addr[12]_i_10_n_0\
    );
\r_AXI_Cur_Trans_Addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_14\,
      Q => r_AXI_Cur_Trans_Addr_reg(13),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_13\,
      Q => r_AXI_Cur_Trans_Addr_reg(14),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_12\,
      Q => r_AXI_Cur_Trans_Addr_reg(15),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_11\,
      Q => r_AXI_Cur_Trans_Addr_reg(16),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_10\,
      Q => r_AXI_Cur_Trans_Addr_reg(17),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_9\,
      Q => r_AXI_Cur_Trans_Addr_reg(18),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_8\,
      Q => r_AXI_Cur_Trans_Addr_reg(19),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr[1]_i_1_n_0\,
      Q => r_AXI_Cur_Trans_Addr_reg(1),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15\,
      Q => r_AXI_Cur_Trans_Addr_reg(20),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[20]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r_AXI_Cur_Trans_Addr_reg[12]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0\,
      CO(6) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_1\,
      CO(5) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_2\,
      CO(4) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_3\,
      CO(3) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_4\,
      CO(2) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_5\,
      CO(1) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_6\,
      CO(0) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8\,
      O(6) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9\,
      O(5) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10\,
      O(4) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11\,
      O(3) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12\,
      O(2) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13\,
      O(1) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14\,
      O(0) => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_15\,
      S(7) => \r_AXI_Cur_Trans_Addr[20]_i_2_n_0\,
      S(6) => \r_AXI_Cur_Trans_Addr[20]_i_3_n_0\,
      S(5) => \r_AXI_Cur_Trans_Addr[20]_i_4_n_0\,
      S(4) => \r_AXI_Cur_Trans_Addr[20]_i_5_n_0\,
      S(3) => \r_AXI_Cur_Trans_Addr[20]_i_6_n_0\,
      S(2) => \r_AXI_Cur_Trans_Addr[20]_i_7_n_0\,
      S(1) => \r_AXI_Cur_Trans_Addr[20]_i_8_n_0\,
      S(0) => \r_AXI_Cur_Trans_Addr[20]_i_9_n_0\
    );
\r_AXI_Cur_Trans_Addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_14\,
      Q => r_AXI_Cur_Trans_Addr_reg(21),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_13\,
      Q => r_AXI_Cur_Trans_Addr_reg(22),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_12\,
      Q => r_AXI_Cur_Trans_Addr_reg(23),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_11\,
      Q => r_AXI_Cur_Trans_Addr_reg(24),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_10\,
      Q => r_AXI_Cur_Trans_Addr_reg(25),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_9\,
      Q => r_AXI_Cur_Trans_Addr_reg(26),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_8\,
      Q => r_AXI_Cur_Trans_Addr_reg(27),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15\,
      Q => r_AXI_Cur_Trans_Addr_reg(28),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[28]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r_AXI_Cur_Trans_Addr_reg[20]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_5\,
      CO(1) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_6\,
      CO(0) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_r_AXI_Cur_Trans_Addr_reg[28]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12\,
      O(2) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13\,
      O(1) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14\,
      O(0) => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \r_AXI_Cur_Trans_Addr[28]_i_2_n_0\,
      S(2) => \r_AXI_Cur_Trans_Addr[28]_i_3_n_0\,
      S(1) => \r_AXI_Cur_Trans_Addr[28]_i_4_n_0\,
      S(0) => \r_AXI_Cur_Trans_Addr[28]_i_5_n_0\
    );
\r_AXI_Cur_Trans_Addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_14\,
      Q => r_AXI_Cur_Trans_Addr_reg(29),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr[2]_i_1_n_0\,
      Q => r_AXI_Cur_Trans_Addr_reg(2),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_13\,
      Q => r_AXI_Cur_Trans_Addr_reg(30),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[28]_i_1_n_12\,
      Q => r_AXI_Cur_Trans_Addr_reg(31),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr[3]_i_1_n_0\,
      Q => r_AXI_Cur_Trans_Addr_reg(3),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15\,
      Q => r_AXI_Cur_Trans_Addr_reg(4),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[4]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_0\,
      CO(6) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_1\,
      CO(5) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_2\,
      CO(4) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_3\,
      CO(3) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_4\,
      CO(2) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_5\,
      CO(1) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_6\,
      CO(0) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_7\,
      DI(7) => \r_AXI_Cur_Trans_Addr[4]_i_2_n_0\,
      DI(6) => \r_AXI_Cur_Trans_Addr[4]_i_3_n_0\,
      DI(5) => \r_AXI_Cur_Trans_Addr[4]_i_4_n_0\,
      DI(4) => \r_AXI_Cur_Trans_Addr[4]_i_5_n_0\,
      DI(3) => \r_AXI_Cur_Trans_Addr[4]_i_6_n_0\,
      DI(2) => \r_AXI_Cur_Trans_Addr[4]_i_7_n_0\,
      DI(1) => \r_AXI_Cur_Trans_Addr[4]_i_8_n_0\,
      DI(0) => '0',
      O(7) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_8\,
      O(6) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_9\,
      O(5) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10\,
      O(4) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11\,
      O(3) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12\,
      O(2) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13\,
      O(1) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14\,
      O(0) => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_15\,
      S(7) => \r_AXI_Cur_Trans_Addr[4]_i_9_n_0\,
      S(6) => \r_AXI_Cur_Trans_Addr[4]_i_10_n_0\,
      S(5) => \r_AXI_Cur_Trans_Addr[4]_i_11_n_0\,
      S(4) => \r_AXI_Cur_Trans_Addr[4]_i_12_n_0\,
      S(3) => \r_AXI_Cur_Trans_Addr[4]_i_13_n_0\,
      S(2) => \r_AXI_Cur_Trans_Addr[4]_i_14_n_0\,
      S(1) => \r_AXI_Cur_Trans_Addr[4]_i_15_n_0\,
      S(0) => \r_AXI_Cur_Trans_Addr[4]_i_16_n_0\
    );
\r_AXI_Cur_Trans_Addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_14\,
      Q => r_AXI_Cur_Trans_Addr_reg(5),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_13\,
      Q => r_AXI_Cur_Trans_Addr_reg(6),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_12\,
      Q => r_AXI_Cur_Trans_Addr_reg(7),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_11\,
      Q => r_AXI_Cur_Trans_Addr_reg(8),
      R => RSTP
    );
\r_AXI_Cur_Trans_Addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Cur_Trans_Addr_reg[4]_i_1_n_10\,
      Q => r_AXI_Cur_Trans_Addr_reg(9),
      R => RSTP
    );
r_AXI_Cur_Trans_Cnt0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => r_AXI_Cur_Trans_Cnt_reg(0),
      CI_TOP => '0',
      CO(7) => r_AXI_Cur_Trans_Cnt0_carry_n_0,
      CO(6) => r_AXI_Cur_Trans_Cnt0_carry_n_1,
      CO(5) => r_AXI_Cur_Trans_Cnt0_carry_n_2,
      CO(4) => r_AXI_Cur_Trans_Cnt0_carry_n_3,
      CO(3) => r_AXI_Cur_Trans_Cnt0_carry_n_4,
      CO(2) => r_AXI_Cur_Trans_Cnt0_carry_n_5,
      CO(1) => r_AXI_Cur_Trans_Cnt0_carry_n_6,
      CO(0) => r_AXI_Cur_Trans_Cnt0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_0_in(8 downto 1),
      S(7 downto 0) => r_AXI_Cur_Trans_Cnt_reg(8 downto 1)
    );
\r_AXI_Cur_Trans_Cnt0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => r_AXI_Cur_Trans_Cnt0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_r_AXI_Cur_Trans_Cnt0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_2\,
      CO(4) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_3\,
      CO(3) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_4\,
      CO(2) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_5\,
      CO(1) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_6\,
      CO(0) => \r_AXI_Cur_Trans_Cnt0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_r_AXI_Cur_Trans_Cnt0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => p_0_in(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => r_AXI_Cur_Trans_Cnt_reg(15 downto 9)
    );
\r_AXI_Cur_Trans_Cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(0),
      O => p_0_in(0)
    );
\r_AXI_Cur_Trans_Cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => m_axis_s2mm_tready,
      I1 => \^r_m_axis_s2mm_tvalid_reg_0\,
      I2 => r_st_current(2),
      I3 => r_st_current(0),
      I4 => r_st_current(1),
      O => r_AXI_Cur_Trans_Cnt0
    );
\r_AXI_Cur_Trans_Cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(0),
      Q => r_AXI_Cur_Trans_Cnt_reg(0),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(10),
      Q => r_AXI_Cur_Trans_Cnt_reg(10),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(11),
      Q => r_AXI_Cur_Trans_Cnt_reg(11),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(12),
      Q => r_AXI_Cur_Trans_Cnt_reg(12),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(13),
      Q => r_AXI_Cur_Trans_Cnt_reg(13),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(14),
      Q => r_AXI_Cur_Trans_Cnt_reg(14),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(15),
      Q => r_AXI_Cur_Trans_Cnt_reg(15),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(1),
      Q => r_AXI_Cur_Trans_Cnt_reg(1),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(2),
      Q => r_AXI_Cur_Trans_Cnt_reg(2),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(3),
      Q => r_AXI_Cur_Trans_Cnt_reg(3),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(4),
      Q => r_AXI_Cur_Trans_Cnt_reg(4),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(5),
      Q => r_AXI_Cur_Trans_Cnt_reg(5),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(6),
      Q => r_AXI_Cur_Trans_Cnt_reg(6),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(7),
      Q => r_AXI_Cur_Trans_Cnt_reg(7),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(8),
      Q => r_AXI_Cur_Trans_Cnt_reg(8),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Cur_Trans_Cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Cnt0,
      D => p_0_in(9),
      Q => r_AXI_Cur_Trans_Cnt_reg(9),
      R => \r_AXI_Cur_Burst_Number[7]_i_1_n_0\
    );
\r_AXI_Remain_Number[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00010000"
    )
        port map (
      I0 => r_st_prev(2),
      I1 => r_st_prev(1),
      I2 => r_st_prev(0),
      I3 => r_st_current(1),
      I4 => r_st_current(0),
      I5 => r_st_current(2),
      O => r_AXI_Cur_Trans_Addr
    );
r_AXI_Remain_Number_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => r_AXI_Remain_Number_carry_n_0,
      CO(6) => r_AXI_Remain_Number_carry_n_1,
      CO(5) => r_AXI_Remain_Number_carry_n_2,
      CO(4) => r_AXI_Remain_Number_carry_n_3,
      CO(3) => r_AXI_Remain_Number_carry_n_4,
      CO(2) => r_AXI_Remain_Number_carry_n_5,
      CO(1) => r_AXI_Remain_Number_carry_n_6,
      CO(0) => r_AXI_Remain_Number_carry_n_7,
      DI(7) => r_AXI_Remain_Number_carry_i_1_n_0,
      DI(6) => r_AXI_Remain_Number_carry_i_2_n_0,
      DI(5) => r_AXI_Remain_Number_carry_i_3_n_0,
      DI(4) => r_AXI_Remain_Number_carry_i_4_n_0,
      DI(3) => r_AXI_Remain_Number_carry_i_5_n_0,
      DI(2) => r_AXI_Remain_Number_carry_i_6_n_0,
      DI(1) => r_AXI_Remain_Number_carry_i_7_n_0,
      DI(0) => r_AXI_Remain_Number_carry_i_8_n_0,
      O(7) => r_AXI_Remain_Number_carry_n_8,
      O(6) => r_AXI_Remain_Number_carry_n_9,
      O(5) => r_AXI_Remain_Number_carry_n_10,
      O(4) => r_AXI_Remain_Number_carry_n_11,
      O(3) => r_AXI_Remain_Number_carry_n_12,
      O(2) => r_AXI_Remain_Number_carry_n_13,
      O(1) => r_AXI_Remain_Number_carry_n_14,
      O(0) => r_AXI_Remain_Number_carry_n_15,
      S(7) => r_AXI_Remain_Number_carry_i_9_n_0,
      S(6) => r_AXI_Remain_Number_carry_i_10_n_0,
      S(5) => r_AXI_Remain_Number_carry_i_11_n_0,
      S(4) => r_AXI_Remain_Number_carry_i_12_n_0,
      S(3) => r_AXI_Remain_Number_carry_i_13_n_0,
      S(2) => r_AXI_Remain_Number_carry_i_14_n_0,
      S(1) => r_AXI_Remain_Number_carry_i_15_n_0,
      S(0) => r_AXI_Remain_Number_carry_i_16_n_0
    );
\r_AXI_Remain_Number_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => r_AXI_Remain_Number_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_r_AXI_Remain_Number_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \r_AXI_Remain_Number_carry__0_n_1\,
      CO(5) => \r_AXI_Remain_Number_carry__0_n_2\,
      CO(4) => \r_AXI_Remain_Number_carry__0_n_3\,
      CO(3) => \r_AXI_Remain_Number_carry__0_n_4\,
      CO(2) => \r_AXI_Remain_Number_carry__0_n_5\,
      CO(1) => \r_AXI_Remain_Number_carry__0_n_6\,
      CO(0) => \r_AXI_Remain_Number_carry__0_n_7\,
      DI(7) => '0',
      DI(6) => \r_AXI_Remain_Number_carry__0_i_1_n_0\,
      DI(5) => \r_AXI_Remain_Number_carry__0_i_2_n_0\,
      DI(4) => \r_AXI_Remain_Number_carry__0_i_3_n_0\,
      DI(3) => \r_AXI_Remain_Number_carry__0_i_4_n_0\,
      DI(2) => \r_AXI_Remain_Number_carry__0_i_5_n_0\,
      DI(1) => \r_AXI_Remain_Number_carry__0_i_6_n_0\,
      DI(0) => \r_AXI_Remain_Number_carry__0_i_7_n_0\,
      O(7) => \r_AXI_Remain_Number_carry__0_n_8\,
      O(6) => \r_AXI_Remain_Number_carry__0_n_9\,
      O(5) => \r_AXI_Remain_Number_carry__0_n_10\,
      O(4) => \r_AXI_Remain_Number_carry__0_n_11\,
      O(3) => \r_AXI_Remain_Number_carry__0_n_12\,
      O(2) => \r_AXI_Remain_Number_carry__0_n_13\,
      O(1) => \r_AXI_Remain_Number_carry__0_n_14\,
      O(0) => \r_AXI_Remain_Number_carry__0_n_15\,
      S(7) => \r_AXI_Remain_Number_carry__0_i_8_n_0\,
      S(6) => \r_AXI_Remain_Number_carry__0_i_9_n_0\,
      S(5) => \r_AXI_Remain_Number_carry__0_i_10_n_0\,
      S(4) => \r_AXI_Remain_Number_carry__0_i_11_n_0\,
      S(3) => \r_AXI_Remain_Number_carry__0_i_12_n_0\,
      S(2) => \r_AXI_Remain_Number_carry__0_i_13_n_0\,
      S(1) => \r_AXI_Remain_Number_carry__0_i_14_n_0\,
      S(0) => \r_AXI_Remain_Number_carry__0_i_15_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_1_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(13),
      I5 => FS_Number(13),
      O => \r_AXI_Remain_Number_carry__0_i_10_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(12),
      I5 => FS_Number(12),
      O => \r_AXI_Remain_Number_carry__0_i_11_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(11),
      I5 => FS_Number(11),
      O => \r_AXI_Remain_Number_carry__0_i_12_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(10),
      I5 => FS_Number(10),
      O => \r_AXI_Remain_Number_carry__0_i_13_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(9),
      I5 => FS_Number(9),
      O => \r_AXI_Remain_Number_carry__0_i_14_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(8),
      I5 => FS_Number(8),
      O => \r_AXI_Remain_Number_carry__0_i_15_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_2_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_3_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_4_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_5_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_6_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => \r_AXI_Remain_Number_carry__0_i_7_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(15),
      I5 => FS_Number(15),
      O => \r_AXI_Remain_Number_carry__0_i_8_n_0\
    );
\r_AXI_Remain_Number_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFE000100FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => r_AXI_Remain_Number_reg(14),
      I5 => FS_Number(14),
      O => \r_AXI_Remain_Number_carry__0_i_9_n_0\
    );
r_AXI_Remain_Number_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001E"
    )
        port map (
      I0 => B(6),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(7),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_1_n_0
    );
r_AXI_Remain_Number_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF960096"
    )
        port map (
      I0 => B(6),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => r_AXI_Remain_Number_reg(6),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => FS_Number(6),
      O => r_AXI_Remain_Number_carry_i_10_n_0
    );
r_AXI_Remain_Number_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF960096"
    )
        port map (
      I0 => B(5),
      I1 => r_AXI_Remain_Number_carry_i_18_n_0,
      I2 => r_AXI_Remain_Number_reg(5),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => FS_Number(5),
      O => r_AXI_Remain_Number_carry_i_11_n_0
    );
r_AXI_Remain_Number_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF960096"
    )
        port map (
      I0 => B(4),
      I1 => r_AXI_Remain_Number_carry_i_19_n_0,
      I2 => r_AXI_Remain_Number_reg(4),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => FS_Number(4),
      O => r_AXI_Remain_Number_carry_i_12_n_0
    );
r_AXI_Remain_Number_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF960096"
    )
        port map (
      I0 => B(3),
      I1 => r_AXI_Remain_Number_carry_i_20_n_0,
      I2 => r_AXI_Remain_Number_reg(3),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => FS_Number(3),
      O => r_AXI_Remain_Number_carry_i_13_n_0
    );
r_AXI_Remain_Number_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA9560000A956"
    )
        port map (
      I0 => B(2),
      I1 => B(1),
      I2 => B(0),
      I3 => r_AXI_Remain_Number_reg(2),
      I4 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I5 => FS_Number(2),
      O => r_AXI_Remain_Number_carry_i_14_n_0
    );
r_AXI_Remain_Number_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF960096"
    )
        port map (
      I0 => B(0),
      I1 => B(1),
      I2 => r_AXI_Remain_Number_reg(1),
      I3 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I4 => FS_Number(1),
      O => r_AXI_Remain_Number_carry_i_15_n_0
    );
r_AXI_Remain_Number_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => B(0),
      I1 => r_AXI_Remain_Number_reg(0),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I3 => FS_Number(0),
      O => r_AXI_Remain_Number_carry_i_16_n_0
    );
r_AXI_Remain_Number_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => B(5),
      I1 => B(3),
      I2 => B(1),
      I3 => B(2),
      I4 => B(0),
      I5 => B(4),
      O => r_AXI_Remain_Number_carry_i_17_n_0
    );
r_AXI_Remain_Number_carry_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => B(4),
      I1 => B(0),
      I2 => B(2),
      I3 => B(1),
      I4 => B(3),
      O => r_AXI_Remain_Number_carry_i_18_n_0
    );
r_AXI_Remain_Number_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => B(3),
      I1 => B(1),
      I2 => B(2),
      I3 => B(0),
      O => r_AXI_Remain_Number_carry_i_19_n_0
    );
r_AXI_Remain_Number_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_AXI_Remain_Number_carry_i_17_n_0,
      I1 => B(6),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_2_n_0
    );
r_AXI_Remain_Number_carry_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(0),
      I1 => B(2),
      I2 => B(1),
      O => r_AXI_Remain_Number_carry_i_20_n_0
    );
r_AXI_Remain_Number_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_AXI_Remain_Number_carry_i_18_n_0,
      I1 => B(5),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_3_n_0
    );
r_AXI_Remain_Number_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000001FFFE"
    )
        port map (
      I0 => B(3),
      I1 => B(1),
      I2 => B(2),
      I3 => B(0),
      I4 => B(4),
      I5 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_4_n_0
    );
r_AXI_Remain_Number_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001FE"
    )
        port map (
      I0 => B(0),
      I1 => B(2),
      I2 => B(1),
      I3 => B(3),
      I4 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_5_n_0
    );
r_AXI_Remain_Number_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0154"
    )
        port map (
      I0 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I1 => B(0),
      I2 => B(1),
      I3 => B(2),
      O => r_AXI_Remain_Number_carry_i_6_n_0
    );
r_AXI_Remain_Number_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => B(1),
      I1 => B(0),
      I2 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_7_n_0
    );
r_AXI_Remain_Number_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(0),
      I1 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      O => r_AXI_Remain_Number_carry_i_8_n_0
    );
r_AXI_Remain_Number_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA9560000A956"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => r_AXI_Remain_Number_reg(7),
      I4 => \r_AXI_Cur_Burst_Number[7]_i_4_n_0\,
      I5 => FS_Number(7),
      O => r_AXI_Remain_Number_carry_i_9_n_0
    );
\r_AXI_Remain_Number_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_15,
      Q => r_AXI_Remain_Number_reg(0),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_13\,
      Q => r_AXI_Remain_Number_reg(10),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_12\,
      Q => r_AXI_Remain_Number_reg(11),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_11\,
      Q => r_AXI_Remain_Number_reg(12),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_10\,
      Q => r_AXI_Remain_Number_reg(13),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_9\,
      Q => r_AXI_Remain_Number_reg(14),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_8\,
      Q => r_AXI_Remain_Number_reg(15),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_14,
      Q => r_AXI_Remain_Number_reg(1),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_13,
      Q => r_AXI_Remain_Number_reg(2),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_12,
      Q => r_AXI_Remain_Number_reg(3),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_11,
      Q => r_AXI_Remain_Number_reg(4),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_10,
      Q => r_AXI_Remain_Number_reg(5),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_9,
      Q => r_AXI_Remain_Number_reg(6),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => r_AXI_Remain_Number_carry_n_8,
      Q => r_AXI_Remain_Number_reg(7),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_15\,
      Q => r_AXI_Remain_Number_reg(8),
      R => RSTP
    );
\r_AXI_Remain_Number_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_AXI_Cur_Trans_Addr,
      D => \r_AXI_Remain_Number_carry__0_n_14\,
      Q => r_AXI_Remain_Number_reg(9),
      R => RSTP
    );
\r_AXI_Trans_Start_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => '1',
      D => AXI_Trans_Start,
      Q => p_1_in(1),
      S => RSTP
    );
\r_AXI_Trans_Start_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => '1',
      D => p_1_in(1),
      Q => \r_AXI_Trans_Start_d_reg_n_0_[1]\,
      S => RSTP
    );
r_AXI_Trans_Start_pos_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \r_AXI_Trans_Start_d_reg_n_0_[1]\,
      O => r_AXI_Trans_Start_pos0
    );
r_AXI_Trans_Start_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_AXI_Trans_Start_pos0,
      Q => r_AXI_Trans_Start_pos,
      R => RSTP
    );
r_fifo_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => r_st_current(0),
      I1 => r_st_current(2),
      I2 => r_st_current(1),
      I3 => i_rstn,
      O => r_fifo_rst_i_1_n_0
    );
r_fifo_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_fifo_rst_i_1_n_0,
      Q => fifo_rst,
      R => '0'
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20FFFF"
    )
        port map (
      I0 => \r_st_current[1]_i_1_n_0\,
      I1 => \r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0\,
      I2 => \r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0\,
      I3 => \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\,
      I4 => i_rstn,
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(1),
      I2 => r_st_current(0),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(1),
      I2 => r_st_current(0),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_3_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55005500C0FFC000"
    )
        port map (
      I0 => r_m_axis_s2mm_tvalid_i_2_n_0,
      I1 => \^r_m_axis_s2mm_cmd_tvalid_reg_0\,
      I2 => m_axis_s2mm_cmd_tready,
      I3 => r_st_current(1),
      I4 => r_AXI_Trans_Start_pos,
      I5 => r_st_current(0),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABFFAAAAAAAA"
    )
        port map (
      I0 => \r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0\,
      I1 => r_s_cnt_reg(2),
      I2 => r_s_cnt_reg(3),
      I3 => r_s_cnt_reg(4),
      I4 => \r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0\,
      I5 => \r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0\,
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_st_current(1),
      I1 => r_st_current(2),
      I2 => r_st_current(0),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_6_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_s_cnt_reg(15),
      I1 => r_s_cnt_reg(6),
      I2 => r_s_cnt_reg(14),
      I3 => \r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0\,
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_7_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => r_st_current(1),
      I1 => r_st_current(2),
      I2 => r_s_cnt_reg(12),
      I3 => r_s_cnt_reg(9),
      I4 => r_s_cnt_reg(11),
      I5 => r_s_cnt_reg(8),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_8_n_0\
    );
\r_m_axis_s2mm_cmd_tdata[63]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_s_cnt_reg(5),
      I1 => r_s_cnt_reg(10),
      I2 => r_s_cnt_reg(7),
      I3 => r_s_cnt_reg(13),
      O => \r_m_axis_s2mm_cmd_tdata[63]_i_9_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(10),
      Q => m_axis_s2mm_cmd_tdata(5),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(11),
      Q => m_axis_s2mm_cmd_tdata(6),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(12),
      Q => m_axis_s2mm_cmd_tdata(7),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      Q => m_axis_s2mm_cmd_tdata(8),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(0),
      Q => m_axis_s2mm_cmd_tdata(9),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(1),
      Q => m_axis_s2mm_cmd_tdata(10),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(2),
      Q => m_axis_s2mm_cmd_tdata(11),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(3),
      Q => m_axis_s2mm_cmd_tdata(12),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(4),
      Q => m_axis_s2mm_cmd_tdata(13),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(5),
      Q => m_axis_s2mm_cmd_tdata(14),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(6),
      Q => m_axis_s2mm_cmd_tdata(15),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(7),
      Q => m_axis_s2mm_cmd_tdata(16),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(8),
      Q => m_axis_s2mm_cmd_tdata(17),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(9),
      Q => m_axis_s2mm_cmd_tdata(18),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(10),
      Q => m_axis_s2mm_cmd_tdata(19),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(11),
      Q => m_axis_s2mm_cmd_tdata(20),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(12),
      Q => m_axis_s2mm_cmd_tdata(21),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(13),
      Q => m_axis_s2mm_cmd_tdata(22),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(14),
      Q => m_axis_s2mm_cmd_tdata(23),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(15),
      Q => m_axis_s2mm_cmd_tdata(24),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(16),
      Q => m_axis_s2mm_cmd_tdata(25),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(17),
      Q => m_axis_s2mm_cmd_tdata(26),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(18),
      Q => m_axis_s2mm_cmd_tdata(27),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(19),
      Q => m_axis_s2mm_cmd_tdata(28),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(20),
      Q => m_axis_s2mm_cmd_tdata(29),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(21),
      Q => m_axis_s2mm_cmd_tdata(30),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(22),
      Q => m_axis_s2mm_cmd_tdata(31),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(23),
      Q => m_axis_s2mm_cmd_tdata(32),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(24),
      Q => m_axis_s2mm_cmd_tdata(33),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(25),
      Q => m_axis_s2mm_cmd_tdata(34),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(26),
      Q => m_axis_s2mm_cmd_tdata(35),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(27),
      Q => m_axis_s2mm_cmd_tdata(36),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(5),
      Q => m_axis_s2mm_cmd_tdata(0),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(28),
      Q => m_axis_s2mm_cmd_tdata(37),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(29),
      Q => m_axis_s2mm_cmd_tdata(38),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(30),
      Q => m_axis_s2mm_cmd_tdata(39),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Trans_Addr_reg(31),
      Q => m_axis_s2mm_cmd_tdata(40),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(6),
      Q => m_axis_s2mm_cmd_tdata(1),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(7),
      Q => m_axis_s2mm_cmd_tdata(2),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(8),
      Q => m_axis_s2mm_cmd_tdata(3),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
\r_m_axis_s2mm_cmd_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      D => r_AXI_Cur_Burst_Byte(9),
      Q => m_axis_s2mm_cmd_tdata(4),
      R => \r_m_axis_s2mm_cmd_tdata[63]_i_1_n_0\
    );
r_m_axis_s2mm_cmd_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E0E0E0E0E0"
    )
        port map (
      I0 => \^r_m_axis_s2mm_cmd_tvalid_reg_0\,
      I1 => \r_m_axis_s2mm_cmd_tdata[63]_i_2_n_0\,
      I2 => i_rstn,
      I3 => \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\,
      I4 => r_m_axis_s2mm_cmd_tvalid_i_2_n_0,
      I5 => \r_st_current[1]_i_1_n_0\,
      O => r_m_axis_s2mm_cmd_tvalid_i_1_n_0
    );
r_m_axis_s2mm_cmd_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFCC00AA"
    )
        port map (
      I0 => r_AXI_Trans_Start_pos,
      I1 => r_m_axis_s2mm_cmd_tvalid_i_3_n_0,
      I2 => r_m_axis_s2mm_tvalid_i_2_n_0,
      I3 => r_st_current(0),
      I4 => r_st_current(1),
      I5 => r_st_current(2),
      O => r_m_axis_s2mm_cmd_tvalid_i_2_n_0
    );
r_m_axis_s2mm_cmd_tvalid_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => r_st_current(0),
      I1 => m_axis_s2mm_cmd_tready,
      I2 => \^r_m_axis_s2mm_cmd_tvalid_reg_0\,
      O => r_m_axis_s2mm_cmd_tvalid_i_3_n_0
    );
r_m_axis_s2mm_cmd_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_m_axis_s2mm_cmd_tvalid_i_1_n_0,
      Q => \^r_m_axis_s2mm_cmd_tvalid_reg_0\,
      R => '0'
    );
\r_m_axis_s2mm_tkeep_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_rstn,
      Q => m_axis_s2mm_tkeep(0),
      R => '0'
    );
r_m_axis_s2mm_tlast4_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => r_m_axis_s2mm_tlast4_carry_n_0,
      CO(6) => r_m_axis_s2mm_tlast4_carry_n_1,
      CO(5) => r_m_axis_s2mm_tlast4_carry_n_2,
      CO(4) => r_m_axis_s2mm_tlast4_carry_n_3,
      CO(3) => r_m_axis_s2mm_tlast4_carry_n_4,
      CO(2) => r_m_axis_s2mm_tlast4_carry_n_5,
      CO(1) => r_m_axis_s2mm_tlast4_carry_n_6,
      CO(0) => r_m_axis_s2mm_tlast4_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_r_m_axis_s2mm_tlast4_carry_O_UNCONNECTED(7 downto 0),
      S(7) => r_m_axis_s2mm_tlast4_carry_i_1_n_0,
      S(6) => r_m_axis_s2mm_tlast4_carry_i_2_n_0,
      S(5) => r_m_axis_s2mm_tlast4_carry_i_3_n_0,
      S(4) => r_m_axis_s2mm_tlast4_carry_i_4_n_0,
      S(3) => r_m_axis_s2mm_tlast4_carry_i_5_n_0,
      S(2) => r_m_axis_s2mm_tlast4_carry_i_6_n_0,
      S(1) => r_m_axis_s2mm_tlast4_carry_i_7_n_0,
      S(0) => r_m_axis_s2mm_tlast4_carry_i_8_n_0
    );
\r_m_axis_s2mm_tlast4_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => r_m_axis_s2mm_tlast4_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_r_m_axis_s2mm_tlast4_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => r_m_axis_s2mm_tlast4,
      CO(1) => \r_m_axis_s2mm_tlast4_carry__0_n_6\,
      CO(0) => \r_m_axis_s2mm_tlast4_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_r_m_axis_s2mm_tlast4_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \r_m_axis_s2mm_tlast4_carry__0_i_1_n_0\,
      S(1) => \r_m_axis_s2mm_tlast4_carry__0_i_2_n_0\,
      S(0) => \r_m_axis_s2mm_tlast4_carry__0_i_3_n_0\
    );
\r_m_axis_s2mm_tlast4_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tlast4_carry__0_i_1_n_0\
    );
\r_m_axis_s2mm_tlast4_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tlast4_carry__0_i_2_n_0\
    );
\r_m_axis_s2mm_tlast4_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tlast4_carry__0_i_3_n_0\
    );
r_m_axis_s2mm_tlast4_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      O => r_m_axis_s2mm_tlast4_carry_i_1_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => B(1),
      I1 => B(2),
      O => r_m_axis_s2mm_tlast4_carry_i_10_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      O => r_m_axis_s2mm_tlast4_carry_i_2_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(15),
      O => r_m_axis_s2mm_tlast4_carry_i_3_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000000000FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(14),
      I4 => r_AXI_Cur_Trans_Cnt_reg(12),
      I5 => r_AXI_Cur_Trans_Cnt_reg(13),
      O => r_m_axis_s2mm_tlast4_carry_i_4_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000000000FE"
    )
        port map (
      I0 => B(7),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(11),
      I4 => r_AXI_Cur_Trans_Cnt_reg(10),
      I5 => r_AXI_Cur_Trans_Cnt_reg(9),
      O => r_m_axis_s2mm_tlast4_carry_i_5_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002014014000014"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(8),
      I1 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I2 => B(6),
      I3 => B(7),
      I4 => r_AXI_Cur_Trans_Cnt_reg(7),
      I5 => r_AXI_Cur_Trans_Cnt_reg(6),
      O => r_m_axis_s2mm_tlast4_carry_i_6_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002014014000014"
    )
        port map (
      I0 => r_m_axis_s2mm_tvalid2_carry_i_9_n_0,
      I1 => r_m_axis_s2mm_tlast4_carry_i_10_n_0,
      I2 => B(3),
      I3 => B(4),
      I4 => r_AXI_Cur_Trans_Cnt_reg(4),
      I5 => r_AXI_Cur_Trans_Cnt_reg(3),
      O => r_m_axis_s2mm_tlast4_carry_i_7_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0960000000000960"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(2),
      I1 => B(2),
      I2 => r_AXI_Cur_Trans_Cnt_reg(1),
      I3 => B(1),
      I4 => r_AXI_Cur_Trans_Cnt_reg(0),
      I5 => B(0),
      O => r_m_axis_s2mm_tlast4_carry_i_8_n_0
    );
r_m_axis_s2mm_tlast4_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => B(5),
      I1 => B(3),
      I2 => B(2),
      I3 => B(1),
      I4 => B(4),
      O => r_m_axis_s2mm_tlast4_carry_i_9_n_0
    );
r_m_axis_s2mm_tlast_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rstn,
      O => RSTP
    );
r_m_axis_s2mm_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FFFF0000"
    )
        port map (
      I0 => r_m_axis_s2mm_tvalid2,
      I1 => m_axis_s2mm_tready,
      I2 => \^r_m_axis_s2mm_tvalid_reg_0\,
      I3 => r_m_axis_s2mm_tlast_i_3_n_0,
      I4 => r_m_axis_s2mm_tlast_i_4_n_0,
      I5 => \^m_axis_s2mm_tlast\,
      O => r_m_axis_s2mm_tlast_i_2_n_0
    );
r_m_axis_s2mm_tlast_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => r_st_current(1),
      I1 => r_st_current(0),
      I2 => r_st_current(2),
      O => r_m_axis_s2mm_tlast_i_3_n_0
    );
r_m_axis_s2mm_tlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888888F"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt0,
      I1 => r_m_axis_s2mm_tlast4,
      I2 => r_m_axis_s2mm_tlast4_carry_i_9_n_0,
      I3 => r_m_axis_s2mm_tlast_i_5_n_0,
      I4 => r_m_axis_s2mm_tlast_i_6_n_0,
      O => r_m_axis_s2mm_tlast_i_4_n_0
    );
r_m_axis_s2mm_tlast_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(10),
      I1 => r_AXI_Cur_Trans_Cnt_reg(15),
      I2 => r_AXI_Cur_Trans_Cnt_reg(13),
      I3 => r_AXI_Cur_Trans_Cnt_reg(4),
      I4 => r_AXI_Cur_Trans_Cnt_reg(2),
      I5 => r_m_axis_s2mm_tlast_i_7_n_0,
      O => r_m_axis_s2mm_tlast_i_5_n_0
    );
r_m_axis_s2mm_tlast_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_m_axis_s2mm_tlast_i_8_n_0,
      I1 => r_AXI_Cur_Trans_Cnt_reg(8),
      I2 => r_AXI_Cur_Trans_Cnt_reg(12),
      I3 => B(6),
      I4 => r_AXI_Cur_Trans_Cnt_reg(6),
      I5 => r_AXI_Cur_Trans_Cnt_reg(9),
      O => r_m_axis_s2mm_tlast_i_6_n_0
    );
r_m_axis_s2mm_tlast_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(0),
      I2 => r_st_current(1),
      I3 => r_AXI_Cur_Trans_Cnt_reg(3),
      I4 => r_AXI_Cur_Trans_Cnt_reg(5),
      I5 => r_AXI_Cur_Trans_Cnt_reg(1),
      O => r_m_axis_s2mm_tlast_i_7_n_0
    );
r_m_axis_s2mm_tlast_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(11),
      I1 => r_AXI_Cur_Trans_Cnt_reg(7),
      I2 => B(7),
      I3 => r_AXI_Cur_Trans_Cnt_reg(14),
      I4 => r_AXI_Cur_Trans_Cnt_reg(0),
      I5 => B(0),
      O => r_m_axis_s2mm_tlast_i_8_n_0
    );
r_m_axis_s2mm_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_m_axis_s2mm_tlast_i_2_n_0,
      Q => \^m_axis_s2mm_tlast\,
      R => RSTP
    );
r_m_axis_s2mm_tvalid2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => r_m_axis_s2mm_tvalid2_carry_n_0,
      CO(6) => r_m_axis_s2mm_tvalid2_carry_n_1,
      CO(5) => r_m_axis_s2mm_tvalid2_carry_n_2,
      CO(4) => r_m_axis_s2mm_tvalid2_carry_n_3,
      CO(3) => r_m_axis_s2mm_tvalid2_carry_n_4,
      CO(2) => r_m_axis_s2mm_tvalid2_carry_n_5,
      CO(1) => r_m_axis_s2mm_tvalid2_carry_n_6,
      CO(0) => r_m_axis_s2mm_tvalid2_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_r_m_axis_s2mm_tvalid2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => r_m_axis_s2mm_tvalid2_carry_i_1_n_0,
      S(6) => r_m_axis_s2mm_tvalid2_carry_i_2_n_0,
      S(5) => r_m_axis_s2mm_tvalid2_carry_i_3_n_0,
      S(4) => r_m_axis_s2mm_tvalid2_carry_i_4_n_0,
      S(3) => r_m_axis_s2mm_tvalid2_carry_i_5_n_0,
      S(2) => r_m_axis_s2mm_tvalid2_carry_i_6_n_0,
      S(1) => r_m_axis_s2mm_tvalid2_carry_i_7_n_0,
      S(0) => r_m_axis_s2mm_tvalid2_carry_i_8_n_0
    );
\r_m_axis_s2mm_tvalid2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => r_m_axis_s2mm_tvalid2_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_r_m_axis_s2mm_tvalid2_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => r_m_axis_s2mm_tvalid2,
      CO(1) => \r_m_axis_s2mm_tvalid2_carry__0_n_6\,
      CO(0) => \r_m_axis_s2mm_tvalid2_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_r_m_axis_s2mm_tvalid2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0\,
      S(1) => \r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0\,
      S(0) => \r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0\
    );
\r_m_axis_s2mm_tvalid2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tvalid2_carry__0_i_1_n_0\
    );
\r_m_axis_s2mm_tvalid2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tvalid2_carry__0_i_2_n_0\
    );
\r_m_axis_s2mm_tvalid2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      O => \r_m_axis_s2mm_tvalid2_carry__0_i_3_n_0\
    );
r_m_axis_s2mm_tvalid2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      O => r_m_axis_s2mm_tvalid2_carry_i_1_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      O => r_m_axis_s2mm_tvalid2_carry_i_2_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(15),
      O => r_m_axis_s2mm_tvalid2_carry_i_3_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000000000FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(14),
      I4 => r_AXI_Cur_Trans_Cnt_reg(13),
      I5 => r_AXI_Cur_Trans_Cnt_reg(12),
      O => r_m_axis_s2mm_tvalid2_carry_i_4_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000000000FE"
    )
        port map (
      I0 => B(7),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(11),
      I4 => r_AXI_Cur_Trans_Cnt_reg(10),
      I5 => r_AXI_Cur_Trans_Cnt_reg(9),
      O => r_m_axis_s2mm_tvalid2_carry_i_5_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002014014000014"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(8),
      I1 => r_AXI_Remain_Number_carry_i_17_n_0,
      I2 => B(6),
      I3 => B(7),
      I4 => r_AXI_Cur_Trans_Cnt_reg(7),
      I5 => r_AXI_Cur_Trans_Cnt_reg(6),
      O => r_m_axis_s2mm_tvalid2_carry_i_6_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002014014000014"
    )
        port map (
      I0 => r_m_axis_s2mm_tvalid2_carry_i_9_n_0,
      I1 => r_AXI_Remain_Number_carry_i_20_n_0,
      I2 => B(3),
      I3 => B(4),
      I4 => r_AXI_Cur_Trans_Cnt_reg(4),
      I5 => r_AXI_Cur_Trans_Cnt_reg(3),
      O => r_m_axis_s2mm_tvalid2_carry_i_7_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4120000800084120"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(0),
      I1 => r_AXI_Cur_Trans_Cnt_reg(1),
      I2 => B(1),
      I3 => B(0),
      I4 => B(2),
      I5 => r_AXI_Cur_Trans_Cnt_reg(2),
      O => r_m_axis_s2mm_tvalid2_carry_i_8_n_0
    );
r_m_axis_s2mm_tvalid2_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(5),
      I1 => B(5),
      O => r_m_axis_s2mm_tvalid2_carry_i_9_n_0
    );
r_m_axis_s2mm_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAA0000"
    )
        port map (
      I0 => r_m_axis_s2mm_tlast_i_3_n_0,
      I1 => \^r_m_axis_s2mm_tvalid_reg_0\,
      I2 => m_axis_s2mm_tready,
      I3 => r_m_axis_s2mm_tvalid2,
      I4 => i_rstn,
      I5 => r_m_axis_s2mm_tvalid_i_2_n_0,
      O => r_m_axis_s2mm_tvalid_i_1_n_0
    );
r_m_axis_s2mm_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => r_m_axis_s2mm_tvalid_i_3_n_0,
      I1 => r_m_axis_s2mm_tvalid_i_4_n_0,
      I2 => r_m_axis_s2mm_tvalid_i_5_n_0,
      I3 => r_m_axis_s2mm_tvalid_i_6_n_0,
      I4 => r_m_axis_s2mm_tvalid_i_7_n_0,
      I5 => r_m_axis_s2mm_tvalid_i_8_n_0,
      O => r_m_axis_s2mm_tvalid_i_2_n_0
    );
r_m_axis_s2mm_tvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF6"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(1),
      I1 => B(1),
      I2 => r_AXI_Cur_Trans_Cnt_reg(15),
      I3 => r_AXI_Cur_Trans_Cnt_reg(12),
      I4 => r_AXI_Cur_Trans_Cnt_reg(14),
      O => r_m_axis_s2mm_tvalid_i_3_n_0
    );
r_m_axis_s2mm_tvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(0),
      I1 => r_AXI_Cur_Trans_Cnt_reg(0),
      I2 => B(6),
      I3 => r_AXI_Cur_Trans_Cnt_reg(6),
      O => r_m_axis_s2mm_tvalid_i_4_n_0
    );
r_m_axis_s2mm_tvalid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => B(4),
      I1 => r_AXI_Cur_Trans_Cnt_reg(4),
      I2 => B(7),
      I3 => r_AXI_Cur_Trans_Cnt_reg(7),
      O => r_m_axis_s2mm_tvalid_i_5_n_0
    );
r_m_axis_s2mm_tvalid_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => B(5),
      I1 => r_AXI_Cur_Trans_Cnt_reg(5),
      I2 => B(3),
      I3 => r_AXI_Cur_Trans_Cnt_reg(3),
      O => r_m_axis_s2mm_tvalid_i_6_n_0
    );
r_m_axis_s2mm_tvalid_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => B(2),
      I1 => r_AXI_Cur_Trans_Cnt_reg(2),
      I2 => r_AXI_Cur_Trans_Cnt_reg(9),
      O => r_m_axis_s2mm_tvalid_i_7_n_0
    );
r_m_axis_s2mm_tvalid_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_AXI_Cur_Trans_Cnt_reg(10),
      I1 => r_AXI_Cur_Trans_Cnt_reg(8),
      I2 => r_AXI_Cur_Trans_Cnt_reg(13),
      I3 => r_AXI_Cur_Trans_Cnt_reg(11),
      O => r_m_axis_s2mm_tvalid_i_8_n_0
    );
r_m_axis_s2mm_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_m_axis_s2mm_tvalid_i_1_n_0,
      Q => \^r_m_axis_s2mm_tvalid_reg_0\,
      R => '0'
    );
r_s_cnt0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \r_s_cnt_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => r_s_cnt0_carry_n_0,
      CO(6) => r_s_cnt0_carry_n_1,
      CO(5) => r_s_cnt0_carry_n_2,
      CO(4) => r_s_cnt0_carry_n_3,
      CO(3) => r_s_cnt0_carry_n_4,
      CO(2) => r_s_cnt0_carry_n_5,
      CO(1) => r_s_cnt0_carry_n_6,
      CO(0) => r_s_cnt0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
      S(7 downto 1) => r_s_cnt_reg(8 downto 2),
      S(0) => \r_s_cnt_reg_n_0_[1]\
    );
\r_s_cnt0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => r_s_cnt0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_r_s_cnt0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \r_s_cnt0_carry__0_n_2\,
      CO(4) => \r_s_cnt0_carry__0_n_3\,
      CO(3) => \r_s_cnt0_carry__0_n_4\,
      CO(2) => \r_s_cnt0_carry__0_n_5\,
      CO(1) => \r_s_cnt0_carry__0_n_6\,
      CO(0) => \r_s_cnt0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_r_s_cnt0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => \p_0_in__0\(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => r_s_cnt_reg(15 downto 9)
    );
\r_s_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_s_cnt_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\r_s_cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => i_rstn,
      I1 => r_st_current(0),
      I2 => r_st_current(2),
      I3 => r_st_current(1),
      O => r_s_cnt0
    );
\r_s_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \r_s_cnt_reg_n_0_[0]\,
      R => r_s_cnt0
    );
\r_s_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => r_s_cnt_reg(10),
      R => r_s_cnt0
    );
\r_s_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(11),
      Q => r_s_cnt_reg(11),
      R => r_s_cnt0
    );
\r_s_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(12),
      Q => r_s_cnt_reg(12),
      R => r_s_cnt0
    );
\r_s_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(13),
      Q => r_s_cnt_reg(13),
      R => r_s_cnt0
    );
\r_s_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(14),
      Q => r_s_cnt_reg(14),
      R => r_s_cnt0
    );
\r_s_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(15),
      Q => r_s_cnt_reg(15),
      R => r_s_cnt0
    );
\r_s_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \r_s_cnt_reg_n_0_[1]\,
      R => r_s_cnt0
    );
\r_s_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => r_s_cnt_reg(2),
      R => r_s_cnt0
    );
\r_s_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => r_s_cnt_reg(3),
      R => r_s_cnt0
    );
\r_s_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => r_s_cnt_reg(4),
      R => r_s_cnt0
    );
\r_s_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => r_s_cnt_reg(5),
      R => r_s_cnt0
    );
\r_s_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => r_s_cnt_reg(6),
      R => r_s_cnt0
    );
\r_s_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => r_s_cnt_reg(7),
      R => r_s_cnt0
    );
\r_s_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => r_s_cnt_reg(8),
      R => r_s_cnt0
    );
\r_s_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => r_s_cnt_reg(9),
      R => r_s_cnt0
    );
\r_st_current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7500"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(1),
      I2 => r_st_current(0),
      I3 => \r_m_axis_s2mm_cmd_tdata[63]_i_4_n_0\,
      I4 => \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\,
      O => \r_st_current[0]_i_1_n_0\
    );
\r_st_current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1544"
    )
        port map (
      I0 => r_st_current(2),
      I1 => r_st_current(0),
      I2 => r_m_axis_s2mm_tvalid_i_2_n_0,
      I3 => r_st_current(1),
      O => \r_st_current[1]_i_1_n_0\
    );
\r_st_current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CC8888FCCCCCCC"
    )
        port map (
      I0 => \r_st_current[2]_i_2_n_0\,
      I1 => \r_m_axis_s2mm_cmd_tdata[63]_i_5_n_0\,
      I2 => r_m_axis_s2mm_tvalid_i_2_n_0,
      I3 => r_st_current(1),
      I4 => r_st_current(0),
      I5 => r_st_current(2),
      O => \r_st_current[2]_i_1_n_0\
    );
\r_st_current[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => r_AXI_Remain_Number_reg(15),
      I1 => \r_st_current[2]_i_3_n_0\,
      I2 => r_AXI_Remain_Number_reg(13),
      I3 => r_AXI_Remain_Number_reg(14),
      I4 => r_AXI_Remain_Number_reg(12),
      O => \r_st_current[2]_i_2_n_0\
    );
\r_st_current[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_st_current[2]_i_4_n_0\,
      I1 => r_AXI_Remain_Number_reg(9),
      I2 => r_AXI_Remain_Number_reg(11),
      I3 => r_AXI_Remain_Number_reg(10),
      I4 => \r_st_current[2]_i_5_n_0\,
      I5 => \r_st_current[2]_i_6_n_0\,
      O => \r_st_current[2]_i_3_n_0\
    );
\r_st_current[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => B(6),
      I1 => r_AXI_Remain_Number_reg(6),
      I2 => r_AXI_Remain_Number_reg(7),
      I3 => B(7),
      I4 => r_AXI_Remain_Number_reg(8),
      O => \r_st_current[2]_i_4_n_0\
    );
\r_st_current[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => B(0),
      I1 => r_AXI_Remain_Number_reg(0),
      I2 => r_AXI_Remain_Number_reg(2),
      I3 => B(2),
      I4 => r_AXI_Remain_Number_reg(1),
      I5 => B(1),
      O => \r_st_current[2]_i_5_n_0\
    );
\r_st_current[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_AXI_Remain_Number_reg(4),
      I1 => B(4),
      I2 => r_AXI_Remain_Number_reg(5),
      I3 => B(5),
      I4 => B(3),
      I5 => r_AXI_Remain_Number_reg(3),
      O => \r_st_current[2]_i_6_n_0\
    );
\r_st_current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_st_current[0]_i_1_n_0\,
      Q => r_st_current(0),
      R => RSTP
    );
\r_st_current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_st_current[1]_i_1_n_0\,
      Q => r_st_current(1),
      R => RSTP
    );
\r_st_current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_st_current[2]_i_1_n_0\,
      Q => r_st_current(2),
      R => RSTP
    );
\r_st_prev_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_st_current(0),
      Q => r_st_prev(0),
      R => RSTP
    );
\r_st_prev_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_st_current(1),
      Q => r_st_prev(1),
      R => RSTP
    );
\r_st_prev_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_st_current(2),
      Q => r_st_prev(2),
      R => RSTP
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_FIFO_To_DataMover_1_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_FIFO_To_DataMover_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_FIFO_To_DataMover_1_0 : entity is "system_FIFO_To_DataMover_1_0,FIFO_To_DataMover,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_FIFO_To_DataMover_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_FIFO_To_DataMover_1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_FIFO_To_DataMover_1_0 : entity is "FIFO_To_DataMover,Vivado 2022.2";
end system_FIFO_To_DataMover_1_0;

architecture STRUCTURE of system_FIFO_To_DataMover_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fifo_dout\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^i_clk\ : STD_LOGIC;
  signal \^m_axis_s2mm_cmd_tdata\ : STD_LOGIC_VECTOR ( 63 downto 5 );
  signal \^m_axis_s2mm_tkeep\ : STD_LOGIC_VECTOR ( 30 to 30 );
  signal n_0_142 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute X_INTERFACE_INFO of fifo_rd_clk : signal is "xilinx.com:signal:clock:1.0 fifo_rd_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_rd_clk : signal is "XIL_INTERFACENAME fifo_rd_clk, ASSOCIATED_BUSIF FIFO_READ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_FIFO_To_DataMover_1_0_fifo_rd_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute X_INTERFACE_INFO of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute X_INTERFACE_PARAMETER of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF M_AXIS_S2MM:M_AXIS_S2MM_CMD, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_rstn : signal is "xilinx.com:signal:reset:1.0 i_rstn RST";
  attribute X_INTERFACE_PARAMETER of i_rstn : signal is "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_s2mm_cmd_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TREADY";
  attribute X_INTERFACE_INFO of m_axis_s2mm_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_s2mm_cmd_tvalid : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_s2mm_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TLAST";
  attribute X_INTERFACE_INFO of m_axis_s2mm_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TREADY";
  attribute X_INTERFACE_INFO of m_axis_s2mm_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_s2mm_tvalid : signal is "XIL_INTERFACENAME M_AXIS_S2MM, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
  attribute X_INTERFACE_INFO of m_axis_s2mm_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_CMD TDATA";
  attribute X_INTERFACE_INFO of m_axis_s2mm_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TDATA";
  attribute X_INTERFACE_INFO of m_axis_s2mm_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TKEEP";
begin
  \^fifo_dout\(255 downto 0) <= fifo_dout(255 downto 0);
  \^i_clk\ <= i_clk;
  fifo_rd_clk <= \^i_clk\;
  m_axis_s2mm_cmd_tdata(71) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(70) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(69) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(68) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(67) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(66) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(65) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(64) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(63 downto 32) <= \^m_axis_s2mm_cmd_tdata\(63 downto 32);
  m_axis_s2mm_cmd_tdata(31) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(30) <= \^m_axis_s2mm_cmd_tdata\(23);
  m_axis_s2mm_cmd_tdata(29) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(28) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(27) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(26) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(25) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(24) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(23) <= \^m_axis_s2mm_cmd_tdata\(23);
  m_axis_s2mm_cmd_tdata(22) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(21) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(20) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(19) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(18) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(17) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(16) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(15) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(14) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(13) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(12 downto 5) <= \^m_axis_s2mm_cmd_tdata\(12 downto 5);
  m_axis_s2mm_cmd_tdata(4) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(3) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(2) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(1) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(0) <= \<const0>\;
  m_axis_s2mm_tdata(255 downto 0) <= \^fifo_dout\(255 downto 0);
  m_axis_s2mm_tkeep(31) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(30) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(29) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(28) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(27) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(26) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(25) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(24) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(23) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(22) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(21) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(20) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(19) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(18) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(17) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(16) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(15) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(14) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(13) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(12) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(11) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(10) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(9) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(8) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(7) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(6) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(5) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(4) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(3) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(2) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(1) <= \^m_axis_s2mm_tkeep\(30);
  m_axis_s2mm_tkeep(0) <= \^m_axis_s2mm_tkeep\(30);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_142: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rstn,
      O => n_0_142
    );
inst: entity work.system_FIFO_To_DataMover_1_0_FIFO_To_DataMover
     port map (
      AXI_Trans_Addr(31 downto 0) => AXI_Trans_Addr(31 downto 0),
      AXI_Trans_Start => AXI_Trans_Start,
      FS_Number(15 downto 0) => FS_Number(15 downto 0),
      fifo_rd_en => fifo_rd_en,
      fifo_rst => fifo_rst,
      i_clk => \^i_clk\,
      i_rstn => i_rstn,
      m_axis_s2mm_cmd_tdata(40 downto 9) => \^m_axis_s2mm_cmd_tdata\(63 downto 32),
      m_axis_s2mm_cmd_tdata(8) => \^m_axis_s2mm_cmd_tdata\(23),
      m_axis_s2mm_cmd_tdata(7 downto 0) => \^m_axis_s2mm_cmd_tdata\(12 downto 5),
      m_axis_s2mm_cmd_tready => m_axis_s2mm_cmd_tready,
      m_axis_s2mm_tkeep(0) => \^m_axis_s2mm_tkeep\(30),
      m_axis_s2mm_tlast => m_axis_s2mm_tlast,
      m_axis_s2mm_tready => m_axis_s2mm_tready,
      r_m_axis_s2mm_cmd_tvalid_reg_0 => m_axis_s2mm_cmd_tvalid,
      r_m_axis_s2mm_tvalid_reg_0 => m_axis_s2mm_tvalid
    );
end STRUCTURE;
