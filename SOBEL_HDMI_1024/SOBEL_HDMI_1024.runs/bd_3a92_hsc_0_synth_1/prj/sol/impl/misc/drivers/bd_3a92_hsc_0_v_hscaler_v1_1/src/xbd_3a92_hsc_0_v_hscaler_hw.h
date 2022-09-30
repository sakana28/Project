// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// bd_3a92_hsc_0_CTRL
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          bit 9  - interrupt (Read)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/COR)
//          bit 0 - ap_done (Read/COR)
//          bit 1 - ap_ready (Read/COR)
//          others - reserved
// 0x0010 : Data signal of Height
//          bit 15~0 - Height[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of WidthIn
//          bit 15~0 - WidthIn[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of WidthOut
//          bit 15~0 - WidthOut[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0028 : Data signal of ColorMode
//          bit 7~0 - ColorMode[7:0] (Read/Write)
//          others  - reserved
// 0x002c : reserved
// 0x0030 : Data signal of PixelRate
//          bit 31~0 - PixelRate[31:0] (Read/Write)
// 0x0034 : reserved
// 0x0038 : Data signal of ColorModeOut
//          bit 7~0 - ColorModeOut[7:0] (Read/Write)
//          others  - reserved
// 0x003c : reserved
// 0x0800 ~
// 0x0bff : Memory 'hfltCoeff' (384 * 16b)
//          Word n : bit [15: 0] - hfltCoeff[2n]
//                   bit [31:16] - hfltCoeff[2n+1]
// 0x4000 ~
// 0x4fff : Memory 'phasesH' (1920 * 9b)
//          Word n : bit [ 8: 0] - phasesH[2n]
//                   bit [24:16] - phasesH[2n+1]
//                   others      - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_AP_CTRL           0x0000
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_GIE               0x0004
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_IER               0x0008
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_ISR               0x000c
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_HEIGHT_DATA       0x0010
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_HEIGHT_DATA       16
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_WIDTHIN_DATA      0x0018
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_WIDTHIN_DATA      16
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_WIDTHOUT_DATA     0x0020
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_WIDTHOUT_DATA     16
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_COLORMODE_DATA    0x0028
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_COLORMODE_DATA    8
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_PIXELRATE_DATA    0x0030
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_PIXELRATE_DATA    32
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_COLORMODEOUT_DATA 0x0038
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_BITS_COLORMODEOUT_DATA 8
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE    0x0800
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH    0x0bff
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_WIDTH_HFLTCOEFF        16
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_DEPTH_HFLTCOEFF        384
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_PHASESH_BASE      0x4000
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_ADDR_PHASESH_HIGH      0x4fff
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_WIDTH_PHASESH          9
#define XBD_3A92_HSC_0_V_HSCALER_BD_3A92_HSC_0_CTRL_DEPTH_PHASESH          1920

