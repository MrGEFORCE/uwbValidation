import os
import sys
import time
import platform
import functools
import numpy as np
import pyqtgraph as pg

from PySide6 import QtGui
from PySide6.QtCore import Qt
from PySide6.QtWidgets import QApplication, QWidget, QFileDialog, QComboBox

import regs
import const
import uiConfig
import funcComm
import socketThread
import p312.supportFuncs as supportFuncs

from ui_form import Ui_Widget


class Widget(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.ui = Ui_Widget()
        self.ui.setupUi(self)
        self.sizeFlag = True
        self.setFixedSize(self.width(), self.height())

        # var
        self.defaultParams: list[uiConfig.UiConfig] = [uiConfig.UiConfig() for _ in range(const.FuncMode.ModeCount.value)]
        self.runningMode: const.FuncMode = const.FuncMode.ModeComm
        self.isRunning = False
        self.funcComm = funcComm.FuncComm()
        self.bytesData = b''
        self.txRegs = regs.TxRegs()
        self.rxRegs = regs.RxRegs()
        self.socketThread = socketThread.SocketThread(self)

        # widget signals and slots
        self.ui.horizontalSlider_freq.valueChanged.connect(self.horizontal_slider_freq_value_changed_cb)
        self.ui.pushButton_runStop.clicked.connect(self.run_stop_button_clicked_cb)
        self.ui.pushButton_consoleClear.clicked.connect(self.ui.listWidget_console.clear)
        self.ui.pushButton_txConfigSend.clicked.connect(self.btn_tx_config_send_clicked_cb)
        self.ui.pushButton_rxConfigSend.clicked.connect(self.btn_rx_config_send_clicked_cb)
        self.ui.tabWidget.currentChanged.connect(self.tab_changed_cb)

        # comm
        self.ui.radioButton_commR.toggled.connect(self.radio_btn_comm_mode_toggled_cb)
        self.ui.pushButton_commImgSelect.clicked.connect(self.btn_comm_select_img_cb)
        self.ui.pushButton_commImgT.clicked.connect(self.btn_comm_send_img_cb)
        self.ui.pushButton_commTextT.clicked.connect(self.btn_comm_send_text_cb)
        self.ui.pushButton_commRunStop.clicked.connect(self.btn_comm_recv_run_stop_cb)

        # radar

        # interference

        # thread signals and slots
        self.socketThread.establishSig.connect(self.thread_socket_establish_signal_call_back)
        self.socketThread.cpltSig.connect(self.thread_socket_cplt_signal_call_back)

        # init
        self.socketThread.bind_udp()
        uiConfig.set_comm_default(self.defaultParams[const.FuncMode.ModeComm.value])
        uiConfig.set_radar_default(self.defaultParams[const.FuncMode.ModeRadar.value])
        uiConfig.set_inter_default(self.defaultParams[const.FuncMode.ModeInter.value])
        self.tab_changed_cb(self.ui.tabWidget.currentIndex())
        self.horizontal_slider_freq_value_changed_cb()

    def keyPressEvent(self, event: QtGui.QKeyEvent) -> None:
        if event.key() == Qt.Key.Key_F8:
            self.setFixedSize(1480 if self.sizeFlag else 1280, 900)
            self.sizeFlag = not self.sizeFlag

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

    @property
    def HBFlag(self) -> bool:
        return self.freq >= const.HB_LB_FREQ

    def horizontal_slider_freq_value_changed_cb(self) -> None:
        self.ui.label_freq.setText("频率：{:.2f}GHz".format(self.ui.horizontalSlider_freq.value() / 100))

    def run_stop_button_clicked_cb(self) -> None:
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

    def tab_changed_cb(self, idx: int) -> None:
        self.ui.horizontalSlider_freq.setValue(int(self.defaultParams[idx].freq * 1e-7))
        if self.defaultParams[idx].bbBw == 100:
            self.ui.radioButton_BBBW100M.setChecked(True)
        elif self.defaultParams[idx].bbBw == 250:
            self.ui.radioButton_BBBW250M.setChecked(True)
        elif self.defaultParams[idx].bbBw == 500:
            self.ui.radioButton_BBBW500M.setChecked(True)
        self.ui.spinBox_T_IDAC_IP.setValue(self.defaultParams[idx].tIdac.IP)
        self.ui.spinBox_T_IDAC_IN.setValue(self.defaultParams[idx].tIdac.IN)
        self.ui.spinBox_T_IDAC_QP.setValue(self.defaultParams[idx].tIdac.QP)
        self.ui.spinBox_T_IDAC_QN.setValue(self.defaultParams[idx].tIdac.QN)
        self.combobox_match_index(self.ui.comboBox_T_BBGain, self.defaultParams[idx].tBGain)
        self.combobox_match_index(self.ui.comboBox_T_filterGain, self.defaultParams[idx].tFilGain)
        self.ui.checkBox_T_att2db.setChecked(self.defaultParams[idx].att2)
        self.ui.checkBox_T_att10db.setChecked(self.defaultParams[idx].att10)
        self.ui.spinBox_R_IDAC1_IP.setValue(self.defaultParams[idx].rIdac1.IP)
        self.ui.spinBox_R_IDAC1_IN.setValue(self.defaultParams[idx].rIdac1.IN)
        self.ui.spinBox_R_IDAC1_QP.setValue(self.defaultParams[idx].rIdac1.QP)
        self.ui.spinBox_R_IDAC1_QN.setValue(self.defaultParams[idx].rIdac1.QN)
        self.ui.spinBox_R_IDAC2_IP.setValue(self.defaultParams[idx].rIdac2.IP)
        self.ui.spinBox_R_IDAC2_IN.setValue(self.defaultParams[idx].rIdac2.IN)
        self.ui.spinBox_R_IDAC2_QP.setValue(self.defaultParams[idx].rIdac2.QP)
        self.ui.spinBox_R_IDAC2_QN.setValue(self.defaultParams[idx].rIdac2.QN)
        self.combobox_match_index(self.ui.comboBox_R_filterGain1, self.defaultParams[idx].rFil1Gain)
        self.combobox_match_index(self.ui.comboBox_R_filterGain2, self.defaultParams[idx].rFil2Gain)
        self.combobox_match_index(self.ui.comboBox_R_BBGain, self.defaultParams[idx].rBbGain)
        self.combobox_match_index(self.ui.comboBox_R_TIAGain, self.defaultParams[idx].rTiaGain)

    def radio_btn_comm_mode_toggled_cb(self, status: bool) -> None:
        self.funcComm.rMode = status

    def btn_comm_select_img_cb(self) -> None:
        filePath = QFileDialog.getOpenFileName(self, "load image", "", "*.jpg, *.png")
        if filePath[0] == "":
            return
        if self.funcComm.set_img(filePath[0]):
            print("debug: get img error")
            return
        scaledPix = self.funcComm.tPixmap.scaled(self.ui.label_commImgT.width(), self.ui.label_commImgT.height(), Qt.AspectRatioMode.KeepAspectRatio, Qt.TransformationMode.SmoothTransformation)
        self.ui.label_commImgT.setPixmap(scaledPix)
        self.ui.label_commImgT.setScaledContents(False)

    def btn_comm_send_img_cb(self) -> None:
        if self.funcComm.rMode:
            return
        if not self.funcComm.imgSelected:
            print("debug: img not selected")
            return
        b = self.funcComm.get_img_code()
        self.socketThread.udp_socket.sendto(b, self.socketThread.udp_remote_addr)

    def btn_comm_send_text_cb(self) -> None:
        if self.funcComm.rMode:
            return
        self.funcComm.set_text(self.ui.textEdit_commT.toPlainText())
        b = self.funcComm.get_text_code()
        self.socketThread.udp_socket.sendto(b, self.socketThread.udp_remote_addr)

    def btn_comm_recv_run_stop_cb(self) -> None:
        if not self.funcComm.rMode:
            return
        if self.isRunning:
            self.isRunning = False
            self.socketThread.receiving = False
            for i in range(const.FuncMode.ModeCount.value):
                self.ui.tabWidget.setTabEnabled(i, True)
            self.ui.radioButton_commT.setEnabled(True)
            self.ui.radioButton_commR.setEnabled(True)
            self.console_log("通信模式：停止接收")
        else:
            self.runningMode = const.FuncMode.ModeComm
            self.isRunning = True
            self.socketThread.receiving = True
            self.socketThread.start()
            # 工作于接收状态的芯片不可再用于发射，所有页面和模式切换全部锁住，直到用户手动停止
            for i in range(const.FuncMode.ModeCount.value):
                if i == const.FuncMode.ModeComm.value:
                    continue
                self.ui.tabWidget.setTabEnabled(i, False)
            self.ui.radioButton_commT.setEnabled(False)
            self.ui.radioButton_commR.setEnabled(False)
            self.console_log("通信模式：开始接收")

    def thread_socket_establish_signal_call_back(self, signal: bool) -> None:
        if not signal:
            self.console_log("网口设置错误或未连接下位机，UDP未建立！")

    @staticmethod
    def combobox_match_index(box: QComboBox, value: int) -> int:
        items = [box.itemText(i) for i in range(box.count())]
        for i in range(len(items)):
            if str(value) == items[i][:-2]:
                box.setCurrentIndex(i)
                return i
        return -1

    def console_log(self, t: str) -> None:
        self.ui.listWidget_console.addItem(t + " - " + time.ctime())
        self.ui.listWidget_console.setCurrentRow(self.ui.listWidget_console.count() - 1)

    def thread_socket_cplt_signal_call_back(self, status: bool) -> None:
        print(self.bytesData)

        if self.runningMode == const.FuncMode.ModeComm:
            ret, idx = self.funcComm.unpack(self.bytesData)
            if ret:
                print("debug: comm unpack error")
                return
            if idx == self.funcComm.INFO_IMG:
                scaledPix = self.funcComm.rPixmap.scaled(self.ui.label_commImgR.width(), self.ui.label_commImgR.height(), Qt.AspectRatioMode.KeepAspectRatio, Qt.TransformationMode.SmoothTransformation)
                self.ui.label_commImgR.setPixmap(scaledPix)
                self.ui.label_commImgR.setScaledContents(False)
            if idx == self.funcComm.INFO_TEXT:
                self.ui.textEdit_commR.setText(self.funcComm.rText)
        elif self.runningMode == const.FuncMode.ModeRadar:
            pass
        elif self.runningMode == const.FuncMode.ModeInter:
            pass
        else:
            print("debug: unknown running mode")

        # if self.frameData.unpack(self.bytesData):
        #     self.frame_info_update()
        #     print("debug: ", self.frameData.errMsg)
        #     return

    def get_tx_params(self) -> bool:
        self.txRegs.HBFlag = self.HBFlag
        self.txRegs.att2 = self.ui.checkBox_T_att2db.isChecked()
        self.txRegs.att10 = self.ui.checkBox_T_att10db.isChecked()
        self.txRegs.bbBandwidth = self.bb_bw
        self.txRegs.bbGain = int(self.ui.comboBox_T_BBGain.currentText()[:-2])
        self.txRegs.filterGain = int(self.ui.comboBox_T_filterGain.currentText()[:-2])
        self.txRegs.freq = self.freq
        self.txRegs.idac.IP = self.ui.spinBox_T_IDAC_IP.value()
        self.txRegs.idac.IN = self.ui.spinBox_T_IDAC_IN.value()
        self.txRegs.idac.QP = self.ui.spinBox_T_IDAC_QP.value()
        self.txRegs.idac.QN = self.ui.spinBox_T_IDAC_QN.value()
        return False

    def get_rx_params(self) -> bool:
        self.rxRegs.HBFlag = self.HBFlag
        self.rxRegs.bbBandwidth = self.bb_bw
        self.rxRegs.bbGain = int(self.ui.comboBox_R_BBGain.currentText()[:-2])
        self.rxRegs.fil1Gain = int(self.ui.comboBox_R_filterGain1.currentText()[:-2])
        self.rxRegs.fil2Gain = int(self.ui.comboBox_R_filterGain2.currentText()[:-2])
        self.rxRegs.tiaGain = int(self.ui.comboBox_R_TIAGain.currentText()[:-2])
        self.rxRegs.idac1.IP = self.ui.spinBox_R_IDAC1_IP.value()
        self.rxRegs.idac1.IN = self.ui.spinBox_R_IDAC1_IN.value()
        self.rxRegs.idac1.QP = self.ui.spinBox_R_IDAC1_QP.value()
        self.rxRegs.idac1.QN = self.ui.spinBox_R_IDAC1_QN.value()
        self.rxRegs.idac2.IP = self.ui.spinBox_R_IDAC2_IP.value()
        self.rxRegs.idac2.IN = self.ui.spinBox_R_IDAC2_IN.value()
        self.rxRegs.idac2.QP = self.ui.spinBox_R_IDAC2_QP.value()
        self.rxRegs.idac2.QN = self.ui.spinBox_R_IDAC2_QN.value()
        return False

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
