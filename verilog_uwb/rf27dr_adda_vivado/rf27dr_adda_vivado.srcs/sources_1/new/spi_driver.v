// SPI驱动模块：依次发送16个寄存器的数据

module spi_driver(
    input  wire             clk,          // FPGA 系统时钟
    input  wire             rst_n,        // 低有效复位，对应 RESN1P8_TX
    
//    input  wire       read_mode,    // 1: 读寄存器，0: 写寄存器
    input  wire [16*32-1:0] data_in,
    input  wire [1:0]       control_in,
    output wire [1:0]       control_out,
    output reg              RESN1P8_TX,
    output wire             SCLK1P8_TX,
    output reg              MOSI1P8_TX,
    output reg              CSN1P8_TX,
    input  wire             MISO1P8_TX
);
    localparam integer CLK_FREQ_MHZ = 100;
    localparam integer INIT_DELAY_CYCLES = (CLK_FREQ_MHZ * 200);
    
    localparam [1:0] OP_WRITE = 2'b01;
    localparam [1:0] OP_READ  = 2'b10;
    
    wire [31:0] reg0_read_data;
    wire [31:0] reg1_read_data;
    wire [31:0] reg2_read_data;
    wire [31:0] reg3_read_data;
    wire [31:0] reg4_read_data;
    wire [31:0] reg5_read_data;
    wire [31:0] reg6_read_data;
    wire [31:0] reg7_read_data;
    wire [31:0] reg8_read_data;
    wire [31:0] reg9_read_data;
    wire [31:0] regA_read_data;
    wire [31:0] regB_read_data;
    wire [31:0] regC_read_data;
    wire [31:0] regD_read_data;
    wire [31:0] regE_read_data;
    wire [31:0] regF_read_data;
    
    localparam read_mode = 1'b0;
    
    localparam integer CMD_COUNT = 16;
    reg       start;        // 触发一次传输的触发信号
    reg [31:0] reg_storage [0:15];  // 存储16个寄存器的数据
    reg [5:0] shift_reg;
    reg [2:0] bit_cnt;
    reg [1:0] pre_header_cnt;
    reg       sclk_prev;
    reg       sclk_en;
    reg       tx_done_pending;
    reg [31:0] payload_latched;
    reg [31:0] payload_shift;
    reg [5:0]  payload_bit_cnt;
    reg        payload_done_pending;
    reg [31:0] read_capture;
    reg [2:0] gap_cnt;
    reg [1:0] post_gap_cnt;
    reg       post_gap_done_pending;
    reg       addr_bit0_sent;
    reg [1:0] pre_payload_cnt;
    reg       addr_bit0_latched;
    reg [3:0] post_data_8bit_cnt;
    reg [1:0] post_data_2bit_cnt;
    reg [6:0] post_data_100bit_cnt;
    reg [2:0] post_data_phase;
    reg [3:0] cmd_idx;
    reg       burst_active;
    reg       auto_start_req;
    reg [15:0] init_delay_cnt;
    wire [3:0] current_addr = cmd_addr(cmd_idx);
    
    // 控制状态机相关信号
    localparam [1:0] CTRL_IDLE    = 2'd0;
    localparam [1:0] CTRL_LOAD    = 2'd1;
    localparam [1:0] CTRL_SEND    = 2'd2;
    localparam [1:0] CTRL_WAIT    = 2'd3;
    
    reg [1:0] ctrl_state;
    reg [1:0] ctrl_out_reg;
    reg [3:0] start_delay_cnt;
    reg       spi_complete;
    reg       burst_active_prev;

    function automatic [3:0] cmd_addr(input [3:0] idx);
        cmd_addr = idx;
    endfunction

    function automatic [31:0] cmd_data(input [3:0] idx);
        cmd_data = reg_storage[idx];
    endfunction

    reg [6:0] clk_div;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            clk_div <= 7'd0;
        else if (sclk_en)
            clk_div <= clk_div + 7'd1;
        else
            clk_div <= 7'd0;
    end

    assign SCLK1P8_TX = sclk_en ? clk_div[6] : 1'b0;

    wire sclk_rise = SCLK1P8_TX & ~sclk_prev;
    wire sclk_fall = ~SCLK1P8_TX & sclk_prev;
    reg start_sync0, start_sync1, start_sync_d;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            start_sync0 <= 1'b0;
            start_sync1 <= 1'b0;
            start_sync_d <= 1'b0;
        end else begin
            start_sync0 <= start;
            start_sync1 <= start_sync0;
            start_sync_d <= start_sync1;
        end
    end
    wire start_fall = start_sync_d && !start_sync1;

    localparam [3:0] IDLE         = 4'd0;
    localparam [3:0] INIT_RESET   = 4'd1;
    localparam [3:0] PRE_HEADER   = 4'd2;
    localparam [3:0] HEADER       = 4'd3;
    localparam [3:0] ADDR_BIT0_1  = 4'd4;
    localparam [3:0] ADDR_BIT0_2  = 4'd5;
    localparam [3:0] PRE_PAYLOAD  = 4'd6;
    localparam [3:0] PAYLOAD       = 4'd7;
    localparam [3:0] POST_GAP     = 4'd8;
    localparam [3:0] POST_DATA    = 4'd9;

    reg [3:0] state, next_state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= IDLE;
        else
            state <= next_state;
    end

    always @(*) begin
        next_state = state;
        case (state)
            IDLE: begin
                if (start_fall)
                    next_state = INIT_RESET;
                else if (auto_start_req)
                    next_state = PRE_HEADER;
            end

            INIT_RESET: begin
                if (init_delay_cnt >= INIT_DELAY_CYCLES)
                    next_state = PRE_HEADER;
            end

            PRE_HEADER: begin
                if (pre_header_cnt == 2'd2 && sclk_fall)
                    next_state = HEADER;
            end

            HEADER: begin
                if (tx_done_pending && sclk_fall)
                    next_state = ADDR_BIT0_1;
            end

            ADDR_BIT0_1: begin
                if (addr_bit0_sent && sclk_fall)
                    next_state = ADDR_BIT0_2;
            end

            ADDR_BIT0_2: begin
                if (addr_bit0_sent && sclk_fall)
                    next_state = PRE_PAYLOAD;
            end

            PRE_PAYLOAD: begin
                if (pre_payload_cnt == 2'd1 && sclk_fall)
                    next_state = PAYLOAD;
            end

            PAYLOAD: begin
                if (payload_done_pending && sclk_fall)
                    next_state = POST_GAP;
            end

            POST_GAP: begin
                if (post_gap_done_pending) begin
                    if (burst_active && cmd_idx == CMD_COUNT-1)
                        next_state = POST_DATA;
                    else
                        next_state = IDLE;
                end
            end

            POST_DATA: begin
                if (post_data_phase == 3'd3 && post_data_100bit_cnt == 7'd99 && sclk_fall)
                    next_state = IDLE;
            end
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            RESN1P8_TX <= 1'b0;
            CSN1P8_TX  <= 1'b0;
            MOSI1P8_TX <= 1'b0;
            bit_cnt    <= 3'd0;
            shift_reg  <= 6'd0;
            pre_header_cnt <= 2'd0;
            sclk_prev  <= 1'b0;
            sclk_en    <= 1'b0;
            tx_done_pending <= 1'b0;
            payload_latched <= 32'd0;
            payload_shift   <= 32'd0;
            payload_bit_cnt <= 6'd0;
            payload_done_pending <= 1'b0;
            read_capture <= 32'd0;
            gap_cnt <= 3'd0;
            post_gap_cnt <= 2'd0;
            post_gap_done_pending <= 1'b0;
            addr_bit0_sent <= 1'b0;
            pre_payload_cnt <= 2'd0;
            cmd_idx <= 4'd0;
            burst_active <= 1'b0;
            auto_start_req <= 1'b0;
            init_delay_cnt <= 16'd0;
            spi_complete <= 1'b0;
            burst_active_prev <= 1'b0;
        end else begin
            RESN1P8_TX <= 1'b1;

            case (state)
                IDLE: begin
                    MOSI1P8_TX <= 1'b0;
                    bit_cnt    <= 3'd0;
                    pre_header_cnt <= 2'd0;
                    sclk_en    <= 1'b0;
                    tx_done_pending <= 1'b0;
                    gap_cnt    <= 3'd0;
                    payload_bit_cnt <= 6'd0;
                    payload_done_pending <= 1'b0;
                    post_gap_cnt <= 2'd0;
                    post_gap_done_pending <= 1'b0;
                    addr_bit0_sent <= 1'b0;
                    pre_payload_cnt <= 2'd0;
                    if (!burst_active)
                        cmd_idx <= 4'd0;

                    if (auto_start_req) begin
                        shift_reg   <= {read_mode ? OP_READ : OP_WRITE, current_addr};
                        addr_bit0_latched <= current_addr[0];
                        MOSI1P8_TX  <= 1'b0;
                        CSN1P8_TX   <= 1'b1;
                        sclk_en     <= 1'b1;
                        bit_cnt     <= 3'd0;
                        pre_header_cnt <= 2'd0;
                        tx_done_pending <= 1'b0;
                        gap_cnt     <= 3'd0;
                        payload_latched <= read_mode ? 32'd0 : cmd_data(cmd_idx);
                        auto_start_req <= 1'b0;
                    end
                    else begin
                        CSN1P8_TX <= 1'b0;
                    end

                    if (start_fall && !burst_active) begin
                        burst_active <= 1'b1;
                        cmd_idx <= 4'd0;
                        init_delay_cnt <= 16'd0;
                    end
                end

                INIT_RESET: begin
                    MOSI1P8_TX <= 1'b0;
                    sclk_en    <= 1'b0;
                    if (init_delay_cnt < INIT_DELAY_CYCLES) begin
                        RESN1P8_TX <= 1'b0;
                        CSN1P8_TX  <= 1'b0;
                        init_delay_cnt <= init_delay_cnt + 16'd1;
                    end else begin
                        RESN1P8_TX <= 1'b1;
                        CSN1P8_TX  <= 1'b1;
                        shift_reg   <= {read_mode ? OP_READ : OP_WRITE, current_addr};
                        addr_bit0_latched <= current_addr[0];
                        MOSI1P8_TX  <= 1'b0;
                        sclk_en     <= 1'b1;
                        bit_cnt     <= 3'd0;
                        pre_header_cnt <= 2'd0;
                        tx_done_pending <= 1'b0;
                        gap_cnt     <= 3'd0;
                        payload_latched <= read_mode ? 32'd0 : cmd_data(cmd_idx);
                    end
                end

                PRE_HEADER: begin
                    CSN1P8_TX <= 1'b1;
                    sclk_en   <= 1'b1;
                    MOSI1P8_TX <= 1'b0;
                    if (sclk_fall) begin
                        if (pre_header_cnt == 2'd2) begin
                            bit_cnt <= 3'd0;
                            tx_done_pending <= 1'b0;
                            MOSI1P8_TX <= shift_reg[5];
                            pre_header_cnt <= 2'd0;
                        end else begin
                            pre_header_cnt <= pre_header_cnt + 2'd1;
                        end
                    end else if (pre_header_cnt == 2'd0 && sclk_rise) begin
                        MOSI1P8_TX <= 1'b0;
                    end
                end

                HEADER: begin
                    CSN1P8_TX <= 1'b1;
                    sclk_en   <= 1'b1;
                    if (sclk_rise) begin
                        if (bit_cnt == 3'd4) begin
                            tx_done_pending <= 1'b1;
                        end else begin
                            bit_cnt <= bit_cnt + 3'd1;
                        end
                    end
                    if (sclk_fall) begin
                        if (tx_done_pending) begin
                            CSN1P8_TX      <= 1'b1;
                            MOSI1P8_TX     <= addr_bit0_latched;
                            bit_cnt        <= 3'd0;
                            tx_done_pending<= 1'b0;
                            addr_bit0_sent <= 1'b0;
                        end else begin
                            shift_reg  <= {shift_reg[4:0], 1'b0};
                            MOSI1P8_TX <= shift_reg[4];
                        end
                    end
                end

                ADDR_BIT0_1: begin
                    CSN1P8_TX <= 1'b1;
                    sclk_en   <= 1'b1;
                    MOSI1P8_TX <= addr_bit0_latched;
                    if (sclk_fall) begin
                        addr_bit0_sent <= 1'b1;
                    end
                end

                ADDR_BIT0_2: begin
                    CSN1P8_TX <= 1'b0;
                    sclk_en   <= 1'b1;
                    MOSI1P8_TX <= addr_bit0_latched;
                    if (sclk_fall) begin
                        addr_bit0_sent <= 1'b1;
                    end
                end

                PRE_PAYLOAD: begin
                    CSN1P8_TX <= 1'b1;
                    sclk_en   <= 1'b1;
                    MOSI1P8_TX <= 1'b0;
                    if (sclk_fall) begin
                        if (pre_payload_cnt == 2'd1) begin
                            pre_payload_cnt <= 2'd0;
                            payload_shift   <= payload_latched;
                            payload_bit_cnt <= 6'd0;
                            payload_done_pending <= 1'b0;
                            read_capture    <= 32'd0;
                            MOSI1P8_TX      <= read_mode ? 1'b0 : payload_latched[31];
                        end else begin
                            pre_payload_cnt <= pre_payload_cnt + 2'd1;
                        end
                    end
                end

                PAYLOAD: begin
                    CSN1P8_TX <= 1'b1;
                    sclk_en   <= 1'b1;

                    if (sclk_rise) begin
                        if (payload_bit_cnt == 6'd31) begin
                            payload_done_pending <= 1'b1;
                        end else begin
                            payload_bit_cnt <= payload_bit_cnt + 6'd1;
                        end
                    end

                    if (sclk_fall) begin
                        if (payload_done_pending) begin
                            CSN1P8_TX <= 1'b1;
                            MOSI1P8_TX <= 1'b0;
                            payload_bit_cnt <= 6'd0;
                            payload_done_pending <= 1'b0;
                            post_gap_cnt <= 2'd0;
                            post_gap_done_pending <= 1'b0;
                        end else begin
                            if (read_mode) begin
                                read_capture[31 - payload_bit_cnt] <= MISO1P8_TX;
                                MOSI1P8_TX <= 1'b0;
                            end else begin
                                payload_shift  <= {payload_shift[30:0], 1'b0};
                                MOSI1P8_TX     <= payload_shift[30];
                            end
                        end
                    end
                end

                POST_GAP: begin
                    sclk_en <= 1'b1;
                    MOSI1P8_TX <= 1'b0;
                    case (post_gap_cnt)
                        2'd0: CSN1P8_TX <= 1'b1;
                        2'd1: CSN1P8_TX <= 1'b0;
                        default: CSN1P8_TX <= 1'b1;
                    endcase
                    if (sclk_fall && !post_gap_done_pending) begin
                        if (post_gap_cnt == 2'd1) begin
                            post_gap_done_pending <= 1'b1;
                            sclk_en <= 1'b0;
                            post_gap_cnt <= 2'd0;
                            if (read_mode)
                                reg_storage[cmd_idx] <= read_capture;
                        end else begin
                            post_gap_cnt <= post_gap_cnt + 2'd1;
                        end
                    end
                    if (post_gap_done_pending && burst_active) begin
                        if (cmd_idx == CMD_COUNT-1) begin
                        end else if (!auto_start_req) begin
                            cmd_idx <= cmd_idx + 4'd1;
                            auto_start_req <= 1'b1;
                        end
                    end
                end

                POST_DATA: begin
                    sclk_en <= 1'b1;
                    CSN1P8_TX <= 1'b1;
                    case (post_data_phase)
                        3'd0: begin
                            CSN1P8_TX <= 1'b1;
                            case (post_data_8bit_cnt)
                                4'd0: MOSI1P8_TX <= 1'b0;
                                4'd1: MOSI1P8_TX <= 1'b0;
                                4'd2: MOSI1P8_TX <= 1'b0;
                                4'd3: MOSI1P8_TX <= 1'b1;
                                4'd4: MOSI1P8_TX <= 1'b0;
                                4'd5: MOSI1P8_TX <= 1'b0;
                                4'd6: MOSI1P8_TX <= 1'b0;
                                4'd7: MOSI1P8_TX <= 1'b0;
                                default: MOSI1P8_TX <= 1'b0;
                            endcase
                            if (sclk_fall) begin
                                if (post_data_8bit_cnt == 4'd7) begin
                                    post_data_phase <= 3'd1;
                                    post_data_8bit_cnt <= 4'd0;
                                    post_data_2bit_cnt <= 2'd0;
                                end else begin
                                    post_data_8bit_cnt <= post_data_8bit_cnt + 4'd1;
                                end
                            end
                        end
                        3'd1: begin
                            CSN1P8_TX <= 1'b1;
                            MOSI1P8_TX <= 1'b1;
                            if (sclk_fall) begin
                                if (post_data_2bit_cnt == 2'd1) begin
                                    post_data_phase <= 3'd2;
                                    post_data_2bit_cnt <= 2'd0;
                                end else begin
                                    post_data_2bit_cnt <= post_data_2bit_cnt + 2'd1;
                                end
                            end
                        end
                        3'd2: begin
                            CSN1P8_TX <= 1'b0;
                            MOSI1P8_TX <= 1'b1;
                            if (sclk_fall) begin
                                post_data_phase <= 3'd3;
                                post_data_100bit_cnt <= 7'd0;
                            end
                        end
                        3'd3: begin
                            CSN1P8_TX <= 1'b1;
                            MOSI1P8_TX <= 1'b1;
                            if (sclk_fall) begin
                                if (post_data_100bit_cnt == 7'd99) begin
                                    sclk_en <= 1'b0;
                                    post_data_phase <= 3'd0;
                                    post_data_100bit_cnt <= 7'd0;
                                    if (burst_active) begin
                                        burst_active <= 1'b0;
                                        cmd_idx <= 4'd0;
                                    end
                                end else begin
                                    post_data_100bit_cnt <= post_data_100bit_cnt + 7'd1;
                                end
                            end
                        end
                        default: begin
                            CSN1P8_TX <= 1'b1;
                            MOSI1P8_TX <= 1'b0;
                        end
                    endcase
                end
            endcase

            sclk_prev <= SCLK1P8_TX;
            
            // 检测SPI发送完成：当burst_active从1变为0时，表示发送完成
            burst_active_prev <= burst_active;
            if (burst_active_prev && !burst_active && state == IDLE) begin
                spi_complete <= 1'b1;
            end else if (ctrl_state == CTRL_WAIT && control_in == 2'd0) begin
                spi_complete <= 1'b0;
            end
        end
    end

    // 控制状态机：处理control_in和control_out
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ctrl_state <= CTRL_IDLE;
            ctrl_out_reg <= 2'd0;
            start <= 1'b1;
            start_delay_cnt <= 4'd0;
            reg_storage[0] <= 32'd0;
            reg_storage[1] <= 32'd0;
            reg_storage[2] <= 32'd0;
            reg_storage[3] <= 32'd0;
            reg_storage[4] <= 32'd0;
            reg_storage[5] <= 32'd0;
            reg_storage[6] <= 32'd0;
            reg_storage[7] <= 32'd0;
            reg_storage[8] <= 32'd0;
            reg_storage[9] <= 32'd0;
            reg_storage[10] <= 32'd0;
            reg_storage[11] <= 32'd0;
            reg_storage[12] <= 32'd0;
            reg_storage[13] <= 32'd0;
            reg_storage[14] <= 32'd0;
            reg_storage[15] <= 32'd0;
        end else begin
            case (ctrl_state)
                CTRL_IDLE: begin
                    start <= 1'b1;  // 默认保持高电平
                    if (control_in == 2'd1) begin
                        ctrl_state <= CTRL_LOAD;
                        ctrl_out_reg <= 2'd1;
                        // 加载data_in到16个寄存器
                        reg_storage[0] <= data_in[31:0];
                        reg_storage[1] <= data_in[63:32];
                        reg_storage[2] <= data_in[95:64];
                        reg_storage[3] <= data_in[127:96];
                        reg_storage[4] <= data_in[159:128];
                        reg_storage[5] <= data_in[191:160];
                        reg_storage[6] <= data_in[223:192];
                        reg_storage[7] <= data_in[255:224];
                        reg_storage[8] <= data_in[287:256];
                        reg_storage[9] <= data_in[319:288];
                        reg_storage[10] <= data_in[351:320];
                        reg_storage[11] <= data_in[383:352];
                        reg_storage[12] <= data_in[415:384];
                        reg_storage[13] <= data_in[447:416];
                        reg_storage[14] <= data_in[479:448];
                        reg_storage[15] <= data_in[511:480];
                        // start拉低，开始计数
                        start <= 1'b0;
                        start_delay_cnt <= 4'd0;
                    end
                end
                
                CTRL_LOAD: begin
                    // start保持低电平10个周期
                    if (start_delay_cnt < 4'd10) begin
                        start <= 1'b0;
                        start_delay_cnt <= start_delay_cnt + 4'd1;
                    end else begin
                        // 10个周期后，start拉高，开始发送
                        start <= 1'b1;
                        ctrl_state <= CTRL_SEND;
                    end
                end
                
                CTRL_SEND: begin
                    // start保持高电平，等待SPI发送完成
                    start <= 1'b1;
                    if (spi_complete) begin
                        ctrl_out_reg <= 2'd2;
                        ctrl_state <= CTRL_WAIT;
                    end
                end
                
                CTRL_WAIT: begin
                    // 等待control_in变为0
                    start <= 1'b1;  // 保持高电平
                    if (control_in == 2'd0) begin
                        ctrl_out_reg <= 2'd0;
                        ctrl_state <= CTRL_IDLE;
                    end
                end
                
                default: begin
                    ctrl_state <= CTRL_IDLE;
                    ctrl_out_reg <= 2'd0;
                    start <= 1'b1;  // 默认保持高电平
                end
            endcase
        end
    end
    
    assign control_out = ctrl_out_reg;

    assign reg0_read_data = data_in[31:0];
    assign reg1_read_data = data_in[63:32];
    assign reg2_read_data = data_in[95:64];
    assign reg3_read_data = data_in[127:96];
    assign reg4_read_data = data_in[159:128];
    assign reg5_read_data = data_in[191:160];
    assign reg6_read_data = data_in[223:192];
    assign reg7_read_data = data_in[255:224];
    assign reg8_read_data = data_in[287:256];
    assign reg9_read_data = data_in[319:288];
    assign regA_read_data = data_in[351:320];
    assign regB_read_data = data_in[383:352];
    assign regC_read_data = data_in[415:384];
    assign regD_read_data = data_in[447:416];
    assign regE_read_data = data_in[479:448];
    assign regF_read_data = data_in[511:480];

endmodule
