# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FIFO_RESET_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.FIFO_RESET_CNT { PARAM_VALUE.FIFO_RESET_CNT } {
	# Procedure called to update FIFO_RESET_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_RESET_CNT { PARAM_VALUE.FIFO_RESET_CNT } {
	# Procedure called to validate FIFO_RESET_CNT
	return true
}

proc update_PARAM_VALUE.MAX_SINGLE_BURST { PARAM_VALUE.MAX_SINGLE_BURST } {
	# Procedure called to update MAX_SINGLE_BURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SINGLE_BURST { PARAM_VALUE.MAX_SINGLE_BURST } {
	# Procedure called to validate MAX_SINGLE_BURST
	return true
}

proc update_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to update TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to validate TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.TDATA_WIDTH { MODELPARAM_VALUE.TDATA_WIDTH PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_WIDTH}] ${MODELPARAM_VALUE.TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FIFO_RESET_CNT { MODELPARAM_VALUE.FIFO_RESET_CNT PARAM_VALUE.FIFO_RESET_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_RESET_CNT}] ${MODELPARAM_VALUE.FIFO_RESET_CNT}
}

proc update_MODELPARAM_VALUE.MAX_SINGLE_BURST { MODELPARAM_VALUE.MAX_SINGLE_BURST PARAM_VALUE.MAX_SINGLE_BURST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_SINGLE_BURST}] ${MODELPARAM_VALUE.MAX_SINGLE_BURST}
}

