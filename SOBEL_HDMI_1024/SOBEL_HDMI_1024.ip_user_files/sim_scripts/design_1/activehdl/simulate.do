onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xilinx_vip -L xpm -L xil_defaultlib -L xlslice_v1_0_2 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_28 -L proc_sys_reset_v5_0_13 -L v_tc_v6_2_4 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L lib_pkg_v1_0_2 -L axi_iic_v2_1_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
