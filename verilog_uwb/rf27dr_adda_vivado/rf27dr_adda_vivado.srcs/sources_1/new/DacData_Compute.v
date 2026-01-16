`timescale 1ns / 1ps

module DacData_Compute#(
    parameter                       PHASE_NUM = 8           ,
    parameter                       DDS_L     = 32           
)(
    input                           data_clk                ,
    input                           chirp_clk               ,
    input                           i_rst                   ,
    //dds parama
    input       [31:0]              FMCW_R                  ,
    input       [31:0]              FMCW_S                  ,
    input       [31:0]              FMCW_N                  ,
    input       [7:0]               FMCW_IDX                ,
    //dac
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel1   ,   
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel2   ,
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel3   ,   
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel4   , 
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel5   ,   
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel6   , 
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel7   ,   
    output reg  [32*PHASE_NUM-1:0]  dac_datax_qi_channel8   ,
    //dds data
    output      [PHASE_NUM*32-1:0]  dds_data
);


// 扫频触发信号
reg  chirp_clk_d1,chirp_clk_d2,trigger_d;              
wire trigger;

always @(posedge data_clk or posedge i_rst) begin
    if(i_rst)begin
        chirp_clk_d1 <= 'd0;
        chirp_clk_d2 <= 'd0;
        trigger_d    <= 'd0;
    end
    else begin
        chirp_clk_d2 <= chirp_clk_d1;
        chirp_clk_d1 <= chirp_clk;
        trigger_d <= trigger;
    end
end
assign trigger = (~chirp_clk_d2) & chirp_clk_d1;

//cnt
reg [31:0] reg_cnt;
reg        reg_txing;

always @(posedge data_clk or posedge i_rst) begin
    if(i_rst)
        reg_txing <= 'd0;
    else if(trigger_d)
        reg_txing <= 'd1;
    else if(reg_cnt > FMCW_N)
        reg_txing <= 'd0;
    else
        reg_txing <= reg_txing;
end

always @(posedge data_clk or posedge i_rst) begin
    if(i_rst)
        reg_cnt <= 'd0;
    else if(reg_txing)
        reg_cnt <= reg_cnt + 'd1;
    else
        reg_cnt <= 'd0;
end


//DDS Param
reg [PHASE_NUM*DDS_L-1:0] phase_dds_p;
reg [PHASE_NUM*DDS_L-1:0] phase_dds_f;


always @ (posedge data_clk)begin
    if(trigger_d)begin
        phase_dds_p[DDS_L*0 +:DDS_L]<= FMCW_S;         
        phase_dds_p[DDS_L*1 +:DDS_L]<= 2*FMCW_S + FMCW_R;
        phase_dds_p[DDS_L*2 +:DDS_L]<= 3*FMCW_S + 3*FMCW_R;
        phase_dds_p[DDS_L*3 +:DDS_L]<= 4*FMCW_S + 6*FMCW_R;
        phase_dds_p[DDS_L*4 +:DDS_L]<= 5*FMCW_S + 10*FMCW_R;
        phase_dds_p[DDS_L*5 +:DDS_L]<= 6*FMCW_S + 15*FMCW_R;
        phase_dds_p[DDS_L*6 +:DDS_L]<= 7*FMCW_S + 21*FMCW_R;
        phase_dds_p[DDS_L*7 +:DDS_L]<= 8*FMCW_S + 28*FMCW_R;
        phase_dds_f[DDS_L*0 +:DDS_L]<= 8*FMCW_S + 36*FMCW_R;  
        phase_dds_f[DDS_L*1 +:DDS_L]<= 8*FMCW_S + 44*FMCW_R;
        phase_dds_f[DDS_L*2 +:DDS_L]<= 8*FMCW_S + 52*FMCW_R;
        phase_dds_f[DDS_L*3 +:DDS_L]<= 8*FMCW_S + 60*FMCW_R;
        phase_dds_f[DDS_L*4 +:DDS_L]<= 8*FMCW_S + 68*FMCW_R;
        phase_dds_f[DDS_L*5 +:DDS_L]<= 8*FMCW_S + 76*FMCW_R;
        phase_dds_f[DDS_L*6 +:DDS_L]<= 8*FMCW_S + 84*FMCW_R;
        phase_dds_f[DDS_L*7 +:DDS_L]<= 8*FMCW_S + 92*FMCW_R;
    end
    else if(reg_txing)begin
        phase_dds_p[DDS_L*0 +:DDS_L]<= phase_dds_p[DDS_L*0 +:DDS_L];
        phase_dds_p[DDS_L*1 +:DDS_L]<= phase_dds_p[DDS_L*1 +:DDS_L];
        phase_dds_p[DDS_L*2 +:DDS_L]<= phase_dds_p[DDS_L*2 +:DDS_L];
        phase_dds_p[DDS_L*3 +:DDS_L]<= phase_dds_p[DDS_L*3 +:DDS_L];
        phase_dds_p[DDS_L*4 +:DDS_L]<= phase_dds_p[DDS_L*4 +:DDS_L];
        phase_dds_p[DDS_L*5 +:DDS_L]<= phase_dds_p[DDS_L*5 +:DDS_L];
        phase_dds_p[DDS_L*6 +:DDS_L]<= phase_dds_p[DDS_L*6 +:DDS_L];
        phase_dds_p[DDS_L*7 +:DDS_L]<= phase_dds_p[DDS_L*7 +:DDS_L];
        phase_dds_f[DDS_L*0 +:DDS_L]<= phase_dds_f[DDS_L*0 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*1 +:DDS_L]<= phase_dds_f[DDS_L*1 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*2 +:DDS_L]<= phase_dds_f[DDS_L*2 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*3 +:DDS_L]<= phase_dds_f[DDS_L*3 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*4 +:DDS_L]<= phase_dds_f[DDS_L*4 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*5 +:DDS_L]<= phase_dds_f[DDS_L*5 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*6 +:DDS_L]<= phase_dds_f[DDS_L*6 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
        phase_dds_f[DDS_L*7 +:DDS_L]<= phase_dds_f[DDS_L*7 +:DDS_L] +  PHASE_NUM * PHASE_NUM * FMCW_R ;
  end
  else begin
        phase_dds_p[DDS_L*0 +:DDS_L]<= phase_dds_p[DDS_L*0 +:DDS_L];
        phase_dds_p[DDS_L*1 +:DDS_L]<= phase_dds_p[DDS_L*1 +:DDS_L];
        phase_dds_p[DDS_L*2 +:DDS_L]<= phase_dds_p[DDS_L*2 +:DDS_L];
        phase_dds_p[DDS_L*3 +:DDS_L]<= phase_dds_p[DDS_L*3 +:DDS_L];
        phase_dds_p[DDS_L*4 +:DDS_L]<= phase_dds_p[DDS_L*4 +:DDS_L];
        phase_dds_p[DDS_L*5 +:DDS_L]<= phase_dds_p[DDS_L*5 +:DDS_L];
        phase_dds_p[DDS_L*6 +:DDS_L]<= phase_dds_p[DDS_L*6 +:DDS_L];
        phase_dds_p[DDS_L*7 +:DDS_L]<= phase_dds_p[DDS_L*7 +:DDS_L];
        phase_dds_f[DDS_L*0 +:DDS_L]<= phase_dds_f[DDS_L*0 +:DDS_L];
        phase_dds_f[DDS_L*1 +:DDS_L]<= phase_dds_f[DDS_L*1 +:DDS_L];
        phase_dds_f[DDS_L*2 +:DDS_L]<= phase_dds_f[DDS_L*2 +:DDS_L];
        phase_dds_f[DDS_L*3 +:DDS_L]<= phase_dds_f[DDS_L*3 +:DDS_L];
        phase_dds_f[DDS_L*4 +:DDS_L]<= phase_dds_f[DDS_L*4 +:DDS_L];
        phase_dds_f[DDS_L*5 +:DDS_L]<= phase_dds_f[DDS_L*5 +:DDS_L];
        phase_dds_f[DDS_L*6 +:DDS_L]<= phase_dds_f[DDS_L*6 +:DDS_L];
        phase_dds_f[DDS_L*7 +:DDS_L]<= phase_dds_f[DDS_L*7 +:DDS_L];
  end
end

//dds core
genvar ch;
generate
    for (ch = 0; ch < PHASE_NUM; ch = ch + 1) begin
        dds_core dds_core_u (
        .aclk                   (data_clk),                                                         // input wire aclk
        .aresetn                (~(trigger | trigger_d)),
        .s_axis_config_tvalid   ('d1),                                                              // input wire s_axis_config_tvalid
        .s_axis_config_tdata    ({phase_dds_p[DDS_L*ch + :DDS_L],phase_dds_f[DDS_L*ch + :DDS_L]}),  // input wire [63 : 0] s_axis_config_tdata
        .m_axis_data_tvalid     (),                                                                 // output wire m_axis_data_tvalid
        .m_axis_data_tdata      (dds_data[32*ch +:32])                                              // output wire [31 : 0] m_axis_data_tdata
        );
    end
endgenerate

reg cnt;

always @(posedge data_clk or posedge i_rst) begin
    if (i_rst) begin
        cnt <= 'd0;
    end
    else if (trigger_d)begin
        if(FMCW_IDX == 'd2)
            cnt <= cnt + 1;
        else if(FMCW_IDX == 'd1)
            cnt <= 'd0;
    end
    else begin
        cnt <= cnt;
    end
end

// dds_data
always @(posedge data_clk or posedge i_rst) begin
    if (i_rst) begin
        // 复位时所有�?�道输出0
        dac_datax_qi_channel1 <= 'd0;
        dac_datax_qi_channel2 <= 'd0;
        dac_datax_qi_channel3 <= 'd0;
        dac_datax_qi_channel4 <= 'd0;
        dac_datax_qi_channel5 <= 'd0;
        dac_datax_qi_channel6 <= 'd0;
        dac_datax_qi_channel7 <= 'd0;
        dac_datax_qi_channel8 <= 'd0;
    end
    else if (reg_txing) begin
        // 根据FMCW_IDX索引选择通道输出dds_data，其余输�?0
        case (cnt)  
            'd0: begin  // 索引0：�?�道1输出，其�?0
                dac_datax_qi_channel1 <= dds_data;
                dac_datax_qi_channel2 <= 'd0;
                dac_datax_qi_channel3 <= 'd0;
                dac_datax_qi_channel4 <= 'd0;
                dac_datax_qi_channel5 <= 'd0;
                dac_datax_qi_channel6 <= 'd0;
                dac_datax_qi_channel7 <= 'd0;
                dac_datax_qi_channel8 <= 'd0;
            end
            'd1: begin  // 索引1：�?�道2输出，其�?0
                dac_datax_qi_channel1 <= 'd0;
                dac_datax_qi_channel2 <= dds_data;
                dac_datax_qi_channel3 <= 'd0;
                dac_datax_qi_channel4 <= 'd0;
                dac_datax_qi_channel5 <= 'd0;
                dac_datax_qi_channel6 <= 'd0;
                dac_datax_qi_channel7 <= 'd0;
                dac_datax_qi_channel8 <= 'd0;
            end
        endcase
    end
    else begin
        // 非发送状态时�?有�?�道输出0
        dac_datax_qi_channel1 <= 'd0;
        dac_datax_qi_channel2 <= 'd0;
        dac_datax_qi_channel3 <= 'd0;
        dac_datax_qi_channel4 <= 'd0;
        dac_datax_qi_channel5 <= 'd0;
        dac_datax_qi_channel6 <= 'd0;
        dac_datax_qi_channel7 <= 'd0;
        dac_datax_qi_channel8 <= 'd0;
    end
end


endmodule
