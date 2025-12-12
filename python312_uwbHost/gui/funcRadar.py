import copy
import enum
import struct

import numpy as np
from scipy.signal import get_window

import const
import funcABC
import chirpParameters
import p312.supportFuncs as supportFuncs


class chirpParamsID(enum.Enum):
    radarTxNums = 0
    radarRxNums = 1
    radarBW = 2
    radarChirps = 3
    radarRampTime = 4
    radarTc = 5
    radarADCDelay = 6
    radarPeriodicity = 7
    radarPoints = 8
    radarSampleInterval = 9
    radarFreq = 10


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
        b = const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.radarTxNums.value, self.cp.antTDM)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.radarRxNums.value, self.cp.rx)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarBW.value, self.cp.bandWidth_MHz)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.radarChirps.value, self.cp.chirpLoops)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarRampTime.value, self.cp.rampTime_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarTc.value, self.cp.Tc_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarADCDelay.value, self.cp.ADCDelay_us)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarPeriodicity.value, self.cp.periodicity_ms)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.radarPoints.value, self.cp.ADCPoints)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<BI", chirpParamsID.radarSampleInterval.value, self.sampleInterval)
        b += const.CMD_OUTER_CLASS_FUNC_RADAR + struct.pack("<Bf", chirpParamsID.radarFreq.value, self.cp.startFrequency_MHz)
        return b

    def validate_params(self) -> bool:
        self.cp.compute_and_validate()
        return not self.cp.errFlag

    def unpack(self, b: bytes) -> bool:
        if self.unpack_header(b[const.cfg.MW_SIZE:const.cfg.HEADER_SIZE], len(b)):
            return True
        b = b[const.cfg.HEADER_SIZE:]
        for i in range(self.header.tlvNums):
            [t, l] = struct.unpack("<II", b[:const.cfg.TL_SIZE])
            b = b[const.cfg.TL_SIZE:]
            if t == const.DataTypes.RADAR_IF.value:
                try:
                    unpack_res = struct.unpack("<" + "H" * self.cp.chirpLoops * self.cp.rx * self.cp.antTDM * self.cp.ADCPoints * 2, b[:l])
                except struct.error:
                    print("in radar: unpack error")
                    return True

                for c in range(self.cp.chirpLoops):
                    bias = c * self.cp.rx * self.cp.antTDM * self.cp.ADCPoints * 2
                    for a in range(self.cp.rx * self.cp.antTDM):
                        part = unpack_res[bias + a * self.cp.ADCPoints * 2:bias + (a + 1) * self.cp.ADCPoints * 2]
                        self.raw[c, a, :].real = part[0::2]
                        self.raw[c, a, :].imag = part[1::2]
            else:
                print("in radar: unknown tlv")
                return True
            b = b[l:]
        return False

    def resize(self) -> None:
        self.rangeAxis = np.arange(0, self.cp.dMax_m, self.cp.dResCompute_m)
        self.dopplerAxis = np.arange(-self.cp.vMax_m_s, self.cp.vMax_m_s, self.cp.vResCompute_m_s)[:-1]
        self.raw = np.ndarray([self.cp.chirpLoops, self.cp.antTDM * self.cp.rx, self.cp.ADCPoints], dtype=complex)
        # radarCube作为中间计算结果直接赋值
        # self.radarCube = np.ndarray([self.cp.chirpLoops, self.cp.antTDM * self.cp.rx, self.cp.rangeFFTSize], dtype=complex)
        self.rangeProfile = np.ndarray([self.cp.antTDM * self.cp.rx, self.cp.rangeFFTSize], dtype=complex)
        self.rdMap = np.ndarray([self.cp.dopplerFFTSize, self.cp.rangeFFTSize], dtype=float)
        const.cfg.WIN_HAMMING = get_window('hamming', self.cp.ADCPoints)

    def process(self) -> None:
        self.radarCube = copy.deepcopy(self.raw)
        self.radarCube -= np.broadcast_to(np.expand_dims(self.radarCube.mean(-1), -1), [self.cp.chirpLoops, self.cp.rx * self.cp.antTDM, self.cp.ADCPoints])
        self.radarCube *= const.cfg.WIN_HAMMING
        self.radarCube = np.fft.fft(self.radarCube, n=self.cp.rangeFFTSize)
        # 这一步之后radarCube的shape和dtype从raw的u16变为complex
        if self.cp.staticClutterRemoval:
            print("SCR")
            self.radarCube -= self.radarCube.mean(0)
        self.rangeProfile = self.radarCube[0, :, :]
        self.rdMap = np.abs(np.fft.fftshift(np.fft.fft(self.radarCube[:, 0, :], n=self.cp.dopplerFFTSize, axis=0), axes=0))


if __name__ == '__main__':
    gen_c_cmd_ref_table()
