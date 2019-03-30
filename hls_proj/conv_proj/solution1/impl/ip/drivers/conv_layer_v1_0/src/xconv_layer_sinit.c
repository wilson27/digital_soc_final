// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconv_layer.h"

extern XConv_layer_Config XConv_layer_ConfigTable[];

XConv_layer_Config *XConv_layer_LookupConfig(u16 DeviceId) {
	XConv_layer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONV_LAYER_NUM_INSTANCES; Index++) {
		if (XConv_layer_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConv_layer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConv_layer_Initialize(XConv_layer *InstancePtr, u16 DeviceId) {
	XConv_layer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConv_layer_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConv_layer_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

