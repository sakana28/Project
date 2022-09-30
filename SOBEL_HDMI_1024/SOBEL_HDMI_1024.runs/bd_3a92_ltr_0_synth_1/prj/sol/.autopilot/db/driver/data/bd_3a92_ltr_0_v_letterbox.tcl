# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XBd_3a92_ltr_0_v_letterbox" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BD_3A92_LTR_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_3A92_LTR_0_CTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xbd_3a92_ltr_0_v_letterbox_g.c" "XBd_3a92_ltr_0_v_letterbox" \
        "DEVICE_ID" \
        "C_S_AXI_BD_3A92_LTR_0_CTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XBd_3a92_ltr_0_v_letterbox" \
        "DEVICE_ID" \
        "C_S_AXI_BD_3A92_LTR_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_3A92_LTR_0_CTRL_HIGHADDR"
}
