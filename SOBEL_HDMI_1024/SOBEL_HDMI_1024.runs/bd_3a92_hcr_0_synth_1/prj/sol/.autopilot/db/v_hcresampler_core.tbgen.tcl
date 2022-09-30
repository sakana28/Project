set moduleName v_hcresampler_core
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
set C_modelName {v_hcresampler_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ srcYUV int 24 regular {fifo 0 volatile }  }
	{ height uint 16 regular {ap_stable 0} }
	{ width uint 16 regular {ap_stable 0} }
	{ input_video_format uint 8 regular {ap_stable 0} }
	{ output_video_format uint 8 regular {ap_stable 0} }
	{ coefs_0_0 int 16 regular {pointer 0}  }
	{ coefs_0_1 int 16 regular {pointer 0}  }
	{ coefs_0_2 int 16 regular {pointer 0}  }
	{ coefs_0_3 int 16 regular {pointer 0}  }
	{ coefs_1_0 int 16 regular {pointer 0}  }
	{ coefs_1_1 int 16 regular {pointer 0}  }
	{ coefs_1_2 int 16 regular {pointer 0}  }
	{ coefs_1_3 int 16 regular {pointer 0}  }
	{ outYUV int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_video_format", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_video_format", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ input_video_format sc_in sc_lv 8 signal 3 } 
	{ output_video_format sc_in sc_lv 8 signal 4 } 
	{ coefs_0_0 sc_in sc_lv 16 signal 5 } 
	{ coefs_0_1 sc_in sc_lv 16 signal 6 } 
	{ coefs_0_2 sc_in sc_lv 16 signal 7 } 
	{ coefs_0_3 sc_in sc_lv 16 signal 8 } 
	{ coefs_1_0 sc_in sc_lv 16 signal 9 } 
	{ coefs_1_1 sc_in sc_lv 16 signal 10 } 
	{ coefs_1_2 sc_in sc_lv 16 signal 11 } 
	{ coefs_1_3 sc_in sc_lv 16 signal 12 } 
	{ outYUV_din sc_out sc_lv 24 signal 13 } 
	{ outYUV_num_data_valid sc_in sc_lv 5 signal 13 } 
	{ outYUV_fifo_cap sc_in sc_lv 5 signal 13 } 
	{ outYUV_full_n sc_in sc_logic 1 signal 13 } 
	{ outYUV_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "input_video_format", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_video_format", "role": "default" }} , 
 	{ "name": "output_video_format", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_video_format", "role": "default" }} , 
 	{ "name": "coefs_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_0", "role": "default" }} , 
 	{ "name": "coefs_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_1", "role": "default" }} , 
 	{ "name": "coefs_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_2", "role": "default" }} , 
 	{ "name": "coefs_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_3", "role": "default" }} , 
 	{ "name": "coefs_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_0", "role": "default" }} , 
 	{ "name": "coefs_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_1", "role": "default" }} , 
 	{ "name": "coefs_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_2", "role": "default" }} , 
 	{ "name": "coefs_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_3", "role": "default" }} , 
 	{ "name": "outYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outYUV", "role": "din" }} , 
 	{ "name": "outYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "num_data_valid" }} , 
 	{ "name": "outYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outYUV", "role": "fifo_cap" }} , 
 	{ "name": "outYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "full_n" }} , 
 	{ "name": "outYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outYUV", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "191", "EstimateLatencyMax" : "35407801",
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
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240", "Port" : "srcYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_video_format", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_video_format", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefs_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "outYUV", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240", "Port" : "outYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "v_hcresampler_core_Pipeline_VITIS_LOOP_159_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "32782",
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
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp56", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "conv285_cast_cast_cast_cast", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "not_icmp_ln145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_0_2_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_1_2_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_0_0_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_1_0_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_0_1_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_1_1_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_0_3_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "coefs_1_3_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp_ln145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp394_not", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "select_ln156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_cast2_cast", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixbuf_y_val_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_6_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_val_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_2467_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0185_2463_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_1460_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0185_1457_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0451453_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0451_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0185445447_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0185445_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0440_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0436_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0431_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0429_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0193427_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res0_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_159_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter14", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mux_432_8_1_1_U52", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_12ns_24_4_1_U53", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_12ns_24_4_1_U54", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_24s_25_4_1_U55", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_24s_25_4_1_U56", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_25s_26_4_1_U57", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_25s_26_4_1_U58", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_26s_26_4_1_U59", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.mac_muladd_8ns_16s_26s_26_4_1_U60", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core {
		srcYUV {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		input_video_format {Type I LastRead 0 FirstWrite -1}
		output_video_format {Type I LastRead 0 FirstWrite -1}
		coefs_0_0 {Type I LastRead 0 FirstWrite -1}
		coefs_0_1 {Type I LastRead 0 FirstWrite -1}
		coefs_0_2 {Type I LastRead 0 FirstWrite -1}
		coefs_0_3 {Type I LastRead 0 FirstWrite -1}
		coefs_1_0 {Type I LastRead 0 FirstWrite -1}
		coefs_1_1 {Type I LastRead 0 FirstWrite -1}
		coefs_1_2 {Type I LastRead 0 FirstWrite -1}
		coefs_1_3 {Type I LastRead 0 FirstWrite -1}
		outYUV {Type O LastRead -1 FirstWrite 14}}
	v_hcresampler_core_Pipeline_VITIS_LOOP_159_2 {
		pixbuf_y_val_V_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		cmp56 {Type I LastRead 0 FirstWrite -1}
		conv285_cast_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		not_icmp_ln145 {Type I LastRead 0 FirstWrite -1}
		coefs_0_2_load {Type I LastRead 0 FirstWrite -1}
		coefs_1_2_load {Type I LastRead 0 FirstWrite -1}
		coefs_0_0_load {Type I LastRead 0 FirstWrite -1}
		coefs_1_0_load {Type I LastRead 0 FirstWrite -1}
		coefs_0_1_load {Type I LastRead 0 FirstWrite -1}
		coefs_1_1_load {Type I LastRead 0 FirstWrite -1}
		coefs_0_3_load {Type I LastRead 0 FirstWrite -1}
		coefs_1_3_load {Type I LastRead 0 FirstWrite -1}
		icmp_ln145 {Type I LastRead 0 FirstWrite -1}
		cmp394_not {Type I LastRead 0 FirstWrite -1}
		cmp425 {Type I LastRead 0 FirstWrite -1}
		select_ln156 {Type I LastRead 0 FirstWrite -1}
		width_cast2_cast {Type I LastRead 0 FirstWrite -1}
		srcYUV {Type I LastRead 1 FirstWrite -1}
		outYUV {Type O LastRead -1 FirstWrite 14}
		pixbuf_y_val_V_9_out {Type O LastRead -1 FirstWrite 13}
		pixbuf_y_val_V_8_out {Type O LastRead -1 FirstWrite 13}
		pixbuf_y_val_V_7_out {Type O LastRead -1 FirstWrite 13}
		pixbuf_y_val_V_6_out {Type IO LastRead 14 FirstWrite 14}
		pixbuf_y_val_V_5_out {Type O LastRead -1 FirstWrite 13}
		p_0_0_0_0_0_2467_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0185_2463_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0_1460_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0185_1457_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0451453_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0451_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0185445447_out {Type IO LastRead 3 FirstWrite 3}
		p_0_0_0_0_0185445_out {Type IO LastRead 3 FirstWrite 3}
		p_0_1_0_0_0440_out {Type IO LastRead 3 FirstWrite 2}
		p_0_1_0_0_0436_out {Type IO LastRead 3 FirstWrite 2}
		p_0_2_0_0_0431_out {Type IO LastRead 14 FirstWrite 13}
		p_0_1_0_0_0429_out {Type IO LastRead 14 FirstWrite 13}
		p_0_0_0_0_0193427_out {Type IO LastRead 14 FirstWrite 13}
		filt_res1_1_out {Type IO LastRead 13 FirstWrite 13}
		filt_res0_1_out {Type IO LastRead 13 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "191", "Max" : "35407801"}
	, {"Name" : "Interval", "Min" : "191", "Max" : "35407801"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	srcYUV { ap_fifo {  { srcYUV_dout fifo_port_we 0 24 }  { srcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { srcYUV_fifo_cap fifo_update 0 5 }  { srcYUV_empty_n fifo_status 0 1 }  { srcYUV_read fifo_data 1 1 } } }
	height { ap_none {  { height in_data 0 16 } } }
	width { ap_none {  { width in_data 0 16 } } }
	input_video_format { ap_none {  { input_video_format in_data 0 8 } } }
	output_video_format { ap_none {  { output_video_format in_data 0 8 } } }
	coefs_0_0 { ap_none {  { coefs_0_0 in_data 0 16 } } }
	coefs_0_1 { ap_none {  { coefs_0_1 in_data 0 16 } } }
	coefs_0_2 { ap_none {  { coefs_0_2 in_data 0 16 } } }
	coefs_0_3 { ap_none {  { coefs_0_3 in_data 0 16 } } }
	coefs_1_0 { ap_none {  { coefs_1_0 in_data 0 16 } } }
	coefs_1_1 { ap_none {  { coefs_1_1 in_data 0 16 } } }
	coefs_1_2 { ap_none {  { coefs_1_2 in_data 0 16 } } }
	coefs_1_3 { ap_none {  { coefs_1_3 in_data 0 16 } } }
	outYUV { ap_fifo {  { outYUV_din fifo_port_we 1 24 }  { outYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { outYUV_fifo_cap fifo_update 0 5 }  { outYUV_full_n fifo_status 0 1 }  { outYUV_write fifo_data 1 1 } } }
}
