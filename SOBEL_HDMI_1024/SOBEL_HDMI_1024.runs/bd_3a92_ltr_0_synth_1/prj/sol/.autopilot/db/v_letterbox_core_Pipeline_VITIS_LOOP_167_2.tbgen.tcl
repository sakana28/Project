set moduleName v_letterbox_core_Pipeline_VITIS_LOOP_167_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {v_letterbox_core_Pipeline_VITIS_LOOP_167_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ loopWidth int 16 regular {ap_stable 0} }
	{ srcYUV int 24 regular {fifo 0 volatile }  }
	{ loopStart int 16 regular {ap_stable 0} }
	{ loopEnd int 16 regular {ap_stable 0} }
	{ cmp116 int 1 regular {ap_stable 0} }
	{ cmp22_not int 1 regular  }
	{ cmp19_not int 1 regular  }
	{ p_0_2_0_0_0154 int 8 regular {ap_stable 0} }
	{ conv2_i_i int 8 regular {ap_stable 0} }
	{ Cb_G_value_load_cast int 8 regular {ap_stable 0} }
	{ Cr_B_value_load_cast int 8 regular {ap_stable 0} }
	{ outYUV int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "loopStart", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "loopEnd", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp116", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp22_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp19_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_0154", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_i_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Cb_G_value_load_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Cr_B_value_load_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ srcYUV_dout sc_in sc_lv 24 signal 1 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 1 } 
	{ srcYUV_read sc_out sc_logic 1 signal 1 } 
	{ outYUV_din sc_out sc_lv 24 signal 11 } 
	{ outYUV_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ outYUV_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ outYUV_full_n sc_in sc_logic 1 signal 11 } 
	{ outYUV_write sc_out sc_logic 1 signal 11 } 
	{ loopWidth sc_in sc_lv 16 signal 0 } 
	{ loopStart sc_in sc_lv 16 signal 2 } 
	{ loopEnd sc_in sc_lv 16 signal 3 } 
	{ cmp116 sc_in sc_lv 1 signal 4 } 
	{ cmp22_not sc_in sc_lv 1 signal 5 } 
	{ cmp19_not sc_in sc_lv 1 signal 6 } 
	{ p_0_2_0_0_0154 sc_in sc_lv 8 signal 7 } 
	{ conv2_i_i sc_in sc_lv 8 signal 8 } 
	{ Cb_G_value_load_cast sc_in sc_lv 8 signal 9 } 
	{ Cr_B_value_load_cast sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "srcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcYUV", "role": "dout" }} , 
 	{ "name": "srcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "num_data_valid" }} , 
 	{ "name": "srcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "fifo_cap" }} , 
 	{ "name": "srcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "empty_n" }} , 
 	{ "name": "srcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "read" }} , 
 	{ "name": "outYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outYUV", "role": "din" }} , 
 	{ "name": "outYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "num_data_valid" }} , 
 	{ "name": "outYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "fifo_cap" }} , 
 	{ "name": "outYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "full_n" }} , 
 	{ "name": "outYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "write" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "loopStart", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopStart", "role": "default" }} , 
 	{ "name": "loopEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopEnd", "role": "default" }} , 
 	{ "name": "cmp116", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp116", "role": "default" }} , 
 	{ "name": "cmp22_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp22_not", "role": "default" }} , 
 	{ "name": "cmp19_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp19_not", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_0154", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0154", "role": "default" }} , 
 	{ "name": "conv2_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_i_i", "role": "default" }} , 
 	{ "name": "Cb_G_value_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Cb_G_value_load_cast", "role": "default" }} , 
 	{ "name": "Cr_B_value_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Cr_B_value_load_cast", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_letterbox_core_Pipeline_VITIS_LOOP_167_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "loopStart", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "loopEnd", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp22_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp19_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_0154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "conv2_i_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "Cb_G_value_load_cast", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "Cr_B_value_load_cast", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outYUV_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_167_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_letterbox_core_Pipeline_VITIS_LOOP_167_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		srcYUV {Type I LastRead 1 FirstWrite -1}
		loopStart {Type I LastRead 0 FirstWrite -1}
		loopEnd {Type I LastRead 0 FirstWrite -1}
		cmp116 {Type I LastRead 0 FirstWrite -1}
		cmp22_not {Type I LastRead 0 FirstWrite -1}
		cmp19_not {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_0154 {Type I LastRead 0 FirstWrite -1}
		conv2_i_i {Type I LastRead 0 FirstWrite -1}
		Cb_G_value_load_cast {Type I LastRead 0 FirstWrite -1}
		Cr_B_value_load_cast {Type I LastRead 0 FirstWrite -1}
		outYUV {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loopWidth { ap_stable {  { loopWidth in_data 0 16 } } }
	srcYUV { ap_fifo {  { srcYUV_dout fifo_port_we 0 24 }  { srcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { srcYUV_fifo_cap fifo_update 0 5 }  { srcYUV_empty_n fifo_status 0 1 }  { srcYUV_read fifo_data 1 1 } } }
	loopStart { ap_stable {  { loopStart in_data 0 16 } } }
	loopEnd { ap_stable {  { loopEnd in_data 0 16 } } }
	cmp116 { ap_stable {  { cmp116 in_data 0 1 } } }
	cmp22_not { ap_none {  { cmp22_not in_data 0 1 } } }
	cmp19_not { ap_none {  { cmp19_not in_data 0 1 } } }
	p_0_2_0_0_0154 { ap_stable {  { p_0_2_0_0_0154 in_data 0 8 } } }
	conv2_i_i { ap_stable {  { conv2_i_i in_data 0 8 } } }
	Cb_G_value_load_cast { ap_stable {  { Cb_G_value_load_cast in_data 0 8 } } }
	Cr_B_value_load_cast { ap_stable {  { Cr_B_value_load_cast in_data 0 8 } } }
	outYUV { ap_fifo {  { outYUV_din fifo_port_we 1 24 }  { outYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { outYUV_fifo_cap fifo_update 0 5 }  { outYUV_full_n fifo_status 0 1 }  { outYUV_write fifo_data 1 1 } } }
}
