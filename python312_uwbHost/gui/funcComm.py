from PySide6.QtGui import QPixmap


class FuncComm:
    INFO_IMG = 0
    INFO_TEXT = 1

    def __init__(self):
        self.rMode = True
        self.imgSelected = False

        self.tText = ""
        self.tPixmap = QPixmap()

        self.rText = ""
        self.rPixmap = QPixmap()

    def set_img(self, file_path: str) -> bool:
        self.tPixmap = QPixmap(file_path)
        self.imgSelected = True
        return False

    def get_img_code(self) -> bytes:
        if not self.imgSelected:
            return b''
        pass
        # 发送时，需要临时把雷达模式设置成发送状态，状态可以瞬间切换
        # 这里写图片编码程序，可能需要将其转化为一个较小的size，采用一些压缩技术再发送，接收那边也是，写对应的解包算法

    def set_text(self, s: str) -> None:
        self.tText = s

    def get_text_code(self) -> bytes:
        if self.tText == "":
            return b''
        return self.tText.encode(encoding='utf-8')

    def unpack(self, b: bytes) -> (bool, int):
        pass
        # 解包协议，下位机必须将RF波形处理结果化为字节形式传上来再处理
        # 发的时候就要标明里面放的是字还是图，以及其他必要信息
