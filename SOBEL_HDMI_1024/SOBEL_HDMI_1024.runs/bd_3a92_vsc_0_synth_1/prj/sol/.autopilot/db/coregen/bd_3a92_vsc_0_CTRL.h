// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/COR)
//         bit 0 - ap_done (Read/COR)
//         bit 1 - ap_ready (Read/COR)
//         others - reserved
// 0x010 : Data signal of HeightIn
//         bit 15~0 - HeightIn[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of Width
//         bit 15~0 - Width[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of HeightOut
//         bit 15~0 - HeightOut[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of LineRate
//         bit 31~0 - LineRate[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of ColorMode
//         bit 7~0 - ColorMode[7:0] (Read/Write)
//         others  - reserved
// 0x034 : reserved
// 0x800 ~
// 0xbff : Memory 'vfltCoeff' (384 * 16b)
//         Word n : bit [15: 0] - vfltCoeff[2n]
//                  bit [31:16] - vfltCoeff[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL        0x000
#define BD_3A92_VSC_0_CTRL_ADDR_GIE            0x004
#define BD_3A92_VSC_0_CTRL_ADDR_IER            0x008
#define BD_3A92_VSC_0_CTRL_ADDR_ISR            0x00c
#define BD_3A92_VSC_0_CTRL_ADDR_HEIGHTIN_DATA  0x010
#define BD_3A92_VSC_0_CTRL_BITS_HEIGHTIN_DATA  16
#define BD_3A92_VSC_0_CTRL_ADDR_WIDTH_DATA     0x018
#define BD_3A92_VSC_0_CTRL_BITS_WIDTH_DATA     16
#define BD_3A92_VSC_0_CTRL_ADDR_HEIGHTOUT_DATA 0x020
#define BD_3A92_VSC_0_CTRL_BITS_HEIGHTOUT_DATA 16
#define BD_3A92_VSC_0_CTRL_ADDR_LINERATE_DATA  0x028
#define BD_3A92_VSC_0_CTRL_BITS_LINERATE_DATA  32
#define BD_3A92_VSC_0_CTRL_ADDR_COLORMODE_DATA 0x030
#define BD_3A92_VSC_0_CTRL_BITS_COLORMODE_DATA 8
#define BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE 0x800
#define BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH 0xbff
#define BD_3A92_VSC_0_CTRL_WIDTH_VFLTCOEFF     16
#define BD_3A92_VSC_0_CTRL_DEPTH_VFLTCOEFF     384
