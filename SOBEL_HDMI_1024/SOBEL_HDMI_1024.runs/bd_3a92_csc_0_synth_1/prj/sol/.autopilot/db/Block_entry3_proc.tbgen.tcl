set moduleName Block_entry3_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Block_entry3_proc}
set C_modelType { int 484 }
set C_modelArgList {
	{ InVideoFormat int 8 regular {pointer 0}  }
	{ OutVideoFormat int 8 regular {pointer 0}  }
	{ width int 16 regular {pointer 0}  }
	{ height int 16 regular {pointer 0}  }
	{ ColStart int 16 regular {pointer 0}  }
	{ ColEnd int 16 regular {pointer 0}  }
	{ RowStart int 16 regular {pointer 0}  }
	{ RowEnd int 16 regular {pointer 0}  }
	{ K11 int 16 regular {pointer 0}  }
	{ K12 int 16 regular {pointer 0}  }
	{ K13 int 16 regular {pointer 0}  }
	{ K21 int 16 regular {pointer 0}  }
	{ K22 int 16 regular {pointer 0}  }
	{ K23 int 16 regular {pointer 0}  }
	{ K31 int 16 regular {pointer 0}  }
	{ K32 int 16 regular {pointer 0}  }
	{ K33 int 16 regular {pointer 0}  }
	{ ROffset int 10 regular {pointer 0}  }
	{ GOffset int 10 regular {pointer 0}  }
	{ BOffset int 10 regular {pointer 0}  }
	{ ClampMin int 8 regular {pointer 0}  }
	{ ClipMax int 8 regular {pointer 0}  }
	{ K11_2 int 16 regular {pointer 0}  }
	{ K12_2 int 16 regular {pointer 0}  }
	{ K13_2 int 16 regular {pointer 0}  }
	{ K21_2 int 16 regular {pointer 0}  }
	{ K22_2 int 16 regular {pointer 0}  }
	{ K23_2 int 16 regular {pointer 0}  }
	{ K31_2 int 16 regular {pointer 0}  }
	{ K32_2 int 16 regular {pointer 0}  }
	{ K33_2 int 16 regular {pointer 0}  }
	{ ROffset_2 int 10 regular {pointer 0}  }
	{ GOffset_2 int 10 regular {pointer 0}  }
	{ BOffset_2 int 10 regular {pointer 0}  }
	{ ClampMin_2 int 8 regular {pointer 0}  }
	{ ClipMax_2 int 8 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "InVideoFormat", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "OutVideoFormat", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ColStart", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ColEnd", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "RowStart", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "RowEnd", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K32", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "K11_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K12_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K22_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K32_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 484} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ InVideoFormat sc_in sc_lv 8 signal 0 } 
	{ OutVideoFormat sc_in sc_lv 8 signal 1 } 
	{ width sc_in sc_lv 16 signal 2 } 
	{ height sc_in sc_lv 16 signal 3 } 
	{ ColStart sc_in sc_lv 16 signal 4 } 
	{ ColEnd sc_in sc_lv 16 signal 5 } 
	{ RowStart sc_in sc_lv 16 signal 6 } 
	{ RowEnd sc_in sc_lv 16 signal 7 } 
	{ K11 sc_in sc_lv 16 signal 8 } 
	{ K12 sc_in sc_lv 16 signal 9 } 
	{ K13 sc_in sc_lv 16 signal 10 } 
	{ K21 sc_in sc_lv 16 signal 11 } 
	{ K22 sc_in sc_lv 16 signal 12 } 
	{ K23 sc_in sc_lv 16 signal 13 } 
	{ K31 sc_in sc_lv 16 signal 14 } 
	{ K32 sc_in sc_lv 16 signal 15 } 
	{ K33 sc_in sc_lv 16 signal 16 } 
	{ ROffset sc_in sc_lv 10 signal 17 } 
	{ GOffset sc_in sc_lv 10 signal 18 } 
	{ BOffset sc_in sc_lv 10 signal 19 } 
	{ ClampMin sc_in sc_lv 8 signal 20 } 
	{ ClipMax sc_in sc_lv 8 signal 21 } 
	{ K11_2 sc_in sc_lv 16 signal 22 } 
	{ K12_2 sc_in sc_lv 16 signal 23 } 
	{ K13_2 sc_in sc_lv 16 signal 24 } 
	{ K21_2 sc_in sc_lv 16 signal 25 } 
	{ K22_2 sc_in sc_lv 16 signal 26 } 
	{ K23_2 sc_in sc_lv 16 signal 27 } 
	{ K31_2 sc_in sc_lv 16 signal 28 } 
	{ K32_2 sc_in sc_lv 16 signal 29 } 
	{ K33_2 sc_in sc_lv 16 signal 30 } 
	{ ROffset_2 sc_in sc_lv 10 signal 31 } 
	{ GOffset_2 sc_in sc_lv 10 signal 32 } 
	{ BOffset_2 sc_in sc_lv 10 signal 33 } 
	{ ClampMin_2 sc_in sc_lv 8 signal 34 } 
	{ ClipMax_2 sc_in sc_lv 8 signal 35 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 16 signal -1 } 
	{ ap_return_3 sc_out sc_lv 16 signal -1 } 
	{ ap_return_4 sc_out sc_lv 16 signal -1 } 
	{ ap_return_5 sc_out sc_lv 16 signal -1 } 
	{ ap_return_6 sc_out sc_lv 16 signal -1 } 
	{ ap_return_7 sc_out sc_lv 16 signal -1 } 
	{ ap_return_8 sc_out sc_lv 16 signal -1 } 
	{ ap_return_9 sc_out sc_lv 16 signal -1 } 
	{ ap_return_10 sc_out sc_lv 16 signal -1 } 
	{ ap_return_11 sc_out sc_lv 16 signal -1 } 
	{ ap_return_12 sc_out sc_lv 16 signal -1 } 
	{ ap_return_13 sc_out sc_lv 16 signal -1 } 
	{ ap_return_14 sc_out sc_lv 16 signal -1 } 
	{ ap_return_15 sc_out sc_lv 10 signal -1 } 
	{ ap_return_16 sc_out sc_lv 10 signal -1 } 
	{ ap_return_17 sc_out sc_lv 10 signal -1 } 
	{ ap_return_18 sc_out sc_lv 8 signal -1 } 
	{ ap_return_19 sc_out sc_lv 8 signal -1 } 
	{ ap_return_20 sc_out sc_lv 16 signal -1 } 
	{ ap_return_21 sc_out sc_lv 16 signal -1 } 
	{ ap_return_22 sc_out sc_lv 16 signal -1 } 
	{ ap_return_23 sc_out sc_lv 16 signal -1 } 
	{ ap_return_24 sc_out sc_lv 16 signal -1 } 
	{ ap_return_25 sc_out sc_lv 16 signal -1 } 
	{ ap_return_26 sc_out sc_lv 16 signal -1 } 
	{ ap_return_27 sc_out sc_lv 16 signal -1 } 
	{ ap_return_28 sc_out sc_lv 16 signal -1 } 
	{ ap_return_29 sc_out sc_lv 10 signal -1 } 
	{ ap_return_30 sc_out sc_lv 10 signal -1 } 
	{ ap_return_31 sc_out sc_lv 10 signal -1 } 
	{ ap_return_32 sc_out sc_lv 8 signal -1 } 
	{ ap_return_33 sc_out sc_lv 8 signal -1 } 
	{ ap_return_34 sc_out sc_lv 1 signal -1 } 
	{ ap_return_35 sc_out sc_lv 1 signal -1 } 
	{ ap_return_36 sc_out sc_lv 11 signal -1 } 
	{ ap_return_37 sc_out sc_lv 11 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "InVideoFormat", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "InVideoFormat", "role": "default" }} , 
 	{ "name": "OutVideoFormat", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OutVideoFormat", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "ColStart", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ColStart", "role": "default" }} , 
 	{ "name": "ColEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ColEnd", "role": "default" }} , 
 	{ "name": "RowStart", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RowStart", "role": "default" }} , 
 	{ "name": "RowEnd", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RowEnd", "role": "default" }} , 
 	{ "name": "K11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11", "role": "default" }} , 
 	{ "name": "K12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12", "role": "default" }} , 
 	{ "name": "K13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13", "role": "default" }} , 
 	{ "name": "K21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21", "role": "default" }} , 
 	{ "name": "K22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22", "role": "default" }} , 
 	{ "name": "K23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23", "role": "default" }} , 
 	{ "name": "K31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31", "role": "default" }} , 
 	{ "name": "K32", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32", "role": "default" }} , 
 	{ "name": "K33", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33", "role": "default" }} , 
 	{ "name": "ROffset", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ROffset", "role": "default" }} , 
 	{ "name": "GOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "GOffset", "role": "default" }} , 
 	{ "name": "BOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "BOffset", "role": "default" }} , 
 	{ "name": "ClampMin", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin", "role": "default" }} , 
 	{ "name": "ClipMax", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax", "role": "default" }} , 
 	{ "name": "K11_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11_2", "role": "default" }} , 
 	{ "name": "K12_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12_2", "role": "default" }} , 
 	{ "name": "K13_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13_2", "role": "default" }} , 
 	{ "name": "K21_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21_2", "role": "default" }} , 
 	{ "name": "K22_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22_2", "role": "default" }} , 
 	{ "name": "K23_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23_2", "role": "default" }} , 
 	{ "name": "K31_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31_2", "role": "default" }} , 
 	{ "name": "K32_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32_2", "role": "default" }} , 
 	{ "name": "K33_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33_2", "role": "default" }} , 
 	{ "name": "ROffset_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ROffset_2", "role": "default" }} , 
 	{ "name": "GOffset_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "GOffset_2", "role": "default" }} , 
 	{ "name": "BOffset_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "BOffset_2", "role": "default" }} , 
 	{ "name": "ClampMin_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin_2", "role": "default" }} , 
 	{ "name": "ClipMax_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax_2", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_entry3_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "InVideoFormat", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutVideoFormat", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "RowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "RowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax_2", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Block_entry3_proc {
		InVideoFormat {Type I LastRead 0 FirstWrite -1}
		OutVideoFormat {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		ColStart {Type I LastRead 0 FirstWrite -1}
		ColEnd {Type I LastRead 0 FirstWrite -1}
		RowStart {Type I LastRead 0 FirstWrite -1}
		RowEnd {Type I LastRead 0 FirstWrite -1}
		K11 {Type I LastRead 0 FirstWrite -1}
		K12 {Type I LastRead 0 FirstWrite -1}
		K13 {Type I LastRead 0 FirstWrite -1}
		K21 {Type I LastRead 0 FirstWrite -1}
		K22 {Type I LastRead 0 FirstWrite -1}
		K23 {Type I LastRead 0 FirstWrite -1}
		K31 {Type I LastRead 0 FirstWrite -1}
		K32 {Type I LastRead 0 FirstWrite -1}
		K33 {Type I LastRead 0 FirstWrite -1}
		ROffset {Type I LastRead 0 FirstWrite -1}
		GOffset {Type I LastRead 0 FirstWrite -1}
		BOffset {Type I LastRead 0 FirstWrite -1}
		ClampMin {Type I LastRead 0 FirstWrite -1}
		ClipMax {Type I LastRead 0 FirstWrite -1}
		K11_2 {Type I LastRead 0 FirstWrite -1}
		K12_2 {Type I LastRead 0 FirstWrite -1}
		K13_2 {Type I LastRead 0 FirstWrite -1}
		K21_2 {Type I LastRead 0 FirstWrite -1}
		K22_2 {Type I LastRead 0 FirstWrite -1}
		K23_2 {Type I LastRead 0 FirstWrite -1}
		K31_2 {Type I LastRead 0 FirstWrite -1}
		K32_2 {Type I LastRead 0 FirstWrite -1}
		K33_2 {Type I LastRead 0 FirstWrite -1}
		ROffset_2 {Type I LastRead 0 FirstWrite -1}
		GOffset_2 {Type I LastRead 0 FirstWrite -1}
		BOffset_2 {Type I LastRead 0 FirstWrite -1}
		ClampMin_2 {Type I LastRead 0 FirstWrite -1}
		ClipMax_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	InVideoFormat { ap_none {  { InVideoFormat in_data 0 8 } } }
	OutVideoFormat { ap_none {  { OutVideoFormat in_data 0 8 } } }
	width { ap_none {  { width in_data 0 16 } } }
	height { ap_none {  { height in_data 0 16 } } }
	ColStart { ap_none {  { ColStart in_data 0 16 } } }
	ColEnd { ap_none {  { ColEnd in_data 0 16 } } }
	RowStart { ap_none {  { RowStart in_data 0 16 } } }
	RowEnd { ap_none {  { RowEnd in_data 0 16 } } }
	K11 { ap_none {  { K11 in_data 0 16 } } }
	K12 { ap_none {  { K12 in_data 0 16 } } }
	K13 { ap_none {  { K13 in_data 0 16 } } }
	K21 { ap_none {  { K21 in_data 0 16 } } }
	K22 { ap_none {  { K22 in_data 0 16 } } }
	K23 { ap_none {  { K23 in_data 0 16 } } }
	K31 { ap_none {  { K31 in_data 0 16 } } }
	K32 { ap_none {  { K32 in_data 0 16 } } }
	K33 { ap_none {  { K33 in_data 0 16 } } }
	ROffset { ap_none {  { ROffset in_data 0 10 } } }
	GOffset { ap_none {  { GOffset in_data 0 10 } } }
	BOffset { ap_none {  { BOffset in_data 0 10 } } }
	ClampMin { ap_none {  { ClampMin in_data 0 8 } } }
	ClipMax { ap_none {  { ClipMax in_data 0 8 } } }
	K11_2 { ap_none {  { K11_2 in_data 0 16 } } }
	K12_2 { ap_none {  { K12_2 in_data 0 16 } } }
	K13_2 { ap_none {  { K13_2 in_data 0 16 } } }
	K21_2 { ap_none {  { K21_2 in_data 0 16 } } }
	K22_2 { ap_none {  { K22_2 in_data 0 16 } } }
	K23_2 { ap_none {  { K23_2 in_data 0 16 } } }
	K31_2 { ap_none {  { K31_2 in_data 0 16 } } }
	K32_2 { ap_none {  { K32_2 in_data 0 16 } } }
	K33_2 { ap_none {  { K33_2 in_data 0 16 } } }
	ROffset_2 { ap_none {  { ROffset_2 in_data 0 10 } } }
	GOffset_2 { ap_none {  { GOffset_2 in_data 0 10 } } }
	BOffset_2 { ap_none {  { BOffset_2 in_data 0 10 } } }
	ClampMin_2 { ap_none {  { ClampMin_2 in_data 0 8 } } }
	ClipMax_2 { ap_none {  { ClipMax_2 in_data 0 8 } } }
}
