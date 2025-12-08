import struct
import numpy as np

import const

TxRegsAddr = {
    0: 0x05,
    1: 0x06,
    2: 0x07,
    3: 0x08,
    4: 0x09,
    5: 0x0A,
    6: 0x0B
}

DLLTable = {
    6: 0xFFFBEF00,
    7: 0x11FB0F03,
    8: 0x11FB0F05,
    9: 0x11FB0F06,
    10: 0x11FB0F07,
    11: 0x11FB0F08,
    12: 0x11FB0F10,
    13: 0x11FB0F12,
    14: 0x11FB0F15,
    15: 0x11FB0F18,
    16: 0x523B0F21,
    17: 0xF2090F11,
    18: 0xF2090F21
}


class IDAC:
    def __int__(self):
        self.IP = 0
        self.QP = 0
        self.IN = 0
        self.QN = 0

    def range_validation(self, valid_bits: int) -> bool:
        bound = int("1" * valid_bits, 2)
        if self.IP < 0 or self.IP > bound:
            return True
        if self.QP < 0 or self.QP > bound:
            return True
        if self.IN < 0 or self.IN > bound:
            return True
        if self.QN < 0 or self.QN > bound:
            return True
        return False


class PGA:
    PgaWordR = {
        -6: 0b0001,
        0: 0b0010,
        6: 0b0100,
        12: 0b1000
    }

    TxPgaWordC = {
        (500, -6): 0b00011000,
        (500, 0): 0b00001100,
        (500, 6): 0b00000110,
        (500, 12): 0b00000001,
        (250, -6): 0b00110000,
        (250, 0): 0b00011000,
        (250, 6): 0b00001100,
        (250, 12): 0b00000100,
        (100, -6): 0b11101010,
        (100, 0): 0b01001010,
        (100, 6): 0b00100010,
        (100, 12): 0b00001111
    }

    RxPgaWordC = {
        (500, -6): 24,
        (500, 0): 12,
        (500, 6): 6,
        (500, 12): 1,
        (250, -6): 78,
        (250, 0): 38,
        (250, 6): 18,
        (250, 12): 6,
        (100, -6): 232,
        (100, 0): 74,
        (100, 6): 34,
        (100, 12): 15
    }

    PgaWordP = {
        500: 0b1010,
        250: 0b1000,
        100: 0b0110
    }

    def __init__(self):
        self.R = 0
        self.C = 0
        self.P = 0

    def gen_pga(self, gain: int, bw: int, T: bool) -> None:
        self.R = self.PgaWordR[gain]
        self.P = self.PgaWordP[bw]
        if T:
            self.C = self.TxPgaWordC[(bw, gain)]
        else:
            self.C = self.RxPgaWordC[(bw, gain)]


class TIA:
    TiaWordR = {
        30: 4,
        24: 6,
        18: 7
    }

    TiaWordP = {
        500: 6,
        250: 4,
        100: 3
    }

    TiaWordC = {
        (500, 30): 2,
        (500, 24): 4,
        (500, 18): 8,
        (250, 30): 5,
        (250, 24): 10,
        (250, 18): 20,
        (100, 30): 10,
        (100, 24): 20,
        (100, 18): 40,
    }

    def __init__(self):
        self.R = 0
        self.C = 0
        self.P = 0

    def gen_tia(self, gain: int, bw: int) -> None:
        self.R = self.TiaWordR[gain]
        self.P = self.TiaWordP[bw]
        self.C = self.TiaWordC[(bw, gain)]


