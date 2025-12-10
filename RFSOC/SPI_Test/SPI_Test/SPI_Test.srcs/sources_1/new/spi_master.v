module spi_master (
    input  wire        clk,           // 系统时钟
    input  wire        rst_n,         // 系统复位（低有效）
    
    // SPI接口信号
    output reg         spi_rstn,      // SPI复位信号（低有效）
    output reg         spi_csn,       // SPI片选信号（低有效）
    output reg         spi_sclk,      // SPI时钟
    output reg         spi_mosi,      // SPI主出从入数据线
    input  wire        spi_miso,      // SPI主入从出数据线（本版本未使用）
    
    // 控制接口
    input  wire        start_write,   // 启动写操作（上升沿触发）
    input  wire [4:0]  addr,          // 寄存器地址（5位，实际使用低4位）
    input  wire [31:0] data,          // 32位数据
    output reg         write_done,    // 写操作完成标志
    
    // 批量刷新接口
    input  wire        start_refresh, // 启动批量刷新（上升沿触发）
    input  wire [31:0] reg_data_0,    // 寄存器数据0
    input  wire [31:0] reg_data_1,    // 寄存器数据1
    input  wire [31:0] reg_data_2,    // 寄存器数据2
    input  wire [31:0] reg_data_3,    // 寄存器数据3
    input  wire [31:0] reg_data_4,    // 寄存器数据4
    input  wire [31:0] reg_data_5,    // 寄存器数据5
    input  wire [31:0] reg_data_6,    // 寄存器数据6
    input  wire [31:0] reg_data_7,    // 寄存器数据7
    input  wire [31:0] reg_data_8,    // 寄存器数据8
    input  wire [31:0] reg_data_9,    // 寄存器数据9
    input  wire [31:0] reg_data_10,   // 寄存器数据10
    input  wire [31:0] reg_data_11,   // 寄存器数据11
    input  wire [31:0] reg_data_12,   // 寄存器数据12
    input  wire [31:0] reg_data_13,   // 寄存器数据13
    input  wire [31:0] reg_data_14,   // 寄存器数据14
    input  wire [31:0] reg_data_15,   // 寄存器数据15
    output reg         refresh_done   // 批量刷新完成标志
);

// 内部数组信号（用于访问）
wire [31:0] reg_data [0:15];
assign reg_data[0]  = reg_data_0;
assign reg_data[1]  = reg_data_1;
assign reg_data[2]  = reg_data_2;
assign reg_data[3]  = reg_data_3;
assign reg_data[4]  = reg_data_4;
assign reg_data[5]  = reg_data_5;
assign reg_data[6]  = reg_data_6;
assign reg_data[7]  = reg_data_7;
assign reg_data[8]  = reg_data_8;
assign reg_data[9]  = reg_data_9;
assign reg_data[10] = reg_data_10;
assign reg_data[11] = reg_data_11;
assign reg_data[12] = reg_data_12;
assign reg_data[13] = reg_data_13;
assign reg_data[14] = reg_data_14;
assign reg_data[15] = reg_data_15;

// 状态机定义
localparam IDLE           = 4'd0;
localparam RESET_START    = 4'd1;
localparam RESET_WAIT     = 4'd2;
localparam RESET_END      = 4'd3;
localparam WRITE_ADDR_PRE = 4'd4;  // 写地址前导码
localparam WRITE_ADDR     = 4'd5;  // 写地址
localparam WRITE_DATA_PRE = 4'd6;  // 写数据前导码
localparam WRITE_DATA     = 4'd7;  // 写数据
localparam WRITE_END      = 4'd8;  // 写结束
localparam REFRESH_WRITE  = 4'd9;  // 批量刷新中的写操作
localparam REFRESH_DUMP   = 4'd10; // 批量刷新后的"放淤血"

reg [3:0]  state;
reg [7:0]  bit_counter;      // 位计数器
reg [7:0]  reg_counter;       // 寄存器计数器（批量刷新用）
reg [31:0] shift_data;        // 数据移位寄存器
reg [4:0]  shift_addr;        // 地址移位寄存器
reg [31:0] current_data;      // 当前要写的数据
reg [4:0]  current_addr;      // 当前要写的地址
reg        is_refresh_mode;   // 标记是否为批量刷新模式

