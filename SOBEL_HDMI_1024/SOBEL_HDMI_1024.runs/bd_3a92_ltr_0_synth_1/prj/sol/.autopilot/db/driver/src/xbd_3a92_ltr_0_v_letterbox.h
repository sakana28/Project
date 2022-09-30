// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBD_3A92_LTR_0_V_LETTERBOX_H
#define XBD_3A92_LTR_0_V_LETTERBOX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xbd_3a92_ltr_0_v_letterbox_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Bd_3a92_ltr_0_ctrl_BaseAddress;
} XBd_3a92_ltr_0_v_letterbox_Config;
#endif

typedef struct {
    u64 Bd_3a92_ltr_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_3a92_ltr_0_v_letterbox;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_3a92_ltr_0_v_letterbox_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_3a92_ltr_0_v_letterbox_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_3a92_ltr_0_v_letterbox_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_3a92_ltr_0_v_letterbox_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XBd_3a92_ltr_0_v_letterbox_Initialize(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u16 DeviceId);
XBd_3a92_ltr_0_v_letterbox_Config* XBd_3a92_ltr_0_v_letterbox_LookupConfig(u16 DeviceId);
int XBd_3a92_ltr_0_v_letterbox_CfgInitialize(XBd_3a92_ltr_0_v_letterbox *InstancePtr, XBd_3a92_ltr_0_v_letterbox_Config *ConfigPtr);
#else
int XBd_3a92_ltr_0_v_letterbox_Initialize(XBd_3a92_ltr_0_v_letterbox *InstancePtr, const char* InstanceName);
int XBd_3a92_ltr_0_v_letterbox_Release(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
#endif

void XBd_3a92_ltr_0_v_letterbox_Start(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
u32 XBd_3a92_ltr_0_v_letterbox_IsDone(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
u32 XBd_3a92_ltr_0_v_letterbox_IsIdle(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
u32 XBd_3a92_ltr_0_v_letterbox_IsReady(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_EnableAutoRestart(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_DisableAutoRestart(XBd_3a92_ltr_0_v_letterbox *InstancePtr);

void XBd_3a92_ltr_0_v_letterbox_Set_width(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_width(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_height(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_height(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_video_format(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_video_format(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_col_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_col_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_col_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_col_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_row_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_row_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_row_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_row_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_Y_R_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_Y_R_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_Cb_G_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_Cb_G_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_Set_Cr_B_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data);
u32 XBd_3a92_ltr_0_v_letterbox_Get_Cr_B_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr);

void XBd_3a92_ltr_0_v_letterbox_InterruptGlobalEnable(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_InterruptGlobalDisable(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
void XBd_3a92_ltr_0_v_letterbox_InterruptEnable(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask);
void XBd_3a92_ltr_0_v_letterbox_InterruptDisable(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask);
void XBd_3a92_ltr_0_v_letterbox_InterruptClear(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask);
u32 XBd_3a92_ltr_0_v_letterbox_InterruptGetEnabled(XBd_3a92_ltr_0_v_letterbox *InstancePtr);
u32 XBd_3a92_ltr_0_v_letterbox_InterruptGetStatus(XBd_3a92_ltr_0_v_letterbox *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
