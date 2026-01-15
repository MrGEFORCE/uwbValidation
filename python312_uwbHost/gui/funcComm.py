import io
import enum
import struct
import numpy as np
from PIL import Image

from PySide6 import QtCore
from PySide6.QtCore import QTimer
from PySide6.QtGui import QPixmap
from PySide6.QtWidgets import QWidget

import const
import funcABC
import p312.supportFuncs as supportFuncs


class commParamsID(enum.Enum):
    commPack = 0
    commRecv = 1


def gen_c_cmd_ref_table() -> None:
    h = "enum commParamsID\n{\n"
    for item in commParamsID:
        h += "\t" + item.name + " = "
        h += "0x" + supportFuncs.compensate_to_n_word(str(hex(item.value)[2:].upper()), 2)
        h += ",\n"
    h += "};\n"
    print(h)


class FuncComm(QWidget, funcABC.FuncABC):
    packSig = QtCore.Signal(bool)

    def __init__(self):
        super(FuncComm, self).__init__()
        self.rMode = True
        self.imgSelected = False
        self.currentType = "txt"

        self.sendTimer = QTimer()
        self.sendTimer.setInterval(500)
        self.sendTimer.timeout.connect(self.timer_send_timeout_cb)
        self.sendPackNums = 0
        self.sendPacks = []

        self.tText = ""
        self.tPixmap = QPixmap()
        self.tPicID = 0
        self.tPicH = 0
        self.tPicW = 0
        self.tPicPointer = 0

        self.rText = ""
        self.rPixmap = QPixmap()
        self.rPicBytesCache = b''
        self.rPrevPicID = -1
        self.rPicH = 0
        self.rPicW = 0
        self.rPicCount = 0
        self.rPicTotal = 0
        self.rPicID = 0
        self.rPicIdPrev = -1

        # plot
        self.rPicCanvas = Image.new("RGBA", (2, 2))

    def timer_send_timeout_cb(self) -> None:
        self.tPicPointer += 1
        if self.tPicPointer < self.sendPackNums:
            self.packSig.emit(True)
        else:
            self.sendTimer.stop()

    def start_send(self) -> None:
        self.sendTimer.start()
        self.tPicPointer = -1

    def set_img(self, file_path: str) -> bool:
        self.tPixmap = QPixmap(file_path)
        self.imgSelected = True
        return False

    def gen_img_code(self) -> None:
        if not self.imgSelected:
            return
        qim = self.tPixmap.toImage()
        ptr = qim.bits()
        img = Image.frombuffer("RGBA", (qim.width(), qim.height()), bytes(ptr), "raw", "RGBA", 0, 1)
        w, h = img.size
        scale = const.COMM_IMG_MAX_LEN / max(w, h)
        self.tPicW, self.tPicH = int(w * scale), int(h * scale)
        img = img.resize((self.tPicW, self.tPicH), Image.Resampling.BILINEAR)
        slice_height = int(const.COMM_IMG_PACK_PIX / self.tPicW)
        self.sendPackNums = int(np.ceil(self.tPicH / slice_height))
        self.sendPacks.clear()
        desc = struct.pack("<IHH", self.tPicID, self.tPicW, self.tPicH)
        for i in range(self.sendPackNums):
            y0 = i * slice_height
            y1 = min((i + 1) * slice_height, self.tPicH)
            crop = img.crop((0, y0, self.tPicW, y1))
            buf = io.BytesIO()
            crop.save(buf, format='PNG')
            png_bytes = buf.getvalue()
            # [具体内容] = [u32 ID] + [u16宽] + [u16高] + [u16序号] + [u16总包数] + [u16 y起始坐标]  这部分给上位机用
            t = desc + struct.pack("<HHH", i, self.sendPackNums, y0) + png_bytes
            # [u16类别 0->文 1->图] + [u16长度] + [具体内容]
            t = struct.pack("<HH", 1, len(t)) + t  # 0->txt, 1->img 这部分也给上位机用，放最后再打包是因为后面长度不一样，算好后最后加入
            b = const.CMD_OUTER_CLASS_FUNC_COMM + struct.pack('<' + "BI", 0, len(t)) + t
            self.sendPacks.append(b)
            # print("debug: pack len", len(b))

    def set_text(self, s: str) -> None:
        self.tText = s + '\n'

    def gen_text_code(self) -> bytes:
        if self.tText == "":
            return b''
        t = self.tText.encode(encoding='utf-8')
        t = struct.pack("<HH", 0, len(t)) + t  # 0->txt, 1->img
        b = const.CMD_OUTER_CLASS_FUNC_COMM + struct.pack('<' + "BI", 0, len(t))
        b += t
        return b

    def unpack(self, b: bytes) -> bool:
        if self.unpack_header(b[const.cfg.MW_SIZE:const.cfg.HEADER_SIZE], len(b)):
            return True
        b = b[const.cfg.HEADER_SIZE:]
        for i in range(self.header.tlvNums):
            [t, l] = struct.unpack("<II", b[:const.cfg.TL_SIZE])
            b = b[const.cfg.TL_SIZE:]
            if t == const.DataTypes.COMM_PACK.value:
                [txt_or_img, pkLen] = struct.unpack("<HH", b[:4])
                b = b[4:]
                if txt_or_img == 0:
                    self.rText += b[:pkLen].decode()
                    self.currentType = "txt"
                else:
                    [self.rPicID, self.rPicW, self.rPicH, self.rPicCount, self.rPicTotal, y] = struct.unpack("<IHHHHH", b[:14])
                    # print(self.rPicID, self.rPicW, self.rPicH, self.rPicCount, self.rPicTotal, y)
                    if self.rPicIdPrev != self.rPicID:
                        # print("debug: find new ID")
                        self.rPicIdPrev = self.rPicID
                        self.rPicCanvas = Image.new("RGBA", (self.rPicW, self.rPicH))
                    pngCode = b[14:]
                    crop_img = Image.open(io.BytesIO(pngCode))
                    self.rPicCanvas.paste(crop_img, (0, y))
                    self.currentType = "img"
                    if self.rPicCount + 1 == self.rPicTotal:
                        # print("debug: 接收完成")
                        pass
            else:
                print("in comm: unknown tlv ")
                return True
            b = b[l:]
        return False


if __name__ == '__main__':
    gen_c_cmd_ref_table()
