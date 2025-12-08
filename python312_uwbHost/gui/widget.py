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

import regs
import const
import socketThread
import p312.supportFuncs as supportFuncs

from ui_form import Ui_Widget


class Widget(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.ui = Ui_Widget()
        self.ui.setupUi(self)
        self.setFixedSize(self.width(), self.height())

        # var
        self.bytesData = b''
        self.txRegs = regs.TxRegs()
        self.rxRegs = regs.RxRegs()
        self.socketThread = socketThread.SocketThread(self)

        # widget signals and slots
        self.ui.horizontalSlider_freq.valueChanged.connect(self.horizontal_slider_freq_value_changed_call_back)
        self.ui.pushButton_runStop.clicked.connect(self.run_stop_button_clicked_call_back)
        self.ui.pushButton_consoleClear.clicked.connect(self.ui.listWidget_console.clear)
        self.ui.pushButton_txConfigSend.clicked.connect(self.btn_tx_config_send_clicked_cb)
        self.ui.pushButton_rxConfigSend.clicked.connect(self.btn_rx_config_send_clicked_cb)

        # thread signals and slots
        self.socketThread.establishSig.connect(self.thread_socket_establish_signal_call_back)
        self.socketThread.cpltSig.connect(self.thread_socket_cplt_signal_call_back)

        # init
        self.horizontal_slider_freq_value_changed_call_back()
        self.socketThread.bind_udp()

    @property
    def freq(self) -> float:
        return self.ui.horizontalSlider_freq.value() * 1e7

    @property
    def bb_bw(self) -> int:
        if self.ui.radioButton_BBBW100M.isChecked():
            return 100
        if self.ui.radioButton_BBBW250M.isChecked():
            return 250
        if self.ui.radioButton_BBBW500M.isChecked():
            return 500
        return 0

    def horizontal_slider_freq_value_changed_call_back(self) -> None:
        self.ui.label_freq.setText("频率：{:.2f}GHz".format(self.ui.horizontalSlider_freq.value() / 100))

    def run_stop_button_clicked_call_back(self) -> None:
        if self.socketThread.isRunning():
            self.socketThread.receiving = False
        else:
            self.socketThread.receiving = True
            self.socketThread.start()

    def btn_tx_config_send_clicked_cb(self) -> None:
        if self.get_tx_params():
            return
        if self.txRegs.gen_regs():
            return
        self.txRegs.print()
        cmd = self.txRegs.gen_cmd()
        chk = supportFuncs.check_sum(cmd)
        b = const.cfg.CTRL_HEAD + cmd + chk + const.cfg.CTRL_TAIL
        self.socketThread.udp_socket.sendto(b, self.socketThread.udp_remote_addr)

    def btn_rx_config_send_clicked_cb(self) -> None:
        if self.get_rx_params():
            return
        if self.rxRegs.gen_regs():
            return
        self.rxRegs.print()
        cmd = self.rxRegs.gen_cmd()
        chk = supportFuncs.check_sum(cmd)
        b = const.cfg.CTRL_HEAD + cmd + chk + const.cfg.CTRL_TAIL
        self.socketThread.udp_socket.sendto(b, self.socketThread.udp_remote_addr)

    def thread_socket_establish_signal_call_back(self, signal: bool) -> None:
        if not signal:
            self.console_log("网口设置错误或未连接下位机，UDP未建立！")

    def console_log(self, t: str) -> None:
        self.ui.listWidget_console.addItem(t + " - " + time.ctime())
        self.ui.listWidget_console.setCurrentRow(self.ui.listWidget_console.count() - 1)

    def thread_socket_cplt_signal_call_back(self, status: bool) -> None:
        print(self.bytesData)
        # if self.frameData.unpack(self.bytesData):
        #     self.frame_info_update()
        #     print("debug: ", self.frameData.errMsg)
        #     return

    def get_tx_params(self) -> bool:
        self.txRegs.HBFlag = self.freq > const.HB_LB_FREQ
        self.txRegs.att2 = self.ui.checkBox_T_att2db.isChecked()
        self.txRegs.att10 = self.ui.checkBox_T_att10db.isChecked()
        self.txRegs.bbGain = int(self.ui.comboBox_T_BBGain.currentText()[:-2])
        self.txRegs.bbBandwidth = self.bb_bw
        self.txRegs.filterGain = int(self.ui.comboBox_T_filterGain.currentText()[:-2])
        self.txRegs.freq = self.freq
        self.txRegs.idac.IP = self.ui.spinBox_T_IDAC_IP.value()
        self.txRegs.idac.IN = self.ui.spinBox_T_IDAC_IN.value()
        self.txRegs.idac.QP = self.ui.spinBox_T_IDAC_QP.value()
        self.txRegs.idac.QN = self.ui.spinBox_T_IDAC_QN.value()
        return False

    def get_rx_params(self) -> bool:
        self.txRegs.HBFlag = self.freq > const.HB_LB_FREQ
        self.txRegs.att2 = self.ui.checkBox_T_att2db.isChecked()
        self.txRegs.att10 = self.ui.checkBox_T_att10db.isChecked()
        self.txRegs.bbGain = int(self.ui.comboBox_T_BBGain.currentText()[:-2])
        self.txRegs.bbBandwidth = self.bb_bw

        # todo:
        # self.txRegs.filterGain = int(self.ui.comboBox_T_filterGain.currentText()[:-2])
        # self.txRegs.freq = self.freq
        # self.txRegs.idac.IP = self.ui.spinBox_T_IDAC_IP.value()
        # self.txRegs.idac.IN = self.ui.spinBox_T_IDAC_IN.value()
        # self.txRegs.idac.QP = self.ui.spinBox_T_IDAC_QP.value()
        # self.txRegs.idac.QN = self.ui.spinBox_T_IDAC_QN.value()
        return False

    def append_console_message(self, message: str) -> None:
        ts = time.strftime("%H:%M:%S")
        self.ui.listWidget_console.addItem(f"[{ts}] {message}")
        self.ui.listWidget_console.scrollToBottom()

    def closeEvent(self, event) -> None:
        self.socketThread.terminate()


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
