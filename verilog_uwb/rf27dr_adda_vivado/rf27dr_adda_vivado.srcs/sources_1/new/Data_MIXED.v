`timescale 1ns / 1ps

module Data_MIXED(
    input         data_clk,
    input [15:0]  adc_data_i,
    input [15:0]  adc_data_q,
    input [31:0]  dac_data_qi,
    output [31:0] mixed_data_q,
    output [31:0] mixed_data_i
    );

//MIXED
/*******************************Result***********************************************/
wire signed[31:0] mixed_signal_II;
wire signed[31:0] mixed_signal_QQ;
wire signed[31:0] mixed_signal_QI;
wire signed[31:0] mixed_signal_IQ;

reg  signed [31:0] mixed_data_I; 
reg  signed [31:0] mixed_data_Q; 

assign mixed_data_q = mixed_data_Q;
assign mixed_data_i = mixed_data_I;

/***************************************MIXED****************************************/
// Q1 * I2
mult_gen_0 mult_gen_U1 (
    .CLK   (data_clk                    ),
    .A     (dac_data_qi[15:0]           ), 
    .B     (adc_data_i                  ),       
    .P     (mixed_signal_QI             )  
);

//I1 * Q2
mult_gen_0 mult_gen_U2 (
    .CLK   (data_clk                    ),
    .A     (dac_data_qi[31:16]          ),  
    .B     (adc_data_q                  ),    
    .P     (mixed_signal_IQ             )  
);

//I1 * I2
mult_gen_0 mult_gen_U3 (
    .CLK   (data_clk                    ),
    .A     (dac_data_qi[31:16]          ), 
    .B     (adc_data_i                  ),       
    .P     (mixed_signal_II             )  
);

//Q1 * Q2
mult_gen_0 mult_gen_U4 (
    .CLK   (data_clk                    ),
    .A     (dac_data_qi[15:0]           ),  
    .B     (adc_data_q                  ),    
    .P     (mixed_signal_QQ             )  
);

always @(posedge data_clk) begin
    mixed_data_Q <= mixed_signal_IQ - mixed_signal_QI; 
    mixed_data_I <= mixed_signal_II + mixed_signal_QQ; 
end


endmodule
