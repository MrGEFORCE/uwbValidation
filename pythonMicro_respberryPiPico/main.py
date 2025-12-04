from machine import Pin
from machine import freq
import utime
import math
import array
import ssd1306

# machine.freq(250000000)  #变频，开启后可提高树莓派速度
################## SPI 引脚定义 ########################
SCLK = machine.Pin(4, machine.Pin.OUT)  # 4对应GPIO4
CSN = machine.Pin(3, machine.Pin.OUT)  # 3对应GPIO3
MOSI = machine.Pin(1, machine.Pin.OUT)  # 1对应GPIO1
RSTN = machine.Pin(2, machine.Pin.OUT)  # 2对应GPIO2
MISO = machine.Pin(0, machine.Pin.IN)  # 0对应GPIO0

################# 按键 & LED 定义 ######################
button_up = machine.Pin(20, machine.Pin.IN, None)
button_down = machine.Pin(16, machine.Pin.IN, None)
button_center = machine.Pin(18, machine.Pin.IN, None)
button_left = machine.Pin(19, machine.Pin.IN, None)
button_right = machine.Pin(17, machine.Pin.IN, None)
LED1 = machine.Pin(28, machine.Pin.OUT)  # D4
LED2 = machine.Pin(22, machine.Pin.OUT)  # D3
LED3 = machine.Pin(21, machine.Pin.OUT)  # D1

##################### I2C协议 & OLED 引脚定义 ######################
i2c = machine.I2C(1, sda=machine.Pin(26), scl=machine.Pin(27), freq=400_000)
oled = ssd1306.SSD1306_I2C(128, 64, i2c)  # oled definition

##################### global parameter definition #################
period = 1  # 时钟周期的一半  <500khz
version = 0  # 0：1024bit SPI 版本，1：512bit SPI 版本，2：256bit SPI 版本；3：512bit SPI 阴间老版本，4：256bit SPI 阴间老版本
key_state = [0, 0, 0, 0, 0]

#################### 写入 SPI 中的数据 #############################
Data0 = 0x01020a0c
Data1 = 0x11661010
Data2 = 0x00000004
Data3 = 0x00000000
Data4 = 0x01070608
Data5 = 0x00000000
Data6 = 0x00000000
Data7 = 0x11111111
Data8 = 0x11730f0b
Data9 = 0x00000000
Data10 = 0x00000000
Data11 = 0x01070608
Data12 = 0x00000000
Data13 = 0x11661010
Data14 = 0x00000004
Data15 = 0x01020a0c
Data16 = 0x00000000
Data17 = 0x00000000
Data18 = 0x00000000
Data19 = 0x00000000
Data20 = 0x00000000
Data21 = 0x00000000
Data22 = 0x00000000
Data23 = 0x00000000
Data24 = 0x00000000
Data25 = 0x00000000
Data26 = 0x00000000
Data27 = 0x00000000
Data28 = 0x00000000
Data29 = 0x00000000
Data30 = 0x00000000
Data31 = 0x00000000
Data = [Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31]


#########################  以下为函数定义部分    ##################################################

########################### 按键中断处理函数 ####################################
def key_set(pin):  # key_state-->上下中左右
    global key_state
    key_pin = (str(pin)[8:10])
    if key_pin == '20':
        key_state[0] = 1
    elif key_pin == '16':
        key_state[1] = 1
    elif key_pin == '18':
        key_state[2] = 1
    elif key_pin == '19':
        key_state[3] = 1
    elif key_pin == '17':
        key_state[4] = 1


################ 中断按键设置,falling下降沿触发中断 ##################
button_up.irq(trigger=machine.Pin.IRQ_FALLING, handler=key_set)
button_down.irq(trigger=machine.Pin.IRQ_FALLING, handler=key_set)
button_center.irq(trigger=machine.Pin.IRQ_FALLING, handler=key_set)
button_left.irq(trigger=machine.Pin.IRQ_FALLING, handler=key_set)
button_right.irq(trigger=machine.Pin.IRQ_FALLING, handler=key_set)


