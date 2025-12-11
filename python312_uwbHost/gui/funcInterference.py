import enum
import struct
import numpy as np
from PySide6 import QtCore
from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QWidget

import const
import funcABC
import p312.supportFuncs as supportFuncs


class interParamsID(enum.Enum):
    interScanFreqMHz = 0
    interScanSpanMHz = 1
    interScanPoints = 2
    interJammingFreqMHz = 3
    interJammingSpanMHz = 4


def gen_c_cmd_ref_table() -> None:
    h = "enum interParamsID\n{\n"
    for item in interParamsID:
        h += "\t" + item.name + " = "
        h += "0x" + supportFuncs.compensate_to_n_word(str(hex(item.value)[2:].upper()), 2)
        h += ",\n"
    h += "};\n"
    print(h)


class FuncInter(QWidget, funcABC.FuncABC):
    scanSig = QtCore.Signal(bool)
    cpltSig = QtCore.Signal(bool)

    def __init__(self):
        super(FuncInter, self).__init__()

        self.inScan = False
        self.scanCount = 0
        self.scanTimer = QTimer()
        self.scanTimer.setInterval(500)
        self.scanTimer.timeout.connect(self.timer_scan_timeout_cb)
        self.scanFreqGHz = 0
        self.interFreqGHz = 0

        self.freqAxis = np.arange(6.5, 17.5, (17.5 - 6.5) / (const.INTER_SPAN_POINTS * const.INTER_SPAN_NUMS))
        self.fullSpec = np.zeros([const.INTER_SPAN_POINTS * const.INTER_SPAN_NUMS], dtype=float)
        self.argmax = 0

    def gen_inter_code_scan(self) -> bytes:
        b = const.CMD_OUTER_CLASS_FUNC_INTER + struct.pack("<Bf", interParamsID.interScanFreqMHz.value, self.scanFreqGHz * 1e3)
        b += const.CMD_OUTER_CLASS_FUNC_INTER + struct.pack("<Bf", interParamsID.interScanSpanMHz.value, const.INTER_SPAN_GHZ * 1e3)
        b += const.CMD_OUTER_CLASS_FUNC_INTER + struct.pack("<BI", interParamsID.interScanPoints.value, const.INTER_SPAN_POINTS)
        return b

    def gen_inter_code_jamming(self) -> bytes:
        b = const.CMD_OUTER_CLASS_FUNC_INTER + struct.pack("<Bf", interParamsID.interJammingFreqMHz.value, self.interFreqGHz * 1e3)
        b += const.CMD_OUTER_CLASS_FUNC_INTER + struct.pack("<Bf", interParamsID.interJammingSpanMHz.value, const.INTER_SPAN_GHZ * 1e3)
        return b

    def timer_scan_timeout_cb(self) -> None:
        self.scanCount += 1
        if self.scanCount < const.INTER_SPAN_NUMS:
            self.scanFreqGHz = 6 + const.INTER_SPAN_GHZ * (self.scanCount + 1)
            self.scanSig.emit(True)
        else:
            self.cpltSig.emit(True)
            self.argmax = np.argmax(self.fullSpec)
            self.stop_scan()

    def stop_scan(self) -> None:
        self.scanTimer.stop()
        self.inScan = False

    def start_scan(self) -> None:
        self.scanTimer.start()
        self.inScan = True
        self.scanCount = 0

    def unpack(self, b: bytes) -> bool:
        if self.unpack_header(b[:const.cfg.HEADER_SIZE], len(b)):
            return True
        # unpack
        return False


if __name__ == '__main__':
    gen_c_cmd_ref_table()
