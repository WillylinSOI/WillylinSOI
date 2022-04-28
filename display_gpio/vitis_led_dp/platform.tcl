# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\vitis_led_dp\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\vitis_led_dp\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vitis_led_dp}\
-hw {C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\project_1\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led}

platform write
platform generate -domains 
platform active {vitis_led_dp}
bsp reload
platform generate