########################### SPI 初始化函数 ####################################
def SPI_Initial():
    global version
    global key_state
    LED1.value(0)
    LED2.value(0)
    LED3.value(0)
    if version == 0:
        RSTN.value(0)
        utime.sleep_us(1000)
        RSTN.value(1)
        CSN.value(1)
        SCLK.value(1)
        MOSI.value(1)
    elif version == 1:
        RSTN.value(0)
        utime.sleep_us(1000)
        RSTN.value(1)
        CSN.value(1)
        SCLK.value(1)
        MOSI.value(1)
    elif version == 2:
        RSTN.value(0)
        utime.sleep_us(1000)
        RSTN.value(1)
        CSN.value(1)
        SCLK.value(1)
        MOSI.value(1)
    elif version == 3:
        RSTN.value(0)
        utime.sleep_us(1000)
        RSTN.value(1)
        CSN.value(0)
        SCLK.value(0)
        MOSI.value(0)
    elif version == 4:
        RSTN.value(0)
        utime.sleep_us(1000)
        RSTN.value(1)
        CSN.value(0)
        SCLK.value(0)
        MOSI.value(0)
    else:
        oled.fill(0)
        oled.text('Version ERROR', 8, 14)
        oled.text('Reset to 1024bit', 0, 42)
        oled.show()
        version = 0
        SPI_Initial()
        while (1):
            if key_state[2] == 1:
                key_state = [0, 0, 0, 0, 0]
                break


########################### write & read SPI_V0 register --> 1bit + 5bit + 32bit ####################################
def SPI_WR_V0(WEB, ADDR, DATA32):  # 1bit读写控制位 + 地址位5bit + 数据位32bit
    data = 0
    shift_in_reg = (WEB << 37) + (ADDR << 32) + DATA32
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    CSN.value(1)
    utime.sleep_us(period)
    CSN.value(0)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(((shift_in_reg) & (0x2000000000)))
    shift_in_reg = ((shift_in_reg << 1) & (0x3FFFFFFFFF))
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    utime.sleep_us(period)
    for i in range(37):
        SCLK.value(1)
        data = (data << 1) + MISO.value()  # read
        utime.sleep_us(period)
        SCLK.value(0)
        MOSI.value(((shift_in_reg) & (0x2000000000)))
        shift_in_reg = ((shift_in_reg << 1) & (0x3FFFFFFFFF))
        # print("shift_in_reg:0x{:X}".format(shift_in_reg))
        utime.sleep_us(period)
    SCLK.value(1)
    data = (data << 1) + MISO.value()  # read
    utime.sleep_us(period)
    CSN.value(1)
    MOSI.value(1)
    return data  # MISO 读取数据返回值


########################### SPI_V0 整体刷新函数 ####################################
def SPI_Refresh_V0(Data):
    RSTN.value(0)
    utime.sleep_us(1000)
    RSTN.value(1)
    CSN.value(1)
    SCLK.value(1)
    MOSI.value(1)

    SPI_WR_V0(0, 0, Data[0])
    SPI_WR_V0(0, 1, Data[1])
    SPI_WR_V0(0, 2, Data[2])
    SPI_WR_V0(0, 3, Data[3])
    SPI_WR_V0(0, 4, Data[4])
    SPI_WR_V0(0, 5, Data[5])
    SPI_WR_V0(0, 6, Data[6])
    SPI_WR_V0(0, 7, Data[7])
    SPI_WR_V0(0, 8, Data[8])
    SPI_WR_V0(0, 9, Data[9])
    SPI_WR_V0(0, 10, Data[10])
    SPI_WR_V0(0, 11, Data[11])
    SPI_WR_V0(0, 12, Data[12])
    SPI_WR_V0(0, 13, Data[13])
    SPI_WR_V0(0, 14, Data[14])
    SPI_WR_V0(0, 15, Data[15])
    SPI_WR_V0(0, 16, Data[16])
    SPI_WR_V0(0, 17, Data[17])
    SPI_WR_V0(0, 18, Data[18])
    SPI_WR_V0(0, 19, Data[19])
    SPI_WR_V0(0, 20, Data[20])
    SPI_WR_V0(0, 21, Data[21])
    SPI_WR_V0(0, 22, Data[22])
    SPI_WR_V0(0, 23, Data[23])
    SPI_WR_V0(0, 24, Data[24])
    SPI_WR_V0(0, 25, Data[25])
    SPI_WR_V0(0, 26, Data[26])
    SPI_WR_V0(0, 27, Data[27])
    SPI_WR_V0(0, 28, Data[28])
    SPI_WR_V0(0, 29, Data[29])
    SPI_WR_V0(0, 30, Data[30])
    SPI_WR_V0(0, 31, Data[31])


