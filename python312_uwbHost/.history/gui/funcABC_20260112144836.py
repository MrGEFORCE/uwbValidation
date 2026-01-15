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
        try:
            # 修改为小端格式，因为发送端是16bit小端模式
            res = struct.unpack("<BBBBIHH", b)
        except struct.error:
            print("in func abc: unpack error")
            return True
        self.header.delay = res[0]
        self.header.tlvNums = res[1]
        self.header.outerClass = res[2]
        self.header.dataLen = res[4]
        self.header.frame = res[5]
        print(self.header.delay)
        print(self.header.tlvNums)
        print(self.header.outerClass)
        print(f"{length:x} {self.header.dataLen:x}")
        if length != self.header.dataLen:
            print(length, self.header.dataLen)
            print("in unpacking header: in-consistence of data len")
            return True
        return False

    def unpack(self, b: bytes) -> bool:
        ...
