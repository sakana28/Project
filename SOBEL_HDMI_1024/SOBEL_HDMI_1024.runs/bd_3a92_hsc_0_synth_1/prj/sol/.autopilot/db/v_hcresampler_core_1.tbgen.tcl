set moduleName v_hcresampler_core_1
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
set C_modelName {v_hcresampler_core.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_scaled int 24 regular {fifo 0 volatile }  }
	{ Height int 16 regular {pointer 0}  }
	{ WidthOut int 16 regular {pointer 0}  }
	{ p_read int 1 regular  }
	{ stream_out_422 int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_scaled", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthOut", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
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
	{ stream_scaled_dout sc_in sc_lv 24 signal 0 } 
	{ stream_scaled_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_scaled_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_scaled_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_scaled_read sc_out sc_logic 1 signal 0 } 
	{ Height sc_in sc_lv 16 signal 1 } 
	{ WidthOut sc_in sc_lv 16 signal 2 } 
	{ p_read sc_in sc_lv 1 signal 3 } 
	{ stream_out_422_din sc_out sc_lv 24 signal 4 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_out_422_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_out_422_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "stream_scaled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_scaled", "role": "dout" }} , 
 	{ "name": "stream_scaled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "num_data_valid" }} , 
 	{ "name": "stream_scaled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "fifo_cap" }} , 
 	{ "name": "stream_scaled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "empty_n" }} , 
 	{ "name": "stream_scaled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "read" }} , 
 	{ "name": "Height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height", "role": "default" }} , 
 	{ "name": "WidthOut", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "stream_out_422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_422", "role": "din" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "full_n" }} , 
 	{ "name": "stream_out_422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "1073971195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Port" : "stream_scaled", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Port" : "stream_out_422", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1634_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "32772",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixbuf_y_val_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0_21061_lcssa1087", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0511_21058_lcssa1084", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_01021_lcssa1046", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_01017_lcssa1043", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_05191015_lcssa1040", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv263_cast_cast_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1632", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_scaled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_6_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_val_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_21063_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0511_21060_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_01014_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01012_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_05191010_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1636_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.mux_432_8_1_1_U211", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_1 {
		stream_scaled {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 2 FirstWrite -1}
		WidthOut {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}}
	v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2 {
		pixbuf_y_val_V_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0_21061_lcssa1087 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0511_21058_lcssa1084 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_01021_lcssa1046 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_01017_lcssa1043 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_05191015_lcssa1040 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		conv263_cast_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		select_ln1632 {Type I LastRead 0 FirstWrite -1}
		WidthOut_load {Type I LastRead 0 FirstWrite -1}
		stream_scaled {Type I LastRead 1 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_9_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_8_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_7_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_6_out {Type IO LastRead 3 FirstWrite 3}
		pixbuf_y_val_V_5_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0_21063_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0511_21060_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_out1 {Type IO LastRead 2 FirstWrite 2}
		p_out2 {Type IO LastRead 2 FirstWrite 2}
		p_out3 {Type IO LastRead 2 FirstWrite 2}
		p_0_2_0_0_01014_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01012_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_05191010_out {Type IO LastRead 2 FirstWrite 1}
		filt_res1_1_out {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "1073971195"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "1073971195"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_scaled { ap_fifo {  { stream_scaled_dout fifo_port_we 0 24 }  { stream_scaled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_scaled_fifo_cap fifo_update 0 5 }  { stream_scaled_empty_n fifo_status 0 1 }  { stream_scaled_read fifo_data 1 1 } } }
	Height { ap_none {  { Height in_data 0 16 } } }
	WidthOut { ap_none {  { WidthOut in_data 0 16 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_out_422 { ap_fifo {  { stream_out_422_din fifo_port_we 1 24 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_full_n fifo_status 0 1 }  { stream_out_422_write fifo_data 1 1 } } }
}