########################### write & read SPI_V1 register --> 1bit + 4bit + 32bit ####################################
def SPI_WR_V1(WEB, ADDR, DATA32):  # 1bit读写控制位 + 地址位4bit + 数据位32bit
    data = 0
    shift_in_reg = (WEB << 36) + (ADDR << 32) + DATA32
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    CSN.value(1)
    utime.sleep_us(period)
    CSN.value(0)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(((shift_in_reg) & (0x1000000000)))
    shift_in_reg = ((shift_in_reg << 1) & (0x1FFFFFFFFF))
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    utime.sleep_us(period)
    for i in range(36):
        SCLK.value(1)
        data = (data << 1) + MISO.value()  # read
        utime.sleep_us(period)
        SCLK.value(0)
        MOSI.value(((shift_in_reg) & (0x1000000000)))
        shift_in_reg = ((shift_in_reg << 1) & (0x1FFFFFFFFF))
        # print("shift_in_reg:0x{:X}".format(shift_in_reg))
        utime.sleep_us(period)
    SCLK.value(1)
    data = (data << 1) + MISO.value()  # read
    utime.sleep_us(period)
    CSN.value(1)
    MOSI.value(1)
    return data  # MISO 读取数据返回值


########################### SPI_V1 整体刷新函数 ####################################
def SPI_Refresh_V1(Data):
    RSTN.value(0)
    utime.sleep_us(1000)
    RSTN.value(1)
    CSN.value(1)
    SCLK.value(1)
    MOSI.value(1)

    SPI_WR_V1(0, 0, Data[0])
    SPI_WR_V1(0, 1, Data[1])
    SPI_WR_V1(0, 2, Data[2])
    SPI_WR_V1(0, 3, Data[3])
    SPI_WR_V1(0, 4, Data[4])
    SPI_WR_V1(0, 5, Data[5])
    SPI_WR_V1(0, 6, Data[6])
    SPI_WR_V1(0, 7, Data[7])
    SPI_WR_V1(0, 8, Data[8])
    SPI_WR_V1(0, 9, Data[9])
    SPI_WR_V1(0, 10, Data[10])
    SPI_WR_V1(0, 11, Data[11])
    SPI_WR_V1(0, 12, Data[12])
    SPI_WR_V1(0, 13, Data[13])
    SPI_WR_V1(0, 14, Data[14])
    SPI_WR_V1(0, 15, Data[15])


########################### write & read SPI_V2 register --> 1bit + 3bit + 32bit ####################################
def SPI_WR_V2(WEB, ADDR, DATA32):  # 1bit读写控制位 + 地址位3bit + 数据位32bit
    data = 0
    shift_in_reg = (WEB << 35) + (ADDR << 32) + DATA32
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    CSN.value(1)
    utime.sleep_us(period)
    CSN.value(0)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(((shift_in_reg) & (0x800000000)))
    shift_in_reg = ((shift_in_reg << 1) & (0xFFFFFFFFF))
    # print("shift_in_reg:0x{:X}".format(shift_in_reg))
    utime.sleep_us(period)
    for i in range(35):
        SCLK.value(1)
        data = (data << 1) + MISO.value()  # read
        utime.sleep_us(period)
        SCLK.value(0)
        MOSI.value(((shift_in_reg) & (0x800000000)))
        shift_in_reg = ((shift_in_reg << 1) & (0xFFFFFFFFF))
        # print("shift_in_reg:0x{:X}".format(shift_in_reg))
        utime.sleep_us(period)
    SCLK.value(1)
    data = (data << 1) + MISO.value()  # read
    utime.sleep_us(period)
    CSN.value(1)
    MOSI.value(1)
    return data  # MISO 读取数据返回值


