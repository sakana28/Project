// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xbd_3a92_ltr_0_v_letterbox.h"

extern XBd_3a92_ltr_0_v_letterbox_Config XBd_3a92_ltr_0_v_letterbox_ConfigTable[];

XBd_3a92_ltr_0_v_letterbox_Config *XBd_3a92_ltr_0_v_letterbox_LookupConfig(u16 DeviceId) {
	XBd_3a92_ltr_0_v_letterbox_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBD_3A92_LTR_0_V_LETTERBOX_NUM_INSTANCES; Index++) {
		if (XBd_3a92_ltr_0_v_letterbox_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBd_3a92_ltr_0_v_letterbox_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_3a92_ltr_0_v_letterbox_Initialize(XBd_3a92_ltr_0_v_letterbox *InstancePtr, u16 DeviceId) {
	XBd_3a92_ltr_0_v_letterbox_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_3a92_ltr_0_v_letterbox_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_3a92_ltr_0_v_letterbox_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

