//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 10 11:08:45 2025
//Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (gpio_rtl_0_tri_i,
    gpio_rtl_1_tri_o);
  input [1:0]gpio_rtl_0_tri_i;
  output [2:0]gpio_rtl_1_tri_o;

  wire [1:0]gpio_rtl_0_tri_i;
  wire [2:0]gpio_rtl_1_tri_o;

  design_1 design_1_i
       (.gpio_rtl_0_tri_i(gpio_rtl_0_tri_i),
        .gpio_rtl_1_tri_o(gpio_rtl_1_tri_o));
endmodule
