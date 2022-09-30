// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xbd_3a92_vsc_0_v_vscaler.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBd_3a92_vsc_0_v_vscaler_CfgInitialize(XBd_3a92_vsc_0_v_vscaler *InstancePtr, XBd_3a92_vsc_0_v_vscaler_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress = ConfigPtr->Bd_3a92_vsc_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBd_3a92_vsc_0_v_vscaler_Start(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBd_3a92_vsc_0_v_vscaler_IsDone(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBd_3a92_vsc_0_v_vscaler_IsIdle(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBd_3a92_vsc_0_v_vscaler_IsReady(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBd_3a92_vsc_0_v_vscaler_EnableAutoRestart(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBd_3a92_vsc_0_v_vscaler_DisableAutoRestart(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBd_3a92_vsc_0_v_vscaler_Set_HeightIn(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_HEIGHTIN_DATA, Data);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_HeightIn(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_HEIGHTIN_DATA);
    return Data;
}

void XBd_3a92_vsc_0_v_vscaler_Set_Width(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_Width(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBd_3a92_vsc_0_v_vscaler_Set_HeightOut(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_HEIGHTOUT_DATA, Data);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_HeightOut(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_HEIGHTOUT_DATA);
    return Data;
}

void XBd_3a92_vsc_0_v_vscaler_Set_LineRate(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_LINERATE_DATA, Data);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_LineRate(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_LINERATE_DATA);
    return Data;
}

void XBd_3a92_vsc_0_v_vscaler_Set_ColorMode(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_COLORMODE_DATA, Data);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_ColorMode(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_COLORMODE_DATA);
    return Data;
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_BaseAddress(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_HighAddress(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_TotalBytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH - XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + 1);
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_BitWidth(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_WIDTH_VFLTCOEFF;
}

u32 XBd_3a92_vsc_0_v_vscaler_Get_vfltCoeff_Depth(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_DEPTH_VFLTCOEFF;
}

u32 XBd_3a92_vsc_0_v_vscaler_Write_vfltCoeff_Words(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH - XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XBd_3a92_vsc_0_v_vscaler_Read_vfltCoeff_Words(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH - XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + (offset + i)*4);
    }
    return length;
}

u32 XBd_3a92_vsc_0_v_vscaler_Write_vfltCoeff_Bytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH - XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XBd_3a92_vsc_0_v_vscaler_Read_vfltCoeff_Bytes(XBd_3a92_vsc_0_v_vscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_HIGH - XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress + XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_VFLTCOEFF_BASE + offset + i);
    }
    return length;
}

void XBd_3a92_vsc_0_v_vscaler_InterruptGlobalEnable(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_GIE, 1);
}

void XBd_3a92_vsc_0_v_vscaler_InterruptGlobalDisable(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_GIE, 0);
}

void XBd_3a92_vsc_0_v_vscaler_InterruptEnable(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_IER);
    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_IER, Register | Mask);
}

void XBd_3a92_vsc_0_v_vscaler_InterruptDisable(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_IER);
    XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBd_3a92_vsc_0_v_vscaler_InterruptClear(XBd_3a92_vsc_0_v_vscaler *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XBd_3a92_vsc_0_v_vscaler_WriteReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_ISR, Mask);
}

u32 XBd_3a92_vsc_0_v_vscaler_InterruptGetEnabled(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_IER);
}

u32 XBd_3a92_vsc_0_v_vscaler_InterruptGetStatus(XBd_3a92_vsc_0_v_vscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XBd_3a92_vsc_0_v_vscaler_ReadReg(InstancePtr->Bd_3a92_vsc_0_ctrl_BaseAddress, XBD_3A92_VSC_0_V_VSCALER_BD_3A92_VSC_0_CTRL_ADDR_ISR);
}

