// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBD_3A92_HCR_0_V_HCRESAMPLER_H
#define XBD_3A92_HCR_0_V_HCRESAMPLER_H

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
#include "xbd_3a92_hcr_0_v_hcresampler_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Bd_3a92_hcr_0_ctrl_BaseAddress;
} XBd_3a92_hcr_0_v_hcresampler_Config;
#endif

typedef struct {
    u64 Bd_3a92_hcr_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_3a92_hcr_0_v_hcresampler;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_3a92_hcr_0_v_hcresampler_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_3a92_hcr_0_v_hcresampler_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_3a92_hcr_0_v_hcresampler_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_3a92_hcr_0_v_hcresampler_ReadReg(BaseAddress, RegOffset) \
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
int XBd_3a92_hcr_0_v_hcresampler_Initialize(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u16 DeviceId);
XBd_3a92_hcr_0_v_hcresampler_Config* XBd_3a92_hcr_0_v_hcresampler_LookupConfig(u16 DeviceId);
int XBd_3a92_hcr_0_v_hcresampler_CfgInitialize(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, XBd_3a92_hcr_0_v_hcresampler_Config *ConfigPtr);
#else
int XBd_3a92_hcr_0_v_hcresampler_Initialize(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, const char* InstanceName);
int XBd_3a92_hcr_0_v_hcresampler_Release(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
#endif

void XBd_3a92_hcr_0_v_hcresampler_Start(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
u32 XBd_3a92_hcr_0_v_hcresampler_IsDone(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
u32 XBd_3a92_hcr_0_v_hcresampler_IsIdle(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
u32 XBd_3a92_hcr_0_v_hcresampler_IsReady(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_EnableAutoRestart(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_DisableAutoRestart(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);

void XBd_3a92_hcr_0_v_hcresampler_Set_width(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_width(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_height(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_height(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_input_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_input_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_output_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_output_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data);
u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);

void XBd_3a92_hcr_0_v_hcresampler_InterruptGlobalEnable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_InterruptGlobalDisable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
void XBd_3a92_hcr_0_v_hcresampler_InterruptEnable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask);
void XBd_3a92_hcr_0_v_hcresampler_InterruptDisable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask);
void XBd_3a92_hcr_0_v_hcresampler_InterruptClear(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask);
u32 XBd_3a92_hcr_0_v_hcresampler_InterruptGetEnabled(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);
u32 XBd_3a92_hcr_0_v_hcresampler_InterruptGetStatus(XBd_3a92_hcr_0_v_hcresampler *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
