// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// bd_3a92_hcr_0_CTRL
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
// 0x20 : Data signal of input_video_format
//        bit 7~0 - input_video_format[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of output_video_format
//        bit 7~0 - output_video_format[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of coefs_0_0
//        bit 15~0 - coefs_0_0[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of coefs_0_1
//        bit 15~0 - coefs_0_1[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of coefs_0_2
//        bit 15~0 - coefs_0_2[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of coefs_0_3
//        bit 15~0 - coefs_0_3[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of coefs_1_0
//        bit 15~0 - coefs_1_0[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of coefs_1_1
//        bit 15~0 - coefs_1_1[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of coefs_1_2
//        bit 15~0 - coefs_1_2[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of coefs_1_3
//        bit 15~0 - coefs_1_3[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL                  0x00
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_GIE                      0x04
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER                      0x08
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_ISR                      0x0c
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_WIDTH_DATA               0x10
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_WIDTH_DATA               16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_HEIGHT_DATA              0x18
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_HEIGHT_DATA              16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_INPUT_VIDEO_FORMAT_DATA  0x20
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_INPUT_VIDEO_FORMAT_DATA  8
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_OUTPUT_VIDEO_FORMAT_DATA 0x28
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_OUTPUT_VIDEO_FORMAT_DATA 8
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_0_DATA           0x30
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_0_0_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_1_DATA           0x38
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_0_1_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_2_DATA           0x40
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_0_2_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_3_DATA           0x48
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_0_3_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_0_DATA           0x50
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_1_0_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_1_DATA           0x58
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_1_1_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_2_DATA           0x60
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_1_2_DATA           16
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_3_DATA           0x68
#define XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_BITS_COEFS_1_3_DATA           16

