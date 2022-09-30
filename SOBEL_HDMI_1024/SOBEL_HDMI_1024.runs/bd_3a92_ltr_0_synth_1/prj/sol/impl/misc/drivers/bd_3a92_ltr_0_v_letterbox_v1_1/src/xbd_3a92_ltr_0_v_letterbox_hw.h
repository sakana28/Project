// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// bd_3a92_ltr_0_CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of width
//        bit 15~0 - width[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of height
//        bit 15~0 - height[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of video_format
//        bit 15~0 - video_format[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of col_start
//        bit 15~0 - col_start[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of col_end
//        bit 15~0 - col_end[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of row_start
//        bit 15~0 - row_start[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of row_end
//        bit 15~0 - row_end[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of Y_R_value
//        bit 15~0 - Y_R_value[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of Cb_G_value
//        bit 15~0 - Cb_G_value[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of Cr_B_value
//        bit 15~0 - Cr_B_value[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL           0x00
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_GIE               0x04
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER               0x08
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ISR               0x0c
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_WIDTH_DATA        0x10
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_WIDTH_DATA        16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_HEIGHT_DATA       0x18
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_HEIGHT_DATA       16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_VIDEO_FORMAT_DATA 0x20
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_VIDEO_FORMAT_DATA 16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_START_DATA    0x28
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_COL_START_DATA    16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_END_DATA      0x30
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_COL_END_DATA      16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_START_DATA    0x38
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_ROW_START_DATA    16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_END_DATA      0x40
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_ROW_END_DATA      16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_Y_R_VALUE_DATA    0x48
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_Y_R_VALUE_DATA    16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CB_G_VALUE_DATA   0x50
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_CB_G_VALUE_DATA   16
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CR_B_VALUE_DATA   0x58
#define XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_BITS_CR_B_VALUE_DATA   16

