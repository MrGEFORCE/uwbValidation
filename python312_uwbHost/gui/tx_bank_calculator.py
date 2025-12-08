"""
TX Bank 寄存器值计算模块
用于根据参数计算各个bank的32位寄存器值
"""


def compose_bank5_value() -> int:
    """
    生成 bank5 的 32 位值：
    - 第 0~7 位为 1，其余位为 0
    """
    return 0xFF


def compose_bank6_value(params: dict) -> int:
    """
    生成 bank6 的 32 位值：
    - bit0: 衰减 2dB 勾选
    - bit1: 衰减 10dB 勾选
    - bit2~4: 固定 0
    - bit5~13: IDAC I-P
    - bit14~22: IDAC I-N
    - bit23~31: IDAC Q-P
    """
    value = 0

    if params.get('att2db', False):
        value |= 1 << 0
    if params.get('att10db', False):
        value |= 1 << 1

    def clamp_9bit(val: int) -> int:
        return int(val) & 0x1FF  # 9 位掩码

    ip_val = clamp_9bit(params.get('idac_ip', 0))
    in_val = clamp_9bit(params.get('idac_in', 0))
    qp_val = clamp_9bit(params.get('idac_qp', 0))

    value |= ip_val << 5
    value |= in_val << 14
    value |= qp_val << 23

    return value & 0xFFFFFFFF


def compose_bank7_value(params: dict) -> int:
    """
    生成 bank7 的 32 位值：
    - bit31~28: 0
    - bit27~24: 基带增益编码
    - bit23~16: 带宽与基带增益组合编码
    - bit15~12: 带宽编码
    - bit11~9: 0
    - bit8~0: IDAC Q-N
    """
    value = 0
    bandwidth = params.get('bandwidth', 500)
    bb_gain = params.get('bb_gain', '0dB')

    gain_bits = {
        "-6dB": 0b0001,
        "0dB": 0b0010,
        "6dB": 0b0100,
        "12dB": 0b1000,
    }.get(bb_gain, 0)
    value |= (gain_bits & 0xF) << 24

    bw_gain_bits = {
        (500, "-6dB"): 0x18,
        (500, "0dB"): 0x0C,
        (500, "6dB"): 0x06,
        (500, "12dB"): 0x01,
        (250, "-6dB"): 0x30,
        (250, "0dB"): 0x18,
        (250, "6dB"): 0x0C,
        (250, "12dB"): 0x04,
        (100, "-6dB"): 0xEA,
        (100, "0dB"): 0x4A,
        (100, "6dB"): 0x22,
        (100, "12dB"): 0x0F,
    }.get((bandwidth, bb_gain), 0)
    value |= (bw_gain_bits & 0xFF) << 16

    bw_bits = {
        500: 0b1010,
        250: 0b1000,
        100: 0b0110,
    }.get(bandwidth, 0)
    value |= (bw_bits & 0xF) << 12

    qn_val = int(params.get('idac_qn', 0)) & 0x1FF
    value |= qn_val

    return value & 0xFFFFFFFF


def compose_bank8_value(params: dict) -> int:
    """
    生成 bank8 的 32 位值：
    - bit31~26: 0
    - bit25~22: 滤波器增益编码
    - bit21~15: (带宽, 滤波器增益) 高 7 位编码
    - bit14~8 : (带宽, 滤波器增益) 低 7 位编码
    - bit7~4  : 带宽相关编码（高 4 位）
    - bit3~0  : 带宽相关编码（低 4 位）
    """
    value = 0
    bandwidth = params.get('bandwidth', 500)
    f_gain = params.get('filter_gain', '0dB')

    # bit25~22: 滤波器增益
    filt_bits = {
        "0dB": 0b0001,
        "6dB": 0b0110,
        "12dB": 0b1100,
    }.get(f_gain, 0)
    value |= (filt_bits & 0xF) << 22

    # bit21~15 + bit14~8: 组合编码
    bw_gain_7_7 = {
        (500, "0dB"):  (0b0010000, 0b0010000),
        (500, "6dB"):  (0b0010000, 0b0001000),
        (500, "12dB"): (0b0001000, 0b0000011),
        (250, "0dB"):  (0b0100000, 0b0100000),
        (250, "6dB"):  (0b0100000, 0b0001110),
        (250, "12dB"): (0b0100000, 0b0000111),
        (100, "0dB"):  (0b1001110, 0b1010000),
        (100, "6dB"):  (0b1001110, 0b0101000),
        (100, "12dB"): (0b1001110, 0b0010100),
    }.get((bandwidth, f_gain), (0, 0))
    high7, low7 = bw_gain_7_7
    value |= (high7 & 0x7F) << 15
    value |= (low7 & 0x7F) << 8

    # bit7~4 + bit3~0: 仅与带宽有关
    bw_nibble = {
        500: (0b0110, 0b0110),
        250: (0b0100, 0b0110),
        100: (0b0011, 0b0100),
    }.get(bandwidth, (0, 0))
    high4, low4 = bw_nibble
    value |= (high4 & 0xF) << 4
    value |= (low4 & 0xF)

    return value & 0xFFFFFFFF


