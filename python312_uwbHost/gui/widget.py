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
from PySide6.QtWidgets import QApplication, QWidget

import const
from socketThread import SocketThread
from tx_bank_calculator import generate_all_tx_bank_values

from ui_form import Ui_Widget


class Widget(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.ui = Ui_Widget()
        self.ui.setupUi(self)
        self.bytesData = b''

        self._apply_default_udp_config()
        self.socketThread = SocketThread(self)

        self.ui.horizontalSlider_freq.valueChanged.connect(self.horizontal_slider_freq_value_changed_call_back)
        self.ui.pushButton_runStop.clicked.connect(self.run_stop_button_clicked_call_back)
        self.ui.pushButton_consoleClear.clicked.connect(self.ui.listWidget_console.clear)
        self.ui.pushButton_txConfigSend.clicked.connect(self.on_tx_config_send_clicked)
        self.ui.pushButton_rxConfigSend.clicked.connect(self.on_rx_config_send_clicked)

        self.socketThread.establishSig.connect(self.thread_socket_establish_signal_call_back)
        self.socketThread.cpltSig.connect(self.thread_socket_cplt_signal_call_back)

        self.horizontal_slider_freq_value_changed_call_back()

    def _apply_default_udp_config(self) -> None:
        self.ui.lineEdit_localIp.setText(const.UDP_LOCAL_HOST)
        self.ui.spinBox_localPort.setValue(const.UDP_LOCAL_PORT)
        self.ui.lineEdit_remoteIp.setText(const.UDP_REMOTE_HOST)
        self.ui.spinBox_remotePort.setValue(const.UDP_REMOTE_PORT)

    def horizontal_slider_freq_value_changed_call_back(self) -> None:
        self.ui.label_freq.setText("频率：{:.2f}GHz".format(self.ui.horizontalSlider_freq.value() / 100))

    def run_stop_button_clicked_call_back(self) -> None:
        if self.socketThread.isRunning():
            self.socketThread.receiving = False
        else:
            self.socketThread.receiving = True
            self.socketThread.start()

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

    def console_log(self, t: str) -> None:
        self.ui.listWidget_console.addItem(t + " - " + time.ctime())
        self.ui.listWidget_console.setCurrentRow(self.ui.listWidget_console.count() - 1)

    def thread_socket_establish_signal_call_back(self, signal: bool) -> None:
        if not signal:
            self.console_log("网口设置错误或未连接下位机，UDP未建立！")

    def thread_socket_cplt_signal_call_back(self, status: bool) -> None:
        print(self.bytesData)
        # if self.frameData.unpack(self.bytesData):
        #     self.frame_info_update()
        #     print("debug: ", self.frameData.errMsg)
        #     return

    def on_tx_config_send_clicked(self) -> None:
        # 全部获取好 - 收集所有参数
        params = self._collect_all_tx_params()

        # 先判断有无乱输入导致错误 - 输入验证
        input_errors = self._validate_tx_input_params(params)
        if input_errors:
            error_msg = "TX 配置输入验证失败：\n" + "\n".join(f"  - {err}" for err in input_errors)
            self.append_console_message(error_msg)
            return

        # 再判断参数含义上是否有error - 逻辑验证
        logic_errors = self._validate_tx_logic_params(params)
        if logic_errors:
            error_msg = "TX 配置逻辑验证失败：\n" + "\n".join(f"  - {err}" for err in logic_errors)
            self.append_console_message(error_msg)
            return

        # 再统一生成所有寄存器
        bank_values = self._generate_all_tx_bank_values(params)

        # 最后发送
        banks = [0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB]
        payload_bytes = bytearray()

        for bank in banks:
            value_32bit = bank_values.get(bank, 0)
            # 协议：先发送 ASCII 字符 'bank'，再发送 1 字节 bank 号 + 4 字节数据（大端序）
            payload_bytes.extend(b"bank")
            payload_bytes.append(bank & 0xFF)
            payload_bytes.extend(struct.pack(">I", value_32bit))
        self.socketThread.udp_socket.sendto(bytes(payload_bytes), self.socketThread.udp_remote_addr)

    def on_rx_config_send_clicked(self) -> None:
        """RX 配置发送按钮回调（占位实现，后续可以在这里组包并通过 UDP 发送 RX 配置）"""
        self.append_console_message("RX 配置发送按钮已点击（待实现具体发送逻辑）")

    def _collect_all_tx_params(self) -> dict:
        """收集所有TX配置参数。"""
        params = {}

        # Bank6 参数
        check_att2db = getattr(self.ui, "checkBox_att2db", None)
        params['att2db'] = check_att2db.isChecked() if check_att2db else False

        check_att10db = getattr(self.ui, "checkBox_att10db", None)
        params['att10db'] = check_att10db.isChecked() if check_att10db else False

        spinbox_ip = getattr(self.ui, "spinBox_IDAC_IP", None)
        params['idac_ip'] = spinbox_ip.value() if spinbox_ip else 0

        spinbox_in = getattr(self.ui, "spinBox_IDAC_IN", None)
        params['idac_in'] = spinbox_in.value() if spinbox_in else 0

        spinbox_qp = getattr(self.ui, "spinBox_IDAC_QP", None)
        params['idac_qp'] = spinbox_qp.value() if spinbox_qp else 0

        # Bank7 参数
        params['bandwidth'] = self._get_selected_bandwidth()
        params['bb_gain'] = self._get_selected_bb_gain()

        spinbox_qn = getattr(self.ui, "spinBox_IDAC_QN", None)
        params['idac_qn'] = spinbox_qn.value() if spinbox_qn else 0

        # Bank8 参数
        params['filter_gain'] = self._get_selected_filter_gain()

        # Bank9/BankA 参数
        params['freq'] = self.ui.horizontalSlider_freq.value()

        return params

    def _validate_tx_input_params(self, params: dict) -> list:
        """验证输入参数：检查是否有乱输入、范围错误等。返回错误列表，空列表表示无错误。"""
        errors = []

        # 验证IDAC值范围（9位，0-511）
        idac_max = 511
        if params['idac_ip'] < 0 or params['idac_ip'] > idac_max:
            errors.append(f"IDAC I-P 值超出范围 [0, {idac_max}]：{params['idac_ip']}")
        if params['idac_in'] < 0 or params['idac_in'] > idac_max:
            errors.append(f"IDAC I-N 值超出范围 [0, {idac_max}]：{params['idac_in']}")
        if params['idac_qp'] < 0 or params['idac_qp'] > idac_max:
            errors.append(f"IDAC Q-P 值超出范围 [0, {idac_max}]：{params['idac_qp']}")
        if params['idac_qn'] < 0 or params['idac_qn'] > idac_max:
            errors.append(f"IDAC Q-N 值超出范围 [0, {idac_max}]：{params['idac_qn']}")

        # 验证频率范围（20-1800，对应0.2-18GHz）
        freq_min, freq_max = 20, 1800
        if params['freq'] < freq_min or params['freq'] > freq_max:
            errors.append(
                f"频率值超出范围 [{freq_min / 100:.2f}GHz, {freq_max / 100:.2f}GHz]：{params['freq'] / 100:.2f}GHz")

        # 验证带宽值
        valid_bandwidths = [100, 250, 500]
        if params['bandwidth'] not in valid_bandwidths:
            errors.append(f"带宽值无效，应为 {valid_bandwidths} 之一：{params['bandwidth']}")

        # 验证基带增益值
        valid_bb_gains = ["-6dB", "0dB", "6dB", "12dB"]
        if params['bb_gain'] not in valid_bb_gains:
            errors.append(f"基带增益值无效，应为 {valid_bb_gains} 之一：{params['bb_gain']}")

        # 验证滤波器增益值
        valid_filter_gains = ["0dB", "6dB", "12dB"]
        if params['filter_gain'] not in valid_filter_gains:
            errors.append(f"滤波器增益值无效，应为 {valid_filter_gains} 之一：{params['filter_gain']}")

        return errors

    def _validate_tx_logic_params(self, params: dict) -> list:
        """验证参数逻辑：检查参数组合是否合理、参数含义是否有错误。返回错误列表，空列表表示无错误。"""
        errors = []
        bandwidth = params['bandwidth']
        bb_gain = params['bb_gain']
        filter_gain = params['filter_gain']

        # 验证bank7的带宽-增益组合是否在映射表中
        valid_bw_gain_combos = [
            (500, "-6dB"), (500, "0dB"), (500, "6dB"), (500, "12dB"),
            (250, "-6dB"), (250, "0dB"), (250, "6dB"), (250, "12dB"),
            (100, "-6dB"), (100, "0dB"), (100, "6dB"), (100, "12dB"),
        ]
        if (bandwidth, bb_gain) not in valid_bw_gain_combos:
            errors.append(f"带宽 {bandwidth}MHz 与基带增益 {bb_gain} 的组合无效")

        # 验证bank8的带宽-滤波器增益组合是否在映射表中
        valid_bw_filt_combos = [
            (500, "0dB"), (500, "6dB"), (500, "12dB"),
            (250, "0dB"), (250, "6dB"), (250, "12dB"),
            (100, "0dB"), (100, "6dB"), (100, "12dB"),
        ]
        if (bandwidth, filter_gain) not in valid_bw_filt_combos:
            errors.append(f"带宽 {bandwidth}MHz 与滤波器增益 {filter_gain} 的组合无效")

        return errors

    def _generate_all_tx_bank_values(self, params: dict) -> dict:
        """根据已验证的参数统一生成所有bank的寄存器值。"""
        return generate_all_tx_bank_values(params)

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