########################### SPI_V1 整体刷新函数 ####################################
def SPI_Refresh_V2(Data):
    RSTN.value(0)
    utime.sleep_us(1000)
    RSTN.value(1)
    CSN.value(1)
    SCLK.value(1)
    MOSI.value(1)

    SPI_WR_V2(0, 0, Data[0])
    SPI_WR_V2(0, 1, Data[1])
    SPI_WR_V2(0, 2, Data[2])
    SPI_WR_V2(0, 3, Data[3])
    SPI_WR_V2(0, 4, Data[4])
    SPI_WR_V2(0, 5, Data[5])
    SPI_WR_V2(0, 6, Data[6])
    SPI_WR_V2(0, 7, Data[7])


########################### write SPI_V3 register ####################################
def SPI_W_V3(ADDR, DATA32):
    addr_reg = ADDR
    shift_in_reg = DATA32
    RSTN.value(1)
    CSN.value(1)

    # 写地址数据
    for i in range(3):
        MOSI.value(0)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    for i in range(4):
        MOSI.value(addr_reg & 0x8)
        addr_reg = ((addr_reg << 1) & 0xF)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(ADDR & 0x1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(ADDR & 0x1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)

    for i in range(2):
        MOSI.value(0)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)

    for i in range(32):
        MOSI.value(((shift_in_reg) & (0x80000000)))
        shift_in_reg = ((shift_in_reg << 1) & (0xFFFFFFFF))
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)

    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)
    utime.sleep_us(period)


########################### SPI_V3 整体刷新函数 ####################################
def SPI_Refresh_V3(Data):
    # 写前复位
    CSN.value(0)
    RSTN.value(0)
    utime.sleep_us(200)
    CSN.value(1)
    RSTN.value(1)

    SPI_W_V3(0, Data[0])
    SPI_W_V3(1, Data[1])
    SPI_W_V3(2, Data[2])
    SPI_W_V3(3, Data[3])
    SPI_W_V3(4, Data[4])
    SPI_W_V3(5, Data[5])
    SPI_W_V3(6, Data[6])
    SPI_W_V3(7, Data[7])
    SPI_W_V3(8, Data[8])
    SPI_W_V3(9, Data[9])
    SPI_W_V3(10, Data[10])
    SPI_W_V3(11, Data[11])
    SPI_W_V3(12, Data[12])
    SPI_W_V3(13, Data[13])
    SPI_W_V3(14, Data[14])
    SPI_W_V3(15, Data[15])

    # 写后放淤血
    shift = 0x10;
    for i in range(8):
        MOSI.value((shift << i) & 0x80)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)
    for i in range(100):
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)


########################### write SPI_V4 register ####################################
def SPI_W_V4(ADDR, DATA32):
    addr_reg = ADDR
    shift_in_reg = DATA32
    RSTN.value(1)
    CSN.value(1)

    # 写地址数据
    for i in range(3):
        MOSI.value(0)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    for i in range(4):
        MOSI.value(addr_reg & 0x8)
        addr_reg = ((addr_reg << 1) & 0xf)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(ADDR & 0x1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(ADDR & 0x1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)

    for i in range(2):
        MOSI.value(0)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)

    for i in range(32):
        MOSI.value(((shift_in_reg) & (0x80000000)))
        shift_in_reg = ((shift_in_reg << 1) & (0xFFFFFFFF))
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)

    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(0)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)
    utime.sleep_us(period)


########################### SPI_V4 整体刷新函数 ####################################
def SPI_Refresh_V4(Data):
    # 写前复位
    CSN.value(0)
    RSTN.value(0)
    utime.sleep_us(200)
    CSN.value(1)
    RSTN.value(1)

    SPI_W_V4(0, Data[0])
    SPI_W_V4(1, Data[1])
    SPI_W_V4(2, Data[2])
    SPI_W_V4(3, Data[3])
    SPI_W_V4(4, Data[4])
    SPI_W_V4(5, Data[5])
    SPI_W_V4(6, Data[6])
    SPI_W_V4(7, Data[7])

    # 写后放淤血
    shift = 0x10;
    for i in range(8):
        MOSI.value((shift << i) & 0x80)
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(0)
    MOSI.value(1)
    utime.sleep_us(period)
    SCLK.value(1)
    utime.sleep_us(period)
    SCLK.value(0)
    CSN.value(1)
    for i in range(100):
        utime.sleep_us(period)
        SCLK.value(1)
        utime.sleep_us(period)
        SCLK.value(0)