def compose_bank9_value(params: dict) -> int:
    """
    生成 bank9 的 32 位值：
    - bit31~18: 0
    - bit17~12: 6bit，根据频率是否 >= 6GHz 选择：
        - >=6GHz: 100111
        - <6GHz: 000000
    - bit11~6 / bit5~0: 各 6bit，根据频率是否 >= 6GHz 选择：
        - >=6GHz: 110000 / 101100
        - <6GHz: 000000 / 000000
    """
    value = 0
    # 滑块单位 0.01GHz，>= 6GHz 即值 >= 600
    is_high_freq = params.get('freq', 0) >= 600

    if is_high_freq:
        bits_17_12 = 0b100111
        bits_11_6 = 0b110000
        bits_5_0 = 0b101100
    else:
        bits_17_12 = 0
        bits_11_6 = 0
        bits_5_0 = 0

    value |= (bits_17_12 & 0x3F) << 12
    value |= (bits_11_6 & 0x3F) << 6
    value |= (bits_5_0 & 0x3F)

    return value & 0xFFFFFFFF


def compose_bankA_value(params: dict) -> int:
    """
    生成 bankA 的 32 位值：
    - bit31~18: 0
    - bit17~12: 6bit，根据频率是否 >= 6GHz 选择：
        - >=6GHz: 000000
        - <6GHz: 100000
    - bit11~6 / bit5~0: 各 6bit，根据频率是否 >= 6GHz 选择：
        - >=6GHz: 000000 / 000000
        - <6GHz: 100000 / 110101
    """
    value = 0
    is_high_freq = params.get('freq', 0) >= 600

    if is_high_freq:
        bits_17_12 = 0b000000
        bits_11_6 = 0b000000
        bits_5_0 = 0b000000
    else:
        bits_17_12 = 0b100000
        bits_11_6 = 0b100000
        bits_5_0 = 0b110101

    value |= (bits_17_12 & 0x3F) << 12
    value |= (bits_11_6 & 0x3F) << 6
    value |= (bits_5_0 & 0x3F)

    return value & 0xFFFFFFFF


def compose_bankB_value() -> int:
    """
    生成 bankB 的 32 位值（当前默认0）。
    """
    return 0


def generate_all_tx_bank_values(params: dict) -> dict:
    """
    根据已验证的参数统一生成所有bank的寄存器值。
    
    Args:
        params: 参数字典，包含所有TX配置参数
        
    Returns:
        dict: bank编号到32位值的映射，例如 {0x5: 0xFF, 0x6: 0x12345678, ...}
    """
    bank_values = {}
    
    # Bank5: 固定值
    bank_values[0x5] = compose_bank5_value()
    
    # Bank6: 使用参数生成
    bank_values[0x6] = compose_bank6_value(params)
    
    # Bank7: 使用参数生成
    bank_values[0x7] = compose_bank7_value(params)
    
    # Bank8: 使用参数生成
    bank_values[0x8] = compose_bank8_value(params)
    
    # Bank9: 使用参数生成
    bank_values[0x9] = compose_bank9_value(params)
    
    # BankA: 使用参数生成
    bank_values[0xA] = compose_bankA_value(params)
    
    # BankB: 默认0
    bank_values[0xB] = compose_bankB_value()
    
    return bank_values

