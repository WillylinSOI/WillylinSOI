# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\vitis_led\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\vitis_led\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vitis_led}\
-hw {C:\Users\willylin\Desktop\vivado_part\example\gpio_led\vitis_led\project_1\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/willylin/Desktop/vivado_part/example/gpio_led/vitis_led}

platform write
platform generate -domains 
platform active {vitis_led}
bsp reload
domain active {zynqmp_fsbl}
bsp reload
platform generate
domain active {standalone_domain}
bsp reload
domain active {standalone_domain}
bsp reload
platform generate -domains 
bsp reload
platform generate -domains 
platform active {vitis_led}
platform generate -domains 
platform active {vitis_led}
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynqmp_pmufw}
bsp reload
platform generate
platform config -remove-boot-bsp
platform write
platform config -create-boot-bsp -fsbl-target psu_cortexa53_0
platform write
platform generate -domains zynqmp_fsbl,zynqmp_pmufw 
