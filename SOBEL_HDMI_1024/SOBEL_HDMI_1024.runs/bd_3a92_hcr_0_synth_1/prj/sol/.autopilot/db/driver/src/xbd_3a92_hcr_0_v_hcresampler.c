// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xbd_3a92_hcr_0_v_hcresampler.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBd_3a92_hcr_0_v_hcresampler_CfgInitialize(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, XBd_3a92_hcr_0_v_hcresampler_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress = ConfigPtr->Bd_3a92_hcr_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBd_3a92_hcr_0_v_hcresampler_Start(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBd_3a92_hcr_0_v_hcresampler_IsDone(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBd_3a92_hcr_0_v_hcresampler_IsIdle(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBd_3a92_hcr_0_v_hcresampler_IsReady(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBd_3a92_hcr_0_v_hcresampler_EnableAutoRestart(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBd_3a92_hcr_0_v_hcresampler_DisableAutoRestart(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBd_3a92_hcr_0_v_hcresampler_Set_width(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_width(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_height(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_height(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_input_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_INPUT_VIDEO_FORMAT_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_input_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_INPUT_VIDEO_FORMAT_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_output_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_OUTPUT_VIDEO_FORMAT_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_output_video_format(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_OUTPUT_VIDEO_FORMAT_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_0_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_0_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_1_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_1_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_2_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_2_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_0_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_3_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_0_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_0_3_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_0_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_0(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_0_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_1_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_1(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_1_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_2_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_2(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_2_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_Set_coefs_1_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_3_DATA, Data);
}

u32 XBd_3a92_hcr_0_v_hcresampler_Get_coefs_1_3(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_COEFS_1_3_DATA);
    return Data;
}

void XBd_3a92_hcr_0_v_hcresampler_InterruptGlobalEnable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_GIE, 1);
}

void XBd_3a92_hcr_0_v_hcresampler_InterruptGlobalDisable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_GIE, 0);
}

void XBd_3a92_hcr_0_v_hcresampler_InterruptEnable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER);
    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER, Register | Mask);
}

void XBd_3a92_hcr_0_v_hcresampler_InterruptDisable(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER);
    XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBd_3a92_hcr_0_v_hcresampler_InterruptClear(XBd_3a92_hcr_0_v_hcresampler *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XBd_3a92_hcr_0_v_hcresampler_WriteReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_ISR, Mask);
}

u32 XBd_3a92_hcr_0_v_hcresampler_InterruptGetEnabled(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_IER);
}

u32 XBd_3a92_hcr_0_v_hcresampler_InterruptGetStatus(XBd_3a92_hcr_0_v_hcresampler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XBd_3a92_hcr_0_v_hcresampler_ReadReg(InstancePtr->Bd_3a92_hcr_0_ctrl_BaseAddress, XBD_3A92_HCR_0_V_HCRESAMPLER_BD_3A92_HCR_0_CTRL_ADDR_ISR);
}

