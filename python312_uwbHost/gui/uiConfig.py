import regs


class UiConfig:
    def __init__(self):
        self.freq = 1e9
        self.bbBw = 100

        # T
        self.tIdac = regs.IDAC()
        self.tBGain = 0
        self.tFilGain = 0
        self.att2 = False
        self.att10 = False

        # R
        self.rIdac1 = regs.IDAC()
        self.rIdac2 = regs.IDAC()
        self.rFil1Gain = 0
        self.rFil2Gain = 0
        self.rBbGain = 0
        self.rTiaGain = 0


def set_comm_default(c: UiConfig) -> None:
    c.freq = 0.5e9
    c.bbBw = 100

    # T
    c.tIdac.IP = 0
    c.tIdac.IN = 0
    c.tIdac.QP = 0
    c.tIdac.QN = 0
    c.tBGain = 0
    c.tFilGain = 0
    c.att2 = False
    c.att10 = False

    # R
    c.rIdac1.IP = 0
    c.rIdac1.IN = 0
    c.rIdac1.QP = 0
    c.rIdac1.QN = 0
    c.rIdac2.IP = 0
    c.rIdac2.IN = 0
    c.rIdac2.QP = 0
    c.rIdac2.QN = 0
    c.rFil1Gain = 0
    c.rFil2Gain = 0
    c.rBbGain = 0
    c.rTiaGain = 0


def set_radar_default(c: UiConfig) -> None:
    c.freq = 4e9
    c.bbBw = 250

    # T
    c.tIdac.IP = 0
    c.tIdac.IN = 0
    c.tIdac.QP = 0
    c.tIdac.QN = 0
    c.tBGain = 0
    c.tFilGain = 0
    c.att2 = False
    c.att10 = False

    # R
    c.rIdac1.IP = 0
    c.rIdac1.IN = 0
    c.rIdac1.QP = 0
    c.rIdac1.QN = 0
    c.rIdac2.IP = 0
    c.rIdac2.IN = 0
    c.rIdac2.QP = 0
    c.rIdac2.QN = 0
    c.rFil1Gain = 0
    c.rFil2Gain = 0
    c.rBbGain = 0
    c.rTiaGain = 0


def set_inter_default(c: UiConfig) -> None:
    c.freq = 8e9
    c.bbBw = 500

    # T
    c.tIdac.IP = 0
    c.tIdac.IN = 0
    c.tIdac.QP = 0
    c.tIdac.QN = 0
    c.tBGain = 0
    c.tFilGain = 0
    c.att2 = False
    c.att10 = False

    # R
    c.rIdac1.IP = 0
    c.rIdac1.IN = 0
    c.rIdac1.QP = 0
    c.rIdac1.QN = 0
    c.rIdac2.IP = 0
    c.rIdac2.IN = 0
    c.rIdac2.QP = 0
    c.rIdac2.QN = 0
    c.rFil1Gain = 0
    c.rFil2Gain = 0
    c.rBbGain = 0
    c.rTiaGain = 0
