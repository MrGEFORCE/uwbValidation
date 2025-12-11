import struct


class Header:
    def __init__(self):
        self.delay = 0  # u8
        self.tlvNums = 1  # u8
        self.outerClass = 0  # u8
        # u8 padding
        self.dataLen = 0  # u32
        self.frame = 0  # u16


class FuncABC:
    def __init__(self):
        self.header = Header()

    def unpack_header(self, b: bytes, length: int) -> bool:
        res = struct.unpack("<BBBBIHH", b)
        self.header.delay = res[0]
        self.header.tlvNums = res[1]
        self.header.outerClass = res[2]
        self.header.dataLen = res[4]
        self.header.frame = res[5]
        if length != self.header.dataLen:
            print(length, self.header.dataLen)
            print("in unpacking header: in-consistence of data len")
            return True
        return False

    def unpack(self, b: bytes) -> bool:
        ...
