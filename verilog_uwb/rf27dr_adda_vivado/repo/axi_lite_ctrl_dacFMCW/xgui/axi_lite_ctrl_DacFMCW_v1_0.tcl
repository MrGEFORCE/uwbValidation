# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "C_S_AXI_CLK_KHZ"
  ipgui::add_param $IPINST -name "P_BASE0_ADDR"
  ipgui::add_param $IPINST -name "P_BASE1_ADDR"
  ipgui::add_param $IPINST -name "P_DATA_WIDTH"

}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CLK_KHZ { PARAM_VALUE.C_S_AXI_CLK_KHZ } {
	# Procedure called to update C_S_AXI_CLK_KHZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CLK_KHZ { PARAM_VALUE.C_S_AXI_CLK_KHZ } {
	# Procedure called to validate C_S_AXI_CLK_KHZ
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.P_BASE0_ADDR { PARAM_VALUE.P_BASE0_ADDR } {
	# Procedure called to update P_BASE0_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_BASE0_ADDR { PARAM_VALUE.P_BASE0_ADDR } {
	# Procedure called to validate P_BASE0_ADDR
	return true
}

proc update_PARAM_VALUE.P_BASE1_ADDR { PARAM_VALUE.P_BASE1_ADDR } {
	# Procedure called to update P_BASE1_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_BASE1_ADDR { PARAM_VALUE.P_BASE1_ADDR } {
	# Procedure called to validate P_BASE1_ADDR
	return true
}

proc update_PARAM_VALUE.P_DATA_WIDTH { PARAM_VALUE.P_DATA_WIDTH } {
	# Procedure called to update P_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_DATA_WIDTH { PARAM_VALUE.P_DATA_WIDTH } {
	# Procedure called to validate P_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CLK_KHZ { MODELPARAM_VALUE.C_S_AXI_CLK_KHZ PARAM_VALUE.C_S_AXI_CLK_KHZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CLK_KHZ}] ${MODELPARAM_VALUE.C_S_AXI_CLK_KHZ}
}

proc update_MODELPARAM_VALUE.P_BASE0_ADDR { MODELPARAM_VALUE.P_BASE0_ADDR PARAM_VALUE.P_BASE0_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_BASE0_ADDR}] ${MODELPARAM_VALUE.P_BASE0_ADDR}
}

proc update_MODELPARAM_VALUE.P_BASE1_ADDR { MODELPARAM_VALUE.P_BASE1_ADDR PARAM_VALUE.P_BASE1_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_BASE1_ADDR}] ${MODELPARAM_VALUE.P_BASE1_ADDR}
}

proc update_MODELPARAM_VALUE.P_DATA_WIDTH { MODELPARAM_VALUE.P_DATA_WIDTH PARAM_VALUE.P_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_DATA_WIDTH}] ${MODELPARAM_VALUE.P_DATA_WIDTH}
}

