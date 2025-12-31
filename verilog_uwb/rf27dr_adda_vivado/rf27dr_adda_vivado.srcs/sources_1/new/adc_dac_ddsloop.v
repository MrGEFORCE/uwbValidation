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

    wire [1:0] control_in;
    wire [1:0] control_out;
    wire [16*32-1:0] data_in;

    wire [63:0]     m00_axis_tdata;
    wire            m00_axis_tvalid;
    wire [63:0]     m01_axis_tdata;
    wire            m01_axis_tvalid;
    wire [63:0]     m02_axis_tdata;
    wire            m02_axis_tvalid;
    wire [63:0]     m03_axis_tdata;
    wire            m03_axis_tvalid;
    wire [63:0]     m10_axis_tdata;
    wire            m10_axis_tvalid;
    wire [63:0]     m11_axis_tdata;
    wire            m11_axis_tvalid;
    wire [63:0]     m12_axis_tdata;
    wire            m12_axis_tvalid;
    wire [63:0]     m13_axis_tdata;
    wire            m13_axis_tvalid;
    wire [63:0]     m20_axis_tdata;
    wire            m20_axis_tvalid;
    wire [63:0]     m21_axis_tdata;
    wire            m21_axis_tvalid;
    wire [63:0]     m22_axis_tdata;
    wire            m22_axis_tvalid;
    wire [63:0]     m23_axis_tdata;
    wire            m23_axis_tvalid;
    wire [63:0]     m30_axis_tdata;
    wire            m30_axis_tvalid;
    wire [63:0]     m31_axis_tdata;
    wire            m31_axis_tvalid;
    wire [63:0]     m32_axis_tdata;
    wire            m32_axis_tvalid;
    wire [63:0]     m33_axis_tdata;
    wire            m33_axis_tvalid;
    
    wire [127:0]    s00_axis_tdata;
    wire            s00_axis_tready;
    wire [127:0]    s01_axis_tdata;
    wire            s01_axis_tready;
    wire [127:0]    s02_axis_tdata;
    wire            s02_axis_tready;
    wire [127:0]    s03_axis_tdata;
    wire            s03_axis_tready;
    wire [127:0]    s10_axis_tdata;
    wire            s10_axis_tready;
    wire [127:0]    s11_axis_tdata;
    wire            s11_axis_tready;
    wire [127:0]    s12_axis_tdata;
    wire            s12_axis_tready;
    wire [127:0]    s13_axis_tdata;
    wire            s13_axis_tready;

(*mark_debug="true"*)wire [127:0] dds_data;
// Local Parameters derived from user selection
localparam C_NUM_CHNL         = 8;
(*mark_debug="true"*)wire [C_NUM_CHNL-1:0]     dac_tready;
(*mark_debug="true"*)wire [C_NUM_CHNL*2-1:0]   adc_tvalid;
/*********************************************************/
//ADC result get
(*mark_debug="true"*)wire [15:0]adc_data_i_ch1;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch1;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch2;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch2;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch3;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch3;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch4;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch4;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch5;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch5;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch6;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch6;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch7;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch7;
(*mark_debug="true"*)wire [15:0]adc_data_i_ch8;
(*mark_debug="true"*)wire [15:0]adc_data_q_ch8;

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
//DAC output
(*mark_debug="true"*)wire [15:0]dac_data_i_ch1;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch1;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch2;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch2;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch3;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch3;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch4;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch4;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch5;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch5;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch6;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch6;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch7;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch7;
(*mark_debug="true"*)wire [15:0]dac_data_i_ch8;
(*mark_debug="true"*)wire [15:0]dac_data_q_ch8;

assign dac_data_i_ch1 = s00_axis_tdata[15:0];
assign dac_data_q_ch1 = s00_axis_tdata[31:16];
assign dac_data_i_ch2 = s01_axis_tdata[15:0];
assign dac_data_q_ch2 = s01_axis_tdata[31:16];
assign dac_data_i_ch3 = s02_axis_tdata[15:0];
assign dac_data_q_ch3 = s02_axis_tdata[31:16];
assign dac_data_i_ch4 = s03_axis_tdata[15:0];
assign dac_data_q_ch4 = s03_axis_tdata[31:16];
assign dac_data_i_ch5 = s10_axis_tdata[15:0];
assign dac_data_q_ch5 = s10_axis_tdata[31:16];
assign dac_data_i_ch6 = s11_axis_tdata[15:0];
assign dac_data_q_ch6 = s11_axis_tdata[31:16];
assign dac_data_i_ch7 = s12_axis_tdata[15:0];
assign dac_data_q_ch7 = s12_axis_tdata[31:16];
assign dac_data_i_ch8 = s13_axis_tdata[15:0];
assign dac_data_q_ch8 = s13_axis_tdata[31:16];
/****************************************************************/

