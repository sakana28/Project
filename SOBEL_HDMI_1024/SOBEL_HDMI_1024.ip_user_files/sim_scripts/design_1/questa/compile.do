vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_28
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/v_tc_v6_2_4
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_iic_v2_1_2

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 questa_lib/msim/axi_gpio_v2_0_28
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap v_tc_v6_2_4 questa_lib/msim/v_tc_v6_2_4
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_iic_v2_1_2 questa_lib/msim/axi_iic_v2_1_2

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/design_1_axis_subset_converter_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_0/design_1_axis_subset_converter_1_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/design_1_rgb_to_yuv422_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_0/bd_3a92_smartconnect_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/bd_3a92_vsc_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/bd_3a92_hsc_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_3/bd_3a92_input_size_set_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/bd_3a92_ltr_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/bd_3a92_csc_0_sim_netlist.vhdl" \

vlog -work xlslice_v1_0_2 -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_6/sim/bd_3a92_proc_ss_ip_aresetn_0.v" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_7/sim/bd_3a92_vid_in_aresetn_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_9/bd_3a92_xbar_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_10/sim/bd_3a92_reset_sel_axis_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_11/sim/bd_3a92_rst_axis_0.vhd" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/bd_3a92_hcr_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/sim/bd_3a92.vhd" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_26/bd_3a92_auto_ss_slid_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_27/bd_3a92_auto_ss_slid_1_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_28/bd_3a92_auto_ss_slid_2_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_29/bd_3a92_auto_ss_slid_3_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_30/bd_3a92_auto_ss_slid_4_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_31/bd_3a92_auto_ss_slid_5_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_13/bd_3a92_m00_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_14/bd_3a92_m01_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_21/bd_3a92_auto_ss_slidr_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_15/bd_3a92_m02_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_22/bd_3a92_auto_ss_slidr_1_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_16/bd_3a92_m04_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_23/bd_3a92_auto_ss_slidr_2_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_17/bd_3a92_m05_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_24/bd_3a92_auto_ss_slidr_3_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_18/bd_3a92_m06_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_19/bd_3a92_m07_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_20/bd_3a92_m08_regslice_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_25/bd_3a92_auto_ss_slidr_4_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_CLK0_0/sim/design_1_rst_ps7_0_100M_CLK0_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_142M_0/sim/design_1_rst_ps7_0_142M_0.vhd" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/design_1_smartconnect_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/design_1_smartconnect_1_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/design_1_v_axi4s_vid_out_0_0_sim_netlist.vhdl" \

vcom -work v_tc_v6_2_4 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/3e14/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/fc4b/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/4e49" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_1/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_2/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_4/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_5/hdl/verilog" "+incdir+../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_iic_v2_1_2 -64 -93 \
"../../../../SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ipshared/eddf/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_zed_hdmi_iic_0_0/sim/design_1_zed_hdmi_iic_0_0.vhd" \
"../../../bd/design_1/ipshared/2d46/hdl/vhdl/zed_hdmi_out.vhd" \
"../../../bd/design_1/ip/design_1_zed_hdmi_out_0_0/sim/design_1_zed_hdmi_out_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sobel_v1_0_0_0/design_1_sobel_v1_0_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

