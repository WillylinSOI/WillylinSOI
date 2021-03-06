# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\gpio_led_system\_ide\scripts\debugger_gpio_led-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\gpio_led_system\_ide\scripts\debugger_gpio_led-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source D:/Xilinx/Vitis/2021.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 36755A" && level==0 && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-36755A-14730093-0"}
fpga -file C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led/gpio_led/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led/vitis_led_dp/export/vitis_led_dp/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led/vitis_led_dp/export/vitis_led_dp/sw/vitis_led_dp/boot/fsbl.elf
set bp_44_34_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_44_34_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led/gpio_led/Debug/gpio_led.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
