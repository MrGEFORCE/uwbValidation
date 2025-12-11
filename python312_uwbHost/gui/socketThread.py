import time
import socket

from PySide6 import QtCore
from PySide6.QtCore import QThread

import const


class SocketThread(QThread):
    cpltSig = QtCore.Signal(bool)
    establishSig = QtCore.Signal(bool)

    def __init__(self, main_thread):
        super(SocketThread, self).__init__()
        self.main_thread = main_thread
        self.errorWord = r""
        self.dt = 0
        self.d = b''
        # self.udp_local_addr = (const.UDP_LOCAL_HOST, const.UDP_LOCAL_PORT)
        # self.udp_remote_addr = (const.UDP_REMOTE_HOST, const.UDP_REMOTE_PORT)
        self.udp_local_addr = ("127.0.0.1", const.UDP_LOCAL_PORT)
        self.udp_remote_addr = ("127.0.0.1", const.UDP_REMOTE_PORT)
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.udp_socket.settimeout(None)
        self.receiving = False

    def bind_udp(self) -> None:
        try:
            self.udp_socket.bind(self.udp_local_addr)
        except OSError:
            self.establishSig.emit(False)
            print("debug: UDP建立失败")

    def try_recv(self) -> bool:
        try:
            self.d, addr = self.udp_socket.recvfrom(const.UDP_ETH_BUFFER_LEN)
        except ConnectionResetError:  # 对面关机
            return True
        return False

    def run(self) -> None:
        cache = b''
        while True:
            if self.try_recv():
                continue
            if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                self.main_thread.bytesData = self.d
                self.cpltSig.emit(True)
                break
            else:
                continue
        t = time.time()
        while True:
            if not self.receiving:
                return
            if self.try_recv():
                return
            if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                self.dt = "{:.3f}ms".format((time.time() - t) * 1000)
                t = time.time()
                self.main_thread.bytesData = cache + self.d
                self.cpltSig.emit(True)
                cache = b''
            else:
                cache += self.d
            time.sleep(0.05)
