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
from PySide6.QtWidgets import QApplication, QWidget, QVBoxLayout

import const
import frameData
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

        # threads
        self.socketThread = socketThread.SocketThread(self)

        # vars
        self.bytesData = b''
        self.isRunning = False
        self.frameData = frameData.FrameData()
        self.chirpParameters = chirpParameters.ChirpParameterHandler()
        self.txIdx = const.DEF_TX_IDX
        self.calDelay = const.DEF_CAL_DELAY
        self.sampleInterval = 1

        # plots
        self.plotIFChirpIdx = 0
        self.plotWidget_IFList = []
        self.plotDataItem_IFList = []
        self.plotWidget_specList = []
        self.plotDataItem_specList = []
        for i in range(const.RX_NUMS):
            vl = self.findChild(QVBoxLayout, "verticalLayout_ch" + str(i + 1) + "IF")
            w, d = graph.init_plot(vl)
            self.plotWidget_IFList.append(w)
            self.plotDataItem_IFList.append(d)
            graph.init_plot_axis(w)

            vl = self.findChild(QVBoxLayout, "verticalLayout_ch" + str(i + 1) + "spec")
            w, d = graph.init_plot(vl)
            self.plotWidget_specList.append(w)
            self.plotDataItem_specList.append(d)
            graph.init_plot_axis(w)

        self.plotWidget_chPlotIF, self.plotDataItem_chPlotIF = graph.init_plot(self.ui.verticalLayout_chPlotIF)
        graph.init_plot_axis(self.plotWidget_chPlotIF)
        self.plotWidget_chPlotSpec, self.plotDataItem_chPlotSpec = graph.init_plot(self.ui.verticalLayout_chPlotSpec)
        graph.init_plot_axis(self.plotWidget_chPlotSpec)
        self.rangeMark = pg.TargetItem(pos=(10, 0), size=30, symbol='arrow_down', movable=False, pen='#00FF00')
        self.rangeMark.setLabel("")
        self.plotWidget_chPlotSpec.addItem(self.rangeMark)

        # signals and slots
        self.ui.pushButton_run.clicked.connect(self.btn_run_call_back)
        self.ui.pushButton_stop.clicked.connect(self.btn_stop_call_back)
        self.ui.pushButton_processParametersApply.clicked.connect(self.btn_process_parameters_apply_call_back)
        self.ui.spinBox_calDelay.valueChanged.connect(self.btn_send_dynamic_call_back)
        self.ui.comboBox_IFPlotChirp.currentIndexChanged.connect(self.combobox_if_plot_chirp_current_idx_changed_call_back)
        self.ui.comboBox_sampleInterval.currentIndexChanged.connect(self.combobox_sample_interval_current_idx_changed_call_back)
        self.socketThread.checker.connectSig.connect(self.socket_thread_checker_connected_call_back)
        self.socketThread.establishSig.connect(self.thread_socket_establish_signal_call_back)
        self.socketThread.cpltSig.connect(self.thread_socket_cplt_signal_call_back)

        # init
        for i in range(const.RX_NUMS):
            self.ui.comboBox_plotCh.addItem(str(i + 1))
        cnt = 1
        while cnt < const.MAX_SAMPLE_INTERVAL:
            self.ui.comboBox_sampleInterval.addItem(str(cnt))
            cnt += 4
        self.chirpParameters.languageCfgFileFolder = "./locales"
        self.chirpParameters.set_language(0)  # zh_CN
        for i in range(const.TX_NUMS_ALL):
            self.ui.comboBox_TxIdx.addItem(str(i + 1))
        self.chirpParameters.set_default()
        self.chirpParameters.staticClutterRemoval = False
        self.chirpParameters.startFrequency_MHz = const.DEF_START_FREQ_MHZ
        self.chirpParameters.bandWidth_MHz = const.DEF_BW_MHZ
        self.chirpParameters.idleTime_us = const.DEF_TC_US - const.DEF_RAMP_TIME_US
        self.chirpParameters.rampTime_us = const.DEF_RAMP_TIME_US
        self.chirpParameters.periodicity_ms = const.DEF_FRAME_PERIOD_MS
        self.chirpParameters.ADCPoints = const.DEF_ADC_POINTS
        self.chirpParameters.sampleRate_ksps = const.DEF_SAMPLE_RATE_MSPS * 1e3
        self.chirpParameters.ADCDelay_us = const.DEF_ADC_DELAY
        self.chirpParameters.chirpLoops = const.DEF_CHIRPS
        self.chirpParameters.iqSample = False
        self.chirpParameters.antTDM = const.TX_NUMS_USING
        self.chirpParameters.rx = const.RX_NUMS
        self.chirpParameters.rangeFFTSize = self.chirpParameters.ADCPoints
        self.chirpParameters.dopplerFFTSize = self.chirpParameters.chirpLoops
        self.chirpParameters.cfarEnabled = False
        self.combobox_if_plot_chirp_reset()
        self.frameData.resize(self.chirpParameters)
        self.socketThread.bind_udp()

    def keyPressEvent(self, event: PySide6.QtGui.QKeyEvent) -> None:
        if event.key() == Qt.Key.Key_F8:
            pass

    def btn_run_call_back(self) -> None:
        if self.transmit_all_config():
            return
        self.isRunning = True
        self.socketThread.receiving = True
        self.socketThread.start()
        self.ui.pushButton_run.setEnabled(False)
        self.ui.pushButton_stop.setEnabled(True)

    def btn_stop_call_back(self) -> None:
        self.isRunning = False
        self.socketThread.receiving = False
        self.ui.pushButton_run.setEnabled(True)
        self.ui.pushButton_stop.setEnabled(False)
        # s = "{{{mode:".encode() + struct.pack(">I", WORK_MODE_STOP) + "}}}".encode()
        # self.socketThread.udp_socket.sendto(s, self.socketThread.udp_remote_addr)

    def btn_send_dynamic_call_back(self) -> None:
        if self.isRunning:
            if self.load_dynamic_parameters():
                return
            self.transmit_dynamic_config()

    def btn_process_parameters_apply_call_back(self) -> bool:
        try:
            rFFTSize = int(self.ui.lineEdit_rangeFFTSize.text())
            dFFTSize = int(self.ui.lineEdit_dopplerFFTSize.text())
        except ValueError:
            self.console_log("输入有误，检查输入参数")
            return True
        if not supportFuncs.is_power_of_n(val=rFFTSize, n=2) or not supportFuncs.is_power_of_n(val=dFFTSize, n=2):
            self.console_log("FFT点数必须是2的整次幂")
            return True
        if rFFTSize < self.chirpParameters.ADCPoints or dFFTSize < self.chirpParameters.chirpLoops:
            self.console_log("FFT点数不能小于采样数")
            return True
        self.chirpParameters.rangeFFTSize = rFFTSize
        self.chirpParameters.dopplerFFTSize = dFFTSize
        const.cfg.R_FFT_SIZE = rFFTSize
        const.cfg.D_FFT_SIZE = dFFTSize
        const.cfg.refresh_passive_values()
        return False

    def combobox_if_plot_chirp_reset(self) -> None:
        self.ui.comboBox_IFPlotChirp.clear()
        for i in range(self.chirpParameters.chirpLoops):
            self.ui.comboBox_IFPlotChirp.addItem(str(i))

    def combobox_if_plot_chirp_current_idx_changed_call_back(self) -> None:
        self.plotIFChirpIdx = self.ui.comboBox_IFPlotChirp.currentIndex()

    def combobox_sample_interval_current_idx_changed_call_back(self) -> None:
        self.sampleInterval = int(self.ui.comboBox_sampleInterval.currentText())

    def load_parameters(self) -> bool:
        paramCopy = copy.deepcopy(self.chirpParameters)
        try:
            txIdx = self.ui.comboBox_TxIdx.currentIndex() + 1
            self.chirpParameters.bandWidth_MHz = int(self.ui.lineEdit_bandwidth.text())
            self.chirpParameters.chirpLoops = int(self.ui.lineEdit_chirpLoops.text())
            self.chirpParameters.rampTime_us = int(self.ui.lineEdit_rampTime.text())
            self.chirpParameters.Tc_us = int(self.ui.lineEdit_Tc.text())
            self.chirpParameters.ADCDelay_us = int(self.ui.lineEdit_ADCDelay.text())
            self.chirpParameters.periodicity_ms = int(self.ui.lineEdit_framePeriodicity.text())
            self.chirpParameters.ADCPoints = int(self.ui.lineEdit_ADCPoints.text())
            self.chirpParameters.idleTime_us = self.chirpParameters.Tc_us - self.chirpParameters.rampTime_us
            self.chirpParameters.sampleRate_ksps = 1e3 * const.DEF_SAMPLE_RATE_MSPS / float(self.ui.comboBox_sampleInterval.currentText())
        except ValueError:
            self.console_log("输入有误，检查输入参数")
            self.chirpParameters = paramCopy
            return True

        if self.load_dynamic_parameters():
            return True

        if self.validate_parameters():
            self.chirpParameters = paramCopy
            return True
        self.combobox_if_plot_chirp_reset()
        self.txIdx = txIdx
        const.cfg.ADC_SAMPLES = self.chirpParameters.ADCPoints
        const.cfg.CHIRPS = self.chirpParameters.chirpLoops
        const.cfg.refresh_passive_values()
        return False

    def load_dynamic_parameters(self) -> bool:
        try:
            calDelay = int(self.ui.spinBox_calDelay.text())
        except ValueError:
            self.console_log("输入有误，检查输入参数")
            return True
        self.calDelay = calDelay
        return False

    def validate_parameters(self) -> bool:
        self.chirpParameters.compute_and_validate()
        self.show_calculated_config()
        if self.chirpParameters.errFlag == chirpParameters.CP_ERR:
            self.console_log(self.chirpParameters.errMsg)
            return True
        else:
            print("debug: ", self.chirpParameters.gen_description())
            return False

    def transmit_all_config(self) -> bool:
        if self.btn_process_parameters_apply_call_back():
            return True
        if self.load_parameters():
            return True

        s = "{{{".encode()
        s += "txIdx".encode() + const.COLON_B + struct.pack(">I", self.txIdx) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.bandWidth_MHz.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.bandWidth_MHz) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.chirpLoops.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.chirpLoops) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.rampTime_us.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.rampTime_us) + const.COMMA_B
        s += "chirpPeriodicity".encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.Tc_us) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.ADCDelay_us.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.ADCDelay_us) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.periodicity_ms.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.periodicity_ms) + const.COMMA_B
        s += chirpParameters.ChirpParameterString.ADCPoints.encode() + const.COLON_B + struct.pack(">I", self.chirpParameters.ADCPoints) + const.COMMA_B
        s += "sampleInterval".encode() + const.COLON_B + struct.pack(">I", self.sampleInterval) + const.COMMA_B
        s += self.gen_dynamic_config()
        s += "cmdType".encode() + const.COLON_B + struct.pack(">I", const.STATIC_CMD) + const.COMMA_B
        s = s[:-1]  # discard the last ","
        s += "}}}".encode()

        self.frameData.resize(self.chirpParameters)

        self.console_log("发送全部配置")
        print("debug: ", s)
        self.socketThread.udp_socket.sendto(s, self.socketThread.udp_remote_addr)
        return False

    def gen_dynamic_config(self) -> bytes:
        s = "CalDelay".encode() + const.COLON_B + struct.pack(">I", self.calDelay) + const.COMMA_B
        return s

    def transmit_dynamic_config(self) -> None:
        s = "{{{".encode()
        s += self.gen_dynamic_config()
        s += "cmdType".encode() + const.COLON_B + struct.pack(">I", const.DYNAMIC_CMD) + const.COMMA_B
        s = s[:-1]  # discard the last ","
        s += "}}}".encode()
        # self.console_log("发送动态配置")
        # print("debug: ", s)
        self.socketThread.udp_socket.sendto(s, self.socketThread.udp_remote_addr)

    def show_calculated_config(self) -> None:
        self.ui.lineEdit_slope.setText("{:.2f}".format(self.chirpParameters.slope_MHzus))
        self.ui.lineEdit_ADCBandwidth.setText("{:.2f}".format(self.chirpParameters.ADCBandWidth_MHz))
        self.ui.lineEdit_dResFreq.setText("{:.2f}".format(2 * self.chirpParameters.dRes_m * self.chirpParameters.slope_MHzus * 10 / 3))
        self.ui.lineEdit_dopplerSampleRate.setText("{:.2f}".format(self.chirpParameters.dopplerSampleRate_sps))
        self.ui.lineEdit_dRes.setText("{:.2f}".format(self.chirpParameters.dRes_m))
        self.ui.lineEdit_vRes.setText("{:.2f}".format(self.chirpParameters.vRes_m_s))
        self.ui.lineEdit_dResCompute.setText("{:.2f}".format(self.chirpParameters.dResCompute_m))
        self.ui.lineEdit_vResCompute.setText("{:.2f}".format(self.chirpParameters.vResCompute_m_s))
        self.ui.lineEdit_dMax.setText("{:.2f}".format(self.chirpParameters.dMax_m))
        self.ui.lineEdit_vMax.setText("{:.2f}".format(self.chirpParameters.vMax_m_s))

    def console_log(self, t: str) -> None:
        self.ui.listWidget_console.addItem(t + " - " + time.ctime())
        self.ui.listWidget_console.setCurrentRow(self.ui.listWidget_console.count() - 1)

    def frame_info_update(self) -> None:
        self.ui.label_frameCount.setText(r"帧计数 " + str(self.frameData.header.frame))
        self.ui.label_frameDelay.setText(r"延迟 " + str(self.frameData.header.delay) + r" 帧")
        self.ui.label_dt.setText(r"帧间隔 " + self.socketThread.dt)

    def socket_thread_checker_connected_call_back(self, status: bool) -> None:
        if status:
            self.ui.label_ethStatus.setText("UDP已连接")
            if not self.isRunning:
                self.ui.pushButton_run.setEnabled(True)
                self.ui.pushButton_stop.setEnabled(False)
        else:
            self.ui.label_ethStatus.setText("UDP未连接")
            if self.isRunning:
                self.btn_stop_call_back()
            self.ui.pushButton_run.setEnabled(False)
            self.ui.pushButton_stop.setEnabled(False)

    def thread_socket_establish_signal_call_back(self, signal: bool) -> None:
        if not signal:
            self.console_log("网口设置错误或未连接下位机，UDP未建立！")

    def thread_socket_cplt_signal_call_back(self, status: bool) -> None:
        if self.frameData.unpack(self.bytesData):
            self.frame_info_update()
            print("debug: ", self.frameData.errMsg)
            return

        self.frame_info_update()
        self.frameData.process()
        # plot all
        if self.ui.tabWidget.currentIndex() == 0:
            for ch in range(self.chirpParameters.rx):
                self.plotDataItem_IFList[ch].setData(self.frameData.raw[self.plotIFChirpIdx, ch].real)
                self.plotDataItem_specList[ch].setData(np.abs(self.frameData.radarCube[self.plotIFChirpIdx, ch]))
        elif self.ui.tabWidget.currentIndex() == 1:
            ch = self.ui.comboBox_plotCh.currentIndex()
            self.plotDataItem_chPlotIF.setData(self.frameData.raw[self.plotIFChirpIdx, ch].real)
            rp = np.abs(self.frameData.radarCube[0, ch])
            maxIdx = np.argmax(rp)
            self.plotDataItem_chPlotSpec.setData(rp)
            self.rangeMark.setPos((maxIdx, rp[maxIdx]))
            self.rangeMark.setLabel("{:.2f}m".format(self.chirpParameters.dResCompute_m * maxIdx))

    def closeEvent(self, event, /):
        self.socketThread.checker.terminate()
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
