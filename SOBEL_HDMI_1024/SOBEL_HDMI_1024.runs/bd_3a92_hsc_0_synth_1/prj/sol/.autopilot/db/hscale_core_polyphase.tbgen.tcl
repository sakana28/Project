set moduleName hscale_core_polyphase
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
set C_modelName {hscale_core_polyphase}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_upsampled int 24 regular {fifo 0 volatile }  }
	{ Height int 16 regular {pointer 0}  }
	{ WidthIn int 16 regular {pointer 0}  }
	{ WidthOut int 16 regular {pointer 0}  }
	{ hfltCoeff int 16 regular {array 384 { 1 } 1 1 }  }
	{ phasesH int 9 regular {array 1920 { 1 } 1 1 }  }
	{ stream_scaled int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_upsampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthIn", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthOut", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hfltCoeff", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phasesH", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "stream_scaled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_upsampled_dout sc_in sc_lv 24 signal 0 } 
	{ stream_upsampled_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_upsampled_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_upsampled_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_upsampled_read sc_out sc_logic 1 signal 0 } 
	{ Height sc_in sc_lv 16 signal 1 } 
	{ WidthIn sc_in sc_lv 16 signal 2 } 
	{ WidthOut sc_in sc_lv 16 signal 3 } 
	{ hfltCoeff_address0 sc_out sc_lv 9 signal 4 } 
	{ hfltCoeff_ce0 sc_out sc_logic 1 signal 4 } 
	{ hfltCoeff_q0 sc_in sc_lv 16 signal 4 } 
	{ phasesH_address0 sc_out sc_lv 11 signal 5 } 
	{ phasesH_ce0 sc_out sc_logic 1 signal 5 } 
	{ phasesH_q0 sc_in sc_lv 9 signal 5 } 
	{ stream_scaled_din sc_out sc_lv 24 signal 6 } 
	{ stream_scaled_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ stream_scaled_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ stream_scaled_full_n sc_in sc_logic 1 signal 6 } 
	{ stream_scaled_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_upsampled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "dout" }} , 
 	{ "name": "stream_upsampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_upsampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_upsampled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "empty_n" }} , 
 	{ "name": "stream_upsampled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "read" }} , 
 	{ "name": "Height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height", "role": "default" }} , 
 	{ "name": "WidthIn", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthIn", "role": "default" }} , 
 	{ "name": "WidthOut", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut", "role": "default" }} , 
 	{ "name": "hfltCoeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "hfltCoeff", "role": "address0" }} , 
 	{ "name": "hfltCoeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hfltCoeff", "role": "ce0" }} , 
 	{ "name": "hfltCoeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hfltCoeff", "role": "q0" }} , 
 	{ "name": "phasesH_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "phasesH", "role": "address0" }} , 
 	{ "name": "phasesH_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phasesH", "role": "ce0" }} , 
 	{ "name": "phasesH_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "phasesH", "role": "q0" }} , 
 	{ "name": "stream_scaled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_scaled", "role": "din" }} , 
 	{ "name": "stream_scaled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "num_data_valid" }} , 
 	{ "name": "stream_scaled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "fifo_cap" }} , 
 	{ "name": "stream_scaled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "full_n" }} , 
 	{ "name": "stream_scaled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9"],
		"CDFG" : "hscale_core_polyphase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1127", "EstimateLatencyMax" : "2106391",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "stream_upsampled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202", "Port" : "hfltCoeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "phasesH", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "stream_scaled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "389", "EstimateLatencyMax" : "389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_init_coeff_phase_loop_init_coeff_tap", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Parent" : "0", "Child" : ["10", "47", "48"],
		"CDFG" : "hscale_core_polyphase_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "1947",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_upsampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_0", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_1", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_2", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_3", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_4", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_5", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "LoopSize", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_scaled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "PixArray_val_V_5_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_4_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_3_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_20_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_19_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_18_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_17_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_16_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_15_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_14_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_13_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_12_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_11_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_10_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_9_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_8_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_7_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_6_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_5_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_4_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_val_V_3_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "hscale_polyphase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "FiltCoeff_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "PhasesH_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2425", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U96", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U97", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U98", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U99", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U100", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U101", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U102", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U103", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U104", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U105", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U106", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U107", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U108", "Parent" : "10"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U109", "Parent" : "10"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U110", "Parent" : "10"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U111", "Parent" : "10"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U112", "Parent" : "10"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U113", "Parent" : "10"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U114", "Parent" : "10"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U115", "Parent" : "10"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U116", "Parent" : "10"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U117", "Parent" : "10"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U118", "Parent" : "10"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U119", "Parent" : "10"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U120", "Parent" : "10"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U121", "Parent" : "10"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U122", "Parent" : "10"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U123", "Parent" : "10"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U124", "Parent" : "10"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U125", "Parent" : "10"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U126", "Parent" : "10"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U127", "Parent" : "10"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U128", "Parent" : "10"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U129", "Parent" : "10"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U130", "Parent" : "10"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U131", "Parent" : "10"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_reg_ap_uint_9_s_fu_758", "Parent" : "9",
		"CDFG" : "reg_ap_uint_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	hscale_core_polyphase {
		stream_upsampled {Type I LastRead 5 FirstWrite -1}
		Height {Type I LastRead 1 FirstWrite -1}
		WidthIn {Type I LastRead 1 FirstWrite -1}
		WidthOut {Type I LastRead 1 FirstWrite -1}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}
		phasesH {Type I LastRead 1 FirstWrite -1}
		stream_scaled {Type O LastRead -1 FirstWrite 21}}
	hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap {
		FiltCoeff {Type O LastRead -1 FirstWrite 4}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_1 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_2 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_3 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_4 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_5 {Type O LastRead -1 FirstWrite 4}}
	hscale_core_polyphase_Pipeline_loop_width {
		add_ln637 {Type I LastRead 0 FirstWrite -1}
		zext_ln224 {Type I LastRead 0 FirstWrite -1}
		stream_upsampled {Type I LastRead 5 FirstWrite -1}
		phasesH {Type I LastRead 1 FirstWrite -1}
		FiltCoeff {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 6 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 8 FirstWrite -1}
		FiltCoeff_5 {Type I LastRead 10 FirstWrite -1}
		LoopSize {Type I LastRead 0 FirstWrite -1}
		stream_scaled {Type O LastRead -1 FirstWrite 21}
		PixArray_val_V_5_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_4_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_3_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_20_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_19_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_18_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_17_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_16_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_15_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_14_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_13_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_12_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_11_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_10_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_9_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_8_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_7_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_6_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_5_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_4_1_out {Type IO LastRead 6 FirstWrite 5}
		PixArray_val_V_3_1_out {Type IO LastRead 6 FirstWrite 5}}
	hscale_polyphase {
		FiltCoeff_0 {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 6 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 8 FirstWrite -1}
		FiltCoeff_5 {Type I LastRead 10 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		PhasesH_0_read {Type I LastRead 0 FirstWrite -1}
		p_read2425 {Type I LastRead 0 FirstWrite -1}}
	reg_ap_uint_9_s {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1127", "Max" : "2106391"}
	, {"Name" : "Interval", "Min" : "1127", "Max" : "2106391"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_upsampled { ap_fifo {  { stream_upsampled_dout fifo_port_we 0 24 }  { stream_upsampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_upsampled_fifo_cap fifo_update 0 5 }  { stream_upsampled_empty_n fifo_status 0 1 }  { stream_upsampled_read fifo_data 1 1 } } }
	Height { ap_none {  { Height in_data 0 16 } } }
	WidthIn { ap_none {  { WidthIn in_data 0 16 } } }
	WidthOut { ap_none {  { WidthOut in_data 0 16 } } }
	hfltCoeff { ap_memory {  { hfltCoeff_address0 mem_address 1 9 }  { hfltCoeff_ce0 mem_ce 1 1 }  { hfltCoeff_q0 mem_dout 0 16 } } }
	phasesH { ap_memory {  { phasesH_address0 mem_address 1 11 }  { phasesH_ce0 mem_ce 1 1 }  { phasesH_q0 mem_dout 0 9 } } }
	stream_scaled { ap_fifo {  { stream_scaled_din fifo_port_we 1 24 }  { stream_scaled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_scaled_fifo_cap fifo_update 0 5 }  { stream_scaled_full_n fifo_status 0 1 }  { stream_scaled_write fifo_data 1 1 } } }
}
