module top (
    // 系统接口
    input  wire        clk,           // 系统时钟
    input  wire        rst_n,          // 系统复位（低有效）
    
    // SPI接口信号
    output wire        spi_rstn,      // SPI复位信号（低有效）
    output wire        spi_csn,       // SPI片选信号（低有效）
    output wire        spi_sclk,      // SPI时钟
    output wire        spi_mosi,      // SPI主出从入数据线
    input  wire        spi_miso,      // SPI主入从出数据线
    
    // 控制接口
    input  wire        start_write    // 启动写操作（上升沿触发）
);

// 内部信号定义
wire [4:0]  addr = 5'd0;              // 寄存器地址（固定为0）
wire [31:0] data = 32'h01020a0c;      // 32位数据（固定值）
wire        write_done;               // 写操作完成标志（内部信号）
wire        start_refresh = 1'b0;     // 启动批量刷新（固定为0，不使用）
wire        refresh_done;             // 批量刷新完成标志（内部信号）

// 寄存器数据定义
wire [31:0] reg_data_0  = 32'h01020a0c;
wire [31:0] reg_data_1  = 32'h11661010;
wire [31:0] reg_data_2  = 32'h00000004;
wire [31:0] reg_data_3  = 32'h00000000;
wire [31:0] reg_data_4  = 32'h01070608;
wire [31:0] reg_data_5  = 32'h000000ff;
wire [31:0] reg_data_6  = 32'h06000380;
wire [31:0] reg_data_7  = 32'h020Ca000;
wire [31:0] reg_data_8  = 32'h00675034;
wire [31:0] reg_data_9  = 32'h00027c2c;
wire [31:0] reg_data_10 = 32'h00020835;
wire [31:0] reg_data_11 = 32'h0fdb0f06;
wire [31:0] reg_data_12 = 32'h00000000;
wire [31:0] reg_data_13 = 32'h11661010;
wire [31:0] reg_data_14 = 32'h00000004;
wire [31:0] reg_data_15 = 32'h01020a0c;

// 实例化SPI主控制器
spi_master u_spi_master (
    .clk(clk),
    .rst_n(rst_n),
    .spi_rstn(spi_rstn),
    .spi_csn(spi_csn),
    .spi_sclk(spi_sclk),
    .spi_mosi(spi_mosi),
    .spi_miso(spi_miso),
    .start_write(start_write),
    .addr(addr),
    .data(data),
    .write_done(write_done),
    .start_refresh(start_refresh),
    .reg_data_0(reg_data_0),
    .reg_data_1(reg_data_1),
    .reg_data_2(reg_data_2),
    .reg_data_3(reg_data_3),
    .reg_data_4(reg_data_4),
    .reg_data_5(reg_data_5),
    .reg_data_6(reg_data_6),
    .reg_data_7(reg_data_7),
    .reg_data_8(reg_data_8),
    .reg_data_9(reg_data_9),
    .reg_data_10(reg_data_10),
    .reg_data_11(reg_data_11),
    .reg_data_12(reg_data_12),
    .reg_data_13(reg_data_13),
    .reg_data_14(reg_data_14),
    .reg_data_15(reg_data_15),
    .refresh_done(refresh_done)
);
endmodule

