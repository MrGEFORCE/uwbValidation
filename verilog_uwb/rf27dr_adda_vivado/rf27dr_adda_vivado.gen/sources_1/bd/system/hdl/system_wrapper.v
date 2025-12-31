//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 31 10:06:49 2025
//Host        : LAPTOP-0CVSEQS8 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (adc0_clk_clk_n,
    adc0_clk_clk_p,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    adc2_clk_clk_n,
    adc2_clk_clk_p,
    adc3_clk_clk_n,
    adc3_clk_clk_p,
    control_in,
    control_out,
    dac0_clk_clk_n,
    dac0_clk_clk_p,
    dac1_clk_clk_n,
    dac1_clk_clk_p,
    data_clk,
    data_in,
    init_ready,
    lmk_sync,
    m00_axis_tdata,
    m00_axis_tready,
    m00_axis_tvalid,
    m01_axis_tdata,
    m01_axis_tready,
    m01_axis_tvalid,
    m02_axis_tdata,
    m02_axis_tready,
    m02_axis_tvalid,
    m03_axis_tdata,
    m03_axis_tready,
    m03_axis_tvalid,
    m10_axis_tdata,
    m10_axis_tready,
    m10_axis_tvalid,
    m11_axis_tdata,
    m11_axis_tready,
    m11_axis_tvalid,
    m12_axis_tdata,
    m12_axis_tready,
    m12_axis_tvalid,
    m13_axis_tdata,
    m13_axis_tready,
    m13_axis_tvalid,
    m20_axis_tdata,
    m20_axis_tready,
    m20_axis_tvalid,
    m21_axis_tdata,
    m21_axis_tready,
    m21_axis_tvalid,
    m22_axis_tdata,
    m22_axis_tready,
    m22_axis_tvalid,
    m23_axis_tdata,
    m23_axis_tready,
    m23_axis_tvalid,
    m30_axis_tdata,
    m30_axis_tready,
    m30_axis_tvalid,
    m31_axis_tdata,
    m31_axis_tready,
    m31_axis_tvalid,
    m32_axis_tdata,
    m32_axis_tready,
    m32_axis_tvalid,
    m33_axis_tdata,
    m33_axis_tready,
    m33_axis_tvalid,
    phase_inc,
    pl_resetn0,
    reset_n_dds,
    s00_axis_tdata,
    s00_axis_tready,
    s00_axis_tvalid,
    s01_axis_tdata,
    s01_axis_tready,
    s01_axis_tvalid,
    s02_axis_tdata,
    s02_axis_tready,
    s02_axis_tvalid,
    s03_axis_tdata,
    s03_axis_tready,
    s03_axis_tvalid,
    s10_axis_tdata,
    s10_axis_tready,
    s10_axis_tvalid,
    s11_axis_tdata,
    s11_axis_tready,
    s11_axis_tvalid,
    s12_axis_tdata,
    s12_axis_tready,
    s12_axis_tvalid,
    s13_axis_tdata,
    s13_axis_tready,
    s13_axis_tvalid,
    sysref_in_diff_n,
    sysref_in_diff_p,
    user_sysref_adc,
    user_sysref_dac,
    vin0_01_v_n,
    vin0_01_v_p,
    vin0_23_v_n,
    vin0_23_v_p,
    vin1_01_v_n,
    vin1_01_v_p,
    vin1_23_v_n,
    vin1_23_v_p,
    vin2_01_v_n,
    vin2_01_v_p,
    vin2_23_v_n,
    vin2_23_v_p,
    vin3_01_v_n,
    vin3_01_v_p,
    vin3_23_v_n,
    vin3_23_v_p,
    vout00_v_n,
    vout00_v_p,
    vout01_v_n,
    vout01_v_p,
    vout02_v_n,
    vout02_v_p,
    vout03_v_n,
    vout03_v_p,
    vout10_v_n,
    vout10_v_p,
    vout11_v_n,
    vout11_v_p,
    vout12_v_n,
    vout12_v_p,
    vout13_v_n,
    vout13_v_p);
  input adc0_clk_clk_n;
  input adc0_clk_clk_p;
  input adc1_clk_clk_n;
  input adc1_clk_clk_p;
  input adc2_clk_clk_n;
  input adc2_clk_clk_p;
  input adc3_clk_clk_n;
  input adc3_clk_clk_p;
  output [1:0]control_in;
  input [1:0]control_out;
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input dac1_clk_clk_n;
  input dac1_clk_clk_p;
  output data_clk;
  output [511:0]data_in;
  output init_ready;
  output [0:0]lmk_sync;
  output [63:0]m00_axis_tdata;
  input m00_axis_tready;
  output m00_axis_tvalid;
  output [63:0]m01_axis_tdata;
  input m01_axis_tready;
  output m01_axis_tvalid;
  output [63:0]m02_axis_tdata;
  input m02_axis_tready;
  output m02_axis_tvalid;
  output [63:0]m03_axis_tdata;
  input m03_axis_tready;
  output m03_axis_tvalid;
  output [63:0]m10_axis_tdata;
  input m10_axis_tready;
  output m10_axis_tvalid;
  output [63:0]m11_axis_tdata;
  input m11_axis_tready;
  output m11_axis_tvalid;
  output [63:0]m12_axis_tdata;
  input m12_axis_tready;
  output m12_axis_tvalid;
  output [63:0]m13_axis_tdata;
  input m13_axis_tready;
  output m13_axis_tvalid;
  output [63:0]m20_axis_tdata;
  input m20_axis_tready;
  output m20_axis_tvalid;
  output [63:0]m21_axis_tdata;
  input m21_axis_tready;
  output m21_axis_tvalid;
  output [63:0]m22_axis_tdata;
  input m22_axis_tready;
  output m22_axis_tvalid;
  output [63:0]m23_axis_tdata;
  input m23_axis_tready;
  output m23_axis_tvalid;
  output [63:0]m30_axis_tdata;
  input m30_axis_tready;
  output m30_axis_tvalid;
  output [63:0]m31_axis_tdata;
  input m31_axis_tready;
  output m31_axis_tvalid;
  output [63:0]m32_axis_tdata;
  input m32_axis_tready;
  output m32_axis_tvalid;
  output [63:0]m33_axis_tdata;
  input m33_axis_tready;
  output m33_axis_tvalid;
  output [31:0]phase_inc;
  output pl_resetn0;
  output reset_n_dds;
  input [127:0]s00_axis_tdata;
  output s00_axis_tready;
  input s00_axis_tvalid;
  input [127:0]s01_axis_tdata;
  output s01_axis_tready;
  input s01_axis_tvalid;
  input [127:0]s02_axis_tdata;
  output s02_axis_tready;
  input s02_axis_tvalid;
  input [127:0]s03_axis_tdata;
  output s03_axis_tready;
  input s03_axis_tvalid;
  input [127:0]s10_axis_tdata;
  output s10_axis_tready;
  input s10_axis_tvalid;
  input [127:0]s11_axis_tdata;
  output s11_axis_tready;
  input s11_axis_tvalid;
  input [127:0]s12_axis_tdata;
  output s12_axis_tready;
  input s12_axis_tvalid;
  input [127:0]s13_axis_tdata;
  output s13_axis_tready;
  input s13_axis_tvalid;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input user_sysref_adc;
  input user_sysref_dac;
  input vin0_01_v_n;
  input vin0_01_v_p;
  input vin0_23_v_n;
  input vin0_23_v_p;
  input vin1_01_v_n;
  input vin1_01_v_p;
  input vin1_23_v_n;
  input vin1_23_v_p;
  input vin2_01_v_n;
  input vin2_01_v_p;
  input vin2_23_v_n;
  input vin2_23_v_p;
  input vin3_01_v_n;
  input vin3_01_v_p;
  input vin3_23_v_n;
  input vin3_23_v_p;
  output vout00_v_n;
  output vout00_v_p;
  output vout01_v_n;
  output vout01_v_p;
  output vout02_v_n;
  output vout02_v_p;
  output vout03_v_n;
  output vout03_v_p;
  output vout10_v_n;
  output vout10_v_p;
  output vout11_v_n;
  output vout11_v_p;
  output vout12_v_n;
  output vout12_v_p;
  output vout13_v_n;
  output vout13_v_p;

  wire adc0_clk_clk_n;
  wire adc0_clk_clk_p;
  wire adc1_clk_clk_n;
  wire adc1_clk_clk_p;
  wire adc2_clk_clk_n;
  wire adc2_clk_clk_p;
  wire adc3_clk_clk_n;
  wire adc3_clk_clk_p;
  wire [1:0]control_in;
  wire [1:0]control_out;
  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire dac1_clk_clk_n;
  wire dac1_clk_clk_p;
  wire data_clk;
  wire [511:0]data_in;
  wire init_ready;
  wire [0:0]lmk_sync;
  wire [63:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [63:0]m01_axis_tdata;
  wire m01_axis_tready;
  wire m01_axis_tvalid;
  wire [63:0]m02_axis_tdata;
  wire m02_axis_tready;
  wire m02_axis_tvalid;
  wire [63:0]m03_axis_tdata;
  wire m03_axis_tready;
  wire m03_axis_tvalid;
  wire [63:0]m10_axis_tdata;
  wire m10_axis_tready;
  wire m10_axis_tvalid;
  wire [63:0]m11_axis_tdata;
  wire m11_axis_tready;
  wire m11_axis_tvalid;
  wire [63:0]m12_axis_tdata;
  wire m12_axis_tready;
  wire m12_axis_tvalid;
  wire [63:0]m13_axis_tdata;
  wire m13_axis_tready;
  wire m13_axis_tvalid;
  wire [63:0]m20_axis_tdata;
  wire m20_axis_tready;
  wire m20_axis_tvalid;
  wire [63:0]m21_axis_tdata;
  wire m21_axis_tready;
  wire m21_axis_tvalid;
  wire [63:0]m22_axis_tdata;
  wire m22_axis_tready;
  wire m22_axis_tvalid;
  wire [63:0]m23_axis_tdata;
  wire m23_axis_tready;
  wire m23_axis_tvalid;
  wire [63:0]m30_axis_tdata;
  wire m30_axis_tready;
  wire m30_axis_tvalid;
  wire [63:0]m31_axis_tdata;
  wire m31_axis_tready;
  wire m31_axis_tvalid;
  wire [63:0]m32_axis_tdata;
  wire m32_axis_tready;
  wire m32_axis_tvalid;
  wire [63:0]m33_axis_tdata;
  wire m33_axis_tready;
  wire m33_axis_tvalid;
  wire [31:0]phase_inc;
  wire pl_resetn0;
  wire reset_n_dds;
  wire [127:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [127:0]s01_axis_tdata;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire [127:0]s02_axis_tdata;
  wire s02_axis_tready;
  wire s02_axis_tvalid;
  wire [127:0]s03_axis_tdata;
  wire s03_axis_tready;
  wire s03_axis_tvalid;
  wire [127:0]s10_axis_tdata;
  wire s10_axis_tready;
  wire s10_axis_tvalid;
  wire [127:0]s11_axis_tdata;
  wire s11_axis_tready;
  wire s11_axis_tvalid;
  wire [127:0]s12_axis_tdata;
  wire s12_axis_tready;
  wire s12_axis_tvalid;
  wire [127:0]s13_axis_tdata;
  wire s13_axis_tready;
  wire s13_axis_tvalid;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire user_sysref_adc;
  wire user_sysref_dac;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vin0_23_v_n;
  wire vin0_23_v_p;
  wire vin1_01_v_n;
  wire vin1_01_v_p;
  wire vin1_23_v_n;
  wire vin1_23_v_p;
  wire vin2_01_v_n;
  wire vin2_01_v_p;
  wire vin2_23_v_n;
  wire vin2_23_v_p;
  wire vin3_01_v_n;
  wire vin3_01_v_p;
  wire vin3_23_v_n;
  wire vin3_23_v_p;
  wire vout00_v_n;
  wire vout00_v_p;
  wire vout01_v_n;
  wire vout01_v_p;
  wire vout02_v_n;
  wire vout02_v_p;
  wire vout03_v_n;
  wire vout03_v_p;
  wire vout10_v_n;
  wire vout10_v_p;
  wire vout11_v_n;
  wire vout11_v_p;
  wire vout12_v_n;
  wire vout12_v_p;
  wire vout13_v_n;
  wire vout13_v_p;

  system system_i
       (.adc0_clk_clk_n(adc0_clk_clk_n),
        .adc0_clk_clk_p(adc0_clk_clk_p),
        .adc1_clk_clk_n(adc1_clk_clk_n),
        .adc1_clk_clk_p(adc1_clk_clk_p),
        .adc2_clk_clk_n(adc2_clk_clk_n),
        .adc2_clk_clk_p(adc2_clk_clk_p),
        .adc3_clk_clk_n(adc3_clk_clk_n),
        .adc3_clk_clk_p(adc3_clk_clk_p),
        .control_in(control_in),
        .control_out(control_out),
        .dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .dac1_clk_clk_n(dac1_clk_clk_n),
        .dac1_clk_clk_p(dac1_clk_clk_p),
        .data_clk(data_clk),
        .data_in(data_in),
        .init_ready(init_ready),
        .lmk_sync(lmk_sync),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .m01_axis_tdata(m01_axis_tdata),
        .m01_axis_tready(m01_axis_tready),
        .m01_axis_tvalid(m01_axis_tvalid),
        .m02_axis_tdata(m02_axis_tdata),
        .m02_axis_tready(m02_axis_tready),
        .m02_axis_tvalid(m02_axis_tvalid),
        .m03_axis_tdata(m03_axis_tdata),
        .m03_axis_tready(m03_axis_tready),
        .m03_axis_tvalid(m03_axis_tvalid),
        .m10_axis_tdata(m10_axis_tdata),
        .m10_axis_tready(m10_axis_tready),
        .m10_axis_tvalid(m10_axis_tvalid),
        .m11_axis_tdata(m11_axis_tdata),
        .m11_axis_tready(m11_axis_tready),
        .m11_axis_tvalid(m11_axis_tvalid),
        .m12_axis_tdata(m12_axis_tdata),
        .m12_axis_tready(m12_axis_tready),
        .m12_axis_tvalid(m12_axis_tvalid),
        .m13_axis_tdata(m13_axis_tdata),
        .m13_axis_tready(m13_axis_tready),
        .m13_axis_tvalid(m13_axis_tvalid),
        .m20_axis_tdata(m20_axis_tdata),
        .m20_axis_tready(m20_axis_tready),
        .m20_axis_tvalid(m20_axis_tvalid),
        .m21_axis_tdata(m21_axis_tdata),
        .m21_axis_tready(m21_axis_tready),
        .m21_axis_tvalid(m21_axis_tvalid),
        .m22_axis_tdata(m22_axis_tdata),
        .m22_axis_tready(m22_axis_tready),
        .m22_axis_tvalid(m22_axis_tvalid),
        .m23_axis_tdata(m23_axis_tdata),
        .m23_axis_tready(m23_axis_tready),
        .m23_axis_tvalid(m23_axis_tvalid),
        .m30_axis_tdata(m30_axis_tdata),
        .m30_axis_tready(m30_axis_tready),
        .m30_axis_tvalid(m30_axis_tvalid),
        .m31_axis_tdata(m31_axis_tdata),
        .m31_axis_tready(m31_axis_tready),
        .m31_axis_tvalid(m31_axis_tvalid),
        .m32_axis_tdata(m32_axis_tdata),
        .m32_axis_tready(m32_axis_tready),
        .m32_axis_tvalid(m32_axis_tvalid),
        .m33_axis_tdata(m33_axis_tdata),
        .m33_axis_tready(m33_axis_tready),
        .m33_axis_tvalid(m33_axis_tvalid),
        .phase_inc(phase_inc),
        .pl_resetn0(pl_resetn0),
        .reset_n_dds(reset_n_dds),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s01_axis_tdata(s01_axis_tdata),
        .s01_axis_tready(s01_axis_tready),
        .s01_axis_tvalid(s01_axis_tvalid),
        .s02_axis_tdata(s02_axis_tdata),
        .s02_axis_tready(s02_axis_tready),
        .s02_axis_tvalid(s02_axis_tvalid),
        .s03_axis_tdata(s03_axis_tdata),
        .s03_axis_tready(s03_axis_tready),
        .s03_axis_tvalid(s03_axis_tvalid),
        .s10_axis_tdata(s10_axis_tdata),
        .s10_axis_tready(s10_axis_tready),
        .s10_axis_tvalid(s10_axis_tvalid),
        .s11_axis_tdata(s11_axis_tdata),
        .s11_axis_tready(s11_axis_tready),
        .s11_axis_tvalid(s11_axis_tvalid),
        .s12_axis_tdata(s12_axis_tdata),
        .s12_axis_tready(s12_axis_tready),
        .s12_axis_tvalid(s12_axis_tvalid),
        .s13_axis_tdata(s13_axis_tdata),
        .s13_axis_tready(s13_axis_tready),
        .s13_axis_tvalid(s13_axis_tvalid),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .user_sysref_adc(user_sysref_adc),
        .user_sysref_dac(user_sysref_dac),
        .vin0_01_v_n(vin0_01_v_n),
        .vin0_01_v_p(vin0_01_v_p),
        .vin0_23_v_n(vin0_23_v_n),
        .vin0_23_v_p(vin0_23_v_p),
        .vin1_01_v_n(vin1_01_v_n),
        .vin1_01_v_p(vin1_01_v_p),
        .vin1_23_v_n(vin1_23_v_n),
        .vin1_23_v_p(vin1_23_v_p),
        .vin2_01_v_n(vin2_01_v_n),
        .vin2_01_v_p(vin2_01_v_p),
        .vin2_23_v_n(vin2_23_v_n),
        .vin2_23_v_p(vin2_23_v_p),
        .vin3_01_v_n(vin3_01_v_n),
        .vin3_01_v_p(vin3_01_v_p),
        .vin3_23_v_n(vin3_23_v_n),
        .vin3_23_v_p(vin3_23_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p),
        .vout01_v_n(vout01_v_n),
        .vout01_v_p(vout01_v_p),
        .vout02_v_n(vout02_v_n),
        .vout02_v_p(vout02_v_p),
        .vout03_v_n(vout03_v_n),
        .vout03_v_p(vout03_v_p),
        .vout10_v_n(vout10_v_n),
        .vout10_v_p(vout10_v_p),
        .vout11_v_n(vout11_v_n),
        .vout11_v_p(vout11_v_p),
        .vout12_v_n(vout12_v_n),
        .vout12_v_p(vout12_v_p),
        .vout13_v_n(vout13_v_n),
        .vout13_v_p(vout13_v_p));
endmodule
