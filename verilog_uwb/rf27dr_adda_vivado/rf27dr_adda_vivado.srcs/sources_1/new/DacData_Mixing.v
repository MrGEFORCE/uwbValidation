`timescale 1ns / 1ps

module DacData_Mixing #
(
    parameter  PHASE_NUM = 8
)
(
    input                           data_clk                ,
    input                           i_rst                   ,
    input       [15:0]              adc_tvalid              ,
    input       [7:0]               dac_tready              ,
    //dds parama
    input                           chirp_clk               ,
    input       [31:0]              FMCW_R                  ,
    input       [31:0]              FMCW_S                  ,
    input       [31:0]              FMCW_N                  ,
    input       [7:0]               FMCW_IDX                ,
    input       [31:0]              cal_delay_num           ,
    //dac
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel1   ,   
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel2   ,
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel3   ,   
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel4   , 
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel5   ,   
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel6   , 
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel7   ,   
    output      [32*PHASE_NUM-1:0]  dac_datax_qi_channel8   , 
    //adc
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel1    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel1    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel2    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel2    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel3    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel3    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel4    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel4    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel5    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel5    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel6    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel6    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel7    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel7    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_i_channel8    ,
    input       [16*PHASE_NUM-1:0]  adc_datax_q_channel8    ,
    //if
    output      [31:0]              mixed_datax_q_channel1  ,
    output      [31:0]              mixed_datax_i_channel1  ,
    output      [31:0]              mixed_datax_q_channel2  ,
    output      [31:0]              mixed_datax_i_channel2  ,
    output      [31:0]              mixed_datax_q_channel3  ,
    output      [31:0]              mixed_datax_i_channel3  ,
    output      [31:0]              mixed_datax_q_channel4  ,
    output      [31:0]              mixed_datax_i_channel4  ,
    output      [31:0]              mixed_datax_q_channel5  ,
    output      [31:0]              mixed_datax_i_channel5  ,
    output      [31:0]              mixed_datax_q_channel6  ,
    output      [31:0]              mixed_datax_i_channel6  ,
    output      [31:0]              mixed_datax_q_channel7  ,
    output      [31:0]              mixed_datax_i_channel7  ,
    output      [31:0]              mixed_datax_q_channel8  ,
    output      [31:0]              mixed_datax_i_channel8  
);


wire [PHASE_NUM*32-1:0]  dds_data;
wire [31:0]              dds_data_d1;
wire [31:0]              dds_data_d2;
wire                     cnt;

DacData_Compute u_DacData_Compute(
    .data_clk                (data_clk              ),
    .chirp_clk               (chirp_clk             ),
    .i_rst                   (i_rst                 ),
    .FMCW_R                  (FMCW_R                ),
    .FMCW_S                  (FMCW_S                ),
    .FMCW_N                  (FMCW_N                ),
    .FMCW_IDX                (FMCW_IDX              ),
    //dac
    .dac_datax_qi_channel1   (dac_datax_qi_channel1 ),   
    .dac_datax_qi_channel2   (dac_datax_qi_channel2 ),
    .dac_datax_qi_channel3   (dac_datax_qi_channel3 ),   
    .dac_datax_qi_channel4   (dac_datax_qi_channel4 ), 
    .dac_datax_qi_channel5   (dac_datax_qi_channel5 ),   
    .dac_datax_qi_channel6   (dac_datax_qi_channel6 ), 
    .dac_datax_qi_channel7   (dac_datax_qi_channel7 ),   
    .dac_datax_qi_channel8   (dac_datax_qi_channel8 ),
    //dds data
    .dds_data                (dds_data              )
);

var_delay u1_var_delay(
    .i_clk                  (data_clk       ),    
    .i_rst                  (i_rst          ),  
    .data                   (dds_data[31:0]),  
    .delay_num              (cal_delay_num[15:0]),  
    .data_d                 (dds_data_d1    )
);

var_delay u2_var_delay(
    .i_clk                  (data_clk       ),    
    .i_rst                  (i_rst          ),  
    .data                   (dds_data[31:0]),  
    .delay_num              (cal_delay_num[31:16]),  
    .data_d                 (dds_data_d2    )
);

Data_MIXED Data_MIXED_U1(
    .data_clk                (data_clk                      ),
    .adc_data_i              (adc_datax_i_channel1[15:0]    ),
    .adc_data_q              (adc_datax_q_channel1[15:0]    ),
    .dac_data_qi             (dds_data_d1[31:0]             ),
    .mixed_data_q            (mixed_datax_q_channel1        ),
    .mixed_data_i            (mixed_datax_i_channel1        )
    );
Data_MIXED Data_MIXED_U2(
    .data_clk                (data_clk                      ),
    .adc_data_i              (adc_datax_i_channel2[15:0]    ),
    .adc_data_q              (adc_datax_q_channel2[15:0]    ),
    .dac_data_qi             (dds_data_d2[31:0]             ),
    .mixed_data_q            (mixed_datax_q_channel2        ),
    .mixed_data_i            (mixed_datax_i_channel2        )
    );
//Data_MIXED Data_MIXED_U3(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel3[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel3[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel3        ),
//    .mixed_data_i            (mixed_datax_i_channel3        )
//    );
//Data_MIXED Data_MIXED_U4(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel4[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel4[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel4        ),
//    .mixed_data_i            (mixed_datax_i_channel4        )
//    );
//Data_MIXED Data_MIXED_U5(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel5[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel5[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel5        ),
//    .mixed_data_i            (mixed_datax_i_channel5        )
//    );
//Data_MIXED Data_MIXED_U6(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel6[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel6[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel6        ),
//    .mixed_data_i            (mixed_datax_i_channel6        )
//    );
//Data_MIXED Data_MIXED_U7(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel7[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel7[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel7        ),
//    .mixed_data_i            (mixed_datax_i_channel7        )
//    );
//Data_MIXED Data_MIXED_U8(
//    .data_clk                (data_clk                      ),
//    .adc_data_i              (adc_datax_i_channel8[15:0]    ),
//    .adc_data_q              (adc_datax_q_channel8[15:0]    ),
//    .dac_data_qi             (dds_data_d[31:0]                ),
//    .mixed_data_q            (mixed_datax_q_channel8        ),
//    .mixed_data_i            (mixed_datax_i_channel8        )
//    );

ila_0 ila_adc (
	.clk        (data_clk),                     // input wire clk
	.probe0     (adc_datax_i_channel1[15:0]),   // input wire [15:0]  probe0  
	.probe1     (adc_datax_q_channel1[15:0]),   // input wire [15:0]  probe1 
	.probe2     (dds_data_d1[15:0]         ),  // input wire [15:0]  probe2 
	.probe3     (dds_data_d1[31:16]        ), // input wire [15:0]  probe3 
    .probe4     (mixed_datax_q_channel1),
    .probe5     (mixed_datax_i_channel1),
    .probe6     (adc_datax_q_channel2[15:0]),   // input wire [15:0]  probe1 
	.probe7     (dds_data_d2[15:0]         ),  // input wire [15:0]  probe2 
	.probe8     (dds_data_d2[31:16]        ), // input wire [15:0]  probe3 
    .probe9     (mixed_datax_q_channel2),
    .probe10    (mixed_datax_i_channel2),
    .probe11    (chirp_clk)
);

endmodule
