`timescale 1ns / 1ps
module adc_dac_ddsloop(
    //  global clock
    input           pl_clk_n,
    input           pl_clk_p,
    input           pl_sysref_n,
    input           pl_sysref_p,
    
    //  rf signal
    input           adc0_clk_n,
    input           adc0_clk_p,
    input           adc1_clk_n,
    input           adc1_clk_p,
    input           adc2_clk_n,
    input           adc2_clk_p,
    input           adc3_clk_n,
    input           adc3_clk_p,
    
    input           dac0_clk_n,
    input           dac0_clk_p,
    input           dac1_clk_n,
    input           dac1_clk_p,
    input           sysref_in_n,
    input           sysref_in_p,
    input           vin0_01_n,
    input           vin0_01_p,
    input           vin0_23_n,
    input           vin0_23_p,
    input           vin1_01_n,
    input           vin1_01_p,
    input           vin1_23_n,
    input           vin1_23_p,
    input           vin2_01_n,
    input           vin2_01_p,
    input           vin2_23_n,
    input           vin2_23_p,
    input           vin3_01_n,
    input           vin3_01_p,
    input           vin3_23_n,
    input           vin3_23_p,
    
    output          vout00_n,
    output          vout00_p,
    output          vout01_n,
    output          vout01_p,
    output          vout02_n,
    output          vout02_p,
    output          vout03_n,
    output          vout03_p,
    output          vout10_n,
    output          vout10_p,
    output          vout11_n,
    output          vout11_p,
    output          vout12_n,
    output          vout12_p,
    output          vout13_n,
    output          vout13_p,
                             
    output          lmk_sync,
    //   output [2:0]    led,
    //   SPI½Ó¿Ú
    output wire     RESN1P8_TX,
    output wire     SCLK1P8_TX,
    output wire     MOSI1P8_TX,
    output wire     CSN1P8_TX,
    input  wire     MISO1P8_TX
);
    //ps-pl-user
    wire                data_clk               ;
    wire                pl_clk                 ;
    wire                pl_sysref              ;
    wire                pl_reset_n             ;
     
    // SPI-Control
    wire [1:0]          control_in             ;
    wire [1:0]          control_out            ;
    wire [16*32-1:0]    data_in                ;
    
    // mode-radar
    wire                Chirp_clk              ;
    wire [7:0]          FMCW_IDX               ;
    wire [31:0]         FMCW_N                 ;
    wire [31:0]         FMCW_R                 ;
    wire [31:0]         FMCW_S                 ;
    wire [31:0]         cal_delay_num          ;
    
    wire [127:0]    m00_axis_tdata;
    wire            m00_axis_tvalid;
    wire [127:0]    m01_axis_tdata;
    wire            m01_axis_tvalid;
    wire [127:0]    m02_axis_tdata;
    wire            m02_axis_tvalid;
    wire [127:0]    m03_axis_tdata;
    wire            m03_axis_tvalid;
    wire [127:0]    m10_axis_tdata;
    wire            m10_axis_tvalid;
    wire [127:0]    m11_axis_tdata;
    wire            m11_axis_tvalid;
    wire [127:0]    m12_axis_tdata;
    wire            m12_axis_tvalid;
    wire [127:0]    m13_axis_tdata;
    wire            m13_axis_tvalid;
    wire [127:0]    m20_axis_tdata;
    wire            m20_axis_tvalid;
    wire [127:0]    m21_axis_tdata;
    wire            m21_axis_tvalid;
    wire [127:0]    m22_axis_tdata;
    wire            m22_axis_tvalid;
    wire [127:0]    m23_axis_tdata;
    wire            m23_axis_tvalid;
    wire [127:0]    m30_axis_tdata;
    wire            m30_axis_tvalid;
    wire [127:0]    m31_axis_tdata;
    wire            m31_axis_tvalid;
    wire [127:0]    m32_axis_tdata;
    wire            m32_axis_tvalid;
    wire [127:0]    m33_axis_tdata;
    wire            m33_axis_tvalid;
    
    wire [255:0]    s00_axis_tdata;
    wire            s00_axis_tready;
    wire [255:0]    s01_axis_tdata;
    wire            s01_axis_tready;
    wire [255:0]    s02_axis_tdata;
    wire            s02_axis_tready;
    wire [255:0]    s03_axis_tdata;
    wire            s03_axis_tready;
    wire [255:0]    s10_axis_tdata;
    wire            s10_axis_tready;
    wire [255:0]    s11_axis_tdata;
    wire            s11_axis_tready;
    wire [255:0]    s12_axis_tdata;
    wire            s12_axis_tready;
    wire [255:0]    s13_axis_tdata;
    wire            s13_axis_tready;

    wire [31:0]     mixed_datax_q_channel1;
    wire [31:0]     mixed_datax_i_channel1;
    wire [31:0]     mixed_datax_q_channel2;
    wire [31:0]     mixed_datax_i_channel2;
    wire [31:0]     mixed_datax_q_channel3;
    wire [31:0]     mixed_datax_i_channel3;
    wire [31:0]     mixed_datax_q_channel4;
    wire [31:0]     mixed_datax_i_channel4;
    wire [31:0]     mixed_datax_q_channel5;
    wire [31:0]     mixed_datax_i_channel5;
    wire [31:0]     mixed_datax_q_channel6;
    wire [31:0]     mixed_datax_i_channel6;
    wire [31:0]     mixed_datax_q_channel7;
    wire [31:0]     mixed_datax_i_channel7;
    wire [31:0]     mixed_datax_q_channel8;
    wire [31:0]     mixed_datax_i_channel8;

// Local Parameters derived from user selection
localparam C_NUM_CHNL         = 8;
localparam P_NUM_CHNL         = 8;

wire [C_NUM_CHNL-1:0]     dac_tready;
wire [C_NUM_CHNL*2-1:0]   adc_tvalid;
/*********************************************************/
//ADC result get
wire [15:0]adc_data_i_ch1;
wire [15:0]adc_data_q_ch1;
wire [15:0]adc_data_i_ch2;
wire [15:0]adc_data_q_ch2;
wire [15:0]adc_data_i_ch3;
wire [15:0]adc_data_q_ch3;
wire [15:0]adc_data_i_ch4;
wire [15:0]adc_data_q_ch4;
wire [15:0]adc_data_i_ch5;
wire [15:0]adc_data_q_ch5;
wire [15:0]adc_data_i_ch6;
wire [15:0]adc_data_q_ch6;
wire [15:0]adc_data_i_ch7;
wire [15:0]adc_data_q_ch7;
wire [15:0]adc_data_i_ch8;
wire [15:0]adc_data_q_ch8;

assign adc_data_i_ch1 = m00_axis_tdata[15:0];
assign adc_data_q_ch1 = m01_axis_tdata[15:0];
assign adc_data_i_ch2 = m02_axis_tdata[15:0];
assign adc_data_q_ch2 = m03_axis_tdata[15:0];
assign adc_data_i_ch3 = m10_axis_tdata[15:0];
assign adc_data_q_ch3 = m11_axis_tdata[15:0];
assign adc_data_i_ch4 = m12_axis_tdata[15:0];
assign adc_data_q_ch4 = m13_axis_tdata[15:0];
assign adc_data_i_ch5 = m20_axis_tdata[15:0];
assign adc_data_q_ch5 = m21_axis_tdata[15:0];
assign adc_data_i_ch6 = m22_axis_tdata[15:0];
assign adc_data_q_ch6 = m23_axis_tdata[15:0];
assign adc_data_i_ch7 = m30_axis_tdata[15:0];
assign adc_data_q_ch7 = m31_axis_tdata[15:0];
assign adc_data_i_ch8 = m32_axis_tdata[15:0];
assign adc_data_q_ch8 = m33_axis_tdata[15:0];
/****************************************************************/

assign adc_tvalid[ 3:0]  = {m03_axis_tvalid,m02_axis_tvalid,m01_axis_tvalid,m00_axis_tvalid};
assign adc_tvalid[ 7:4]  = {m13_axis_tvalid,m12_axis_tvalid,m11_axis_tvalid,m10_axis_tvalid};
assign adc_tvalid[11:8]  = {m23_axis_tvalid,m22_axis_tvalid,m21_axis_tvalid,m20_axis_tvalid};
assign adc_tvalid[15:12] = {m33_axis_tvalid,m32_axis_tvalid,m31_axis_tvalid,m30_axis_tvalid};

assign dac_tready[0] = s00_axis_tready;
assign dac_tready[1] = s01_axis_tready;
assign dac_tready[2] = s02_axis_tready;
assign dac_tready[3] = s03_axis_tready;
assign dac_tready[4] = s10_axis_tready;
assign dac_tready[5] = s11_axis_tready;
assign dac_tready[6] = s12_axis_tready;
assign dac_tready[7] = s13_axis_tready;

wire [8*32-1:0]  dds_data;
wire USER_RST_N;
reg            user_sysref_adc;
reg            user_sysref_dac;
wire           init_ready;
wire           reset_n_dds;
wire           [31:0]phase_inc;

system_wrapper system_wrapper_i
(
    // mode_radar
    .Chirp_clk           (chirp_clk),
    .FMCW_IDX            (FMCW_IDX),
    .FMCW_N              (FMCW_N),
    .FMCW_R              (FMCW_R),
    .FMCW_S              (FMCW_S),
    .cal_delay_num       (cal_delay_num),
    .USER_RST_N          (USER_RST_N),
    //ps-pl-user
    .data_clk           (data_clk),
    .lmk_sync           (lmk_sync),
    .pl_resetn0         (pl_reset_n),
    
    .adc0_clk_clk_n     (adc0_clk_n),
    .adc0_clk_clk_p     (adc0_clk_p),
    .adc1_clk_clk_n     (adc1_clk_n),
    .adc1_clk_clk_p     (adc1_clk_p),
    .adc2_clk_clk_n     (adc2_clk_n),
    .adc2_clk_clk_p     (adc2_clk_p),
    .adc3_clk_clk_n     (adc3_clk_n),
    .adc3_clk_clk_p     (adc3_clk_p),
    .dac0_clk_clk_n     (dac0_clk_n),
    .dac0_clk_clk_p     (dac0_clk_p),   
    .dac1_clk_clk_n     (dac1_clk_n),
    .dac1_clk_clk_p     (dac1_clk_p),
    
    .m00_axis_tdata     (m00_axis_tdata),
    .m00_axis_tready    (1'b1),
    .m00_axis_tvalid    (m00_axis_tvalid),
    .m01_axis_tdata     (m01_axis_tdata),
    .m01_axis_tready    (1'b1),
    .m01_axis_tvalid    (m01_axis_tvalid),
    .m02_axis_tdata     (m02_axis_tdata),
    .m02_axis_tready    (1'b1),
    .m02_axis_tvalid    (m02_axis_tvalid),
    .m03_axis_tdata     (m03_axis_tdata),
    .m03_axis_tready    (1'b1),
    .m03_axis_tvalid    (m03_axis_tvalid),
    .m10_axis_tdata     (m10_axis_tdata),
    .m10_axis_tready    (1'b1),
    .m10_axis_tvalid    (m10_axis_tvalid),
    .m11_axis_tdata     (m11_axis_tdata),
    .m11_axis_tready    (1'b1),
    .m11_axis_tvalid    (m11_axis_tvalid),
    .m12_axis_tdata     (m12_axis_tdata),
    .m12_axis_tready    (1'b1),
    .m12_axis_tvalid    (m12_axis_tvalid),
    .m13_axis_tdata     (m13_axis_tdata),
    .m13_axis_tready    (1'b1),
    .m13_axis_tvalid    (m13_axis_tvalid),
    .m20_axis_tdata     (m20_axis_tdata),
    .m20_axis_tready    (1'b1),
    .m20_axis_tvalid    (m20_axis_tvalid),
    .m21_axis_tdata     (m21_axis_tdata),
    .m21_axis_tready    (1'b1),
    .m21_axis_tvalid    (m21_axis_tvalid),
    .m22_axis_tdata     (m22_axis_tdata),
    .m22_axis_tready    (1'b1),
    .m22_axis_tvalid    (m22_axis_tvalid),
    .m23_axis_tdata     (m23_axis_tdata),
    .m23_axis_tready    (1'b1),
    .m23_axis_tvalid    (m23_axis_tvalid),
    .m30_axis_tdata     (m30_axis_tdata),
    .m30_axis_tready    (1'b1),
    .m30_axis_tvalid    (m30_axis_tvalid),
    .m31_axis_tdata     (m31_axis_tdata),
    .m31_axis_tready    (1'b1),
    .m31_axis_tvalid    (m31_axis_tvalid),
    .m32_axis_tdata     (m32_axis_tdata),
    .m32_axis_tready    (1'b1),
    .m32_axis_tvalid    (m32_axis_tvalid),
    .m33_axis_tdata     (m33_axis_tdata),
    .m33_axis_tready    (1'b1),
    .m33_axis_tvalid    (m33_axis_tvalid),
    
    .s00_axis_tdata     (s00_axis_tdata),
    .s00_axis_tready    (s00_axis_tready),
    .s00_axis_tvalid    (1'b1),
    .s01_axis_tdata     (s01_axis_tdata),
    .s01_axis_tready    (s01_axis_tready),
    .s01_axis_tvalid    (1'b1),
    .s02_axis_tdata     (s02_axis_tdata),
    .s02_axis_tready    (s02_axis_tready),
    .s02_axis_tvalid    (1'b1),
    .s03_axis_tdata     (s03_axis_tdata),
    .s03_axis_tready    (s03_axis_tready),
    .s03_axis_tvalid    (1'b1),
    .s10_axis_tdata     (s10_axis_tdata),
    .s10_axis_tready    (s10_axis_tready),
    .s10_axis_tvalid    (1'b1),
    .s11_axis_tdata     (s11_axis_tdata),
    .s11_axis_tready    (s11_axis_tready),
    .s11_axis_tvalid    (1'b1),
    .s12_axis_tdata     (s12_axis_tdata),
    .s12_axis_tready    (s12_axis_tready),
    .s12_axis_tvalid    (1'b1),
    .s13_axis_tdata     (s13_axis_tdata),
    .s13_axis_tready    (s13_axis_tready),
    .s13_axis_tvalid    (1'b1),
    
    .sysref_in_diff_n   (sysref_in_n),
    .sysref_in_diff_p   (sysref_in_p),
    .user_sysref_adc  (user_sysref_adc),
    .user_sysref_dac  (user_sysref_dac),
    
    .vin0_01_v_n        (vin0_01_n),
    .vin0_01_v_p        (vin0_01_p),
    .vin0_23_v_n        (vin0_23_n),
    .vin0_23_v_p        (vin0_23_p),
    .vin1_01_v_n        (vin1_01_n),
    .vin1_01_v_p        (vin1_01_p),
    .vin1_23_v_n        (vin1_23_n),
    .vin1_23_v_p        (vin1_23_p),
    .vin2_01_v_n        (vin2_01_n),
    .vin2_01_v_p        (vin2_01_p),
    .vin2_23_v_n        (vin2_23_n),
    .vin2_23_v_p        (vin2_23_p),
    .vin3_01_v_n        (vin3_01_n),
    .vin3_01_v_p        (vin3_01_p),
    .vin3_23_v_n        (vin3_23_n),
    .vin3_23_v_p        (vin3_23_p),
    
    .vout00_v_n         (vout00_n),
    .vout00_v_p         (vout00_p),
    .vout01_v_n         (vout01_n),
    .vout01_v_p         (vout01_p),
    .vout02_v_n         (vout02_n),
    .vout02_v_p         (vout02_p),
    .vout03_v_n         (vout03_n),
    .vout03_v_p         (vout03_p),
    .vout10_v_n         (vout10_n),
    .vout10_v_p         (vout10_p),
    .vout11_v_n         (vout11_n),
    .vout11_v_p         (vout11_p),
    .vout12_v_n         (vout12_n),
    .vout12_v_p         (vout12_p),
    .vout13_v_n         (vout13_n),
    .vout13_v_p         (vout13_p),
    
    // SPI RegControl
    .control_in         (control_in),
    .control_out        (control_out),
    .data_in            (data_in),
    
   // Mix_Data
    .mixed_datax_q_channel1(mixed_datax_q_channel1),
    .mixed_datax_i_channel1(mixed_datax_i_channel1),
    .mixed_datax_q_channel2(mixed_datax_q_channel2),
    .mixed_datax_i_channel2(mixed_datax_i_channel2),
    .mixed_datax_q_channel3(mixed_datax_q_channel3),
    .mixed_datax_i_channel3(mixed_datax_i_channel3),
    .mixed_datax_q_channel4(mixed_datax_q_channel4),
    .mixed_datax_i_channel4(mixed_datax_i_channel4)
    
);

// Multi-tile sync logic
  IBUFDS pl_clk_i 
  (
    .I          (pl_clk_p),
    .IB         (pl_clk_n),
    .O          (pl_clk)
    );

  IBUFDS pl_sysref_i
  (
    .I          (pl_sysref_p),
    .IB         (pl_sysref_n),
    .O          (pl_sysref)
   );
    
   spi_driver u_spi_driver(
    .clk(pl_clk),
    .rst_n(pl_reset_n),
    .control_in(control_in),
    .control_out(control_out),
    .data_in(data_in),
    .RESN1P8_TX(RESN1P8_TX),
    .SCLK1P8_TX(SCLK1P8_TX),
    .MOSI1P8_TX(MOSI1P8_TX),
    .CSN1P8_TX(CSN1P8_TX),
    .MISO1P8_TX(MISO1P8_TX)
   );
   
   DacData_Mixing #
    (
        .PHASE_NUM              (P_NUM_CHNL       )
    )
   u_DacData_Mixing(
        .data_clk               (data_clk         ),
        .i_rst                  (~pl_reset_n      ),
        .adc_tvalid             (adc_tvalid       ),
        .dac_tready             (dac_tready       ),
        //fmcw param
        .chirp_clk              (chirp_clk        ),
        .FMCW_R                 (FMCW_R           ),
        .FMCW_S                 (FMCW_S           ),
        .FMCW_N                 (FMCW_N           ),
        .FMCW_IDX               (FMCW_IDX         ),
        .cal_delay_num          (cal_delay_num    ),
        //dac
        .dac_datax_qi_channel1  (s00_axis_tdata   ),   
        .dac_datax_qi_channel2  (s01_axis_tdata   ), 
        .dac_datax_qi_channel3  (s02_axis_tdata   ),   
        .dac_datax_qi_channel4  (s03_axis_tdata   ), 
        .dac_datax_qi_channel5  (s10_axis_tdata   ),   
        .dac_datax_qi_channel6  (s11_axis_tdata   ), 
        .dac_datax_qi_channel7  (s12_axis_tdata   ),   
        .dac_datax_qi_channel8  (s13_axis_tdata   ), 
        //adc
        .adc_datax_i_channel1   (m00_axis_tdata   ),
        .adc_datax_q_channel1   (m01_axis_tdata   ),
        .adc_datax_i_channel2   (m02_axis_tdata   ),
        .adc_datax_q_channel2   (m03_axis_tdata   ),
        .adc_datax_i_channel3   (m10_axis_tdata   ),
        .adc_datax_q_channel3   (m11_axis_tdata   ),
        .adc_datax_i_channel4   (m12_axis_tdata   ),
        .adc_datax_q_channel4   (m13_axis_tdata   ),
        .adc_datax_i_channel5   (m20_axis_tdata   ),
        .adc_datax_q_channel5   (m21_axis_tdata   ),
        .adc_datax_i_channel6   (m22_axis_tdata   ),
        .adc_datax_q_channel6   (m23_axis_tdata   ),
        .adc_datax_i_channel7   (m30_axis_tdata   ),
        .adc_datax_q_channel7   (m31_axis_tdata   ),
        .adc_datax_i_channel8   (m32_axis_tdata   ),
        .adc_datax_q_channel8   (m33_axis_tdata   ),
        //if 
        .mixed_datax_q_channel1 (mixed_datax_q_channel1),
        .mixed_datax_i_channel1 (mixed_datax_i_channel1),
        .mixed_datax_q_channel2 (mixed_datax_q_channel2),
        .mixed_datax_i_channel2 (mixed_datax_i_channel2),
        .mixed_datax_q_channel3 (mixed_datax_q_channel3),
        .mixed_datax_i_channel3 (mixed_datax_i_channel3),
        .mixed_datax_q_channel4 (mixed_datax_q_channel4),
        .mixed_datax_i_channel4 (mixed_datax_i_channel4),
        .mixed_datax_q_channel5 (mixed_datax_q_channel5),
        .mixed_datax_i_channel5 (mixed_datax_i_channel5),
        .mixed_datax_q_channel6 (mixed_datax_q_channel6),
        .mixed_datax_i_channel6 (mixed_datax_i_channel6),
        .mixed_datax_q_channel7 (mixed_datax_q_channel7),
        .mixed_datax_i_channel7 (mixed_datax_i_channel7),
        .mixed_datax_q_channel8 (mixed_datax_q_channel8),
        .mixed_datax_i_channel8 (mixed_datax_i_channel8)
    );

    reg pl_sysref_reg;  
    always @(posedge pl_clk)pl_sysref_reg <= pl_sysref;
    always @(posedge pl_clk)user_sysref_adc <= pl_sysref_reg;
    always @(posedge pl_clk)user_sysref_dac <= pl_sysref_reg;

endmodule
