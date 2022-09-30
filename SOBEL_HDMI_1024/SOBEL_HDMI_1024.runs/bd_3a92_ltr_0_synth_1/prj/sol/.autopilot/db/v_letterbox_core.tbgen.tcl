set moduleName v_letterbox_core
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
set C_modelName {v_letterbox_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ srcYUV int 24 regular {fifo 0 volatile }  }
	{ height int 16 regular {pointer 0}  }
	{ width int 16 regular {pointer 0}  }
	{ video_format int 16 regular {pointer 0}  }
	{ col_start int 16 regular {pointer 0}  }
	{ col_end int 16 regular {pointer 0}  }
	{ row_start int 16 regular {pointer 0}  }
	{ row_end int 16 regular {pointer 0}  }
	{ Y_R_value int 16 regular {pointer 0}  }
	{ Cb_G_value int 16 regular {pointer 0}  }
	{ Cr_B_value int 16 regular {pointer 0}  }
	{ outYUV int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "video_format", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_start", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_end", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_start", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_end", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Y_R_value", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Cb_G_value", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Cr_B_value", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
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
	{ srcYUV_dout sc_in sc_lv 24 signal 0 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ srcYUV_read sc_out sc_logic 1 signal 0 } 
	{ height sc_in sc_lv 16 signal 1 } 
	{ width sc_in sc_lv 16 signal 2 } 
	{ video_format sc_in sc_lv 16 signal 3 } 
	{ col_start sc_in sc_lv 16 signal 4 } 
	{ col_end sc_in sc_lv 16 signal 5 } 
	{ row_start sc_in sc_lv 16 signal 6 } 
	{ row_end sc_in sc_lv 16 signal 7 } 
	{ Y_R_value sc_in sc_lv 16 signal 8 } 
	{ Cb_G_value sc_in sc_lv 16 signal 9 } 
	{ Cr_B_value sc_in sc_lv 16 signal 10 } 
	{ outYUV_din sc_out sc_lv 24 signal 11 } 
	{ outYUV_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ outYUV_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ outYUV_full_n sc_in sc_logic 1 signal 11 } 
	{ outYUV_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "srcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcYUV", "role": "dout" }} , 
 	{ "name": "srcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "num_data_valid" }} , 
 	{ "name": "srcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "fifo_cap" }} , 
 	{ "name": "srcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "empty_n" }} , 
 	{ "name": "srcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "read" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "video_format", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "video_format", "role": "default" }} , 
 	{ "name": "col_start", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_start", "role": "default" }} , 
 	{ "name": "col_end", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_end", "role": "default" }} , 
 	{ "name": "row_start", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "row_start", "role": "default" }} , 
 	{ "name": "row_end", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "row_end", "role": "default" }} , 
 	{ "name": "Y_R_value", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_R_value", "role": "default" }} , 
 	{ "name": "Cb_G_value", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Cb_G_value", "role": "default" }} , 
 	{ "name": "Cr_B_value", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Cr_B_value", "role": "default" }} , 
 	{ "name": "outYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outYUV", "role": "din" }} , 
 	{ "name": "outYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "num_data_valid" }} , 
 	{ "name": "outYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "fifo_cap" }} , 
 	{ "name": "outYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "full_n" }} , 
 	{ "name": "outYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_letterbox_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "srcYUV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_letterbox_core_Pipeline_VITIS_LOOP_167_2_fu_120", "Port" : "srcYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "video_format", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_R_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cb_G_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cr_B_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "outYUV", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_letterbox_core_Pipeline_VITIS_LOOP_167_2_fu_120", "Port" : "outYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_165_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_letterbox_core_Pipeline_VITIS_LOOP_167_2_fu_120", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_letterbox_core_Pipeline_VITIS_LOOP_167_2_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_letterbox_core {
		srcYUV {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		video_format {Type I LastRead 0 FirstWrite -1}
		col_start {Type I LastRead 0 FirstWrite -1}
		col_end {Type I LastRead 0 FirstWrite -1}
		row_start {Type I LastRead 0 FirstWrite -1}
		row_end {Type I LastRead 0 FirstWrite -1}
		Y_R_value {Type I LastRead 0 FirstWrite -1}
		Cb_G_value {Type I LastRead 0 FirstWrite -1}
		Cr_B_value {Type I LastRead 0 FirstWrite -1}
		outYUV {Type O LastRead -1 FirstWrite 2}}
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
]}

set Spec2ImplPortList { 
	srcYUV { ap_fifo {  { srcYUV_dout fifo_port_we 0 24 }  { srcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { srcYUV_fifo_cap fifo_update 0 5 }  { srcYUV_empty_n fifo_status 0 1 }  { srcYUV_read fifo_data 1 1 } } }
	height { ap_none {  { height in_data 0 16 } } }
	width { ap_none {  { width in_data 0 16 } } }
	video_format { ap_none {  { video_format in_data 0 16 } } }
	col_start { ap_none {  { col_start in_data 0 16 } } }
	col_end { ap_none {  { col_end in_data 0 16 } } }
	row_start { ap_none {  { row_start in_data 0 16 } } }
	row_end { ap_none {  { row_end in_data 0 16 } } }
	Y_R_value { ap_none {  { Y_R_value in_data 0 16 } } }
	Cb_G_value { ap_none {  { Cb_G_value in_data 0 16 } } }
	Cr_B_value { ap_none {  { Cr_B_value in_data 0 16 } } }
	outYUV { ap_fifo {  { outYUV_din fifo_port_we 1 24 }  { outYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { outYUV_fifo_cap fifo_update 0 5 }  { outYUV_full_n fifo_status 0 1 }  { outYUV_write fifo_data 1 1 } } }
}