assign adc_tvalid[ 3:0]  = {m03_axis_tvalid,m02_axis_tvalid,m01_axis_tvalid,m00_axis_tvalid};
assign adc_tvalid[ 7:4]  = {m13_axis_tvalid,m12_axis_tvalid,m11_axis_tvalid,m10_axis_tvalid};
assign adc_tvalid[11:8]  = {m23_axis_tvalid,m22_axis_tvalid,m21_axis_tvalid,m20_axis_tvalid};
assign adc_tvalid[15:12] = {m33_axis_tvalid,m32_axis_tvalid,m31_axis_tvalid,m30_axis_tvalid};

assign s00_axis_tdata =dds_data;
assign s01_axis_tdata =dds_data;
assign s02_axis_tdata =dds_data;
assign s03_axis_tdata =dds_data;
assign s10_axis_tdata =dds_data;
assign s11_axis_tdata =dds_data;
assign s12_axis_tdata =dds_data;
assign s13_axis_tdata =dds_data;

assign dac_tready[0] = s00_axis_tready;
assign dac_tready[1] = s01_axis_tready;
assign dac_tready[2] = s02_axis_tready;
assign dac_tready[3] = s03_axis_tready;
assign dac_tready[4] = s10_axis_tready;
assign dac_tready[5] = s11_axis_tready;
assign dac_tready[6] = s12_axis_tready;
assign dac_tready[7] = s13_axis_tready;

reg            user_sysref_adc;
reg            user_sysref_dac;
wire init_ready;
wire reset_n_dds;
wire [31:0]phase_inc;
system system_i
(
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
    
    .data_clk           (data_clk),
    .init_ready         (init_ready),
    .lmk_sync           (lmk_sync),
    
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
    
    .phase_inc          (phase_inc),     
    .pl_resetn0         (fclk_reset0),
    .reset_n_dds        (reset_n_dds),
    
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
    .control_in         (control_in),
    .control_out        (control_out),
    .data_in            (data_in)
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
    .rst_n(rst_n),
    .control_in(control_in),
    .control_out(control_out),
    .data_in(data_in),
    .RESN1P8_TX(RESN1P8_TX),
    .SCLK1P8_TX(SCLK1P8_TX),
    .MOSI1P8_TX(MOSI1P8_TX),
    .CSN1P8_TX(CSN1P8_TX),
    .MISO1P8_TX(MISO1P8_TX)
   );
   
reg pl_sysref_reg;  
always @(posedge pl_clk)pl_sysref_reg <= pl_sysref;
always @(posedge pl_clk)user_sysref_adc <= pl_sysref_reg;
always @(posedge pl_clk)user_sysref_dac <= pl_sysref_reg;
//tx dds
(*mark_debug="true"*)reg [63:0] phase_dds_in;
(*mark_debug="true"*)reg [15:0] phase_inc_reg;
always @ (posedge data_clk)begin
    if(!reset_n_dds)begin
        phase_inc_reg<=phase_inc;
        phase_dds_in[16*0 +:16]<=16'd0;//point 1
        phase_dds_in[16*1 +:16]<=phase_inc_reg;//point 2
        phase_dds_in[16*2 +:16]<=phase_inc_reg+phase_inc_reg;//point 3
        phase_dds_in[16*3 +:16]<=phase_inc_reg+phase_inc_reg+phase_inc_reg;//point 4 
    end
    else begin
        phase_dds_in[16*0 +:16]<=phase_dds_in[16*0 +:16]+{phase_inc_reg,2'd0};//point 1
        phase_dds_in[16*1 +:16]<=phase_dds_in[16*1 +:16]+{phase_inc_reg,2'd0};//point 2
        phase_dds_in[16*2 +:16]<=phase_dds_in[16*2 +:16]+{phase_inc_reg,2'd0};//point 3
        phase_dds_in[16*3 +:16]<=phase_dds_in[16*3 +:16]+{phase_inc_reg,2'd0};//point 4
  end
end

genvar ch;
generate
    for (ch = 0; ch < 4; ch = ch + 1) begin
        dds_compiler_0 dds_compiler_0 
        (
            .aclk                 (data_clk            ),// input wire aclk
            .aresetn              (reset_n_dds          ),// input wire aresetn
            .s_axis_phase_tvalid  (1'b1                 ),// input wire s_axis_phase_tvalid
            .s_axis_phase_tdata   (phase_dds_in[16*ch +:16] ),// input wire [7 : 0] s_axis_phase_tdata
            .m_axis_data_tvalid   ( ),  // output wire m_axis_data_tvalid
            .m_axis_data_tdata    (dds_data[32*ch +:32])// output wire [31 : 0] m_axis_data_tdata
        );
    end
endgenerate
//led
//assign led[0]=1'b0;
//assign led[1]=1'b0;
//assign led[2]=init_ready;

endmodule
