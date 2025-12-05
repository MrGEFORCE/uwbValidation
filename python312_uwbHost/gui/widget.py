import os
import sys
import time
import copy
import struct
import platform
import numpy as np
import pyqtgraph as pg

import PySide6
from PySide6 import QtGui
from PySide6.QtCore import Qt
from PySide6.QtWidgets import (
    QApplication,
    QWidget,
    QVBoxLayout,
    QHBoxLayout,
    QGridLayout,
    QSpacerItem,
    QSizePolicy,
    QPushButton,
)

import const
from socketThread import SocketThread

from ui_form import Ui_Widget


class Widget(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.ui = Ui_Widget()
        self.ui.setupUi(self)
        self._build_responsive_layout()
        self._rebuild_udp_group_layout()
        self._tune_field_sizes()
        self.setMinimumSize(1000, 800)
        self.resize(1280, 900)

        self._apply_default_udp_config()
        self.socket_thread = SocketThread(self)

        self.ui.horizontalSlider_freq.valueChanged.connect(self.horizontal_slider_freq_value_changed_call_back)
        self.ui.pushButton_runStop.clicked.connect(self.run_stop_button_clicked_call_back)
        self.ui.pushButton_consoleClear.clicked.connect(self.ui.listWidget_console.clear)
        self.pushButton_txConfigSend.clicked.connect(self.on_tx_config_send_clicked)
        self.pushButton_rxConfigSend.clicked.connect(self.on_rx_config_send_clicked)

        self.socket_thread.connectedSig.connect(self.on_udp_connected)
        self.socket_thread.disconnectedSig.connect(self.on_udp_disconnected)
        self.socket_thread.errorSig.connect(self.append_console_message)
        self.socket_thread.dataSig.connect(self.on_udp_data_received)

        self.horizontal_slider_freq_value_changed_call_back()

    def _build_responsive_layout(self) -> None:
        """Reconstruct a stretchable layout to remove overlaps and unused space."""
        root_layout = QVBoxLayout(self)
        root_layout.setContentsMargins(16, 16, 16, 16)
        root_layout.setSpacing(12)

        freq_row = QHBoxLayout()
        freq_row.setSpacing(12)
        freq_row.addWidget(self.ui.label_freq)
        self.ui.horizontalSlider_freq.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        freq_row.addWidget(self.ui.horizontalSlider_freq, 1)
        root_layout.addLayout(freq_row)

        # Calculate positions for 2GHz and 6GHz markers on the slider
        # Slider range: 20-1800 (0.2GHz-18GHz), 2GHz=200, 6GHz=600
        slider_min = 20
        slider_max = 1800
        freq_2ghz = 200
        freq_6ghz = 600
        slider_range = slider_max - slider_min

        # Calculate relative positions (0.0 to 1.0) on the slider
        pos_2ghz = (freq_2ghz - slider_min) / slider_range
        pos_6ghz = (freq_6ghz - slider_min) / slider_range

        # Create hint row with same structure as freq_row
        # The arrow (↑) is at the start of the label text, so we need to position
        # the label such that the arrow (left edge) aligns with the slider position
        freq_hint_row = QHBoxLayout()
        freq_hint_row.setSpacing(12)
        # Add spacer matching label_freq width (121px) to align with slider start
        freq_hint_row.addItem(QSpacerItem(121, 20, QSizePolicy.Fixed, QSizePolicy.Minimum))

        # Position 2GHz label: arrow should point to calculated position on slider
        # Use expanding spacer with stretch factor to position the label
        freq_hint_row.addItem(QSpacerItem(0, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))
        # Set stretch factor based on relative position (use large number for precision)
        freq_hint_row.setStretch(1, int(pos_2ghz * 1000000))
        # Add 2GHz label - arrow at left edge will point to calculated position
        freq_hint_row.addWidget(self.ui.label_freq_2)

        # Position 6GHz label: calculate space between 2GHz and 6GHz
        freq_hint_row.addItem(QSpacerItem(0, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))
        # Stretch factor for space between 2GHz and 6GHz
        freq_hint_row.setStretch(3, int((pos_6ghz - pos_2ghz) * 1000000))
        # Add 6GHz label
        freq_hint_row.addWidget(self.ui.label_freq_3)

        # Add remaining spacer to fill the rest
        freq_hint_row.addItem(QSpacerItem(0, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))
        # Stretch factor for remaining space
        freq_hint_row.setStretch(5, int((1.0 - pos_6ghz) * 1000000))
        root_layout.addLayout(freq_hint_row)

        main_layout = QHBoxLayout()
        main_layout.setSpacing(16)
        root_layout.addLayout(main_layout, 1)

        side_container = QWidget()
        side_container.setMinimumWidth(360)
        side_container.setSizePolicy(QSizePolicy.Fixed, QSizePolicy.Expanding)
        side_layout = QVBoxLayout(side_container)
        side_layout.setSpacing(12)
        side_layout.setContentsMargins(0, 0, 0, 0)
        main_layout.addWidget(side_container)

        side_layout.addWidget(self.ui.groupBox_udp)

        # Add the control TabWidget (Tx/Rx)
        self.ui.tabWidget_ctrl.setSizePolicy(QSizePolicy.Preferred, QSizePolicy.Fixed)
        original_height = self.ui.tabWidget_ctrl.geometry().height() or 400
        self.ui.tabWidget_ctrl.setMinimumHeight(original_height)
        side_layout.addWidget(self.ui.tabWidget_ctrl)

        console_action_row = QHBoxLayout()
        console_action_row.setSpacing(8)

        # TX / RX 配置发送按钮（对应界面左下角红色区域）
        self.pushButton_txConfigSend = QPushButton("TX配置发送", self)
        self.pushButton_rxConfigSend = QPushButton("RX配置发送", self)
        console_action_row.addWidget(self.pushButton_txConfigSend)
        console_action_row.addWidget(self.pushButton_rxConfigSend)

        console_action_row.addItem(QSpacerItem(20, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))
        console_action_row.addWidget(self.ui.pushButton_consoleClear)
        side_layout.addLayout(console_action_row)

        self.ui.listWidget_console.setSizePolicy(QSizePolicy.Preferred, QSizePolicy.Expanding)
        side_layout.addWidget(self.ui.listWidget_console, 1)

        main_layout.addWidget(self.ui.tabWidget, 1)
        self.ui.tabWidget.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        main_layout.setStretch(0, 0)
        main_layout.setStretch(1, 1)

    def _rebuild_udp_group_layout(self) -> None:
        """Center the UDP controls with a real layout instead of fixed positions."""
        group = self.ui.groupBox_udp
        old_layout = group.layout()
        if old_layout is not None:
            QWidget().setLayout(old_layout)

        outer = QVBoxLayout(group)
        outer.setContentsMargins(16, 16, 16, 16)
        outer.setSpacing(12)
        outer.setAlignment(Qt.AlignHCenter)

        grid = QGridLayout()
        grid.setHorizontalSpacing(12)
        grid.setVerticalSpacing(10)
        grid.setAlignment(Qt.AlignHCenter)

        grid.addWidget(self.ui.label_localIp, 0, 0)
        grid.addWidget(self.ui.lineEdit_localIp, 0, 1)
        grid.addWidget(self.ui.label_localPort, 0, 2)
        grid.addWidget(self.ui.spinBox_localPort, 0, 3)

        grid.addWidget(self.ui.label_remoteIp, 1, 0)
        grid.addWidget(self.ui.lineEdit_remoteIp, 1, 1)
        grid.addWidget(self.ui.label_remotePort, 1, 2)
        grid.addWidget(self.ui.spinBox_remotePort, 1, 3)

        outer.addLayout(grid)
        outer.addWidget(self.ui.pushButton_runStop, alignment=Qt.AlignHCenter)

    def _tune_field_sizes(self) -> None:
        """Enforce wider spin boxes so that port numbers stay visible."""
        min_port_width = 80
        self.ui.spinBox_localPort.setMinimumWidth(min_port_width)
        self.ui.spinBox_remotePort.setMinimumWidth(min_port_width)

    def _apply_default_udp_config(self) -> None:
        self.ui.lineEdit_localIp.setText(const.UDP_LOCAL_HOST)
        self.ui.spinBox_localPort.setValue(const.UDP_LOCAL_PORT)
        self.ui.lineEdit_remoteIp.setText(const.UDP_REMOTE_HOST)
        self.ui.spinBox_remotePort.setValue(const.UDP_REMOTE_PORT)

    def horizontal_slider_freq_value_changed_call_back(self) -> None:
        self.ui.label_freq.setText("频率：{:.2f}GHz".format(self.ui.horizontalSlider_freq.value() / 100))

    def run_stop_button_clicked_call_back(self) -> None:
        if self.socket_thread.is_running:
            self.stop_udp_connection()
        else:
            self.start_udp_connection()

    def start_udp_connection(self) -> None:
        self.socket_thread.configure(
            remote_host=self.ui.lineEdit_remoteIp.text(),
            remote_port=self.ui.spinBox_remotePort.value(),
            bind_host=self.ui.lineEdit_localIp.text(),
            bind_port=self.ui.spinBox_localPort.value(),
        )
        self.append_console_message("开始建立 UDP 连接...")
        if self.socket_thread.isRunning():
            # 若线程仍处于 Qt 层运行状态，则无需重复启动
            return
        self.socket_thread.start()

    def stop_udp_connection(self) -> None:
        if not self.socket_thread.is_running:
            return
        self.append_console_message("正在关闭 UDP 连接...")
        self.socket_thread.stop()
        self.socket_thread.wait(500)

    def on_udp_connected(self, msg: str) -> None:
        self.append_console_message(msg)
        self.ui.pushButton_runStop.setText("停止连接")

    def on_udp_disconnected(self, msg: str) -> None:
        self.append_console_message(msg)
        self.ui.pushButton_runStop.setText("开始连接")

    def on_udp_data_received(self, payload: bytes, addr: tuple) -> None:
        preview = payload[:16].hex(" ")
        self.append_console_message(f"来自 {addr[0]}:{addr[1]} -> {len(payload)} 字节: {preview}")

    def on_tx_config_send_clicked(self) -> None:
        """TX 配置发送：按顺序发送 bank5~bankB，每个 bank 后跟 32 位数据（当前默认 0）。"""
        if not self.socket_thread.is_running:
            self.append_console_message("TX 配置发送失败：UDP 未连接，请先建立连接")
            return

        # 预留：后续可从 TX 配置中读取每个 bank 对应的 32 位数据
        banks = [0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB]
        payload_bytes = bytearray()

        for bank in banks:
            value_32bit = self._build_tx_bank_value(bank)
            # 协议：先发送 ASCII 字符 'bank'，再发送 1 字节 bank 号 + 4 字节数据（大端序）
            payload_bytes.extend(b"bank")
            payload_bytes.append(bank & 0xFF)
            payload_bytes.extend(struct.pack(">I", value_32bit))

        success = self.socket_thread.send(bytes(payload_bytes))
        if success:
            self.append_console_message(
                f"TX 配置已发送：{len(payload_bytes)} 字节，内容={bytes(payload_bytes).hex(' ')}"
            )
        else:
            self.append_console_message("TX 配置发送失败：请检查 UDP 连接状态")

    def on_rx_config_send_clicked(self) -> None:
        """RX 配置发送按钮回调（占位实现，后续可以在这里组包并通过 UDP 发送 RX 配置）"""
        self.append_console_message("RX 配置发送按钮已点击（待实现具体发送逻辑）")

    def _build_tx_bank_value(self, bank: int) -> int:
        """根据当前控件状态计算特定 bank 的 32 位数据。"""
        if bank == 0x5:
            # 第 0~7 位为 1，其余位为 0
            return 0xFF
        if bank == 0x6:
            return self._compose_bank6_value()
        if bank == 0x7:
            return self._compose_bank7_value()
        if bank == 0x8:
            return self._compose_bank8_value()
        if bank == 0x9:
            return self._compose_bank9_value()
        if bank == 0xA:
            return self._compose_bankA_value()
        return 0

    def _compose_bank6_value(self) -> int:
        """
        生成 bank6 的 32 位值：
        - bit0: 衰减 2dB 勾选
        - bit1: 衰减 10dB 勾选
        - bit2~4: 固定 0
        - bit5~13: IDAC I-P
        - bit14~22: IDAC I-N
        - bit23~31: IDAC Q-P
        """
        value = 0

        if hasattr(self.ui, "checkBox_att2db") and self.ui.checkBox_att2db.isChecked():
            value |= 1 << 0
        if hasattr(self.ui, "checkBox_att10db") and self.ui.checkBox_att10db.isChecked():
            value |= 1 << 1

        def clamp_9bit(val: int) -> int:
            return int(val) & 0x1FF  # 9 位掩码

        ip_val = clamp_9bit(self.ui.spinBox_IDAC_IP.value())
        in_val = clamp_9bit(self.ui.spinBox_IDAC_IN.value())
        qp_val = clamp_9bit(self.ui.spinBox_IDAC_QP.value())

        value |= ip_val << 5
        value |= in_val << 14
        value |= qp_val << 23

        return value & 0xFFFFFFFF

    def _compose_bank7_value(self) -> int:
        """
        生成 bank7 的 32 位值：
        - bit31~28: 0
        - bit27~24: 基带增益编码
        - bit23~16: 带宽与基带增益组合编码
        - bit15~12: 带宽编码
        - bit11~9: 0
        - bit8~0: IDAC Q-N
        """
        value = 0
        bandwidth = self._get_selected_bandwidth()
        bb_gain = self._get_selected_bb_gain()

        gain_bits = {
            "-6dB": 0b0001,
            "0dB": 0b0010,
            "6dB": 0b0100,
            "12dB": 0b1000,
        }.get(bb_gain, 0)
        value |= (gain_bits & 0xF) << 24

        bw_gain_bits = {
            (500, "-6dB"): 0x18,
            (500, "0dB"): 0x0C,
            (500, "6dB"): 0x06,
            (500, "12dB"): 0x01,
            (250, "-6dB"): 0x30,
            (250, "0dB"): 0x18,
            (250, "6dB"): 0x0C,
            (250, "12dB"): 0x04,
            (100, "-6dB"): 0xEA,
            (100, "0dB"): 0x4A,
            (100, "6dB"): 0x22,
            (100, "12dB"): 0x0F,
        }.get((bandwidth, bb_gain), 0)
        value |= (bw_gain_bits & 0xFF) << 16

        bw_bits = {
            500: 0b1010,
            250: 0b1000,
            100: 0b0110,
        }.get(bandwidth, 0)
        value |= (bw_bits & 0xF) << 12

        qn_val = int(self.ui.spinBox_IDAC_QN.value()) & 0x1FF
        value |= qn_val

        return value & 0xFFFFFFFF

    def _compose_bank8_value(self) -> int:
        """
        生成 bank8 的 32 位值：
        - bit31~26: 0
        - bit25~22: 滤波器增益编码
        - bit21~15: (带宽, 滤波器增益) 高 7 位编码
        - bit14~8 : (带宽, 滤波器增益) 低 7 位编码
        - bit7~4  : 带宽相关编码（高 4 位）
        - bit3~0  : 带宽相关编码（低 4 位）
        """
        value = 0
        bandwidth = self._get_selected_bandwidth()
        f_gain = self._get_selected_filter_gain()

        # bit25~22: 滤波器增益
        filt_bits = {
            "0dB": 0b0001,
            "6dB": 0b0110,
            "12dB": 0b1100,
        }.get(f_gain, 0)
        value |= (filt_bits & 0xF) << 22

        # bit21~15 + bit14~8: 组合编码
        # 这里直接用你给的 7 位 + 7 位二进制组合，先转成 7 位整数
        bw_gain_7_7 = {
            (500, "0dB"):  (0b0010000, 0b0010000),
            (500, "6dB"):  (0b0010000, 0b0001000),
            (500, "12dB"): (0b0001000, 0b0000011),
            (250, "0dB"):  (0b0100000, 0b0100000),
            (250, "6dB"):  (0b0100000, 0b0001110),
            (250, "12dB"): (0b0100000, 0b0000111),
            (100, "0dB"):  (0b1001110, 0b1010000),
            (100, "6dB"):  (0b1001110, 0b0101000),
            (100, "12dB"): (0b1001110, 0b0010100),
        }.get((bandwidth, f_gain), (0, 0))
        high7, low7 = bw_gain_7_7
        value |= (high7 & 0x7F) << 15
        value |= (low7 & 0x7F) << 8

        # bit7~4 + bit3~0: 仅与带宽有关
        bw_nibble = {
            500: (0b0110, 0b0110),
            250: (0b0100, 0b0110),
            100: (0b0011, 0b0100),
        }.get(bandwidth, (0, 0))
        high4, low4 = bw_nibble
        value |= (high4 & 0xF) << 4
        value |= (low4 & 0xF)

        return value & 0xFFFFFFFF

    def _compose_bank9_value(self) -> int:
        """
        生成 bank9 的 32 位值：
        - bit31~18: 0
        - bit17~12: 6bit，根据频率是否 >= 6GHz 选择：
            - >=6GHz: 100111
            - <6GHz: 000000
        - bit11~6 / bit5~0: 各 6bit，根据频率是否 >= 6GHz 选择：
            - >=6GHz: 110000 / 101100
            - <6GHz: 000000 / 000000
        """
        value = 0
        # 滑块单位 0.01GHz，>= 6GHz 即值 >= 600
        is_high_freq = self.ui.horizontalSlider_freq.value() >= 600

        if is_high_freq:
            bits_17_12 = 0b100111
            bits_11_6 = 0b110000
            bits_5_0 = 0b101100
        else:
            bits_17_12 = 0
            bits_11_6 = 0
            bits_5_0 = 0

        value |= (bits_17_12 & 0x3F) << 12
        value |= (bits_11_6 & 0x3F) << 6
        value |= (bits_5_0 & 0x3F)

        return value & 0xFFFFFFFF

    def _compose_bankA_value(self) -> int:
        """
        生成 bankA 的 32 位值：
        - bit31~18: 0
        - bit17~12: 6bit，根据频率是否 >= 6GHz 选择：
            - >=6GHz: 000000
            - <6GHz: 100000
        - bit11~6 / bit5~0: 各 6bit，根据频率是否 >= 6GHz 选择：
            - >=6GHz: 000000 / 000000
            - <6GHz: 100000 / 110101
        """
        value = 0
        is_high_freq = self.ui.horizontalSlider_freq.value() >= 600

        if is_high_freq:
            bits_17_12 = 0b000000
            bits_11_6 = 0b000000
            bits_5_0 = 0b000000
        else:
            bits_17_12 = 0b100000
            bits_11_6 = 0b100000
            bits_5_0 = 0b110101

        value |= (bits_17_12 & 0x3F) << 12
        value |= (bits_11_6 & 0x3F) << 6
        value |= (bits_5_0 & 0x3F)

        return value & 0xFFFFFFFF

    def _get_selected_bandwidth(self) -> int:
        """返回当前选中的带宽（100/250/500）。默认 500。"""
        if getattr(self.ui, "radioButton_BBBW100M", None) and self.ui.radioButton_BBBW100M.isChecked():
            return 100
        if getattr(self.ui, "radioButton_BBBW250M", None) and self.ui.radioButton_BBBW250M.isChecked():
            return 250
        return 500

    def _get_selected_bb_gain(self) -> str:
        """返回当前基带增益文字，默认 '0dB'。"""
        combo = getattr(self.ui, "comboBox_BBGain", None)
        if combo is None:
            return "0dB"
        return combo.currentText() or "0dB"

    def _get_selected_filter_gain(self) -> str:
        """返回当前滤波器增益文字，默认 '0dB'。"""
        combo = getattr(self.ui, "comboBox_filterGain", None)
        if combo is None:
            return "0dB"
        return combo.currentText() or "0dB"

    def append_console_message(self, message: str) -> None:
        ts = time.strftime("%H:%M:%S")
        self.ui.listWidget_console.addItem(f"[{ts}] {message}")
        self.ui.listWidget_console.scrollToBottom()

    def closeEvent(self, event) -> None:
        self.stop_udp_connection()
        super().closeEvent(event)


if __name__ == "__main__":
    QApplication.setHighDpiScaleFactorRoundingPolicy(Qt.HighDpiScaleFactorRoundingPolicy.Floor)
    if 'QT_FONT_DPI' not in os.environ:
        os.environ['QT_FONT_DPI'] = '84'
    if platform.system() == "Windows":
        if const.cfg.DARK_THEME:
            sys.argv += ['-platform', 'windows:darkmode=2']
        else:
            sys.argv += ['-platform', 'windows:darkmode=0']
    app = QApplication(sys.argv)
    widget = Widget()
    widget.show()
    sys.exit(app.exec())
