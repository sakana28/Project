set moduleName v_hcresampler_core_Pipeline_VITIS_LOOP_159_2
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
set C_modelName {v_hcresampler_core_Pipeline_VITIS_LOOP_159_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixbuf_y_val_V_4 int 8 regular  }
	{ pixbuf_y_val_V_3 int 8 regular  }
	{ pixbuf_y_val_V_2 int 8 regular  }
	{ pixbuf_y_val_V int 8 regular  }
	{ loopWidth int 11 regular {ap_stable 0} }
	{ cmp56 int 1 regular {ap_stable 0} }
	{ conv285_cast_cast_cast_cast int 1 regular {ap_stable 0} }
	{ not_icmp_ln145 int 1 regular {ap_stable 0} }
	{ coefs_0_2_load int 16 regular {ap_stable 0} }
	{ coefs_1_2_load int 16 regular {ap_stable 0} }
	{ coefs_0_0_load int 16 regular {ap_stable 0} }
	{ coefs_1_0_load int 16 regular {ap_stable 0} }
	{ coefs_0_1_load int 16 regular {ap_stable 0} }
	{ coefs_1_1_load int 16 regular {ap_stable 0} }
	{ coefs_0_3_load int 16 regular {ap_stable 0} }
	{ coefs_1_3_load int 16 regular {ap_stable 0} }
	{ icmp_ln145 int 1 regular {ap_stable 0} }
	{ cmp394_not int 1 regular {ap_stable 0} }
	{ cmp425 int 1 regular {ap_stable 0} }
	{ select_ln156 int 3 regular {ap_stable 0} }
	{ width_cast2_cast int 11 regular {ap_stable 0} }
	{ srcYUV int 24 regular {fifo 0 volatile }  }
	{ outYUV int 24 regular {fifo 1 volatile }  }
	{ pixbuf_y_val_V_9_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_8_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_7_out int 8 regular {pointer 1}  }
	{ pixbuf_y_val_V_6_out int 8 regular {pointer 2}  }
	{ pixbuf_y_val_V_5_out int 8 regular {pointer 1}  }
	{ p_0_0_0_0_0_2467_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0185_2463_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0_1460_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0185_1457_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0451453_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0451_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0185445447_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0185445_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0440_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0436_out int 8 regular {pointer 2}  }
	{ p_0_2_0_0_0431_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0429_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0193427_out int 8 regular {pointer 2}  }
	{ filt_res1_1_out int 64 regular {pointer 2}  }
	{ filt_res0_1_out int 64 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixbuf_y_val_V_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_val_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp56", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv285_cast_cast_cast_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "not_icmp_ln145", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_0_3_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coefs_1_3_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln145", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp394_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp425", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln156", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "width_cast2_cast", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "outYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_val_V_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "pixbuf_y_val_V_5_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_0_2467_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0185_2463_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0_1460_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0185_1457_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0451453_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0451_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0185445447_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0185445_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0440_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0436_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0431_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0429_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0193427_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "filt_res1_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "filt_res0_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ srcYUV_dout sc_in sc_lv 24 signal 21 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 21 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 21 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 21 } 
	{ srcYUV_read sc_out sc_logic 1 signal 21 } 
	{ outYUV_din sc_out sc_lv 24 signal 22 } 
	{ outYUV_num_data_valid sc_in sc_lv 5 signal 22 } 
	{ outYUV_fifo_cap sc_in sc_lv 5 signal 22 } 
	{ outYUV_full_n sc_in sc_logic 1 signal 22 } 
	{ outYUV_write sc_out sc_logic 1 signal 22 } 
	{ pixbuf_y_val_V_4 sc_in sc_lv 8 signal 0 } 
	{ pixbuf_y_val_V_3 sc_in sc_lv 8 signal 1 } 
	{ pixbuf_y_val_V_2 sc_in sc_lv 8 signal 2 } 
	{ pixbuf_y_val_V sc_in sc_lv 8 signal 3 } 
	{ loopWidth sc_in sc_lv 11 signal 4 } 
	{ cmp56 sc_in sc_lv 1 signal 5 } 
	{ conv285_cast_cast_cast_cast sc_in sc_lv 1 signal 6 } 
	{ not_icmp_ln145 sc_in sc_lv 1 signal 7 } 
	{ coefs_0_2_load sc_in sc_lv 16 signal 8 } 
	{ coefs_1_2_load sc_in sc_lv 16 signal 9 } 
	{ coefs_0_0_load sc_in sc_lv 16 signal 10 } 
	{ coefs_1_0_load sc_in sc_lv 16 signal 11 } 
	{ coefs_0_1_load sc_in sc_lv 16 signal 12 } 
	{ coefs_1_1_load sc_in sc_lv 16 signal 13 } 
	{ coefs_0_3_load sc_in sc_lv 16 signal 14 } 
	{ coefs_1_3_load sc_in sc_lv 16 signal 15 } 
	{ icmp_ln145 sc_in sc_lv 1 signal 16 } 
	{ cmp394_not sc_in sc_lv 1 signal 17 } 
	{ cmp425 sc_in sc_lv 1 signal 18 } 
	{ select_ln156 sc_in sc_lv 3 signal 19 } 
	{ width_cast2_cast sc_in sc_lv 11 signal 20 } 
	{ pixbuf_y_val_V_9_out sc_out sc_lv 8 signal 23 } 
	{ pixbuf_y_val_V_9_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ pixbuf_y_val_V_8_out sc_out sc_lv 8 signal 24 } 
	{ pixbuf_y_val_V_8_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ pixbuf_y_val_V_7_out sc_out sc_lv 8 signal 25 } 
	{ pixbuf_y_val_V_7_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ pixbuf_y_val_V_6_out_i sc_in sc_lv 8 signal 26 } 
	{ pixbuf_y_val_V_6_out_o sc_out sc_lv 8 signal 26 } 
	{ pixbuf_y_val_V_6_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ pixbuf_y_val_V_5_out sc_out sc_lv 8 signal 27 } 
	{ pixbuf_y_val_V_5_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_0_0_0_0_0_2467_out_i sc_in sc_lv 8 signal 28 } 
	{ p_0_0_0_0_0_2467_out_o sc_out sc_lv 8 signal 28 } 
	{ p_0_0_0_0_0_2467_out_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_0_0_0_0_0185_2463_out_i sc_in sc_lv 8 signal 29 } 
	{ p_0_0_0_0_0185_2463_out_o sc_out sc_lv 8 signal 29 } 
	{ p_0_0_0_0_0185_2463_out_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_0_0_0_0_0_1460_out_i sc_in sc_lv 8 signal 30 } 
	{ p_0_0_0_0_0_1460_out_o sc_out sc_lv 8 signal 30 } 
	{ p_0_0_0_0_0_1460_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_0_0_0_0_0185_1457_out_i sc_in sc_lv 8 signal 31 } 
	{ p_0_0_0_0_0185_1457_out_o sc_out sc_lv 8 signal 31 } 
	{ p_0_0_0_0_0185_1457_out_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_0_0_0_0_0451453_out_i sc_in sc_lv 8 signal 32 } 
	{ p_0_0_0_0_0451453_out_o sc_out sc_lv 8 signal 32 } 
	{ p_0_0_0_0_0451453_out_o_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_0_0_0_0_0451_out_i sc_in sc_lv 8 signal 33 } 
	{ p_0_0_0_0_0451_out_o sc_out sc_lv 8 signal 33 } 
	{ p_0_0_0_0_0451_out_o_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_0_0_0_0_0185445447_out_i sc_in sc_lv 8 signal 34 } 
	{ p_0_0_0_0_0185445447_out_o sc_out sc_lv 8 signal 34 } 
	{ p_0_0_0_0_0185445447_out_o_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_0_0_0_0_0185445_out_i sc_in sc_lv 8 signal 35 } 
	{ p_0_0_0_0_0185445_out_o sc_out sc_lv 8 signal 35 } 
	{ p_0_0_0_0_0185445_out_o_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_0_1_0_0_0440_out_i sc_in sc_lv 8 signal 36 } 
	{ p_0_1_0_0_0440_out_o sc_out sc_lv 8 signal 36 } 
	{ p_0_1_0_0_0440_out_o_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_0_1_0_0_0436_out_i sc_in sc_lv 8 signal 37 } 
	{ p_0_1_0_0_0436_out_o sc_out sc_lv 8 signal 37 } 
	{ p_0_1_0_0_0436_out_o_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_0_2_0_0_0431_out_i sc_in sc_lv 8 signal 38 } 
	{ p_0_2_0_0_0431_out_o sc_out sc_lv 8 signal 38 } 
	{ p_0_2_0_0_0431_out_o_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_0_1_0_0_0429_out_i sc_in sc_lv 8 signal 39 } 
	{ p_0_1_0_0_0429_out_o sc_out sc_lv 8 signal 39 } 
	{ p_0_1_0_0_0429_out_o_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_0_0_0_0_0193427_out_i sc_in sc_lv 8 signal 40 } 
	{ p_0_0_0_0_0193427_out_o sc_out sc_lv 8 signal 40 } 
	{ p_0_0_0_0_0193427_out_o_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ filt_res1_1_out_i sc_in sc_lv 64 signal 41 } 
	{ filt_res1_1_out_o sc_out sc_lv 64 signal 41 } 
	{ filt_res1_1_out_o_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ filt_res0_1_out_i sc_in sc_lv 64 signal 42 } 
	{ filt_res0_1_out_o sc_out sc_lv 64 signal 42 } 
	{ filt_res0_1_out_o_ap_vld sc_out sc_logic 1 outvld 42 } 
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
 	{ "name": "pixbuf_y_val_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_4", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_3", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_2", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "cmp56", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp56", "role": "default" }} , 
 	{ "name": "conv285_cast_cast_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv285_cast_cast_cast_cast", "role": "default" }} , 
 	{ "name": "not_icmp_ln145", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "not_icmp_ln145", "role": "default" }} , 
 	{ "name": "coefs_0_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_2_load", "role": "default" }} , 
 	{ "name": "coefs_1_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_2_load", "role": "default" }} , 
 	{ "name": "coefs_0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_0_load", "role": "default" }} , 
 	{ "name": "coefs_1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_0_load", "role": "default" }} , 
 	{ "name": "coefs_0_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_1_load", "role": "default" }} , 
 	{ "name": "coefs_1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_1_load", "role": "default" }} , 
 	{ "name": "coefs_0_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_0_3_load", "role": "default" }} , 
 	{ "name": "coefs_1_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coefs_1_3_load", "role": "default" }} , 
 	{ "name": "icmp_ln145", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln145", "role": "default" }} , 
 	{ "name": "cmp394_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp394_not", "role": "default" }} , 
 	{ "name": "cmp425", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp425", "role": "default" }} , 
 	{ "name": "select_ln156", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln156", "role": "default" }} , 
 	{ "name": "width_cast2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_cast2_cast", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_9_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_9_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_8_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_8_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_7_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_7_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_6_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_6_out", "role": "i" }} , 
 	{ "name": "pixbuf_y_val_V_6_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_6_out", "role": "o" }} , 
 	{ "name": "pixbuf_y_val_V_6_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_6_out", "role": "o_ap_vld" }} , 
 	{ "name": "pixbuf_y_val_V_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixbuf_y_val_V_5_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_val_V_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_val_V_5_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_2467_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_2467_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0_2467_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_2467_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0_2467_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_2467_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0185_2463_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185_2463_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0185_2463_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185_2463_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0185_2463_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0185_2463_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_1460_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_1460_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0_1460_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_1460_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0_1460_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_1460_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0185_1457_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185_1457_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0185_1457_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185_1457_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0185_1457_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0185_1457_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0451453_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0451453_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0451453_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0451453_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0451453_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0451453_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0451_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0451_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0451_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0451_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0451_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0451_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0185445447_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185445447_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0185445447_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185445447_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0185445447_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0185445447_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0185445_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185445_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0185445_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0185445_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0185445_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0185445_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0440_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0440_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0440_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0440_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0440_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0440_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0436_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0436_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0436_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0436_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0436_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0436_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0431_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0431_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0431_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0431_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0431_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0431_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0429_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0429_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0429_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0429_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0429_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0429_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0193427_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0193427_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0193427_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0193427_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0193427_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0193427_out", "role": "o_ap_vld" }} , 
 	{ "name": "filt_res1_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res1_1_out", "role": "i" }} , 
 	{ "name": "filt_res1_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res1_1_out", "role": "o" }} , 
 	{ "name": "filt_res1_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "filt_res1_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "filt_res0_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res0_1_out", "role": "i" }} , 
 	{ "name": "filt_res0_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res0_1_out", "role": "o" }} , 
 	{ "name": "filt_res0_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "filt_res0_1_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_432_8_1_1_U52", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_12ns_24_4_1_U53", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_12ns_24_4_1_U54", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_24s_25_4_1_U55", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_24s_25_4_1_U56", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_25s_26_4_1_U57", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_25s_26_4_1_U58", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_26_4_1_U59", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_16s_26s_26_4_1_U60", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "16", "Max" : "32782"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "32782"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pixbuf_y_val_V_4 { ap_none {  { pixbuf_y_val_V_4 in_data 0 8 } } }
	pixbuf_y_val_V_3 { ap_none {  { pixbuf_y_val_V_3 in_data 0 8 } } }
	pixbuf_y_val_V_2 { ap_none {  { pixbuf_y_val_V_2 in_data 0 8 } } }
	pixbuf_y_val_V { ap_none {  { pixbuf_y_val_V in_data 0 8 } } }
	loopWidth { ap_stable {  { loopWidth in_data 0 11 } } }
	cmp56 { ap_stable {  { cmp56 in_data 0 1 } } }
	conv285_cast_cast_cast_cast { ap_stable {  { conv285_cast_cast_cast_cast in_data 0 1 } } }
	not_icmp_ln145 { ap_stable {  { not_icmp_ln145 in_data 0 1 } } }
	coefs_0_2_load { ap_stable {  { coefs_0_2_load in_data 0 16 } } }
	coefs_1_2_load { ap_stable {  { coefs_1_2_load in_data 0 16 } } }
	coefs_0_0_load { ap_stable {  { coefs_0_0_load in_data 0 16 } } }
	coefs_1_0_load { ap_stable {  { coefs_1_0_load in_data 0 16 } } }
	coefs_0_1_load { ap_stable {  { coefs_0_1_load in_data 0 16 } } }
	coefs_1_1_load { ap_stable {  { coefs_1_1_load in_data 0 16 } } }
	coefs_0_3_load { ap_stable {  { coefs_0_3_load in_data 0 16 } } }
	coefs_1_3_load { ap_stable {  { coefs_1_3_load in_data 0 16 } } }
	icmp_ln145 { ap_stable {  { icmp_ln145 in_data 0 1 } } }
	cmp394_not { ap_stable {  { cmp394_not in_data 0 1 } } }
	cmp425 { ap_stable {  { cmp425 in_data 0 1 } } }
	select_ln156 { ap_stable {  { select_ln156 in_data 0 3 } } }
	width_cast2_cast { ap_stable {  { width_cast2_cast in_data 0 11 } } }
	srcYUV { ap_fifo {  { srcYUV_dout fifo_port_we 0 24 }  { srcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { srcYUV_fifo_cap fifo_update 0 5 }  { srcYUV_empty_n fifo_status 0 1 }  { srcYUV_read fifo_data 1 1 } } }
	outYUV { ap_fifo {  { outYUV_din fifo_port_we 1 24 }  { outYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { outYUV_fifo_cap fifo_update 0 5 }  { outYUV_full_n fifo_status 0 1 }  { outYUV_write fifo_data 1 1 } } }
	pixbuf_y_val_V_9_out { ap_vld {  { pixbuf_y_val_V_9_out out_data 1 8 }  { pixbuf_y_val_V_9_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_8_out { ap_vld {  { pixbuf_y_val_V_8_out out_data 1 8 }  { pixbuf_y_val_V_8_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_7_out { ap_vld {  { pixbuf_y_val_V_7_out out_data 1 8 }  { pixbuf_y_val_V_7_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_6_out { ap_ovld {  { pixbuf_y_val_V_6_out_i in_data 0 8 }  { pixbuf_y_val_V_6_out_o out_data 1 8 }  { pixbuf_y_val_V_6_out_o_ap_vld out_vld 1 1 } } }
	pixbuf_y_val_V_5_out { ap_vld {  { pixbuf_y_val_V_5_out out_data 1 8 }  { pixbuf_y_val_V_5_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_2467_out { ap_ovld {  { p_0_0_0_0_0_2467_out_i in_data 0 8 }  { p_0_0_0_0_0_2467_out_o out_data 1 8 }  { p_0_0_0_0_0_2467_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0185_2463_out { ap_ovld {  { p_0_0_0_0_0185_2463_out_i in_data 0 8 }  { p_0_0_0_0_0185_2463_out_o out_data 1 8 }  { p_0_0_0_0_0185_2463_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_1460_out { ap_ovld {  { p_0_0_0_0_0_1460_out_i in_data 0 8 }  { p_0_0_0_0_0_1460_out_o out_data 1 8 }  { p_0_0_0_0_0_1460_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0185_1457_out { ap_ovld {  { p_0_0_0_0_0185_1457_out_i in_data 0 8 }  { p_0_0_0_0_0185_1457_out_o out_data 1 8 }  { p_0_0_0_0_0185_1457_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0451453_out { ap_ovld {  { p_0_0_0_0_0451453_out_i in_data 0 8 }  { p_0_0_0_0_0451453_out_o out_data 1 8 }  { p_0_0_0_0_0451453_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0451_out { ap_ovld {  { p_0_0_0_0_0451_out_i in_data 0 8 }  { p_0_0_0_0_0451_out_o out_data 1 8 }  { p_0_0_0_0_0451_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0185445447_out { ap_ovld {  { p_0_0_0_0_0185445447_out_i in_data 0 8 }  { p_0_0_0_0_0185445447_out_o out_data 1 8 }  { p_0_0_0_0_0185445447_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0185445_out { ap_ovld {  { p_0_0_0_0_0185445_out_i in_data 0 8 }  { p_0_0_0_0_0185445_out_o out_data 1 8 }  { p_0_0_0_0_0185445_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0440_out { ap_ovld {  { p_0_1_0_0_0440_out_i in_data 0 8 }  { p_0_1_0_0_0440_out_o out_data 1 8 }  { p_0_1_0_0_0440_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0436_out { ap_ovld {  { p_0_1_0_0_0436_out_i in_data 0 8 }  { p_0_1_0_0_0436_out_o out_data 1 8 }  { p_0_1_0_0_0436_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0431_out { ap_ovld {  { p_0_2_0_0_0431_out_i in_data 0 8 }  { p_0_2_0_0_0431_out_o out_data 1 8 }  { p_0_2_0_0_0431_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0429_out { ap_ovld {  { p_0_1_0_0_0429_out_i in_data 0 8 }  { p_0_1_0_0_0429_out_o out_data 1 8 }  { p_0_1_0_0_0429_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0193427_out { ap_ovld {  { p_0_0_0_0_0193427_out_i in_data 0 8 }  { p_0_0_0_0_0193427_out_o out_data 1 8 }  { p_0_0_0_0_0193427_out_o_ap_vld out_vld 1 1 } } }
	filt_res1_1_out { ap_ovld {  { filt_res1_1_out_i in_data 0 64 }  { filt_res1_1_out_o out_data 1 64 }  { filt_res1_1_out_o_ap_vld out_vld 1 1 } } }
	filt_res0_1_out { ap_ovld {  { filt_res0_1_out_i in_data 0 64 }  { filt_res0_1_out_o out_data 1 64 }  { filt_res0_1_out_o_ap_vld out_vld 1 1 } } }
}
