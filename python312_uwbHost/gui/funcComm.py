import struct

from PySide6.QtGui import QPixmap

import const
import funcABC


class FuncComm(funcABC.FuncABC):
    def __init__(self):
        super(FuncComm, self).__init__()
        self.rMode = True
        self.imgSelected = False
        self.currentType = const.DataTypes.COMM_TXT.value

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

    def set_img(self, file_path: str) -> bool:
        self.tPixmap = QPixmap(file_path)
        self.imgSelected = True
        return False

    def gen_img_code(self) -> bytes:
        if not self.imgSelected:
            return b''

        # 一些压缩
        [self.tPicH, self.tPicW] = self.tPixmap.size()

        b = const.CMD_OUTER_CLASS_FUNC_COMM
        b += struct.pack("<B", const.DataTypes.COMM_IMG.value)
        b += struct.pack("<I", self.tPicID)
        b += const.CMD_OUTER_CLASS_FUNC_COMM
        b += struct.pack("<B", const.DataTypes.COMM_IMG_SIZE.value)
        b += struct.pack("<HH", self.tPicH, self.tPicW)
        # 发送时，需要临时把雷达模式设置成发送状态，状态可以瞬间切换
        # 这里写图片编码程序，可能需要将其转化为一个较小的size，采用一些压缩技术再发送，接收那边也是，写对应的解包算法
        self.tPicPointer += 0  # size
        return b

    def set_text(self, s: str) -> None:
        self.tText = s

    def gen_text_code(self) -> bytes:
        if self.tText == "":
            return b''
        return self.tText.encode(encoding='utf-8')

    def unpack(self, b: bytes) -> bool:
        if self.unpack_header(b[:const.cfg.HEADER_SIZE], len(b)):
            return True
        b = b[const.cfg.HEADER_SIZE:]
        for i in range(self.header.tlvNums):
            [t, l] = struct.unpack("<II", b[:const.cfg.TL_SIZE])
            b = b[const.cfg.TL_SIZE:]
            if t == const.DataTypes.COMM_TXT.value:
                self.rText += b[:l].decode()
                self.currentType = const.DataTypes.COMM_TXT
            if t == const.DataTypes.COMM_IMG_SIZE.value:
                [self.rPicH, self.rPicW] = struct.unpack("<HH", b[:4])
            if t == const.DataTypes.COMM_IMG.value:
                self.currentType = const.DataTypes.COMM_IMG
                if self.header.commPicID == self.rPrevPicID:
                    self.rPicBytesCache += b[const.cfg.TL_SIZE:const.cfg.TL_SIZE + l]
                else:
                    self.rPrevPicID = self.header.commPicID
                    self.rPicBytesCache = b[const.cfg.TL_SIZE:const.cfg.TL_SIZE + l]
                # 收了一半也可以直接去显示，没解析到的部分显示为灰色即可，具体怎么解包还需看打包怎么打，暂时写不了
            b = b[l:]