class Filter:
    TxFilterWordR1 = {
        0: 0b0001,
        6: 0b0110,
        12: 0b1100
    }

    TxFilterWordC1 = {
        (500, 0): 0b0010000,
        (500, 6): 0b0010000,
        (500, 12): 0b00010001,
        (250, 0): 0b0100000,
        (250, 6): 0b0100000,
        (250, 12): 0b0100000,
        (100, 0): 0b1001110,
        (100, 6): 0b1001110,
        (100, 12): 0b1001110
    }

    TxFilterWordC2 = {
        (500, 0): 0b0010000,
        (500, 6): 0b0001000,
        (500, 12): 0b0000011,
        (250, 0): 0b0100000,
        (250, 6): 0b0001110,
        (250, 12): 0b0000111,
        (100, 0): 0b1010000,
        (100, 6): 0b0101000,
        (100, 12): 0b0010100
    }

    RxFilterWordC1 = {
        500: 16,
        250: 32,
        100: 88
    }

    RxFilterWordC2 = {
        500: 80,
        250: 32,
        100: 16
    }

    RxFilterWordC1Order2 = {
        500: 4,
        250: 63,
        100: 63
    }

    RxFilterWordC2Order2 = {
        500: 0,
        250: 7,
        100: 7
    }

    FilterWordP1 = {
        500: 0b0110,
        250: 0b0100,
        100: 0b0011
    }

    FilterWordP2 = {
        500: 0b0110,
        250: 0b0110,
        100: 0b0100
    }

    def __init__(self):
        self.R1 = 0
        self.C1 = 0
        self.C2 = 0
        self.P1 = 0
        self.P2 = 0

    def gen_filter(self, gain: int, bw: int, T: bool, order: int = 1) -> None:
        self.P1 = self.FilterWordP1[bw]
        self.P2 = self.FilterWordP2[bw]
        if T:
            self.R1 = self.TxFilterWordR1[gain]
            self.C1 = self.TxFilterWordC1[(bw, gain)]
            self.C2 = self.TxFilterWordC2[(bw, gain)]
        else:
            self.R1 = gain + 1
            if order == 2:
                self.C1 = self.RxFilterWordC1[bw]
                self.C2 = self.RxFilterWordC2[bw]
            elif order == 1:
                self.C1 = self.RxFilterWordC1Order2[bw]
                self.C2 = self.RxFilterWordC2Order2[bw]


class RegsABC:
    def __init__(self):
        self.regs: np.ndarray | None = None
        self.refTable: dict = {}

    def gen_regs(self) -> bool:
        ...

    def gen_cmd(self) -> bytes:
        b = b''
        for i in range(len(self.refTable)):
            b += const.CMD_OUTER_CLASS_T + struct.pack(">BI", self.refTable[i], self.regs[i])
        return b

    def print(self) -> None:
        for i in range(len(self.refTable)):
            print("addr: {}, hex:{}, bin:{}".format(str(hex(self.refTable[i]))[2:], str(hex(self.regs[i]))[2:], str(bin(self.regs[i]))[2:]))


class TxRegs(RegsABC):
    def __init__(self):
        super().__init__()
        # reg
        self.regs = np.zeros([const.REG_TX_NUMS], dtype=np.uint32)
        self.refTable = TxRegsAddr

        # external config
        self.idac = IDAC()
        self.att2 = False
        self.att10 = False
        self.filterGain = 0
        self.bbGain = 0
        self.bbBandwidth = 0
        self.HBFlag = False
        self.freq = 0

        # internal config
        self.pga = PGA()
        self.filter = Filter()

        # init
        self.regs[0] = int("0" * 32 + "1" * 8, 2)  # bank 5

    def gen_regs(self) -> bool:
        self.regs[1:] = 0
        # range validation
        if self.idac.range_validation(9):
            return True

        # bank 6
        self.regs[1] += 1 if self.att2 else 0
        self.regs[1] += (1 << 1) if self.att10 else 0
        self.regs[1] += (self.idac.IP << 5) + (self.idac.IN << 14) + (self.idac.QP << 23)

        # bank 7
        self.pga.gen_pga(self.bbGain, self.bbBandwidth, True)
        self.regs[2] = (self.pga.R << 24) + (self.pga.C << 16) + (self.pga.P << 12) + self.idac.QN

        # bank 8
        self.filter.gen_filter(self.filterGain, self.bbBandwidth, True)
        self.regs[3] = (self.filter.R1 << 22) + (self.filter.C1 << 15) + (self.filter.C2 << 8) + (self.filter.P1 << 4) + self.filter.P2

        if self.HBFlag:
            # bank 9
            self.regs[4] = (0b100111 << 12) + (0b110000 << 6) + 0b101100
        else:
            # bank A
            self.regs[5] = (0b100000 << 12) + (0b100000 << 6) + 0b110101

        # bank B
        if self.HBFlag:
            self.regs[6] = DLLTable[round(self.freq * 1e-9)]

        return False


