# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_fir_samples_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_fir_samples_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_fir_samples_TDATA_WIDTH}
  ipgui::add_param $IPINST -name "LEDS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIVIDER_FACTOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_SAMPLE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DIVIDER_FACTOR { PARAM_VALUE.DIVIDER_FACTOR } {
	# Procedure called to update DIVIDER_FACTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIVIDER_FACTOR { PARAM_VALUE.DIVIDER_FACTOR } {
	# Procedure called to validate DIVIDER_FACTOR
	return true
}

proc update_PARAM_VALUE.INPUT_SAMPLE_WIDTH { PARAM_VALUE.INPUT_SAMPLE_WIDTH } {
	# Procedure called to update INPUT_SAMPLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_SAMPLE_WIDTH { PARAM_VALUE.INPUT_SAMPLE_WIDTH } {
	# Procedure called to validate INPUT_SAMPLE_WIDTH
	return true
}

proc update_PARAM_VALUE.LEDS_WIDTH { PARAM_VALUE.LEDS_WIDTH } {
	# Procedure called to update LEDS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LEDS_WIDTH { PARAM_VALUE.LEDS_WIDTH } {
	# Procedure called to validate LEDS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_fir_samples_TDATA_WIDTH { PARAM_VALUE.C_fir_samples_TDATA_WIDTH } {
	# Procedure called to update C_fir_samples_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_fir_samples_TDATA_WIDTH { PARAM_VALUE.C_fir_samples_TDATA_WIDTH } {
	# Procedure called to validate C_fir_samples_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_fir_samples_TDATA_WIDTH { MODELPARAM_VALUE.C_fir_samples_TDATA_WIDTH PARAM_VALUE.C_fir_samples_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_fir_samples_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_fir_samples_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.LEDS_WIDTH { MODELPARAM_VALUE.LEDS_WIDTH PARAM_VALUE.LEDS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LEDS_WIDTH}] ${MODELPARAM_VALUE.LEDS_WIDTH}
}

proc update_MODELPARAM_VALUE.DIVIDER_FACTOR { MODELPARAM_VALUE.DIVIDER_FACTOR PARAM_VALUE.DIVIDER_FACTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIVIDER_FACTOR}] ${MODELPARAM_VALUE.DIVIDER_FACTOR}
}

proc update_MODELPARAM_VALUE.INPUT_SAMPLE_WIDTH { MODELPARAM_VALUE.INPUT_SAMPLE_WIDTH PARAM_VALUE.INPUT_SAMPLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_SAMPLE_WIDTH}] ${MODELPARAM_VALUE.INPUT_SAMPLE_WIDTH}
}

