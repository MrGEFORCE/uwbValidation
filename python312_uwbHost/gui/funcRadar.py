import enum
import struct

import numpy as np
from scipy.signal import get_window

import const
import funcABC
import chirpParameters
import p312.supportFuncs as supportFuncs


class chirpParamsID(enum.Enum):
    TxNums = 0
    RxNums = 1
    BW = 2
    chirps = 3
    rampTime = 4
    Tc = 5
    ADCDelay = 6
    periodicity = 7
    points = 8
    sampleInterval = 9


def gen_c_cmd_ref_table() -> None:
    h = "enum chirpParamsID\n{\n"
    for item in chirpParamsID:
        h += "\t" + item.name + " = "
        h += "0x" + supportFuncs.compensate_to_n_word(str(hex(item.value)[2:].upper()), 2)
        h += ",\n"
    h += "};\n"
    print(h)


class FuncRadar(funcABC.FuncABC):
    def __init__(self):
        super(FuncRadar, self).__init__()
        self.cp = chirpParameters.ChirpParameterHandler()
        self.cp.languageCfgFileFolder = "locales"
        self.cp.set_language(chirpParameters.LANG_ZH_CN)
        self.cp.set_default()
        self.cp.iqSample = True
        self.cp.cfarEnabled = False
        self.sampleInterval = 0

        self.rangeAxis = np.ndarray([128], dtype=float)
        self.dopplerAxis = np.ndarray([128], dtype=float)
        self.raw = np.ndarray([16, 1, 128], dtype=complex)
        self.radarCube = np.ndarray([16, 1, 128], dtype=complex)
        self.rangeProfile = np.ndarray([1, 256], dtype=complex)
        self.rdMap = np.ndarray([64, 256], dtype=float)

    def gen_radar_code(self) -> bytes:
        b = const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.TxNums.value, self.cp.antTDM)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.RxNums.value, self.cp.rx)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.BW.value, self.cp.bandWidth_MHz)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.chirps.value, self.cp.chirpLoops)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.rampTime.value, self.cp.rampTime_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.Tc.value, self.cp.Tc_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.ADCDelay.value, self.cp.ADCDelay_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.periodicity.value, self.cp.periodicity_ms)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.points.value, self.cp.ADCPoints)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.sampleInterval.value, self.sampleInterval)
        return b

    def validate_params(self) -> bool:
        self.cp.compute_and_validate()
        return not self.cp.errFlag

    def unpack(self, b: bytes) -> bool:
        if self.unpack_header(b[:const.cfg.HEADER_SIZE], len(b)):
            return True
        # unpack
        return False

    def resize(self) -> None:
        self.rangeAxis = np.arange(0, self.cp.dMax_m, self.cp.dResCompute_m)
        self.dopplerAxis = np.arange(-self.cp.vMax_m_s, self.cp.vMax_m_s, self.cp.vResCompute_m_s)[:-1]
        self.raw = np.ndarray([self.cp.chirpLoops, self.cp.antTDM * self.cp.rx, self.cp.ADCPoints], dtype=complex)
        self.radarCube = np.ndarray([self.cp.chirpLoops, self.cp.antTDM * self.cp.rx, self.cp.rangeFFTSize], dtype=complex)
        self.rangeProfile = np.ndarray([self.cp.antTDM * self.cp.rx, self.cp.rangeFFTSize], dtype=complex)
        self.rdMap = np.ndarray([self.cp.dopplerFFTSize, self.cp.rangeFFTSize], dtype=float)
        const.cfg.WIN_HAMMING = get_window('hamming', self.cp.ADCPoints)

    def process(self) -> None:
        self.radarCube -= np.broadcast_to(np.expand_dims(self.raw.mean(-1), -1), [self.cp.chirpLoops, self.cp.rx, self.cp.ADCPoints])
        self.radarCube *= const.cfg.WIN_HAMMING
        self.radarCube = np.fft.fft(self.radarCube, n=self.cp.rangeFFTSize)
        if self.cp.staticClutterRemoval:
            self.radarCube -= self.radarCube.mean(0)
        self.rangeProfile = self.radarCube[0, :, :]
        self.rdMap = np.abs(np.fft.fftshift(np.fft.fft(self.radarCube, n=self.cp.dopplerFFTSize, axis=0)))


if __name__ == '__main__':
    gen_c_cmd_ref_table()