########################### SPI 整体刷新函数 ####################################
def SPI_Refresh(Data):
    global version
    if version == 0:
        SPI_Refresh_V0(Data)
    elif version == 1:
        SPI_Refresh_V1(Data)
    elif version == 2:
        SPI_Refresh_V2(Data)
    elif version == 3:
        SPI_Refresh_V3(Data)
    elif version == 4:
        SPI_Refresh_V4(Data)
    else:
        oled.fill(0)
        oled.text('Version ERROR', 8, 28)
        oled.show()


# ----------------------------  oled 显示设置 ------------------------------------#
def OLED_display(row, col, ADDR, Data):
    global version
    oled.fill(0)
    if version == 0:
        oled.text('Ver. 1024bit', 10, 14)
    elif version == 1:
        oled.text('Ver.  512bit', 10, 14)
    elif version == 2:
        oled.text('Ver.  256bit', 10, 14)
    elif version == 3:
        oled.text('Ver. o512bit', 10, 14)
    elif version == 4:
        oled.text('Ver. o256bit', 10, 14)
    else:
        oled.text('Version ERROR', 10, 14)
    oled.text('{:02x}: 0x{:08x}'.format(ADDR, Data[ADDR]), 8, 42)

    if row == 0:
        oled.text('*', 0, 14)
        if col == 0:
            oled.text('_', 0, 16)
        else:
            oled.text('_______', 51, 16)
    elif row == 1:
        oled.text('*', 0, 42)
        if col == 0:
            oled.text('_', 0, 44)
        elif col == 1:
            oled.text('_', 8, 44)
        elif col == 2:
            oled.text('_', 16, 44)
        elif col == 3:
            oled.text('_', 56, 44)
        elif col == 4:
            oled.text('_', 64, 44)
        elif col == 5:
            oled.text('_', 72, 44)
        elif col == 6:
            oled.text('_', 80, 44)
        elif col == 7:
            oled.text('_', 88, 44)
        elif col == 8:
            oled.text('_', 96, 44)
        elif col == 9:
            oled.text('_', 104, 44)
        elif col == 10:
            oled.text('_', 112, 44)
    oled.show()


