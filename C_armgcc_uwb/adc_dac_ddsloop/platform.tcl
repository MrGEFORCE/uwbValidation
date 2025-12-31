# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\A_FPGA\RFSOC\rf27dr_adda_vitis\adc_dac_ddsloop\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\A_FPGA\RFSOC\rf27dr_adda_vitis\adc_dac_ddsloop\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {adc_dac_ddsloop}\
-hw {E:\A_FPGA\RFSOC\rf27dr_adda_vitis\adc_dac_ddsloop.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/A_FPGA/RFSOC/rf27dr_adda_vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {lwip_udp_perf_server}
platform generate -domains 
platform active {adc_dac_ddsloop}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform generate
domain active {zynqmp_pmufw}
bsp reload
platform generate -domains 
