`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/19 10:58:07
// Design Name: 
// Module Name: DMA_Frame_Gen
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


module FIFO_To_DataMover #
(
    parameter   TDATA_WIDTH     = 128,
    parameter   FIFO_RESET_CNT  = 20,
    parameter   MAX_SINGLE_BURST = 255      
)(
    //系统输入
    input                               i_clk,
    input                               i_rstn,
    //传输起始信号
    input                               AXI_Trans_Start,
    input       [15:0]                  FS_Number,
    input       [31:0]                  AXI_Trans_Addr,
    //FIFO读信�?
    input                               fifo_empty,
    input       [TDATA_WIDTH-1:0]       fifo_dout,
    output                              fifo_rd_en,
    output                              fifo_rd_clk,
    output                              fifo_rst,
    //AXI_DataMover 数据�?
    output      [TDATA_WIDTH-1:0]       m_axis_s2mm_tdata,
    output      [(TDATA_WIDTH/8)-1:0]   m_axis_s2mm_tkeep,
    output                              m_axis_s2mm_tlast,
    input                               m_axis_s2mm_tready,
    output                              m_axis_s2mm_tvalid,
    //AXI_DataMover 命令字节�?
    output  [71:0]                      m_axis_s2mm_cmd_tdata,
    input                               m_axis_s2mm_cmd_tready,
    output                              m_axis_s2mm_cmd_tvalid
    );
/*********************function**************************/
// ila_0 your_instance_name (
// 	.clk(i_clk), // input wire clk
// 	.probe0({AXI_Trans_Start,FS_Number,AXI_Trans_Addr,m_axis_s2mm_tdata[15:0],m_axis_s2mm_tlast,m_axis_s2mm_tready,m_axis_s2mm_tvalid,m_axis_s2mm_cmd_tdata,m_axis_s2mm_cmd_tready,m_axis_s2mm_cmd_tvalid,r_st_current,r_AXI_Cur_Trans_Cnt,w_trans_complete}) // input wire [255:0] probe0
// );

/*********************parameter*************************/
parameter           P_ST_IDLE       = 0,        //空闲状�?�，当触发数据传输后进入写地�?状�??
                    P_ST_INIT       = 1,        //处理每轮传输参数
                    P_ST_WRITE_ADDR = 2,        //写地�?状�?�，当握手成功后进入写数据状�?
                    P_ST_WRITE_DATA = 3,        //写数据状态，当写入数据个数达到设定后，进入操作完成状�?
                    P_ST_CHECK_DONE = 4,        //�?查是否完成所有传�?
                    P_ST_DONE       = 5;        //操作完成状�?�，进行FIFO复位，复位完毕后进入空闲状�??
/***********************port****************************/

/***********************mechine*************************/
always @(posedge i_clk) begin
    if(!i_rstn)begin
        r_st_current    <= P_ST_IDLE;
        r_st_prev       <= P_ST_IDLE;
    end
    else begin
        r_st_current    <= r_st_next;
        r_st_prev       <= r_st_current;
    end
end

always @(*) begin
    case (r_st_current)
        P_ST_IDLE       :  r_st_next <= r_AXI_Trans_Start_pos                                           ? P_ST_INIT       : P_ST_IDLE ;             //接收到AXI�?始传输信号，进入初始化状�?
        P_ST_INIT       :  r_st_next <= P_ST_WRITE_ADDR;
        P_ST_WRITE_ADDR :  r_st_next <= r_m_axis_s2mm_cmd_tvalid & m_axis_s2mm_cmd_tready               ? P_ST_WRITE_DATA : P_ST_WRITE_ADDR;        //AXI总线握手成功，表示写入完成，进入写地�?状�??
        P_ST_WRITE_DATA :  r_st_next <= w_trans_complete                                                ? P_ST_CHECK_DONE : P_ST_WRITE_DATA ;             //写数据状态，到达指定数量后进入检查状�?
        P_ST_CHECK_DONE :  r_st_next <= (r_AXI_Remain_Number == r_AXI_Cur_Burst_Number)                 ? P_ST_DONE       : P_ST_INIT ;                                                  
        P_ST_DONE       :  r_st_next <= r_s_cnt < FIFO_RESET_CNT                                        ? P_ST_DONE       : P_ST_IDLE ;             //结束状�?�中将FIFO清空
        default         :  r_st_next <= P_ST_IDLE;
    endcase
end

/************************reg****************************/
reg [(TDATA_WIDTH/8)-1:0]   r_m_axis_s2mm_tkeep;
reg                         r_m_axis_s2mm_tlast;
reg                         r_m_axis_s2mm_tvalid;
reg [71:0]                  r_m_axis_s2mm_cmd_tdata;
reg                         r_m_axis_s2mm_cmd_tvalid;

reg     [7:0]               r_st_current;           //当前状�?�机
reg     [7:0]               r_st_next   ;           //下一状�?�机
reg     [7:0]               r_st_prev;              //上一状�?�机


reg                         r_AXI_Trans_Start_pos;  //触发传输上升沿有效信�?
reg     [1:0]               r_AXI_Trans_Start_d;    //触发传输信号寄存


reg                         r_fifo_rst;             //FIFO复位
reg     [15:0]              r_s_cnt;                //状�?�计数器，用于复�?


//用于多次拆分
reg     [15:0]              r_AXI_Trans_Number;     // 本次�?要发送的数据�?
reg     [15:0]              r_AXI_Remain_Number;    // 剩余未传输数据量
reg     [15:0]              r_AXI_Cur_Burst_Number; // 本轮传输数据�?
reg     [22:0]              r_AXI_Cur_Burst_Byte;   // 本轮传输数据�?
reg     [31:0]              r_AXI_Cur_Trans_Addr;   // 本轮传输起始地址
reg     [15:0]              r_AXI_Cur_Trans_Cnt;    // 本轮传输实时计数

/************************wire***************************/
wire                        w_trans_complete;

/*********************component*************************/

/***********************assign**************************/
assign m_axis_s2mm_tkeep      = r_m_axis_s2mm_tkeep;
assign m_axis_s2mm_tlast      = r_m_axis_s2mm_tlast;
assign m_axis_s2mm_tvalid     = r_m_axis_s2mm_tvalid;
assign m_axis_s2mm_cmd_tdata  = r_m_axis_s2mm_cmd_tdata;
assign m_axis_s2mm_cmd_tvalid = r_m_axis_s2mm_cmd_tvalid;

assign fifo_rd_clk            = i_clk;
assign fifo_rst               = r_fifo_rst;

//读FIFO，赋值AXIS数据
assign fifo_rd_en           = m_axis_s2mm_tready & m_axis_s2mm_tvalid;
assign m_axis_s2mm_tdata    = fifo_dout;

//本轮传输完成标志
assign w_trans_complete = (r_AXI_Cur_Trans_Cnt == r_AXI_Cur_Burst_Number);
/***********************always**************************/

//发�?�起始时刻检�?
always@(posedge i_clk) begin
    if(!i_rstn) 
        r_AXI_Trans_Start_d <= 2'b11;
    else
        r_AXI_Trans_Start_d <= {r_AXI_Trans_Start_d[0],AXI_Trans_Start};
end

always@(posedge i_clk) begin
    if(!i_rstn)
        r_AXI_Trans_Start_pos <= 1'b0;
    else
        r_AXI_Trans_Start_pos <= (~r_AXI_Trans_Start_d[1]) && r_AXI_Trans_Start_d[0];
end

//初始化传输参�?
always@(posedge i_clk) begin
    if(!i_rstn) begin
        r_AXI_Trans_Number    <= 'd0;
        r_AXI_Remain_Number   <= 'd0; 
        r_AXI_Cur_Trans_Addr  <= 'd0;
    end
    else if( (r_st_current == P_ST_INIT) && (r_st_prev == P_ST_IDLE) )begin
        r_AXI_Trans_Number    <= FS_Number;
        r_AXI_Remain_Number   <= FS_Number; 
        r_AXI_Cur_Trans_Addr  <= AXI_Trans_Addr;
    end
    else if(r_st_current == P_ST_CHECK_DONE)begin
        r_AXI_Trans_Number    <= r_AXI_Trans_Number;
        r_AXI_Remain_Number   <= r_AXI_Remain_Number - r_AXI_Cur_Burst_Number; 
        r_AXI_Cur_Trans_Addr  <= r_AXI_Cur_Trans_Addr + (r_AXI_Cur_Burst_Number * (TDATA_WIDTH/8));    
    end
    else begin
        r_AXI_Trans_Number    <= r_AXI_Trans_Number;
        r_AXI_Remain_Number   <= r_AXI_Remain_Number;  
        r_AXI_Cur_Trans_Addr  <= r_AXI_Cur_Trans_Addr ;  
    end
end

//计算本轮传输数据�?
always@(posedge i_clk) begin
    if(!i_rstn) begin
        r_AXI_Cur_Burst_Number <= 'd0;
        r_AXI_Cur_Burst_Byte   <= 'd0;
    end
    else if( (r_st_current == P_ST_INIT) && (r_st_prev == P_ST_IDLE) )begin
        r_AXI_Cur_Burst_Number <= (FS_Number > MAX_SINGLE_BURST) ? MAX_SINGLE_BURST : FS_Number;
        r_AXI_Cur_Burst_Byte   <= ((FS_Number > MAX_SINGLE_BURST) ? MAX_SINGLE_BURST : FS_Number) * (TDATA_WIDTH/8);
    end
    else if(r_st_current == P_ST_INIT)begin
        r_AXI_Cur_Burst_Number <= (r_AXI_Remain_Number > MAX_SINGLE_BURST) ? MAX_SINGLE_BURST : r_AXI_Remain_Number;
        r_AXI_Cur_Burst_Byte   <= ((r_AXI_Remain_Number > MAX_SINGLE_BURST) ? MAX_SINGLE_BURST : r_AXI_Remain_Number) * (TDATA_WIDTH/8);
    end
    else begin
        r_AXI_Cur_Burst_Number <= r_AXI_Cur_Burst_Number ;
        r_AXI_Cur_Burst_Byte   <= r_AXI_Cur_Burst_Byte   ;  
    end
end

//根据寄存的数据，发�?�AXIS命令字节
always@(posedge i_clk) begin
    if(!i_rstn) begin
        r_m_axis_s2mm_cmd_tvalid  <= 1'b0;
        r_m_axis_s2mm_cmd_tdata   <= 72'd0;
    end
    else if(r_st_next == P_ST_WRITE_DATA)begin
        r_m_axis_s2mm_cmd_tvalid  <= 1'b0;
        r_m_axis_s2mm_cmd_tdata   <= 72'd0;
    end
    else if(r_st_current == P_ST_WRITE_ADDR) begin
        r_m_axis_s2mm_cmd_tvalid  <= 1'b1;
        //enable increase,enable eof,disable DSA and DRR,no TAG
        r_m_axis_s2mm_cmd_tdata   <= {5'd0,3'd0,r_AXI_Cur_Trans_Addr,2'b01,6'd0,1'b1,r_AXI_Cur_Burst_Byte};
    end
    else begin
        r_m_axis_s2mm_cmd_tvalid  <= r_m_axis_s2mm_cmd_tvalid;
        r_m_axis_s2mm_cmd_tdata   <= r_m_axis_s2mm_cmd_tdata ;
    end
end

//AXIS发�?�数据个数统计，与读取FIFO无关
always @(posedge i_clk) begin
    if(!i_rstn) 
        r_AXI_Cur_Trans_Cnt <= 'd0;
    else if(r_st_current == P_ST_INIT)
        r_AXI_Cur_Trans_Cnt <= 'd0;
    else if(r_st_current == P_ST_WRITE_DATA && m_axis_s2mm_tready && m_axis_s2mm_tvalid)
        r_AXI_Cur_Trans_Cnt <= r_AXI_Cur_Trans_Cnt + 1;
    else
        r_AXI_Cur_Trans_Cnt <= r_AXI_Cur_Trans_Cnt;
end

//AXIS数据流有效信号控�?
always@(posedge i_clk) begin
    if(!i_rstn) begin
        r_m_axis_s2mm_tvalid <= 'd0;
    end
    else if((r_AXI_Cur_Trans_Cnt == r_AXI_Cur_Burst_Number-1) & m_axis_s2mm_tready & m_axis_s2mm_tvalid) begin
        r_m_axis_s2mm_tvalid <= 'd0;
    end
    else if(r_st_current == P_ST_WRITE_DATA & !w_trans_complete)begin
        r_m_axis_s2mm_tvalid <= 'd1;
    end
    else begin
        r_m_axis_s2mm_tvalid <= 'd0;
    end
end

//AXIS数据流TLAST信号控制
always@(posedge i_clk) begin
    if(!i_rstn) begin
        r_m_axis_s2mm_tlast <= 'd0;
    end
    else if( ( (r_st_current == P_ST_WRITE_DATA) && (r_AXI_Cur_Trans_Cnt == r_AXI_Cur_Burst_Number - 2) & m_axis_s2mm_tready & m_axis_s2mm_tvalid) || ( (r_st_current == P_ST_WRITE_DATA) && (r_AXI_Cur_Trans_Cnt == 0) & (r_AXI_Cur_Burst_Number == 1)) ) begin
        r_m_axis_s2mm_tlast <= 'd1;
    end
    else if((r_AXI_Cur_Trans_Cnt == r_AXI_Cur_Burst_Number-1) & m_axis_s2mm_tready & m_axis_s2mm_tvalid) begin
        r_m_axis_s2mm_tlast <= 'd0;
    end
    else if(r_st_current == P_ST_WRITE_DATA)begin
        r_m_axis_s2mm_tlast <= r_m_axis_s2mm_tlast;
    end
    else begin
        r_m_axis_s2mm_tlast <= 'd0;
    end
end

//AXIS数据流TKEEP信号控制
always @( posedge i_clk ) begin
    if(!i_rstn) begin
        r_m_axis_s2mm_tkeep <= 'd0;
    end
    else begin 
        r_m_axis_s2mm_tkeep <=  ~0;
    end
end

//复位信号计时，用于传输完成后，进行FIFO复位
always @(posedge i_clk) begin
    if(!i_rstn)
        r_s_cnt <= 'd0;
    else if(r_st_current == P_ST_DONE)
        r_s_cnt <= r_s_cnt + 'd1;
    else
        r_s_cnt <= 'd0;
end

always @(posedge i_clk) begin
    if(!i_rstn)
        r_fifo_rst <= 'd1;
    else if(r_st_current == P_ST_DONE)
        r_fifo_rst <= 'd1;
    else
        r_fifo_rst <= 'd0;
end


endmodule