// 时钟分频计数器（用于生成SPI时钟）
reg [15:0] clk_div_counter;
reg        spi_clk_en;        // SPI时钟使能

// 复位等待计数器（200us，假设系统时钟为50MHz，200us = 10000个时钟周期）
reg [13:0] reset_wait_counter;
localparam RESET_WAIT_CYCLES = 14'd10000;

// 时钟分频参数（假设系统时钟50MHz，SPI时钟500kHz，分频比=100）
localparam CLK_DIV_RATIO = 16'd100;

// SPI时钟生成
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        clk_div_counter <= 16'd0;
        spi_clk_en <= 1'b0;
    end else begin
        if (state != IDLE) begin
            if (clk_div_counter >= CLK_DIV_RATIO - 1) begin
                clk_div_counter <= 16'd0;
                spi_clk_en <= 1'b1;
            end else begin
                clk_div_counter <= clk_div_counter + 1'b1;
                spi_clk_en <= 1'b0;
            end
        end else begin
            clk_div_counter <= 16'd0;
            spi_clk_en <= 1'b0;
        end
    end
end

// 状态机主逻辑 - 状态转换
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        bit_counter <= 8'd0;
        reg_counter <= 8'd0;
        reset_wait_counter <= 14'd0;
        is_refresh_mode <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                bit_counter <= 8'd0;
                reg_counter <= 8'd0;
                
                if (start_write) begin
                    current_addr <= addr;
                    current_data <= data;
                    is_refresh_mode <= 1'b0;
                    state <= WRITE_ADDR_PRE;
                end else if (start_refresh) begin
                    current_addr <= 5'd0;
                    current_data <= reg_data[0];
                    reg_counter <= 8'd0;
                    is_refresh_mode <= 1'b1;
                    state <= RESET_START;
                end
            end
            
            RESET_START: begin
                reset_wait_counter <= 14'd0;
                state <= RESET_WAIT;
            end
            
            RESET_WAIT: begin
                if (reset_wait_counter >= RESET_WAIT_CYCLES - 1) begin
                    state <= RESET_END;
                end else begin
                    reset_wait_counter <= reset_wait_counter + 1'b1;
                end
            end
            
            RESET_END: begin
                state <= WRITE_ADDR_PRE;
            end
            
            WRITE_ADDR_PRE: begin
                if (spi_clk_en) begin
                    if (bit_counter == 0) begin
                        shift_addr <= current_addr;
                        bit_counter <= 8'd1;
                    end else if (bit_counter < 11) begin
                        if (bit_counter >= 5 && bit_counter < 9) begin
                            shift_addr <= {shift_addr[2:0], 1'b0};
                        end
                        bit_counter <= bit_counter + 1'b1;
                    end else begin
                        bit_counter <= 8'd0;
                        shift_data <= current_data;
                        state <= WRITE_DATA_PRE;
                    end
                end
            end
            
            WRITE_DATA_PRE: begin
                if (spi_clk_en) begin
                    if (bit_counter < 2) begin
                        bit_counter <= bit_counter + 1'b1;
                    end else begin
                        bit_counter <= 8'd0;
                        state <= WRITE_DATA;
                    end
                end
            end
            
            WRITE_DATA: begin
                if (spi_clk_en) begin
                    if (bit_counter < 33) begin
                        if (bit_counter < 32) begin
                            shift_data <= {shift_data[30:0], 1'b0};
                        end
                        bit_counter <= bit_counter + 1'b1;
                    end else begin
                        if (is_refresh_mode) begin
                            if (reg_counter < 15) begin
                                reg_counter <= reg_counter + 1'b1;
                                current_addr <= current_addr + 1'b1;
                                current_data <= reg_data[reg_counter + 1];
                                bit_counter <= 8'd0;
                                state <= WRITE_ADDR_PRE;
                            end else begin
                                bit_counter <= 8'd0;
                                state <= REFRESH_DUMP;
                            end
                        end else begin
                            state <= IDLE;
                        end
                    end
                end
            end
            
            REFRESH_DUMP: begin
                if (spi_clk_en) begin
                    if (bit_counter < 11) begin
                        bit_counter <= bit_counter + 1'b1;
                    end else begin
                        bit_counter <= 8'd0;
                        state <= WRITE_END;
                    end
                end
            end
            
            WRITE_END: begin
                if (spi_clk_en) begin
                    if (bit_counter < 100) begin
                        bit_counter <= bit_counter + 1'b1;
                    end else begin
                        state <= IDLE;
                    end
                end
            end
            
            default: begin
                state <= IDLE;
            end
        endcase
    end
end

// 状态机输出逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        spi_rstn <= 1'b1;
        spi_csn <= 1'b1;
        spi_sclk <= 1'b0;
        spi_mosi <= 1'b1;
        write_done <= 1'b0;
        refresh_done <= 1'b0;
    end else begin
        write_done <= 1'b0;
        refresh_done <= 1'b0;
        
        case (state)
            IDLE: begin
                spi_sclk <= 1'b0;
                spi_mosi <= 1'b1;
                spi_csn <= 1'b1;
                spi_rstn <= 1'b1;
            end
            
            RESET_START: begin
                spi_csn <= 1'b0;
                spi_rstn <= 1'b0;
            end
            
            RESET_WAIT: begin
                // 保持复位状态
            end
            
            RESET_END: begin
                spi_csn <= 1'b1;
                spi_rstn <= 1'b1;
            end
            
            WRITE_ADDR_PRE: begin
                spi_rstn <= 1'b1;
                if (spi_clk_en) begin
                    if (bit_counter == 0) begin
                        spi_csn <= 1'b1;
                        spi_sclk <= 1'b0;
                    end else if (bit_counter < 4) begin
                        // 发送3个0
                        spi_mosi <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 4) begin
                        // 发送第4个0
                        spi_mosi <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 5) begin
                        // 发送1个1
                        spi_mosi <= 1'b1;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter >= 6 && bit_counter < 10) begin
                        // 发送4位地址（从最高位开始）
                        spi_mosi <= shift_addr[3];
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 10) begin
                        // 发送地址最低位
                        spi_mosi <= current_addr[0];
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 11) begin
                        // 地址结束，CSN拉低
                        spi_mosi <= current_addr[0];
                        spi_csn <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else begin
                        // CSN拉高
                        spi_csn <= 1'b1;
                    end
                end
            end
            
            WRITE_DATA_PRE: begin
                if (spi_clk_en) begin
                    // 发送2个0
                    spi_mosi <= 1'b0;
                    spi_sclk <= ~spi_sclk;
                end
            end
            
            WRITE_DATA: begin
                if (spi_clk_en) begin
                    if (bit_counter < 32) begin
                        // 发送32位数据（从最高位开始）
                        spi_mosi <= shift_data[31];
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 32) begin
                        // 发送结束的0
                        spi_mosi <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 33) begin
                        // CSN拉低
                        spi_mosi <= 1'b0;
                        spi_csn <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else begin
                        // CSN拉高，写操作完成
                        spi_csn <= 1'b1;
                        if (!is_refresh_mode) begin
                            write_done <= 1'b1;
                        end
                    end
                end
            end
            
            REFRESH_DUMP: begin
                if (spi_clk_en) begin
                    if (bit_counter < 8) begin
                        // 发送8位数据0x10（从最高位开始）
                        spi_mosi <= ((8'h10 << bit_counter) & 8'h80) ? 1'b1 : 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter < 10) begin
                        // 发送2个1
                        spi_mosi <= 1'b1;
                        spi_sclk <= ~spi_sclk;
                    end else if (bit_counter == 10) begin
                        // CSN拉低
                        spi_mosi <= 1'b1;
                        spi_csn <= 1'b0;
                        spi_sclk <= ~spi_sclk;
                    end else begin
                        // CSN拉高
                        spi_csn <= 1'b1;
                    end
                end
            end
            
            WRITE_END: begin
                if (spi_clk_en) begin
                    // 发送100个空时钟
                    spi_sclk <= ~spi_sclk;
                    if (bit_counter == 99) begin
                        refresh_done <= 1'b1;
                    end
                end
            end
            
            default: begin
                spi_sclk <= 1'b0;
                spi_mosi <= 1'b1;
                spi_csn <= 1'b1;
                spi_rstn <= 1'b1;
            end
        endcase
    end
end

endmodule

