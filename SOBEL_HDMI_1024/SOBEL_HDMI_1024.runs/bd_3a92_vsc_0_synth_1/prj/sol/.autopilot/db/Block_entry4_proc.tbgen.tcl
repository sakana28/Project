set moduleName Block_entry4_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Block_entry4_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ ColorMode int 8 regular {pointer 0}  }
	{ HwReg_ColorMode int 8 regular {fifo 1}  }
	{ HeightIn int 16 regular {pointer 0}  }
	{ HeightOut int 16 regular {pointer 0}  }
	{ LineRate int 32 regular {pointer 0}  }
	{ HwReg_LineRate int 32 regular {fifo 1}  }
	{ Width int 16 regular {pointer 0}  }
	{ ColorMode_vcr int 8 regular {fifo 1}  }
	{ HwReg_HeightIn_c12 int 11 regular {fifo 1}  }
	{ HwReg_Width_c14 int 11 regular {fifo 1}  }
	{ HwReg_HeightOut_c15 int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ColorMode", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_ColorMode", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HeightIn", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HeightOut", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "LineRate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_LineRate", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ColorMode_vcr", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_HeightIn_c12", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_Width_c14", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_HeightOut_c15", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ ColorMode sc_in sc_lv 8 signal 0 } 
	{ HwReg_ColorMode_din sc_out sc_lv 8 signal 1 } 
	{ HwReg_ColorMode_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ HwReg_ColorMode_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ HwReg_ColorMode_full_n sc_in sc_logic 1 signal 1 } 
	{ HwReg_ColorMode_write sc_out sc_logic 1 signal 1 } 
	{ HeightIn sc_in sc_lv 16 signal 2 } 
	{ HeightOut sc_in sc_lv 16 signal 3 } 
	{ LineRate sc_in sc_lv 32 signal 4 } 
	{ HwReg_LineRate_din sc_out sc_lv 32 signal 5 } 
	{ HwReg_LineRate_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ HwReg_LineRate_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ HwReg_LineRate_full_n sc_in sc_logic 1 signal 5 } 
	{ HwReg_LineRate_write sc_out sc_logic 1 signal 5 } 
	{ Width sc_in sc_lv 16 signal 6 } 
	{ ColorMode_vcr_din sc_out sc_lv 8 signal 7 } 
	{ ColorMode_vcr_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ ColorMode_vcr_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ ColorMode_vcr_full_n sc_in sc_logic 1 signal 7 } 
	{ ColorMode_vcr_write sc_out sc_logic 1 signal 7 } 
	{ HwReg_HeightIn_c12_din sc_out sc_lv 11 signal 8 } 
	{ HwReg_HeightIn_c12_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ HwReg_HeightIn_c12_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ HwReg_HeightIn_c12_full_n sc_in sc_logic 1 signal 8 } 
	{ HwReg_HeightIn_c12_write sc_out sc_logic 1 signal 8 } 
	{ HwReg_Width_c14_din sc_out sc_lv 11 signal 9 } 
	{ HwReg_Width_c14_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ HwReg_Width_c14_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ HwReg_Width_c14_full_n sc_in sc_logic 1 signal 9 } 
	{ HwReg_Width_c14_write sc_out sc_logic 1 signal 9 } 
	{ HwReg_HeightOut_c15_din sc_out sc_lv 11 signal 10 } 
	{ HwReg_HeightOut_c15_num_data_valid sc_in sc_lv 2 signal 10 } 
	{ HwReg_HeightOut_c15_fifo_cap sc_in sc_lv 2 signal 10 } 
	{ HwReg_HeightOut_c15_full_n sc_in sc_logic 1 signal 10 } 
	{ HwReg_HeightOut_c15_write sc_out sc_logic 1 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "ColorMode", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ColorMode", "role": "default" }} , 
 	{ "name": "HwReg_ColorMode_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_ColorMode", "role": "din" }} , 
 	{ "name": "HwReg_ColorMode_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_ColorMode", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_ColorMode_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_ColorMode", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_ColorMode_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_ColorMode", "role": "full_n" }} , 
 	{ "name": "HwReg_ColorMode_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_ColorMode", "role": "write" }} , 
 	{ "name": "HeightIn", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HeightIn", "role": "default" }} , 
 	{ "name": "HeightOut", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HeightOut", "role": "default" }} , 
 	{ "name": "LineRate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LineRate", "role": "default" }} , 
 	{ "name": "HwReg_LineRate_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HwReg_LineRate", "role": "din" }} , 
 	{ "name": "HwReg_LineRate_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_LineRate", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_LineRate_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_LineRate", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_LineRate_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_LineRate", "role": "full_n" }} , 
 	{ "name": "HwReg_LineRate_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_LineRate", "role": "write" }} , 
 	{ "name": "Width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Width", "role": "default" }} , 
 	{ "name": "ColorMode_vcr_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ColorMode_vcr", "role": "din" }} , 
 	{ "name": "ColorMode_vcr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ColorMode_vcr", "role": "num_data_valid" }} , 
 	{ "name": "ColorMode_vcr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ColorMode_vcr", "role": "fifo_cap" }} , 
 	{ "name": "ColorMode_vcr_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ColorMode_vcr", "role": "full_n" }} , 
 	{ "name": "ColorMode_vcr_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ColorMode_vcr", "role": "write" }} , 
 	{ "name": "HwReg_HeightIn_c12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c12", "role": "din" }} , 
 	{ "name": "HwReg_HeightIn_c12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c12", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_HeightIn_c12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c12", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_HeightIn_c12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c12", "role": "full_n" }} , 
 	{ "name": "HwReg_HeightIn_c12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c12", "role": "write" }} , 
 	{ "name": "HwReg_Width_c14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_Width_c14", "role": "din" }} , 
 	{ "name": "HwReg_Width_c14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c14", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_Width_c14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c14", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_Width_c14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c14", "role": "full_n" }} , 
 	{ "name": "HwReg_Width_c14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c14", "role": "write" }} , 
 	{ "name": "HwReg_HeightOut_c15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c15", "role": "din" }} , 
 	{ "name": "HwReg_HeightOut_c15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c15", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_HeightOut_c15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c15", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_HeightOut_c15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c15", "role": "full_n" }} , 
 	{ "name": "HwReg_HeightOut_c15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c15", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_entry4_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_ColorMode", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HwReg_ColorMode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HeightIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "HeightOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "LineRate", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_LineRate", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HwReg_LineRate_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Width", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorMode_vcr", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ColorMode_vcr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_HeightIn_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HwReg_HeightIn_c12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_Width_c14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HwReg_Width_c14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_HeightOut_c15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HwReg_HeightOut_c15_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_entry4_proc {
		ColorMode {Type I LastRead 0 FirstWrite -1}
		HwReg_ColorMode {Type O LastRead -1 FirstWrite 1}
		HeightIn {Type I LastRead 1 FirstWrite -1}
		HeightOut {Type I LastRead 1 FirstWrite -1}
		LineRate {Type I LastRead 1 FirstWrite -1}
		HwReg_LineRate {Type O LastRead -1 FirstWrite 1}
		Width {Type I LastRead 1 FirstWrite -1}
		ColorMode_vcr {Type O LastRead -1 FirstWrite 1}
		HwReg_HeightIn_c12 {Type O LastRead -1 FirstWrite 1}
		HwReg_Width_c14 {Type O LastRead -1 FirstWrite 1}
		HwReg_HeightOut_c15 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ColorMode { ap_none {  { ColorMode in_data 0 8 } } }
	HwReg_ColorMode { ap_fifo {  { HwReg_ColorMode_din fifo_port_we 1 8 }  { HwReg_ColorMode_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_ColorMode_fifo_cap fifo_update 0 2 }  { HwReg_ColorMode_full_n fifo_status 0 1 }  { HwReg_ColorMode_write fifo_data 1 1 } } }
	HeightIn { ap_none {  { HeightIn in_data 0 16 } } }
	HeightOut { ap_none {  { HeightOut in_data 0 16 } } }
	LineRate { ap_none {  { LineRate in_data 0 32 } } }
	HwReg_LineRate { ap_fifo {  { HwReg_LineRate_din fifo_port_we 1 32 }  { HwReg_LineRate_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_LineRate_fifo_cap fifo_update 0 2 }  { HwReg_LineRate_full_n fifo_status 0 1 }  { HwReg_LineRate_write fifo_data 1 1 } } }
	Width { ap_none {  { Width in_data 0 16 } } }
	ColorMode_vcr { ap_fifo {  { ColorMode_vcr_din fifo_port_we 1 8 }  { ColorMode_vcr_num_data_valid fifo_status_num_data_valid 0 2 }  { ColorMode_vcr_fifo_cap fifo_update 0 2 }  { ColorMode_vcr_full_n fifo_status 0 1 }  { ColorMode_vcr_write fifo_data 1 1 } } }
	HwReg_HeightIn_c12 { ap_fifo {  { HwReg_HeightIn_c12_din fifo_port_we 1 11 }  { HwReg_HeightIn_c12_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_HeightIn_c12_fifo_cap fifo_update 0 2 }  { HwReg_HeightIn_c12_full_n fifo_status 0 1 }  { HwReg_HeightIn_c12_write fifo_data 1 1 } } }
	HwReg_Width_c14 { ap_fifo {  { HwReg_Width_c14_din fifo_port_we 1 11 }  { HwReg_Width_c14_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_Width_c14_fifo_cap fifo_update 0 2 }  { HwReg_Width_c14_full_n fifo_status 0 1 }  { HwReg_Width_c14_write fifo_data 1 1 } } }
	HwReg_HeightOut_c15 { ap_fifo {  { HwReg_HeightOut_c15_din fifo_port_we 1 11 }  { HwReg_HeightOut_c15_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_HeightOut_c15_fifo_cap fifo_update 0 2 }  { HwReg_HeightOut_c15_full_n fifo_status 0 1 }  { HwReg_HeightOut_c15_write fifo_data 1 1 } } }
}
