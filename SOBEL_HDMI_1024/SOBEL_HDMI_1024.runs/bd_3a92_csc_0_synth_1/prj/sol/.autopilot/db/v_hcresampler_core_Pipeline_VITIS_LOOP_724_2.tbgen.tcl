set moduleName v_hcresampler_core_Pipeline_VITIS_LOOP_724_2
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
set C_modelName {v_hcresampler_core_Pipeline_VITIS_LOOP_724_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixbuf_y_val_V_19 int 8 regular  }
	{ pixbuf_y_val_V_18 int 8 regular  }
	{ pixbuf_y_val_V_17 int 8 regular  }
	{ pixbuf_y_val_V int 8 regular  }
	{ p_0_0_0_0_05241026_lcssa1052_i int 8 regular  }
	{ loopWidth int 12 regular  }
	{ select_ln685 int 3 regular  }
	{ zext_ln720 int 11 regular  }
	{ stream_in int 24 regular {fifo 0 volatile }  }
	{ stream_in_hresampled int 24 regular {fifo 1 volatile }  }
	{ p_read int 1 regular  }
	{ pixbuf_y_val_V_24_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_23_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_22_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_21_out int 8 regular {pointer 2}  }
	{ pixbuf_y_val_V_20_out int 8 regular {pointer 1}  }
	{ p_0_0_0_0_0_21075_i_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0516_21072_i_out int 8 regular {pointer 2}  }
	{ p_out int 8 regular {pointer 2}  }
	{ p_out1 int 8 regular {pointer 2}  }
	{ p_out2 int 8 regular {pointer 2}  }
	{ p_out3 int 8 regular {pointer 2}  }
	{ p_0_1_0_0_01035_i_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_01031_i_out int 8 regular {pointer 2}  }
	{ p_0_2_0_0_01025_i_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_01023_i_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_05241021_i_out int 8 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixbuf_y_val_V_19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_05241026_lcssa1052_i", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln685", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln720", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_hresampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_24_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_23_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_22_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_21_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "pixbuf_y_val_V_20_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_0_21075_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0516_21072_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_01035_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_01031_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_01025_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_01023_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_05241021_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 24 signal 8 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 8 } 
	{ stream_in_read sc_out sc_logic 1 signal 8 } 
	{ stream_in_hresampled_din sc_out sc_lv 24 signal 9 } 
	{ stream_in_hresampled_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ stream_in_hresampled_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ stream_in_hresampled_full_n sc_in sc_logic 1 signal 9 } 
	{ stream_in_hresampled_write sc_out sc_logic 1 signal 9 } 
	{ pixbuf_y_val_V_19 sc_in sc_lv 8 signal 0 } 
	{ pixbuf_y_val_V_18 sc_in sc_lv 8 signal 1 } 
	{ pixbuf_y_val_V_17 sc_in sc_lv 8 signal 2 } 
	{ pixbuf_y_val_V sc_in sc_lv 8 signal 3 } 
	{ p_0_0_0_0_05241026_lcssa1052_i sc_in sc_lv 8 signal 4 } 
	{ loopWidth sc_in sc_lv 12 signal 5 } 
	{ select_ln685 sc_in sc_lv 3 signal 6 } 
	{ zext_ln720 sc_in sc_lv 11 signal 7 } 
	{ p_read sc_in sc_lv 1 signal 10 } 
	{ pixbuf_y_val_V_24_out sc_out sc_lv 8 signal 11 } 
	{ pixbuf_y_val_V_24_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ pixbuf_y_val_V_23_out sc_out sc_lv 8 signal 12 } 
	{ pixbuf_y_val_V_23_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ pixbuf_y_val_V_22_out sc_out sc_lv 8 signal 13 } 
	{ pixbuf_y_val_V_22_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ pixbuf_y_val_V_21_out_i sc_in sc_lv 8 signal 14 } 
	{ pixbuf_y_val_V_21_out_o sc_out sc_lv 8 signal 14 } 
	{ pixbuf_y_val_V_21_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ pixbuf_y_val_V_20_out sc_out sc_lv 8 signal 15 } 
	{ pixbuf_y_val_V_20_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_0_0_0_0_0_21075_i_out_i sc_in sc_lv 8 signal 16 } 
	{ p_0_0_0_0_0_21075_i_out_o sc_out sc_lv 8 signal 16 } 
	{ p_0_0_0_0_0_21075_i_out_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_0_0_0_0_0516_21072_i_out_i sc_in sc_lv 8 signal 17 } 
	{ p_0_0_0_0_0516_21072_i_out_o sc_out sc_lv 8 signal 17 } 
	{ p_0_0_0_0_0516_21072_i_out_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_out_i sc_in sc_lv 8 signal 18 } 
	{ p_out_o sc_out sc_lv 8 signal 18 } 
	{ p_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_out1_i sc_in sc_lv 8 signal 19 } 
	{ p_out1_o sc_out sc_lv 8 signal 19 } 
	{ p_out1_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_out2_i sc_in sc_lv 8 signal 20 } 
	{ p_out2_o sc_out sc_lv 8 signal 20 } 
	{ p_out2_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_out3_i sc_in sc_lv 8 signal 21 } 
	{ p_out3_o sc_out sc_lv 8 signal 21 } 
	{ p_out3_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_0_1_0_0_01035_i_out_i sc_in sc_lv 8 signal 22 } 
	{ p_0_1_0_0_01035_i_out_o sc_out sc_lv 8 signal 22 } 
	{ p_0_1_0_0_01035_i_out_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_0_1_0_0_01031_i_out_i sc_in sc_lv 8 signal 23 } 
	{ p_0_1_0_0_01031_i_out_o sc_out sc_lv 8 signal 23 } 
	{ p_0_1_0_0_01031_i_out_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ p_0_2_0_0_01025_i_out_i sc_in sc_lv 8 signal 24 } 
	{ p_0_2_0_0_01025_i_out_o sc_out sc_lv 8 signal 24 } 
	{ p_0_2_0_0_01025_i_out_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_0_1_0_0_01023_i_out_i sc_in sc_lv 8 signal 25 } 
	{ p_0_1_0_0_01023_i_out_o sc_out sc_lv 8 signal 25 } 
	{ p_0_1_0_0_01023_i_out_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_0_0_0_0_05241021_i_out_i sc_in sc_lv 8 signal 26 } 
	{ p_0_0_0_0_05241021_i_out_o sc_out sc_lv 8 signal 26 } 
	{ p_0_0_0_0_05241021_i_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "stream_in_hresampled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "din" }} , 
 	{ "name": "stream_in_hresampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_hresampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_hresampled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "full_n" }} , 
 	{ "name": "stream_in_hresampled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "write" }} , 
 	{ "name": "pixbuf_y_val_V_19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_19", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_18", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_17", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_05241026_lcssa1052_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_05241026_lcssa1052_i", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "select_ln685", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln685", "role": "default" }} , 
 	{ "name": "zext_ln720", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "zext_ln720", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_24_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_24_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_23_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_23_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_22_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_22_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_21_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_21_out", "role": "i" }} , 
 	{ "name": "pixbuf_y_val_V_21_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_21_out", "role": "o" }} , 
 	{ "name": "pixbuf_y_val_V_21_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_21_out", "role": "o_ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_20_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_20_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_21075_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_21075_i_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0_21075_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_21075_i_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0_21075_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_21075_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0516_21072_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0516_21072_i_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0516_21072_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0516_21072_i_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0516_21072_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0516_21072_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "i" }} , 
 	{ "name": "p_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "o" }} , 
 	{ "name": "p_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_out1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "i" }} , 
 	{ "name": "p_out1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "o" }} , 
 	{ "name": "p_out1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "o_ap_vld" }} , 
 	{ "name": "p_out2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "i" }} , 
 	{ "name": "p_out2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "o" }} , 
 	{ "name": "p_out2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "o_ap_vld" }} , 
 	{ "name": "p_out3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "i" }} , 
 	{ "name": "p_out3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "o" }} , 
 	{ "name": "p_out3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_01035_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01035_i_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_01035_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01035_i_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_01035_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_01035_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_01031_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01031_i_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_01031_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01031_i_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_01031_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_01031_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_01025_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_01025_i_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_01025_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_01025_i_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_01025_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_01025_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_01023_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01023_i_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_01023_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_01023_i_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_01023_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_01023_i_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_05241021_i_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_05241021_i_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_05241021_i_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_05241021_i_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_05241021_i_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_05241021_i_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core_Pipeline_VITIS_LOOP_724_2",
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
			{"Name" : "pixbuf_y_val_V_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_05241026_lcssa1052_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln685", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln720", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_hresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_21_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_val_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_21075_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0516_21072_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01035_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01031_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_01025_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01023_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_05241021_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_724_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 {
		pixbuf_y_val_V_19 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_18 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_17 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_05241026_lcssa1052_i {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		select_ln685 {Type I LastRead 0 FirstWrite -1}
		zext_ln720 {Type I LastRead 0 FirstWrite -1}
		stream_in {Type I LastRead 1 FirstWrite -1}
		stream_in_hresampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_24_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_23_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_22_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_21_out {Type IO LastRead 3 FirstWrite 3}
		pixbuf_y_val_V_20_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0_21075_i_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0516_21072_i_out {Type IO LastRead 2 FirstWrite 2}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_out1 {Type IO LastRead 2 FirstWrite 2}
		p_out2 {Type IO LastRead 2 FirstWrite 2}
		p_out3 {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_01035_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01031_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_01025_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01023_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_05241021_i_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "32772"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "32772"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pixbuf_y_val_V_19 { ap_none {  { pixbuf_y_val_V_19 in_data 0 8 } } }
	pixbuf_y_val_V_18 { ap_none {  { pixbuf_y_val_V_18 in_data 0 8 } } }
	pixbuf_y_val_V_17 { ap_none {  { pixbuf_y_val_V_17 in_data 0 8 } } }
	pixbuf_y_val_V { ap_none {  { pixbuf_y_val_V in_data 0 8 } } }
	p_0_0_0_0_05241026_lcssa1052_i { ap_none {  { p_0_0_0_0_05241026_lcssa1052_i in_data 0 8 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 12 } } }
	select_ln685 { ap_none {  { select_ln685 in_data 0 3 } } }
	zext_ln720 { ap_none {  { zext_ln720 in_data 0 11 } } }
	stream_in { ap_fifo {  { stream_in_dout fifo_port_we 0 24 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_data 1 1 } } }
	stream_in_hresampled { ap_fifo {  { stream_in_hresampled_din fifo_port_we 1 24 }  { stream_in_hresampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_hresampled_fifo_cap fifo_update 0 5 }  { stream_in_hresampled_full_n fifo_status 0 1 }  { stream_in_hresampled_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	pixbuf_y_val_V_24_out { ap_vld {  { pixbuf_y_val_V_24_out out_data 1 8 }  { pixbuf_y_val_V_24_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_23_out { ap_vld {  { pixbuf_y_val_V_23_out out_data 1 8 }  { pixbuf_y_val_V_23_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_22_out { ap_vld {  { pixbuf_y_val_V_22_out out_data 1 8 }  { pixbuf_y_val_V_22_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_21_out { ap_ovld {  { pixbuf_y_val_V_21_out_i in_data 0 8 }  { pixbuf_y_val_V_21_out_o out_data 1 8 }  { pixbuf_y_val_V_21_out_o_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_20_out { ap_vld {  { pixbuf_y_val_V_20_out out_data 1 8 }  { pixbuf_y_val_V_20_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_21075_i_out { ap_ovld {  { p_0_0_0_0_0_21075_i_out_i in_data 0 8 }  { p_0_0_0_0_0_21075_i_out_o out_data 1 8 }  { p_0_0_0_0_0_21075_i_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0516_21072_i_out { ap_ovld {  { p_0_0_0_0_0516_21072_i_out_i in_data 0 8 }  { p_0_0_0_0_0516_21072_i_out_o out_data 1 8 }  { p_0_0_0_0_0516_21072_i_out_o_ap_vld out_vld 1 1 } } }
	p_out { ap_ovld {  { p_out_i in_data 0 8 }  { p_out_o out_data 1 8 }  { p_out_o_ap_vld out_vld 1 1 } } }
	p_out1 { ap_ovld {  { p_out1_i in_data 0 8 }  { p_out1_o out_data 1 8 }  { p_out1_o_ap_vld out_vld 1 1 } } }
	p_out2 { ap_ovld {  { p_out2_i in_data 0 8 }  { p_out2_o out_data 1 8 }  { p_out2_o_ap_vld out_vld 1 1 } } }
	p_out3 { ap_ovld {  { p_out3_i in_data 0 8 }  { p_out3_o out_data 1 8 }  { p_out3_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_01035_i_out { ap_ovld {  { p_0_1_0_0_01035_i_out_i in_data 0 8 }  { p_0_1_0_0_01035_i_out_o out_data 1 8 }  { p_0_1_0_0_01035_i_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_01031_i_out { ap_ovld {  { p_0_1_0_0_01031_i_out_i in_data 0 8 }  { p_0_1_0_0_01031_i_out_o out_data 1 8 }  { p_0_1_0_0_01031_i_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_01025_i_out { ap_ovld {  { p_0_2_0_0_01025_i_out_i in_data 0 8 }  { p_0_2_0_0_01025_i_out_o out_data 1 8 }  { p_0_2_0_0_01025_i_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_01023_i_out { ap_ovld {  { p_0_1_0_0_01023_i_out_i in_data 0 8 }  { p_0_1_0_0_01023_i_out_o out_data 1 8 }  { p_0_1_0_0_01023_i_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_05241021_i_out { ap_ovld {  { p_0_0_0_0_05241021_i_out_i in_data 0 8 }  { p_0_0_0_0_05241021_i_out_o out_data 1 8 }  { p_0_0_0_0_05241021_i_out_o_ap_vld out_vld 1 1 } } }
}
