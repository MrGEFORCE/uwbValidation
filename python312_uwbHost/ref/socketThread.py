import sys
import time
import socket
import subprocess

from PySide6 import QtCore
from PySide6.QtCore import QThread

import const

if hasattr(subprocess, "STARTUPINFO"):
    SI = subprocess.STARTUPINFO()
    SI.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    SI.wShowWindow = subprocess.SW_HIDE
else:
    SI = None


class ConnectionChecker(QThread):
    connectSig = QtCore.Signal(bool)

    def __init__(self, addr: tuple):
        super(ConnectionChecker, self).__init__()
        self.addr = addr
        self.connected = False

    def run(self) -> None:
        while True:
            if sys.platform == "darwin":
                process = subprocess.Popen(["ping", self.addr[0], "-c", "1", "-t", "1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            else:
                process = subprocess.Popen(["ping", self.addr[0], "-n", "1", "-w", "1000"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, startupinfo=SI)
            time.sleep(3)
            s = ""
            while True:
                output = process.stdout.readline()
                if not output:
                    break
                s += output.strip() + "\n"
            if "请求超时" in s or "100.0% packet loss" in s:
                self.connectSig.emit(False)
                self.connected = False
                print("debug: 请求超时")
            else:
                self.connectSig.emit(True)
                self.connected = True


class SocketThread(QThread):
    cpltSig = QtCore.Signal(bool)
    establishSig = QtCore.Signal(bool)

    def __init__(self, main_thread):
        super(SocketThread, self).__init__()
        self.main_thread = main_thread
        self.errorWord = r""
        self.dt = 0
        self.d = b''
        self.udp_local_addr = ("192.168.1.100", 5010)
        self.udp_remote_addr = ("192.168.1.10", 5011)
        # self.udp_local_addr = ("127.0.0.1", 5010)
        # self.udp_remote_addr = ("127.0.0.1", 5011)
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.udp_socket.settimeout(5)
        self.checker = ConnectionChecker(self.udp_remote_addr)
        self.checker.start()
        self.receiving = False

    def bind_udp(self) -> None:
        try:
            self.udp_socket.bind(self.udp_local_addr)
        except OSError:
            self.establishSig.emit(False)
            print("debug: UDP建立失败")

    def try_recv(self) -> bool:
        try:
            self.d, addr = self.udp_socket.recvfrom(const.ETHERNET_BUFFER_LEN)
        except TimeoutError:
            return False
        except ConnectionResetError:  # 对面关机
            return False
        return True

    def run(self) -> None:
        cache = b''
        while True:
            if not self.try_recv():
                continue
            if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                cache = self.d
                break
            else:
                continue
        t = time.time()
        while True:
            if not self.receiving:
                return
            if not self.try_recv():
                return
            if self.d[:const.cfg.MW_SIZE] == const.cfg.START_MAGIC_WORD:
                self.dt = "{:.3f}ms".format((time.time() - t) * 1000)
                t = time.time()
                self.main_thread.bytesData = cache
                self.cpltSig.emit(True)
                cache = self.d
            else:
                cache += self.d


# if __name__ == '__main__':
#     from PySide6.QtWidgets import QApplication
#     app = QApplication(sys.argv)
#     ins = SocketThread(0)
#     ins.start()
#     app.exec()