class RxRegs(RegsABC):
    def __init__(self):
        super().__init__()
        self.regs = np.zeros([const.REG_RX_NUMS], dtype=np.uint32)
        self.refTable = {}
        for i in range(const.REG_RX_NUMS):
            self.refTable[i] = i

        # external config
        self.idac1 = IDAC()
        self.idac2 = IDAC()
        self.att2 = False
        self.att10 = False
        self.bbGain = 0
        self.bbBandwidth = 0
        self.HBFlag = False
        self.tiaGain = 0

        # internal config
        self.pga = PGA()
        self.filter1 = Filter()
        self.filter2 = Filter()
        self.tia = TIA()

        # init
        self.regs[7] = 0b00010011000000010001000100010001

    def gen_regs(self) -> bool:
        self.regs[:] = 0
        # range validation
        if self.idac1.range_validation(10):
            return True
        if self.idac2.range_validation(9):
            return True

        # bank 0
        if not self.HBFlag:
            self.pga.gen_pga(self.bbGain, self.bbBandwidth, False)
            self.regs[0] = (1 << 24) + (self.pga.R << 16) + (self.pga.P << 8) + self.pga.C

            # bank 1
            self.filter2.gen_filter(self.bbGain, self.bbBandwidth, False, 2)
            self.regs[1] = (1 << 28) + (self.filter2.R1 << 24) + (self.filter2.P2 << 20) + (self.filter2.P1 << 16) + (self.filter2.C2 << 8) + self.filter2.C1

            # bank 2
            self.filter1.gen_filter(self.bbGain, self.bbBandwidth, False, 1)
            self.regs[2] = (1 << 28) + (self.filter1.R1 << 24) + (self.filter1.P2 << 20) + (self.filter1.P1 << 16) + (self.filter1.C2 << 8) + self.filter1.C1

            # bank 3
            self.regs[3] = ((self.idac2.QN & 0xFF) << 24) + ((self.idac2.QP & 0xFF) << 16) + ((self.idac2.IN & 0xFF) << 8) + (self.idac2.IP & 0xFF)

            # bank 4
            self.tia.gen_tia(self.tiaGain, self.bbBandwidth)
            self.regs[4] = (1 << 24) + (self.tia.R << 16) + (self.tia.P << 8) + self.tia.C

            # bank 5
            self.regs[5] = (1 << 24)
            self.regs[5] += ((self.idac1.QN >> 8) << 22)
            self.regs[5] += ((self.idac1.QP >> 8) << 20)
            self.regs[5] += ((self.idac1.IN >> 8) << 18)
            self.regs[5] += ((self.idac1.IP >> 8) << 16)
            self.regs[5] += (1 << 8)
            self.regs[5] += ((self.idac2.QN >> 8) << 5)
            self.regs[5] += ((self.idac2.QP >> 8) << 4)
            self.regs[5] += ((self.idac2.IN >> 8) << 1)
            self.regs[5] += (self.idac2.IP >> 8)

            # bank 6
            self.regs[6] = ((self.idac1.QN & 0xFF) << 24) + ((self.idac1.QP & 0xFF) << 16) + ((self.idac1.IN & 0xFF) << 8) + (self.idac1.IP & 0xFF)
        else:
            # bank 8 多相位时钟？
            pass

            # bank 9 idac1 复用 IDAC TIA
            self.regs[9] = ((self.idac1.QN & 0xFF) << 24) + ((self.idac1.QP & 0xFF) << 16) + ((self.idac1.IN & 0xFF) << 8) + (self.idac1.IP & 0xFF)

            # bank A idac2 复用 IDAC FIL
            self.regs[10] = (1 << 24)
            self.regs[10] += ((self.idac2.QN >> 8) << 21)
            self.regs[10] += ((self.idac2.QP >> 8) << 20)
            self.regs[10] += ((self.idac2.IN >> 8) << 17)
            self.regs[10] += ((self.idac2.IP >> 8) << 16)
            self.regs[10] += (1 << 8)
            self.regs[10] += ((self.idac1.QN >> 8) << 6)
            self.regs[10] += ((self.idac1.QP >> 8) << 4)
            self.regs[10] += ((self.idac1.IN >> 8) << 2)
            self.regs[10] += (self.idac1.IP >> 8)

            # bank B
            self.tia.gen_tia(self.tiaGain, self.bbBandwidth)
            self.regs[11] = (1 << 24) + (self.tia.R << 16) + (self.tia.P << 8) + self.tia.C

            # bank C
            self.regs[12] = ((self.idac2.QN & 0xFF) << 24) + ((self.idac2.QP & 0xFF) << 16) + ((self.idac2.IN & 0xFF) << 8) + (self.idac2.IP & 0xFF)

            # bank D
            self.filter2.gen_filter(self.bbGain, self.bbBandwidth, False, 2)
            self.regs[13] = (1 << 28) + (self.filter2.R1 << 24) + (self.filter2.P2 << 20) + (self.filter2.P1 << 16) + (self.filter2.C2 << 8) + self.filter2.C1

            # bank E
            self.filter1.gen_filter(self.bbGain, self.bbBandwidth, False, 1)
            self.regs[14] += (self.filter1.C2 << 8) + self.filter1.C1

            # bank F
            self.pga.gen_pga(self.bbGain, self.bbBandwidth, False)
            self.regs[15] = (1 << 24) + (self.pga.R << 16) + (self.pga.P << 8) + self.pga.C

        return False

# if __name__ == '__main__':
#     ins = TxRegs()
