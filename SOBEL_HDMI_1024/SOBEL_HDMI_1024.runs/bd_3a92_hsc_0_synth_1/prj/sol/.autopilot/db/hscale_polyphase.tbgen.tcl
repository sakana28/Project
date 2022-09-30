set moduleName hscale_polyphase
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {hscale_polyphase}
set C_modelType { int 24 }
set C_modelArgList {
	{ FiltCoeff_0 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_1 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_2 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_3 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_4 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_5 int 16 regular {array 64 { 1 } 1 1 }  }
	{ p_read3 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ p_read5 int 8 regular  }
	{ p_read6 int 8 regular  }
	{ p_read7 int 8 regular  }
	{ p_read8 int 8 regular  }
	{ p_read9 int 8 regular  }
	{ p_read10 int 8 regular  }
	{ p_read11 int 8 regular  }
	{ p_read12 int 8 regular  }
	{ p_read13 int 8 regular  }
	{ p_read14 int 8 regular  }
	{ p_read15 int 8 regular  }
	{ p_read16 int 8 regular  }
	{ p_read17 int 8 regular  }
	{ p_read18 int 8 regular  }
	{ p_read19 int 8 regular  }
	{ p_read20 int 8 regular  }
	{ p_read21 int 8 regular  }
	{ p_read22 int 8 regular  }
	{ p_read23 int 8 regular  }
	{ PhasesH_0_read int 6 regular  }
	{ p_read2425 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "FiltCoeff_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "PhasesH_0_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2425", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 24} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ FiltCoeff_0_address0 sc_out sc_lv 6 signal 0 } 
	{ FiltCoeff_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ FiltCoeff_0_q0 sc_in sc_lv 16 signal 0 } 
	{ FiltCoeff_1_address0 sc_out sc_lv 6 signal 1 } 
	{ FiltCoeff_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ FiltCoeff_1_q0 sc_in sc_lv 16 signal 1 } 
	{ FiltCoeff_2_address0 sc_out sc_lv 6 signal 2 } 
	{ FiltCoeff_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ FiltCoeff_2_q0 sc_in sc_lv 16 signal 2 } 
	{ FiltCoeff_3_address0 sc_out sc_lv 6 signal 3 } 
	{ FiltCoeff_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ FiltCoeff_3_q0 sc_in sc_lv 16 signal 3 } 
	{ FiltCoeff_4_address0 sc_out sc_lv 6 signal 4 } 
	{ FiltCoeff_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ FiltCoeff_4_q0 sc_in sc_lv 16 signal 4 } 
	{ FiltCoeff_5_address0 sc_out sc_lv 6 signal 5 } 
	{ FiltCoeff_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ FiltCoeff_5_q0 sc_in sc_lv 16 signal 5 } 
	{ p_read3 sc_in sc_lv 8 signal 6 } 
	{ p_read4 sc_in sc_lv 8 signal 7 } 
	{ p_read5 sc_in sc_lv 8 signal 8 } 
	{ p_read6 sc_in sc_lv 8 signal 9 } 
	{ p_read7 sc_in sc_lv 8 signal 10 } 
	{ p_read8 sc_in sc_lv 8 signal 11 } 
	{ p_read9 sc_in sc_lv 8 signal 12 } 
	{ p_read10 sc_in sc_lv 8 signal 13 } 
	{ p_read11 sc_in sc_lv 8 signal 14 } 
	{ p_read12 sc_in sc_lv 8 signal 15 } 
	{ p_read13 sc_in sc_lv 8 signal 16 } 
	{ p_read14 sc_in sc_lv 8 signal 17 } 
	{ p_read15 sc_in sc_lv 8 signal 18 } 
	{ p_read16 sc_in sc_lv 8 signal 19 } 
	{ p_read17 sc_in sc_lv 8 signal 20 } 
	{ p_read18 sc_in sc_lv 8 signal 21 } 
	{ p_read19 sc_in sc_lv 8 signal 22 } 
	{ p_read20 sc_in sc_lv 8 signal 23 } 
	{ p_read21 sc_in sc_lv 8 signal 24 } 
	{ p_read22 sc_in sc_lv 8 signal 25 } 
	{ p_read23 sc_in sc_lv 8 signal 26 } 
	{ PhasesH_0_read sc_in sc_lv 6 signal 27 } 
	{ p_read2425 sc_in sc_lv 2 signal 28 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "FiltCoeff_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "address0" }} , 
 	{ "name": "FiltCoeff_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "q0" }} , 
 	{ "name": "FiltCoeff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "address0" }} , 
 	{ "name": "FiltCoeff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "q0" }} , 
 	{ "name": "FiltCoeff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "address0" }} , 
 	{ "name": "FiltCoeff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "q0" }} , 
 	{ "name": "FiltCoeff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "address0" }} , 
 	{ "name": "FiltCoeff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "q0" }} , 
 	{ "name": "FiltCoeff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "address0" }} , 
 	{ "name": "FiltCoeff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "q0" }} , 
 	{ "name": "FiltCoeff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "address0" }} , 
 	{ "name": "FiltCoeff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "q0" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "PhasesH_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PhasesH_0_read", "role": "default" }} , 
 	{ "name": "p_read2425", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_read2425", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U96", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U97", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U98", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U99", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_8_1_1_U100", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_33_8_1_1_U101", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U102", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U103", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U104", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U105", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_8_1_1_U106", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_33_8_1_1_U107", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U108", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U109", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U110", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U111", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_8_1_1_U112", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_33_8_1_1_U113", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_12ns_24_4_1_U114", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_12ns_24_4_1_U115", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_12ns_24_4_1_U116", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_24s_25_4_1_U117", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_24s_25_4_1_U118", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_24s_25_4_1_U119", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_25s_26_4_1_U120", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_25s_26_4_1_U121", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_25s_26_4_1_U122", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_26_4_1_U123", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_26_4_1_U124", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_26_4_1_U125", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_27_4_1_U126", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_27_4_1_U127", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_27_4_1_U128", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_27s_27_4_1_U129", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_27s_27_4_1_U130", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_27s_27_4_1_U131", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_read2425 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	FiltCoeff_0 { ap_memory {  { FiltCoeff_0_address0 mem_address 1 6 }  { FiltCoeff_0_ce0 mem_ce 1 1 }  { FiltCoeff_0_q0 in_data 0 16 } } }
	FiltCoeff_1 { ap_memory {  { FiltCoeff_1_address0 mem_address 1 6 }  { FiltCoeff_1_ce0 mem_ce 1 1 }  { FiltCoeff_1_q0 in_data 0 16 } } }
	FiltCoeff_2 { ap_memory {  { FiltCoeff_2_address0 mem_address 1 6 }  { FiltCoeff_2_ce0 mem_ce 1 1 }  { FiltCoeff_2_q0 in_data 0 16 } } }
	FiltCoeff_3 { ap_memory {  { FiltCoeff_3_address0 mem_address 1 6 }  { FiltCoeff_3_ce0 mem_ce 1 1 }  { FiltCoeff_3_q0 in_data 0 16 } } }
	FiltCoeff_4 { ap_memory {  { FiltCoeff_4_address0 mem_address 1 6 }  { FiltCoeff_4_ce0 mem_ce 1 1 }  { FiltCoeff_4_q0 in_data 0 16 } } }
	FiltCoeff_5 { ap_memory {  { FiltCoeff_5_address0 mem_address 1 6 }  { FiltCoeff_5_ce0 mem_ce 1 1 }  { FiltCoeff_5_q0 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 8 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 8 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 8 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 8 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 8 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 8 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 8 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 8 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 8 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 8 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 8 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 8 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 8 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 8 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 8 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 8 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 8 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 8 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 8 } } }
	PhasesH_0_read { ap_none {  { PhasesH_0_read in_data 0 6 } } }
	p_read2425 { ap_none {  { p_read2425 in_data 0 2 } } }
}
