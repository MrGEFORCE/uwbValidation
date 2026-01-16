`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 18:47:38
// Design Name: 
// Module Name: FIFO_Write
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADC_To_FIFO(
    input           data_clk                ,
    input           i_rstn                  ,
    //FIFO读写信号
    input           fifo_full               ,
    output [255:0]  fifo_din                ,
    output          fifo_wr_en              ,
    output          fifo_wr_clk             ,
    //触发信号
    input           FS_start                ,
    output          AXI_trans_start         ,
    //采样点数
    input   [15:0]  FS_Number               ,
    input   [7:0]   FS_Div                  ,
    //ADC接口
    input [31:0]   mixed_datax_q_channel1   ,
    input [31:0]   mixed_datax_i_channel1   ,
    input [31:0]   mixed_datax_q_channel2   ,
    input [31:0]   mixed_datax_i_channel2   ,
    input [31:0]   mixed_datax_q_channel3   ,
    input [31:0]   mixed_datax_i_channel3   ,
    input [31:0]   mixed_datax_q_channel4   ,
    input [31:0]   mixed_datax_i_channel4   
    );

/*********************function**************************/

/*********************parameter*************************/

/***********************port****************************/

/***********************mechine*************************/

/************************reg****************************/
//采样时刻上升沿检�?
reg                         r_FS_start_pos;
reg     [1:0]               r_FS_start_d;
//
reg     [15:0]              r_FS_Number;    //ADC采样点数  
reg     [7:0]               r_FS_Div   ;
reg                         r_fifo_wr_en;
reg                         r_AXI_trans_start;
/************************wire***************************/

/*********************component*************************/

/***********************assign**************************/
assign fifo_wr_en           = r_fifo_wr_en;
assign AXI_trans_start      = r_AXI_trans_start;
assign fifo_wr_clk          = data_clk;
/***********************always**************************/

//FIFO写入起始时刻�?�?
always@(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_FS_start_d <= 2'b11;
    else
        r_FS_start_d <= {r_FS_start_d[0],FS_start};
end
always@(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_FS_start_pos <= 1'b0;
    else
        r_FS_start_pos <= (~r_FS_start_d[1]) && r_FS_start_d[0];
end

//接收到采样信号后，寄存数�?
always @(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)begin
        r_FS_Div    <= 'd1;
        r_FS_Number <= 'd0;
    end
    else if(r_FS_start_pos)begin
        r_FS_Div    <= FS_Div;
        r_FS_Number <= FS_Number;
    end
    else begin
        r_FS_Div    <=  r_FS_Div;
        r_FS_Number <= r_FS_Number;
    end
end

//采样计数
reg     [31:0]              r_wr_cnt;  
reg                         r_wr_cnt_flag;
always @(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_wr_cnt_flag <= 'd0;
    else if(r_FS_start_pos)
        r_wr_cnt_flag <= 'd1;
    else if(r_wr_cnt >= r_FS_Number*r_FS_Div )
        r_wr_cnt_flag <= 'd0;
    else
        r_wr_cnt_flag <= r_wr_cnt_flag;
end  

always @(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_wr_cnt <= 'd0;
    else if(r_wr_cnt_flag)
        r_wr_cnt <= r_wr_cnt + 1;
    else
        r_wr_cnt <= 'd0;
end

//FIFO写入数据控制
always @(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_fifo_wr_en <= 'd0;
    else if(r_wr_cnt_flag && ( (r_wr_cnt%r_FS_Div)==0) )
        r_fifo_wr_en <= 'd1;
    else
        r_fifo_wr_en <= 'd0;
end

 assign fifo_din = { mixed_datax_q_channel4   ,
                     mixed_datax_i_channel4   ,
                     mixed_datax_q_channel3   ,
                     mixed_datax_i_channel3   ,
                     mixed_datax_q_channel2   ,
                     mixed_datax_i_channel2   ,
                     mixed_datax_q_channel1   ,
                     mixed_datax_i_channel1    };

//assign fifo_din = { 
//                    adc_data_q_ch8   ,
//                    adc_data_i_ch8   ,
//                    adc_data_q_ch7   ,
//                    adc_data_i_ch7   ,
//                    adc_data_q_ch6   ,
//                    adc_data_i_ch6   ,
//                    adc_data_q_ch5   ,
//                    adc_data_i_ch5   ,
//                    adc_data_q_ch4   ,
//                    adc_data_i_ch4   ,
//                    adc_data_q_ch3   ,
//                    adc_data_i_ch3   ,
//                    adc_data_q_ch2   ,
//                    adc_data_i_ch2   ,
//                    adc_data_q_ch1   ,
//                    adc_data_i_ch1   };


always @(posedge data_clk or negedge i_rstn) begin
    if(!i_rstn)
        r_AXI_trans_start <= 'd0;
    else if( (r_wr_cnt >= (r_FS_Number*r_FS_Div - 2)) && (r_wr_cnt != 'd0) )
        r_AXI_trans_start <= 'd1;
    else
        r_AXI_trans_start <= 'd0;
end




endmodule