# ----------------------------  oled 根据按键更改显示设置 -----------------------------------#
def OLED_change(row, col, ADDR, Data):  # 按键按下时，oled显示更改
    global key_state
    global version
    if key_state == [1, 0, 0, 0, 0]:  # up
        key_state = [0, 0, 0, 0, 0]
        if row == 0:  # 第一行 version
            if col == 0:
                row = row - 1  # 换行
            elif col == 1:
                version = version + 1
                if version < 0:
                    version = 4
                elif version > 4:
                    version = 0
                SPI_Initial()
                ADDR = 0
        elif row == 1:  # 第二行 addr+data
            if col == 0:
                row = row - 1  # 换行
            elif col == 1:
                if version == 0:
                    ADDR = (ADDR + 0x10) & 0x1f
                elif version == 1:
                    ADDR = (ADDR + 0x10) & 0x0f
                elif version == 2:
                    ADDR = (ADDR + 0x10) & 0x07
                elif version == 3:
                    ADDR = (ADDR + 0x10) & 0x0f
                elif version == 4:
                    ADDR = (ADDR + 0x10) & 0x07
            elif col == 2:
                if version == 0:
                    ADDR = (ADDR + 0x01) & 0x1f
                elif version == 1:
                    ADDR = (ADDR + 0x01) & 0x0f
                elif version == 2:
                    ADDR = (ADDR + 0x01) & 0x07
                elif version == 3:
                    ADDR = (ADDR + 0x01) & 0x0f
                elif version == 4:
                    ADDR = (ADDR + 0x01) & 0x07
            elif col == 3:
                Data[ADDR] = (0x10000000 + Data[ADDR]) & 0xffffffff
            elif col == 4:
                Data[ADDR] = (0x01000000 + Data[ADDR]) & 0xffffffff
            elif col == 5:
                Data[ADDR] = (0x00100000 + Data[ADDR]) & 0xffffffff
            elif col == 6:
                Data[ADDR] = (0x00010000 + Data[ADDR]) & 0xffffffff
            elif col == 7:
                Data[ADDR] = (0x00001000 + Data[ADDR]) & 0xffffffff
            elif col == 8:
                Data[ADDR] = (0x00000100 + Data[ADDR]) & 0xffffffff
            elif col == 9:
                Data[ADDR] = (0x00000010 + Data[ADDR]) & 0xffffffff
            elif col == 10:
                Data[ADDR] = (0x00000001 + Data[ADDR]) & 0xffffffff
        if row < 0:
            row = 1
        elif row > 1:
            row = 0

    elif key_state == [0, 1, 0, 0, 0]:  # down
        key_state = [0, 0, 0, 0, 0]
        if row == 0:  # 第一行 version
            if col == 0:
                row = row + 1  # 换行
            elif col == 1:
                version = version - 1
                if version < 0:
                    version = 4
                elif version > 4:
                    version = 0
                SPI_Initial()
                ADDR = 0
        elif row == 1:  # 第二行 addr+data
            if col == 0:
                row = row + 1  # 换行
            elif col == 1:
                if version == 0:
                    ADDR = (ADDR - 0x10) & 0x1f
                elif version == 1:
                    ADDR = (ADDR - 0x10) & 0x0f
                elif version == 2:
                    ADDR = (ADDR - 0x10) & 0x07
                elif version == 3:
                    ADDR = (ADDR - 0x10) & 0x0f
                elif version == 4:
                    ADDR = (ADDR - 0x10) & 0x07
            elif col == 2:
                if version == 0:
                    ADDR = (ADDR - 0x01) & 0x1f
                elif version == 1:
                    ADDR = (ADDR - 0x01) & 0x0f
                elif version == 2:
                    ADDR = (ADDR - 0x01) & 0x07
                elif version == 3:
                    ADDR = (ADDR - 0x01) & 0x0f
                elif version == 4:
                    ADDR = (ADDR - 0x01) & 0x07
            elif col == 3:
                Data[ADDR] = (-0x10000000 + Data[ADDR]) & 0xffffffff
            elif col == 4:
                Data[ADDR] = (-0x01000000 + Data[ADDR]) & 0xffffffff
            elif col == 5:
                Data[ADDR] = (-0x00100000 + Data[ADDR]) & 0xffffffff
            elif col == 6:
                Data[ADDR] = (-0x00010000 + Data[ADDR]) & 0xffffffff
            elif col == 7:
                Data[ADDR] = (-0x00001000 + Data[ADDR]) & 0xffffffff
            elif col == 8:
                Data[ADDR] = (-0x00000100 + Data[ADDR]) & 0xffffffff
            elif col == 9:
                Data[ADDR] = (-0x00000010 + Data[ADDR]) & 0xffffffff
            elif col == 10:
                Data[ADDR] = (-0x00000001 + Data[ADDR]) & 0xffffffff
        if row < 0:
            row = 1
        elif row > 1:
            row = 0

    elif key_state == [0, 0, 1, 0, 0]:  # center  确认完D4闪一下
        key_state = [0, 0, 0, 0, 0]
        LED1.value(1)
        if row == 0:
            SPI_Initial()
        elif row == 1:
            SPI_Refresh(Data)
        LED1.value(0)  # 执行完该函数灭灯D4

    elif key_state == [0, 0, 0, 1, 0]:  # left
        key_state = [0, 0, 0, 0, 0]
        col = col - 1  # 换列
        if row == 0:
            if col < 0:
                col = 1
            elif col > 1:
                col = 0
        else:
            if col < 0:
                col = 10
            elif col > 10:
                col = 0

    elif key_state == [0, 0, 0, 0, 1]:  # right
        key_state = [0, 0, 0, 0, 0]
        col = col + 1  # 换列
        if row == 0:
            if col < 0:
                col = 1
            elif col > 1:
                col = 0
        else:
            if col < 0:
                col = 10
            elif col > 10:
                col = 0

    return row, col, ADDR, Data  # 返回值确保main函数中while(1)下一次循环能更改相应的值


########################### 主函数 ####################################
def main():
    global Data
    global version
    SPI_Initial()
    row = 1
    col = 0
    ADDR = 0

    while (1):
        OLED_display(row, col, ADDR, Data)
        row, col, ADDR, Data = OLED_change(row, col, ADDR, Data)


if __name__ == '__main__':
    main()
