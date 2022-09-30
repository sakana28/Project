set moduleName vscale_core_polyphase
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
set C_modelName {vscale_core_polyphase}
set C_modelType { void 0 }
set C_modelArgList {
	{ SrcYUV int 24 regular {fifo 0 volatile }  }
	{ HeightIn int 11 regular {fifo 0}  }
	{ Width int 11 regular {fifo 0}  }
	{ HeightOut int 11 regular {fifo 0}  }
	{ LineRate int 32 regular {fifo 0}  }
	{ vfltCoeff int 16 regular {array 384 { 1 } 1 1 }  }
	{ OutYUV int 24 regular {fifo 1 volatile }  }
	{ HwReg_Width_c int 11 regular {fifo 1}  }
	{ HwReg_HeightOut_c int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SrcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "HeightIn", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "Width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "HeightOut", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "LineRate", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vfltCoeff", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_Width_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_HeightOut_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SrcYUV_dout sc_in sc_lv 24 signal 0 } 
	{ SrcYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ SrcYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ SrcYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ SrcYUV_read sc_out sc_logic 1 signal 0 } 
	{ HeightIn_dout sc_in sc_lv 11 signal 1 } 
	{ HeightIn_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ HeightIn_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ HeightIn_empty_n sc_in sc_logic 1 signal 1 } 
	{ HeightIn_read sc_out sc_logic 1 signal 1 } 
	{ Width_dout sc_in sc_lv 11 signal 2 } 
	{ Width_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ Width_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ Width_empty_n sc_in sc_logic 1 signal 2 } 
	{ Width_read sc_out sc_logic 1 signal 2 } 
	{ HeightOut_dout sc_in sc_lv 11 signal 3 } 
	{ HeightOut_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ HeightOut_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ HeightOut_empty_n sc_in sc_logic 1 signal 3 } 
	{ HeightOut_read sc_out sc_logic 1 signal 3 } 
	{ LineRate_dout sc_in sc_lv 32 signal 4 } 
	{ LineRate_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ LineRate_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ LineRate_empty_n sc_in sc_logic 1 signal 4 } 
	{ LineRate_read sc_out sc_logic 1 signal 4 } 
	{ vfltCoeff_address0 sc_out sc_lv 9 signal 5 } 
	{ vfltCoeff_ce0 sc_out sc_logic 1 signal 5 } 
	{ vfltCoeff_q0 sc_in sc_lv 16 signal 5 } 
	{ OutYUV_din sc_out sc_lv 24 signal 6 } 
	{ OutYUV_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ OutYUV_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ OutYUV_full_n sc_in sc_logic 1 signal 6 } 
	{ OutYUV_write sc_out sc_logic 1 signal 6 } 
	{ HwReg_Width_c_din sc_out sc_lv 11 signal 7 } 
	{ HwReg_Width_c_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ HwReg_Width_c_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ HwReg_Width_c_full_n sc_in sc_logic 1 signal 7 } 
	{ HwReg_Width_c_write sc_out sc_logic 1 signal 7 } 
	{ HwReg_HeightOut_c_din sc_out sc_lv 11 signal 8 } 
	{ HwReg_HeightOut_c_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ HwReg_HeightOut_c_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ HwReg_HeightOut_c_full_n sc_in sc_logic 1 signal 8 } 
	{ HwReg_HeightOut_c_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SrcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV", "role": "dout" }} , 
 	{ "name": "SrcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "empty_n" }} , 
 	{ "name": "SrcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "read" }} , 
 	{ "name": "HeightIn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HeightIn", "role": "dout" }} , 
 	{ "name": "HeightIn_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HeightIn", "role": "num_data_valid" }} , 
 	{ "name": "HeightIn_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HeightIn", "role": "fifo_cap" }} , 
 	{ "name": "HeightIn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HeightIn", "role": "empty_n" }} , 
 	{ "name": "HeightIn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HeightIn", "role": "read" }} , 
 	{ "name": "Width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Width", "role": "dout" }} , 
 	{ "name": "Width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Width", "role": "num_data_valid" }} , 
 	{ "name": "Width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Width", "role": "fifo_cap" }} , 
 	{ "name": "Width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Width", "role": "empty_n" }} , 
 	{ "name": "Width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Width", "role": "read" }} , 
 	{ "name": "HeightOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HeightOut", "role": "dout" }} , 
 	{ "name": "HeightOut_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HeightOut", "role": "num_data_valid" }} , 
 	{ "name": "HeightOut_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HeightOut", "role": "fifo_cap" }} , 
 	{ "name": "HeightOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HeightOut", "role": "empty_n" }} , 
 	{ "name": "HeightOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HeightOut", "role": "read" }} , 
 	{ "name": "LineRate_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LineRate", "role": "dout" }} , 
 	{ "name": "LineRate_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "LineRate", "role": "num_data_valid" }} , 
 	{ "name": "LineRate_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "LineRate", "role": "fifo_cap" }} , 
 	{ "name": "LineRate_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineRate", "role": "empty_n" }} , 
 	{ "name": "LineRate_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineRate", "role": "read" }} , 
 	{ "name": "vfltCoeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "vfltCoeff", "role": "address0" }} , 
 	{ "name": "vfltCoeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vfltCoeff", "role": "ce0" }} , 
 	{ "name": "vfltCoeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vfltCoeff", "role": "q0" }} , 
 	{ "name": "OutYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "OutYUV", "role": "din" }} , 
 	{ "name": "OutYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutYUV", "role": "num_data_valid" }} , 
 	{ "name": "OutYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutYUV", "role": "fifo_cap" }} , 
 	{ "name": "OutYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutYUV", "role": "full_n" }} , 
 	{ "name": "OutYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutYUV", "role": "write" }} , 
 	{ "name": "HwReg_Width_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_Width_c", "role": "din" }} , 
 	{ "name": "HwReg_Width_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_Width_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_Width_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c", "role": "full_n" }} , 
 	{ "name": "HwReg_Width_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c", "role": "write" }} , 
 	{ "name": "HwReg_HeightOut_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c", "role": "din" }} , 
 	{ "name": "HwReg_HeightOut_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_HeightOut_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_HeightOut_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c", "role": "full_n" }} , 
 	{ "name": "HwReg_HeightOut_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightOut_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15"],
		"CDFG" : "vscale_core_polyphase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "391", "EstimateLatencyMax" : "2108546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SrcYUV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247", "Port" : "SrcYUV", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "HeightIn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HeightIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HeightOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "HeightOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "LineRate", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "LineRate_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_229", "Port" : "vfltCoeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OutYUV", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247", "Port" : "OutYUV", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "HwReg_Width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_Width_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_HeightOut_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_HeightOut_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FiltCoeff_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_4_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LineBuf_val_V_5_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_229", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap",
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
			{"Name" : "vfltCoeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_init_coeff_phase_loop_init_coeff_tap", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "vscale_core_polyphase_Pipeline_loop_width_for_procpix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "1938",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "1", "FromAddress" : "LineBuf_val_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_111", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_111", "ToFinalSV" : "3", "ToAddress" : "LineBuf_val_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_73", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "3", "ToAddress" : "LineBuf_val_V_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_77", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_108", "ToFinalSV" : "3", "ToAddress" : "LineBuf_val_V_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_4_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "3", "ToAddress" : "LineBuf_val_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_5_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "3", "ToAddress" : "LineBuf_val_V_5_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "1", "ToAddress" : "LineBuf_val_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "3", "FromAddress" : "LineBuf_val_V_5_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_5_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "3", "FromAddress" : "LineBuf_val_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_4_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_108", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_108", "FromFinalSV" : "3", "FromAddress" : "LineBuf_val_V_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_77", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "3", "FromAddress" : "LineBuf_val_V_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_73", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_111", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_111", "FromFinalSV" : "3", "FromAddress" : "LineBuf_val_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idxprom11_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "InPixels", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutputWriteEn_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "LineBuf_val_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "brmerge", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp159", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp119", "Type" : "None", "Direction" : "I"},
			{"Name" : "SrcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SrcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OutYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OutYUV_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_width_for_procpix", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_12ns_24_4_1_U77", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_12ns_24_4_1_U78", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_12ns_24_4_1_U79", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_24s_25_4_1_U80", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_24s_25_4_1_U81", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_24s_25_4_1_U82", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_25s_26_4_1_U83", "Parent" : "15"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_25s_26_4_1_U84", "Parent" : "15"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_25s_26_4_1_U85", "Parent" : "15"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_26_4_1_U86", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_26_4_1_U87", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_26_4_1_U88", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_27_4_1_U89", "Parent" : "15"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_27_4_1_U90", "Parent" : "15"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_26s_27_4_1_U91", "Parent" : "15"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_27s_27_4_1_U92", "Parent" : "15"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_27s_27_4_1_U93", "Parent" : "15"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.mac_muladd_16s_8ns_27s_27_4_1_U94", "Parent" : "15"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"}]}


set ArgLastReadFirstWriteLatency {
	vscale_core_polyphase {
		SrcYUV {Type I LastRead 1 FirstWrite -1}
		HeightIn {Type I LastRead 0 FirstWrite -1}
		Width {Type I LastRead 0 FirstWrite -1}
		HeightOut {Type I LastRead 0 FirstWrite -1}
		LineRate {Type I LastRead 0 FirstWrite -1}
		vfltCoeff {Type I LastRead 2 FirstWrite -1}
		OutYUV {Type O LastRead -1 FirstWrite 17}
		HwReg_Width_c {Type O LastRead -1 FirstWrite 0}
		HwReg_HeightOut_c {Type O LastRead -1 FirstWrite 0}}
	vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap {
		FiltCoeff {Type O LastRead -1 FirstWrite 4}
		vfltCoeff {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_1 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_2 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_3 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_4 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_5 {Type O LastRead -1 FirstWrite 4}}
	vscale_core_polyphase_Pipeline_loop_width_for_procpix {
		FiltCoeff_5 {Type I LastRead 12 FirstWrite -1}
		idxprom11_i {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 10 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 8 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 6 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff {Type I LastRead 2 FirstWrite -1}
		InPixels {Type I LastRead 0 FirstWrite -1}
		OutputWriteEn_1 {Type I LastRead 0 FirstWrite -1}
		LineBuf_val_V_5 {Type IO LastRead 1 FirstWrite 3}
		LineBuf_val_V_4 {Type IO LastRead 1 FirstWrite 3}
		LineBuf_val_V_3 {Type IO LastRead 1 FirstWrite 3}
		LineBuf_val_V_2 {Type IO LastRead 1 FirstWrite 3}
		LineBuf_val_V_1 {Type IO LastRead 1 FirstWrite 3}
		LineBuf_val_V {Type IO LastRead 0 FirstWrite 2}
		brmerge {Type I LastRead 0 FirstWrite -1}
		cmp159 {Type I LastRead 0 FirstWrite -1}
		cmp119 {Type I LastRead 0 FirstWrite -1}
		SrcYUV {Type I LastRead 1 FirstWrite -1}
		OutYUV {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "391", "Max" : "2108546"}
	, {"Name" : "Interval", "Min" : "391", "Max" : "2108546"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SrcYUV { ap_fifo {  { SrcYUV_dout fifo_port_we 0 24 }  { SrcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV_fifo_cap fifo_update 0 5 }  { SrcYUV_empty_n fifo_status 0 1 }  { SrcYUV_read fifo_data 1 1 } } }
	HeightIn { ap_fifo {  { HeightIn_dout fifo_port_we 0 11 }  { HeightIn_num_data_valid fifo_status_num_data_valid 0 2 }  { HeightIn_fifo_cap fifo_update 0 2 }  { HeightIn_empty_n fifo_status 0 1 }  { HeightIn_read fifo_data 1 1 } } }
	Width { ap_fifo {  { Width_dout fifo_port_we 0 11 }  { Width_num_data_valid fifo_status_num_data_valid 0 2 }  { Width_fifo_cap fifo_update 0 2 }  { Width_empty_n fifo_status 0 1 }  { Width_read fifo_data 1 1 } } }
	HeightOut { ap_fifo {  { HeightOut_dout fifo_port_we 0 11 }  { HeightOut_num_data_valid fifo_status_num_data_valid 0 2 }  { HeightOut_fifo_cap fifo_update 0 2 }  { HeightOut_empty_n fifo_status 0 1 }  { HeightOut_read fifo_data 1 1 } } }
	LineRate { ap_fifo {  { LineRate_dout fifo_port_we 0 32 }  { LineRate_num_data_valid fifo_status_num_data_valid 0 2 }  { LineRate_fifo_cap fifo_update 0 2 }  { LineRate_empty_n fifo_status 0 1 }  { LineRate_read fifo_data 1 1 } } }
	vfltCoeff { ap_memory {  { vfltCoeff_address0 mem_address 1 9 }  { vfltCoeff_ce0 mem_ce 1 1 }  { vfltCoeff_q0 mem_dout 0 16 } } }
	OutYUV { ap_fifo {  { OutYUV_din fifo_port_we 1 24 }  { OutYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { OutYUV_fifo_cap fifo_update 0 5 }  { OutYUV_full_n fifo_status 0 1 }  { OutYUV_write fifo_data 1 1 } } }
	HwReg_Width_c { ap_fifo {  { HwReg_Width_c_din fifo_port_we 1 11 }  { HwReg_Width_c_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_Width_c_fifo_cap fifo_update 0 2 }  { HwReg_Width_c_full_n fifo_status 0 1 }  { HwReg_Width_c_write fifo_data 1 1 } } }
	HwReg_HeightOut_c { ap_fifo {  { HwReg_HeightOut_c_din fifo_port_we 1 11 }  { HwReg_HeightOut_c_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_HeightOut_c_fifo_cap fifo_update 0 2 }  { HwReg_HeightOut_c_full_n fifo_status 0 1 }  { HwReg_HeightOut_c_write fifo_data 1 1 } } }
}
