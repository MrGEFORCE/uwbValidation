import socket
import threading
from typing import Optional

from PySide6 import QtCore

import const


class SocketThread(QtCore.QThread):
    """后台 UDP 连接线程，负责收发数据并通过信号回传状态。"""

    connectedSig = QtCore.Signal(str)
    disconnectedSig = QtCore.Signal(str)
    errorSig = QtCore.Signal(str)
    dataSig = QtCore.Signal(bytes, tuple)

    def __init__(
        self,
        parent=None,
        remote_host: str = None,
        remote_port: int = None,
        bind_host: str = None,
        bind_port: int = None,
    ):
        super().__init__(parent)
        self._lock = threading.Lock()
        self._udp_socket: Optional[socket.socket] = None
        self._running = False
        self.remote_host = remote_host or const.UDP_REMOTE_HOST
        self.remote_port = remote_port or const.UDP_REMOTE_PORT
        self.bind_host = bind_host or const.UDP_LOCAL_HOST
        self.bind_port = bind_port or const.UDP_LOCAL_PORT

    @property
    def is_running(self) -> bool:
        return self._running

    def configure(
        self,
        remote_host: Optional[str] = None,
        remote_port: Optional[int] = None,
        bind_host: Optional[str] = None,
        bind_port: Optional[int] = None,
    ) -> None:
        """在启动前更新连接参数。"""
        with self._lock:
            if remote_host is not None:
                host = remote_host.strip()
                if host:
                    self.remote_host = host
            if remote_port is not None:
                self.remote_port = int(remote_port)
            if bind_host is not None:
                host = bind_host.strip()
                if host:
                    self.bind_host = host
            if bind_port is not None:
                self.bind_port = int(bind_port)

    def run(self) -> None:
        try:
            self._setup_socket()
        except OSError as err:
            self.errorSig.emit(f"UDP 初始化失败：{err}")
            return

        self._running = True
        self.connectedSig.emit(
            f"UDP 已连接 -> {self.remote_host}:{self.remote_port} (本地 {self.bind_host}:{self.bind_port})"
        )

        while self._running:
            try:
                data, addr = self._udp_socket.recvfrom(const.ETHERNET_BUFFER_LEN)
            except socket.timeout:
                continue
            except OSError as err:
                if self._running:
                    self.errorSig.emit(f"UDP 接收失败：{err}")
                break
            else:
                self.dataSig.emit(data, addr)

        self._cleanup_socket()
        self.disconnectedSig.emit("UDP 已断开")

    def stop(self) -> None:
        self._running = False
        self._cleanup_socket()

    def send(self, payload: bytes) -> bool:
        if not payload:
            return False
        with self._lock:
            if self._udp_socket is None:
                self.errorSig.emit("UDP 尚未建立，无法发送")
                return False
            try:
                self._udp_socket.sendto(payload, (self.remote_host, self.remote_port))
            except OSError as err:
                self.errorSig.emit(f"UDP 发送失败：{err}")
                return False
        return True

    def _setup_socket(self) -> None:
        with self._lock:
            self._udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self._udp_socket.settimeout(const.UDP_SOCKET_TIMEOUT)
            self._udp_socket.bind((self.bind_host, self.bind_port))

    def _cleanup_socket(self) -> None:
        with self._lock:
            if self._udp_socket:
                try:
                    self._udp_socket.close()
                except OSError:
                    pass
                finally:
                    self._udp_socket = None

