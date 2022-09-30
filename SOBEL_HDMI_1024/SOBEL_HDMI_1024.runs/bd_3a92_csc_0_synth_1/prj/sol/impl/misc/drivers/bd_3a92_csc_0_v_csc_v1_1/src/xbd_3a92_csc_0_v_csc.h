// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBD_3A92_CSC_0_V_CSC_H
#define XBD_3A92_CSC_0_V_CSC_H

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
#include "xbd_3a92_csc_0_v_csc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Bd_3a92_csc_0_ctrl_BaseAddress;
} XBd_3a92_csc_0_v_csc_Config;
#endif

typedef struct {
    u64 Bd_3a92_csc_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_3a92_csc_0_v_csc;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_3a92_csc_0_v_csc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_3a92_csc_0_v_csc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_3a92_csc_0_v_csc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_3a92_csc_0_v_csc_ReadReg(BaseAddress, RegOffset) \
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
int XBd_3a92_csc_0_v_csc_Initialize(XBd_3a92_csc_0_v_csc *InstancePtr, u16 DeviceId);
XBd_3a92_csc_0_v_csc_Config* XBd_3a92_csc_0_v_csc_LookupConfig(u16 DeviceId);
int XBd_3a92_csc_0_v_csc_CfgInitialize(XBd_3a92_csc_0_v_csc *InstancePtr, XBd_3a92_csc_0_v_csc_Config *ConfigPtr);
#else
int XBd_3a92_csc_0_v_csc_Initialize(XBd_3a92_csc_0_v_csc *InstancePtr, const char* InstanceName);
int XBd_3a92_csc_0_v_csc_Release(XBd_3a92_csc_0_v_csc *InstancePtr);
#endif

void XBd_3a92_csc_0_v_csc_Start(XBd_3a92_csc_0_v_csc *InstancePtr);
u32 XBd_3a92_csc_0_v_csc_IsDone(XBd_3a92_csc_0_v_csc *InstancePtr);
u32 XBd_3a92_csc_0_v_csc_IsIdle(XBd_3a92_csc_0_v_csc *InstancePtr);
u32 XBd_3a92_csc_0_v_csc_IsReady(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_EnableAutoRestart(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_DisableAutoRestart(XBd_3a92_csc_0_v_csc *InstancePtr);

void XBd_3a92_csc_0_v_csc_Set_InVideoFormat(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_InVideoFormat(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_OutVideoFormat(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_OutVideoFormat(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_width(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_width(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_height(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_height(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ColStart(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ColStart(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ColEnd(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ColEnd(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_RowStart(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_RowStart(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_RowEnd(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_RowEnd(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K11(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K11(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K12(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K12(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K13(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K13(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K21(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K21(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K22(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K22(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K23(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K23(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K31(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K31(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K32(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K32(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K33(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K33(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ROffset(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ROffset(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_GOffset(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_GOffset(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_BOffset(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_BOffset(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ClampMin(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ClampMin(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ClipMax(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ClipMax(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K11_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K11_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K12_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K12_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K13_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K13_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K21_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K21_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K22_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K22_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K23_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K23_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K31_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K31_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K32_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K32_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_K33_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_K33_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ROffset_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ROffset_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_GOffset_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_GOffset_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_BOffset_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_BOffset_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ClampMin_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ClampMin_2(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_Set_ClipMax_2(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_3a92_csc_0_v_csc_Get_ClipMax_2(XBd_3a92_csc_0_v_csc *InstancePtr);

void XBd_3a92_csc_0_v_csc_InterruptGlobalEnable(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_InterruptGlobalDisable(XBd_3a92_csc_0_v_csc *InstancePtr);
void XBd_3a92_csc_0_v_csc_InterruptEnable(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Mask);
void XBd_3a92_csc_0_v_csc_InterruptDisable(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Mask);
void XBd_3a92_csc_0_v_csc_InterruptClear(XBd_3a92_csc_0_v_csc *InstancePtr, u32 Mask);
u32 XBd_3a92_csc_0_v_csc_InterruptGetEnabled(XBd_3a92_csc_0_v_csc *InstancePtr);
u32 XBd_3a92_csc_0_v_csc_InterruptGetStatus(XBd_3a92_csc_0_v_csc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
