import struct


class Header:
    def __init__(self):
        self.frame = 0  # u16
        self.delay = 0  # u8
        self.tlvNums = 1  # u8
        self.dataLen = 0  # u32
        self.outerClass = 0  # u8
        self.commPicID = 0  # u8


class FuncABC:
    def __init__(self):
        self.header = Header()

    def unpack_header(self, b: bytes, length: int) -> bool:
        res = struct.unpack("<HBBIBB", b)
        self.header.frame = res[0]
        self.header.delay = res[1]
        self.header.tlvNums = res[2]
        self.header.dataLen = res[3]
        self.header.outerClass = res[4]
        self.header.commPicID = res[5]
        if length != self.header.dataLen:
            return True
        return False

    def unpack(self, b: bytes) -> bool:
        ...
