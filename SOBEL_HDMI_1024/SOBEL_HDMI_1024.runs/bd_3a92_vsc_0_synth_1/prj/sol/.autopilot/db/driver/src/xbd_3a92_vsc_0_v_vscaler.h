// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBD_3A92_VSC_0_V_VSCALER_H
#define XBD_3A92_VSC_0_V_VSCALER_H

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
#include "xbd_3a92_vsc_0_v_vscaler_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Bd_3a92_vsc_0_ctrl_BaseAddress;
} XBd_3a92_vsc_0_v_vscaler_Config;
#endif

typedef struct {
    u64 Bd_3a92_vsc_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_3a92_vsc_0_v_vscaler;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_3a92_vsc_0_v_vscaler_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_3a92_vsc_0_v_vscaler_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_3a92_vsc_0_v_vscaler_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_3a92_vsc_0_v_vscaler_ReadReg(BaseAddress, RegOffset) \
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
int XBd_3a92_vsc_0_v_vscaler_Initialize(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u16 DeviceId);
XBd_3a92_vsc_0_v_vscaler_Config* XBd_3a92_vsc_0_v_vscaler_LookupConfig(u16 DeviceId);
int XBd_3a92_vsc_0_v_vscaler_CfgInitialize(XBd_3a92_vsc_0_v_vscaler *InstancePtr, XBd_3a92_vsc_0_v_vscaler_Config *ConfigPtr);
#else
int XBd_3a92_vsc_0_v_vscaler_Initialize(XBd_3a92_vsc_0_v_vscaler *InstancePtr, const char* InstanceName);
int XBd_3a92_vsc_0_v_vscaler_Release(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
#endif

void XBd_3a92_vsc_0_v_vscaler_Start(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_IsDone(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_IsIdle(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_IsReady(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_EnableAutoRestart(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_DisableAutoRestart(XBd_3a92_vsc_0_v_vscaler *InstancePtr);

void XBd_3a92_vsc_0_v_vscaler_Set_HeightIn(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data);
u32 XBd_3a92_vsc_0_v_vscaler_Get_HeightIn(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_Set_Width(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data);
u32 XBd_3a92_vsc_0_v_vscaler_Get_Width(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_Set_HeightOut(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data);
u32 XBd_3a92_vsc_0_v_vscaler_Get_HeightOut(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_Set_LineRate(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data);
u32 XBd_3a92_vsc_0_v_vscaler_Get_LineRate(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_Set_ColorMode(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data);
u32 XBd_3a92_vsc_0_v_vscaler_Get_ColorMode(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_BaseAddress(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_HighAddress(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_TotalBytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_BitWidth(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_Depth(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_Write_vfltCoeff_Words(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_3a92_vsc_0_v_vscaler_Read_vfltCoeff_Words(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_3a92_vsc_0_v_vscaler_Write_vfltCoeff_Bytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, char *data, int length);
u32 XBd_3a92_vsc_0_v_vscaler_Read_vfltCoeff_Bytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, char *data, int length);

void XBd_3a92_vsc_0_v_vscaler_InterruptGlobalEnable(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_InterruptGlobalDisable(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
void XBd_3a92_vsc_0_v_vscaler_InterruptEnable(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask);
void XBd_3a92_vsc_0_v_vscaler_InterruptDisable(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask);
void XBd_3a92_vsc_0_v_vscaler_InterruptClear(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask);
u32 XBd_3a92_vsc_0_v_vscaler_InterruptGetEnabled(XBd_3a92_vsc_0_v_vscaler *InstancePtr);
u32 XBd_3a92_vsc_0_v_vscaler_InterruptGetStatus(XBd_3a92_vsc_0_v_vscaler *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif