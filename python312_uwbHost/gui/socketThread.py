import copy
import time
import socket

from PySide6 import QtCore
from PySide6.QtCore import QThread

import const


class SocketThread(QThread):
    ModeInstant = 0  # 适合扫频/通信模式，一个包连续发完，即拿即用
    ModeComplete = 1  # 适合雷达模式，数据量大且周期性，接到下一帧的开头才裁出上一个完整的帧传回去

    cpltSig = QtCore.Signal(bool)
    establishSig = QtCore.Signal(bool)

    def __init__(self, main_thread):
        super(SocketThread, self).__init__()
        self.runMode = self.ModeInstant
        self.main_thread = main_thread
        self.errorWord = r""
        self.dt = 0
        self.d = b''
        self.udp_local_addr = (const.UDP_LOCAL_HOST, const.UDP_LOCAL_PORT)
        self.udp_remote_addr = (const.UDP_REMOTE_HOST, const.UDP_REMOTE_PORT)
        # self.udp_local_addr = ("127.0.0.1", const.UDP_LOCAL_PORT)
        # self.udp_remote_addr = ("127.0.0.1", const.UDP_REMOTE_PORT)
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.udp_socket.settimeout(None)
        self.receiving = False

    def set_instant_mode(self) -> None:
        self.udp_socket.settimeout(None)
        self.runMode = self.ModeInstant

    def set_complete_mode(self) -> None:
        self.udp_socket.settimeout(5)
        self.runMode = self.ModeComplete

    def bind_udp(self) -> None:
        try:
            self.udp_socket.bind(self.udp_local_addr)
        except OSError:
            self.establishSig.emit(False)
            print("debug: UDP建立失败")

    def try_recv(self) -> bool:
        try:
            self.d, addr = self.udp_socket.recvfrom(const.UDP_ETH_BUFFER_LEN)
            # print(self.d)
        except TimeoutError:
            if not self.receiving:
                self.d = b''
                return False
            else:
                print("debug: in socket thread", TimeoutError)
                return True
        except ConnectionResetError:  # 对面关机
            return True
        return False

    def run(self) -> None:
        if self.runMode == self.ModeInstant:
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
                    self.d = b''
                    return
                if self.try_recv():
                    return
                if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                    self.dt = "{:.3f}ms".format((time.time() - t) * 1000)
                    t = time.time()
                    self.main_thread.bytesData = self.d
                    self.cpltSig.emit(True)
                time.sleep(0.05)
        elif self.runMode == self.ModeComplete:
            cache = b''
            t = time.time()
            while True:
                if not self.receiving:
                    self.d = b''
                    return
                if self.try_recv():
                    return
                if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                    self.dt = "{:.2f}ms".format((time.time() - t) * 1000)
                    t = time.time()
                    self.main_thread.bytesData = copy.deepcopy(cache)
                    self.cpltSig.emit(True)
                    cache = self.d
                else:
                    cache += self.d
