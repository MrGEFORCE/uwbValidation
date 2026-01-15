import os
import sys
import time
import copy
import struct
import platform
import numpy as np
import pyqtgraph as pg

from PySide6.QtCore import Qt
from PySide6.QtGui import QImage, QPixmap
from PySide6 import QtGui, QtCore
from PySide6.QtWidgets import QApplication, QWidget, QFileDialog, QComboBox

import lmx
import regs
import const
import uiConfig
import funcComm
import funcRadar
import funcInterference
import socketThread
import chirpParameters
import p312.graph as graph
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
        self.funcRadar = funcRadar.FuncRadar()
        self.funcInter = funcInterference.FuncInter()
        self.lmx = lmx.LMX()
        self.bytesData = b''
        self.txRegs = regs.TxRegs()
        self.rxRegs = regs.RxRegs()
        self.socketThread = socketThread.SocketThread(self)

        # plot
        self.plotWidget_rangeProfile, self.plotDataItem_rangeProfile = graph.init_plot(self.ui.verticalLayout_rangeProfile)
        graph.init_plot_axis(self.plotWidget_rangeProfile)
        self.rangeMark = pg.TargetItem(pos=(10, 0), size=30, symbol='arrow_down', movable=False, pen='#00FF00')
        self.rangeMark.setLabel("")
        self.plotWidget_rangeProfile.addItem(self.rangeMark)
        self.plotWidget_rdMap, self.imageItem_rdMap = graph.init_img_plot(self.ui.verticalLayout_rdMap, 'doppler', 'm/s', 'range', 'm')
        self.plotWidget_interSpec, self.plotDataItem_interSpec = graph.init_plot(self.ui.verticalLayout_interSpec)
        graph.init_plot_axis(self.plotWidget_interSpec)
        self.interMark = pg.TargetItem(pos=(0, 0), size=30, symbol='arrow_down', movable=False, pen='#00FF00')
        self.interMark.setLabel("")
        self.plotWidget_interSpec.addItem(self.interMark)

        # debug
        self.plotWidget_IF, self.plotDataItem_IF = graph.init_plot(self.ui.verticalLayout_IF)
        graph.init_plot_axis(self.plotWidget_IF)

        # widget signals and slots
        self.ui.horizontalSlider_freq.valueChanged.connect(self.horizontal_slider_freq_value_changed_cb)
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
        self.ui.pushButton_commClear.clicked.connect(self.btn_comm_recv_clear_cb)
        self.funcComm.packSig.connect(self.func_comm_send_cb)

        # radar
        self.ui.pushButton_radarRunStop.clicked.connect(self.btn_radar_run_stop_clicked_cb)
        self.ui.pushButton_radarValidateParams.clicked.connect(self.btn_radar_validate_params_clicked_cb)
        self.ui.pushButton_radarProcessParamsApply.clicked.connect(self.btn_radar_process_params_apply_clicked_cb)
        self.ui.spinBox_radarParamDecimal.valueChanged.connect(self.radar_show_params)

        # interference
        self.ui.horizontalSlider_inter.valueChanged.connect(self.horizontal_slider_inter_freq_value_changed_cb)
        self.ui.pushButton_interScan.clicked.connect(self.btn_inter_scan_cb)
        self.ui.pushButton_interRunStop.clicked.connect(self.btn_inter_run_stop_cb)
        self.funcInter.scanSig.connect(self.func_inter_scan_cb)
        self.funcInter.cpltSig.connect(self.func_inter_cplt_cb)

        # thread signals and slots
        self.socketThread.establishSig.connect(self.thread_socket_establish_signal_call_back)
        self.socketThread.cpltSig.connect(self.thread_socket_cplt_signal_call_back)

        # init
        self.socketThread.bind_udp()
        uiConfig.set_comm_default(self.defaultParams[const.FuncMode.ModeComm.value])
        uiConfig.set_radar_default(self.defaultParams[const.FuncMode.ModeRadar.value])
        uiConfig.set_inter_default(self.defaultParams[const.FuncMode.ModeInter.value])
        self.horizontal_slider_freq_value_changed_cb()
        self.ui.comboBox_radarTxAnt.addItems([str(i + 1) for i in range(const.ANT_TX_NUMS)])
        self.ui.comboBox_radarRxAnt.addItems([str(i + 1) for i in range(const.ANT_RX_NUMS)])
        cnt = 16
        while cnt < const.SAMPLE_INTERVAL_MAX:
            self.ui.comboBox_radarSampleInterval.addItem(str(cnt))
            cnt += 16
        self.ui.comboBox_radarSampleInterval.setCurrentIndex(4)
        self.tab_changed_cb(self.ui.tabWidget.currentIndex())

    def keyPressEvent(self, event: QtGui.QKeyEvent) -> None:
        if event.key() == Qt.Key.Key_C:
            self.setFixedSize(1480 if self.sizeFlag else 1280, 900)
            self.sizeFlag = not self.sizeFlag

    @property
    def freq(self) -> float:
        return self.ui.horizontalSlider_freq.value() * 1e7

    @property
    def interFreq(self) -> float:
        return self.ui.horizontalSlider_inter.value() * 1e7

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

    def horizontal_slider_inter_freq_value_changed_cb(self) -> None:
        self.ui.label_interFreq.setText("频率：{:.2f}GHz".format(self.ui.horizontalSlider_inter.value() / 100))

    def btn_tx_config_send_clicked_cb(self) -> None:
        if self.get_tx_params():
            return
        if self.txRegs.gen_regs():
            return
        self.txRegs.print()
        cmd = self.txRegs.gen_cmd()
        b = const.cfg.CTRL_HEAD + cmd + supportFuncs.check_sum(cmd, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL
        self.socketThread.udp_socket.sendto(b, self.socketThread.udp_remote_addr)

    def btn_rx_config_send_clicked_cb(self) -> None:
        if self.get_rx_params():
            return
        if self.rxRegs.gen_regs():
            return
        self.rxRegs.print()
        cmd = self.rxRegs.gen_cmd()
        b = const.cfg.CTRL_HEAD + cmd + supportFuncs.check_sum(cmd, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL
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
        if idx == const.FuncMode.ModeRadar.value:
            self.btn_radar_validate_params_clicked_cb()

    def radio_btn_comm_mode_toggled_cb(self, status: bool) -> None:
        self.funcComm.rMode = status

    def btn_comm_select_img_cb(self) -> None:
        filePath = QFileDialog.getOpenFileName(self, "load image", "", "*.jpg, *.png")
        if filePath[0] == "":
            return
        if self.funcComm.set_img(filePath[0]):
            print("debug: get img error")
            return
        self.funcComm.tPicID += 1
        scaledPix = self.funcComm.tPixmap.scaled(self.ui.label_commImgT.width(), self.ui.label_commImgT.height(), Qt.AspectRatioMode.KeepAspectRatio, Qt.TransformationMode.SmoothTransformation)
        self.ui.label_commImgT.setPixmap(scaledPix)
        self.ui.label_commImgT.setScaledContents(False)

    def btn_comm_send_img_cb(self) -> None:
        if not const.COMM_LOOP_TEST:
            if self.funcComm.rMode:
                self.console_log("当前选择为接收模式，无法发送！")
                return
        if not self.funcComm.imgSelected:
            print("debug: img not selected")
            return
        self.funcComm.gen_img_code()
        self.funcComm.start_send()
        b = self.gen_tr_code() + self.lmx.gen_clk_code()
        self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)
        if const.COMM_LOOP_TEST:
            if not self.isRunning:
                self.btn_comm_recv_run_stop_cb()

    def btn_comm_send_text_cb(self) -> None:
        if not const.COMM_LOOP_TEST:
            if self.funcComm.rMode:
                self.console_log("当前选择为接收模式，无法发送！")
                return
        self.funcComm.set_text(self.ui.textEdit_commT.toPlainText())
        b = self.gen_tr_code() + self.lmx.gen_clk_code() + self.funcComm.gen_text_code()
        self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)
        if const.COMM_LOOP_TEST:
            if not self.isRunning:
                self.btn_comm_recv_run_stop_cb()

    def btn_comm_recv_run_stop_cb(self) -> None:
        if not const.COMM_LOOP_TEST:
            if not self.funcComm.rMode:
                return
        if self.isRunning:
            self.isRunning = False
            self.socketThread.receiving = False
            self.socketThread.terminate()
            self.lock_tab(status=True)
            self.ui.radioButton_commT.setEnabled(True)
            self.ui.radioButton_commR.setEnabled(True)
            self.console_log("通信模式：停止接收")
            b = const.CMD_OUTER_CLASS_STOP + b'\x00' * 5
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)
        else:
            self.runningMode = const.FuncMode.ModeComm
            self.isRunning = True
            self.socketThread.receiving = True
            self.socketThread.set_instant_mode()
            self.socketThread.start()
            # 工作于接收状态的芯片不可再用于发射，所有页面和模式切换全部锁住，直到用户手动停止
            self.lock_tab(allow=const.FuncMode.ModeComm.value)
            self.ui.radioButton_commT.setEnabled(False)
            self.ui.radioButton_commR.setEnabled(False)
            self.console_log("通信模式：开始接收")
            b = self.gen_tr_code() + self.lmx.gen_clk_code() + const.CMD_OUTER_CLASS_FUNC_COMM + struct.pack(">BI", funcComm.commParamsID.commRecv.value, 0)
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)

    def btn_comm_recv_clear_cb(self) -> None:
        self.ui.textEdit_commR.clear()
        self.funcComm.rText = ""

    def btn_radar_run_stop_clicked_cb(self) -> None:
        if self.isRunning:
            self.isRunning = False
            self.socketThread.receiving = False
            self.socketThread.terminate()
            self.lock_tab(status=True)
            self.console_log("雷达模式：停止")
            b = const.CMD_OUTER_CLASS_STOP + b'\x00' * 5
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)
        else:
            if self.btn_radar_validate_params_clicked_cb():
                return
            self.runningMode = const.FuncMode.ModeRadar
            self.isRunning = True
            self.funcRadar.resize()
            self.socketThread.receiving = True
            self.socketThread.set_complete_mode()
            self.socketThread.start()
            self.lock_tab(allow=const.FuncMode.ModeRadar.value)
            self.console_log("雷达模式：启动")
            b = self.gen_tr_code() + self.lmx.gen_clk_code() + self.funcRadar.gen_radar_code()
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)

    def btn_radar_validate_params_clicked_cb(self) -> bool:
        if self.radar_get_params():
            return True
        if self.radar_validate_params():
            return True
        self.radar_show_params()
        return False

    def btn_radar_process_params_apply_clicked_cb(self) -> None:
        cp_backup = copy.deepcopy(self.funcRadar.cp)
        try:
            self.funcRadar.cp.rangeFFTSize = int(self.ui.lineEdit_radarRangeFFTSize.text())
            self.funcRadar.cp.dopplerFFTSize = int(self.ui.lineEdit_radarDopplerFFTSize.text())
            self.funcRadar.cp.staticClutterRemoval = self.ui.checkBox_radarSCR.isChecked()
        except (ValueError, TypeError):
            self.console_log("雷达参数获取出错，格式不正确")
            self.funcRadar.cp = cp_backup
        if self.radar_validate_params():
            return
        self.radar_show_params()

    def btn_inter_scan_cb(self) -> None:
        self.funcInter.start_scan()
        self.runningMode = const.FuncMode.ModeInter
        self.console_log("对抗模式：开始扫频")
        self.lock_tab(allow=const.FuncMode.ModeInter.value)
        self.socketThread.receiving = True
        self.socketThread.set_instant_mode()
        self.socketThread.start()

    def btn_inter_run_stop_cb(self) -> None:
        if self.isRunning:
            self.isRunning = False
            self.lock_tab(status=True)
            self.console_log("对抗模式：停止干扰")
            self.ui.horizontalSlider_inter.setEnabled(True)
            b = const.CMD_OUTER_CLASS_STOP + b'\x00' * 5
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)
        else:
            self.runningMode = const.FuncMode.ModeInter
            self.isRunning = True
            self.lock_tab(allow=const.FuncMode.ModeInter.value)
            self.console_log("对抗模式：启动干扰")
            self.funcInter.interFreqGHz = self.interFreq * 1e-9
            self.ui.horizontalSlider_inter.setEnabled(False)
            self.ui.horizontalSlider_freq.setValue(self.interFreq * 1e-7)
            b = self.gen_tr_code() + self.lmx.gen_clk_code() + self.funcInter.gen_inter_code_jamming()
            self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)

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

    def thread_socket_establish_signal_call_back(self, signal: bool) -> None:
        if not signal:
            self.console_log("网口设置错误或未连接下位机，UDP未建立！")

    def thread_socket_cplt_signal_call_back(self) -> None:
        if self.runningMode == const.FuncMode.ModeComm:
            if self.funcComm.unpack(self.bytesData):
                print("debug: comm unpack error")
                return
            if self.funcComm.currentType == "img":
                img = self.funcComm.rPicCanvas.convert("RGB")
                w, h = img.size
                qImg = QImage(img.tobytes(), w, h, w * 3, QImage.Format.Format_BGR888)
                pix = QPixmap.fromImage(qImg)
                scaledPix = pix.scaled(self.ui.label_commImgR.width(), self.ui.label_commImgR.height(), Qt.AspectRatioMode.KeepAspectRatio, Qt.TransformationMode.SmoothTransformation)
                self.ui.label_commImgR.setPixmap(scaledPix)
                self.ui.label_commImgR.setScaledContents(False)
            if self.funcComm.currentType == "txt":
                self.ui.textEdit_commR.setText(self.funcComm.rText)
        elif self.runningMode == const.FuncMode.ModeRadar:
            if self.funcRadar.unpack(self.bytesData):
                if self.socketThread.receiving:
                    print("debug: radar unpack error")
                return
            self.ui.label_radarFrameCount.setText("帧计数 {}".format(self.funcRadar.header.frame))
            self.ui.label_radarFrameDelay.setText("延迟 {} 帧".format(self.funcRadar.header.delay))
            self.ui.label_radarDt.setText("帧间隔 {}".format(self.socketThread.dt))
            self.funcRadar.process()
            # debug
            self.plotDataItem_IF.setData(self.funcRadar.raw[0, 0, :].real)
            # range profile
            self.plotDataItem_rangeProfile.setData(self.funcRadar.rangeAxis, np.abs(self.funcRadar.rangeProfile[0, :]))
            argmax = np.argmax(np.abs(self.funcRadar.rangeProfile[0, :]))
            self.rangeMark.setLabel("range: {:.2f}m".format(self.funcRadar.rangeAxis[argmax]))
            self.rangeMark.setPos(self.funcRadar.rangeAxis[argmax], np.abs(self.funcRadar.rangeProfile[0, argmax]))
            # rd map
            self.imageItem_rdMap.setImage(self.funcRadar.rdMap.T)
            self.imageItem_rdMap.setRect(QtCore.QRectF(0, -self.funcRadar.cp.vMax_m_s, self.funcRadar.cp.dMax_m, 2 * self.funcRadar.cp.vMax_m_s))
        elif self.runningMode == const.FuncMode.ModeInter:
            if self.funcInter.unpack(self.bytesData):
                print("debug: radar unpack error")
                return
            self.plotDataItem_interSpec.setData(self.funcInter.freqAxis, self.funcInter.fullSpec)
        else:
            print("debug: unknown running mode")

    def func_inter_scan_cb(self) -> None:
        self.ui.horizontalSlider_freq.setValue(int(self.funcInter.scanFreqGHz * 1e2))
        b = self.gen_tr_code() + self.lmx.gen_clk_code() + self.funcInter.gen_inter_code_scan()
        self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)

    def func_inter_cplt_cb(self, status: bool) -> None:
        self.socketThread.receiving = False
        self.socketThread.terminate()
        self.lock_tab(status=True)
        self.plotDataItem_interSpec.setData(self.funcInter.freqAxis, self.funcInter.fullSpec)
        self.interMark.setLabel("freq: {:.2f}GHz".format(self.funcInter.freqAxis[self.funcInter.argmax]))
        self.interMark.setPos(self.funcInter.freqAxis[self.funcInter.argmax], self.funcInter.fullSpec[self.funcInter.argmax])
        self.ui.label_interRecommandFreq.setText("自动分析信号频点：{:.2f}GHz".format(self.funcInter.freqAxis[self.funcInter.argmax]))
        self.ui.horizontalSlider_inter.setValue(self.funcInter.freqAxis[self.funcInter.argmax] * 1e2)
        self.ui.horizontalSlider_freq.setValue(self.funcInter.freqAxis[self.funcInter.argmax] * 1e2)
        self.console_log("对抗模式：扫频完成，已生成推荐值" if status else "对抗模式：扫频完成，出现异常")

    def func_comm_send_cb(self) -> None:
        b = self.funcComm.sendPacks[self.funcComm.tPicPointer]
        self.socketThread.udp_socket.sendto(const.cfg.CTRL_HEAD + b + supportFuncs.check_sum(b, const.GLOBAL_PROTO_ENDIAN) + const.cfg.CTRL_TAIL, self.socketThread.udp_remote_addr)

    def radar_get_params(self) -> bool:
        cp_backup = copy.deepcopy(self.funcRadar.cp)
        try:
            self.funcRadar.cp.staticClutterRemoval = self.ui.checkBox_radarSCR.isChecked()
            self.funcRadar.cp.startFrequency_MHz = self.freq * 1e-6
            self.funcRadar.cp.bandWidth_MHz = float(self.ui.lineEdit_radarBw.text())
            Tc = float(self.ui.lineEdit_radarTc.text())
            self.funcRadar.cp.rampTime_us = float(self.ui.lineEdit_radarRampTime.text())
            self.funcRadar.cp.idleTime_us = Tc - self.funcRadar.cp.rampTime_us
            self.funcRadar.cp.periodicity_ms = float(self.ui.lineEdit_radarPeriodicity.text())
            self.funcRadar.cp.ADCPoints = int(self.ui.lineEdit_radarADCPoints.text())
            self.funcRadar.sampleInterval = int(self.ui.comboBox_radarSampleInterval.currentText())
            self.funcRadar.cp.sampleRate_ksps = const.SAMPLE_RATE_MAX_MSPS * 1e3 / int(self.ui.comboBox_radarSampleInterval.currentText())
            self.funcRadar.cp.ADCDelay_us = float(self.ui.lineEdit_radarADCDelay.text())
            self.funcRadar.cp.chirpLoops = int(self.ui.lineEdit_radarChirps.text())
            self.funcRadar.cp.antTDM = int(self.ui.comboBox_radarTxAnt.currentText())
            self.funcRadar.cp.rx = int(self.ui.comboBox_radarRxAnt.currentText())
            self.funcRadar.cp.rangeFFTSize = int(self.ui.lineEdit_radarRangeFFTSize.text())
            self.funcRadar.cp.dopplerFFTSize = int(self.ui.lineEdit_radarDopplerFFTSize.text())
        except (ValueError, TypeError):
            self.console_log("雷达参数获取出错，格式不正确")
            self.funcRadar.cp = cp_backup
            return True
        return False

    def radar_validate_params(self) -> bool:
        ret = self.funcRadar.validate_params()
        self.console_log(self.funcRadar.cp.errMsg)  # 正确结果也会展示
        return ret

    def radar_show_params(self) -> None:
        if self.funcRadar.cp.errFlag == chirpParameters.CP_ERR:
            return
        decimal = self.ui.spinBox_radarParamDecimal.value()
        self.ui.lineEdit_radarSlope.setText(f"{self.funcRadar.cp.slope_MHzus:.{decimal}f}")
        self.ui.lineEdit_radarDResFreq.setText(f"{2 * self.funcRadar.cp.dRes_m * self.funcRadar.cp.slope_MHzus * 10 / 3:.{decimal}f}")
        self.ui.lineEdit_radarDRes.setText(f"{self.funcRadar.cp.dRes_m:.{decimal}f}")
        self.ui.lineEdit_radarDResCompute.setText(f"{self.funcRadar.cp.dResCompute_m:.{decimal}f}")
        self.ui.lineEdit_radarDMax.setText(f"{self.funcRadar.cp.dMax_m:.{decimal}f}")
        self.ui.lineEdit_radarADCBandwidth.setText(f"{self.funcRadar.cp.ADCBandWidth_MHz:.{decimal}f}")
        self.ui.lineEdit_radarDopplerSampleRate.setText(f"{self.funcRadar.cp.dopplerSampleRate_sps:.{decimal}f}")
        self.ui.lineEdit_radarVRes.setText(f"{self.funcRadar.cp.vRes_m_s:.{decimal}f}")
        self.ui.lineEdit_radarVResCompute.setText(f"{self.funcRadar.cp.vResCompute_m_s:.{decimal}f}")
        self.ui.lineEdit_radarVMax.setText(f"{self.funcRadar.cp.vMax_m_s:.{decimal}f}")

    def gen_tr_code(self) -> bytes:
        if self.get_tx_params():
            return b''
        if self.get_rx_params():
            return b''
        self.txRegs.gen_regs()
        self.rxRegs.gen_regs()
        return self.txRegs.gen_cmd() + self.rxRegs.gen_cmd()

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
        self.rxRegs.freq = self.freq
        self.rxRegs.idac1.IP = self.ui.spinBox_R_IDAC1_IP.value()
        self.rxRegs.idac1.IN = self.ui.spinBox_R_IDAC1_IN.value()
        self.rxRegs.idac1.QP = self.ui.spinBox_R_IDAC1_QP.value()
        self.rxRegs.idac1.QN = self.ui.spinBox_R_IDAC1_QN.value()
        self.rxRegs.idac2.IP = self.ui.spinBox_R_IDAC2_IP.value()
        self.rxRegs.idac2.IN = self.ui.spinBox_R_IDAC2_IN.value()
        self.rxRegs.idac2.QP = self.ui.spinBox_R_IDAC2_QP.value()
        self.rxRegs.idac2.QN = self.ui.spinBox_R_IDAC2_QN.value()
        return False

    def lock_tab(self, allow: int = -1, status: bool = False) -> None:
        for i in range(const.FuncMode.ModeCount.value):
            if i == allow:
                continue
            self.ui.tabWidget.setTabEnabled(i, status)

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
