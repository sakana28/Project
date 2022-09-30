// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xbd_3a92_ltr_0_v_letterbox.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBd_3a92_ltr_0_v_letterbox_CfgInitialize(XBd_3a92_ltr_0_v_letterbox *InstancePtr, XBd_3a92_ltr_0_v_letterbox_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress = ConfigPtr->Bd_3a92_ltr_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBd_3a92_ltr_0_v_letterbox_Start(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBd_3a92_ltr_0_v_letterbox_IsDone(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBd_3a92_ltr_0_v_letterbox_IsIdle(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBd_3a92_ltr_0_v_letterbox_IsReady(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBd_3a92_ltr_0_v_letterbox_EnableAutoRestart(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBd_3a92_ltr_0_v_letterbox_DisableAutoRestart(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBd_3a92_ltr_0_v_letterbox_Set_width(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_width(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_height(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_height(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_video_format(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_video_format(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_col_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_START_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_col_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_START_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_col_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_END_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_col_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_COL_END_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_row_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_START_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_row_start(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_START_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_row_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_END_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_row_end(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ROW_END_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_Y_R_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_Y_R_VALUE_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_Y_R_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_Y_R_VALUE_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_Cb_G_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CB_G_VALUE_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_Cb_G_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CB_G_VALUE_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_Set_Cr_B_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CR_B_VALUE_DATA, Data);
}

u32 XBd_3a92_ltr_0_v_letterbox_Get_Cr_B_value(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_CR_B_VALUE_DATA);
    return Data;
}

void XBd_3a92_ltr_0_v_letterbox_InterruptGlobalEnable(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_GIE, 1);
}

void XBd_3a92_ltr_0_v_letterbox_InterruptGlobalDisable(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_GIE, 0);
}

void XBd_3a92_ltr_0_v_letterbox_InterruptEnable(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER);
    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER, Register | Mask);
}

void XBd_3a92_ltr_0_v_letterbox_InterruptDisable(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER);
    XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBd_3a92_ltr_0_v_letterbox_InterruptClear(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XBd_3a92_ltr_0_v_letterbox_WriteReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ISR, Mask);
}

u32 XBd_3a92_ltr_0_v_letterbox_InterruptGetEnabled(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_IER);
}

u32 XBd_3a92_ltr_0_v_letterbox_InterruptGetStatus(XBd_3a92_ltr_0_v_letterbox *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XBd_3a92_ltr_0_v_letterbox_ReadReg(InstancePtr->Bd_3a92_ltr_0_ctrl_BaseAddress, XBD_3A92_LTR_0_V_LETTERBOX_BD_3A92_LTR_0_CTRL_ADDR_ISR);
}

