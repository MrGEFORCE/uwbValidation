import copy
import struct
import numpy as np

import const
import chirpParameters


class Header:
    def __init__(self):
        self.frame = 0
        self.delay = 0
        self.tlv_nums = 1
        self.data_len = 0


class FrameData:
    def __init__(self):
        self.header = Header()
        self.cp: chirpParameters.ChirpParameterHandler | None = None
        self.raw = np.ndarray([const.DEF_CHIRPS, const.RX_NUMS, const.DEF_ADC_POINTS], dtype=complex)
        self.radarCube = np.ndarray([const.DEF_CHIRPS, const.RX_NUMS, const.DEF_ADC_POINTS], dtype=complex)
        self.errMsg = r""

    def resize(self, cp: chirpParameters.ChirpParameterHandler) -> None:
        self.cp = cp
        self.raw = np.ndarray([cp.chirpLoops, cp.rx, cp.ADCPoints], dtype=complex)
        self.radarCube = np.ndarray([cp.chirpLoops, cp.rx, cp.rangeFFTSize // 2], dtype=complex)

    def unpack_header(self, data: bytes) -> None:
        self.header.start_magic_word = data[:const.cfg.MW_SIZE]
        info = struct.unpack("<HHHI", data[const.cfg.MW_SIZE:const.cfg.HEADER_SIZE])
        self.header.frame = info[0]
        self.header.delay = info[1]
        self.header.tlv_nums = info[2]
        self.header.data_len = info[3]

    def unpack(self, data: bytes) -> bool:
        self.unpack_header(data[:const.cfg.HEADER_SIZE])
        if len(data) != self.header.data_len:
            if not self.header.data_len % 1024 < 18:
                print("debug: len(data)", len(data))
                print("debug: self.header.data_len", self.header.data_len)
                self.errMsg = r"帧长度不匹配（丢帧）：第" + str(self.header.frame) + r"帧"
                return True

        data = data[const.cfg.HEADER_SIZE:]
        try:
            unpack_res = struct.unpack("<" + "i" * self.cp.chirpLoops * self.cp.rx * self.cp.ADCPoints, data)
        except struct.error:
            self.errMsg = r"解析错误"
            return True

        for c in range(self.cp.chirpLoops):
            part = unpack_res[c * self.cp.rx * self.cp.ADCPoints:(c + 1) * self.cp.rx * self.cp.ADCPoints]
            for ch in range(self.cp.rx):
                self.raw[c, ch].real = part[ch::self.cp.rx]
        self.raw[:, :, :].imag = 0
        return False

    def process(self) -> None:
        self.radarCube = copy.deepcopy(self.raw)
        self.radarCube -= np.broadcast_to(np.expand_dims(self.raw.mean(-1), -1), [self.cp.chirpLoops, self.cp.rx, self.cp.ADCPoints])
        self.radarCube *= const.cfg.WIN_HAMMING
        self.radarCube = np.fft.fft(self.radarCube, n=self.cp.rangeFFTSize)[:, :, :self.cp.rangeFFTSize // 2]
        if self.cp.staticClutterRemoval:
            self.radarCube -= self.radarCube.mean(0)
