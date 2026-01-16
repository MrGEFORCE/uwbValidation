`timescale 1ns / 1ps

module var_delay(
    input                       i_clk       ,    
    input                       i_rst       ,  
    input  [31:0]               data       ,
    input  [15:0]               delay_num   ,  
    output [31:0]               data_d      
);

localparam MAX_DELAY = 1000;
reg [31:0] shift_reg [0:MAX_DELAY-1];


integer i,j;
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst) begin
        for (i = 0; i < MAX_DELAY; i = i + 1) begin
            shift_reg[i] <= 'd0;
        end
    end else begin
        shift_reg[0] <= data;  
        for (j = 1; j < MAX_DELAY; j = j + 1) begin
            shift_reg[j] <= shift_reg[j-1];  // 逐级移位
        end
    end
end


reg [31:0] data_d_reg;
assign data_d = data_d_reg;  // 时序输出

always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        data_d_reg <= 'd0;
    else begin
        if (delay_num == 0)
            data_d_reg <= data;
        else if (delay_num <= MAX_DELAY)
            data_d_reg <= shift_reg[delay_num - 1];
        else
            data_d_reg <= 'd0;
    end
end

endmodule