set moduleName v_hscaler
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {v_hscaler}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_video_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ Height int 16 regular {axi_slave 0}  }
	{ WidthIn int 16 regular {axi_slave 0}  }
	{ WidthOut int 16 regular {axi_slave 0}  }
	{ ColorMode int 8 regular {axi_slave 0}  }
	{ PixelRate int 32 unused {axi_slave 0}  }
	{ ColorModeOut int 8 regular {axi_slave 0}  }
	{ hfltCoeff int 16 regular {axi_slave 0}  }
	{ phasesH int 9 regular {axi_slave 0}  }
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "WidthIn", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "WidthOut", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "ColorMode", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "PixelRate", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ColorModeOut", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "hfltCoeff", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":2048}, "offset_end" : {"in":3071}} , 
 	{ "Name" : "phasesH", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 9, "direction" : "READONLY", "offset" : {"in":16384}, "offset_end" : {"in":20479}} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 15 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 15 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axis_video_TDATA sc_in sc_lv 24 signal 0 } 
	{ s_axis_video_TKEEP sc_in sc_lv 3 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 3 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 15 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 16 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 17 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 18 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 19 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 20 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 21 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 21 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 21 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_hscaler","role":"start","value":"0","valid_bit":"0"},{"name":"v_hscaler","role":"continue","value":"0","valid_bit":"4"},{"name":"v_hscaler","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Height","role":"data","value":"16"},{"name":"WidthIn","role":"data","value":"24"},{"name":"WidthOut","role":"data","value":"32"},{"name":"ColorMode","role":"data","value":"40"},{"name":"PixelRate","role":"data","value":"48"},{"name":"ColorModeOut","role":"data","value":"56"},{"name":"hfltCoeff","role":"data","value":"2048"},{"name":"phasesH","role":"data","value":"16384"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_hscaler","role":"start","value":"0","valid_bit":"0"},{"name":"v_hscaler","role":"done","value":"0","valid_bit":"1"},{"name":"v_hscaler","role":"idle","value":"0","valid_bit":"2"},{"name":"v_hscaler","role":"ready","value":"0","valid_bit":"3"},{"name":"v_hscaler","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "18", "21", "70", "74", "90", "91", "92", "93", "94", "95", "96"],
		"CDFG" : "v_hscaler",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1128", "EstimateLatencyMax" : "1073971216",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_entry1_proc_U0"},
			{"ID" : "3", "Name" : "Block_entry12_proc_U0"},
			{"ID" : "4", "Name" : "AXIvideo2MultiPixStream_U0"},
			{"ID" : "21", "Name" : "hscale_core_polyphase_U0"}],
		"OutputProcess" : [
			{"ID" : "74", "Name" : "MultiPixStream2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "Height"},
					{"ID" : "70", "SubInstance" : "v_hcresampler_core_1_U0", "Port" : "Height"},
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "Height"},
					{"ID" : "18", "SubInstance" : "v_hcresampler_core_U0", "Port" : "Height"},
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "Height"}]},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "WidthIn"},
					{"ID" : "18", "SubInstance" : "v_hcresampler_core_U0", "Port" : "WidthIn"},
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "WidthIn"}]},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "WidthOut"},
					{"ID" : "70", "SubInstance" : "v_hcresampler_core_1_U0", "Port" : "WidthOut"},
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "WidthOut"}]},
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry1_proc_U0", "Port" : "ColorMode"},
					{"ID" : "4", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "ColorMode"}]},
			{"Name" : "PixelRate", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorModeOut", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Block_entry12_proc_U0", "Port" : "ColorModeOut"},
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "ColorModeOut"}]},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "hfltCoeff"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "phasesH"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_dest_V"}]},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "mapComp"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry1_proc",
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
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry12_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry12_proc",
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
			{"Name" : "ColorModeOut", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0", "Parent" : "0", "Child" : ["5", "7", "9", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "AXIvideo2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "422", "EstimateLatencyMax" : "2084406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "92", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Port" : "stream_in", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axi_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164", "Parent" : "4", "Child" : ["8"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "1922",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp_ln1435", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1435_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_V_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194", "Parent" : "4", "Child" : ["10"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axi_data_V_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axi_data_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "NotSupport"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_data_V_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_keep_V_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_strb_V_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_user_V_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_last_V_U", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_id_V_U", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_dest_V_U", "Parent" : "4"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "v_hcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "92", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152", "Port" : "stream_in", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "93", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152", "Port" : "stream_upsampled", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1634_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2",
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
			{"Name" : "p_0_0_0_0_05191015_lcssa1040", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1632", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_upsampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_21_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_val_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_21063_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0511_21060_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01024_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01020_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_01014_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01012_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_05191010_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1636_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "30"],
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
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "93", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "stream_upsampled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202", "Port" : "hfltCoeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "phasesH", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["70"], "DependentChan" : "94", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Port" : "stream_scaled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_1_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_2_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_3_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_4_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_5_U", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202", "Parent" : "21", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220", "Parent" : "21", "Child" : ["31", "68", "69"],
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
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_0", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_1", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_2", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_3", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_4", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hscale_polyphase_fu_220", "Port" : "FiltCoeff_5", "Inst_start_state" : "7", "Inst_end_state" : "22"}]},
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220", "Parent" : "30", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
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
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U96", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U97", "Parent" : "31"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U98", "Parent" : "31"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U99", "Parent" : "31"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U100", "Parent" : "31"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U101", "Parent" : "31"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U102", "Parent" : "31"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U103", "Parent" : "31"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U104", "Parent" : "31"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U105", "Parent" : "31"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U106", "Parent" : "31"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U107", "Parent" : "31"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U108", "Parent" : "31"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U109", "Parent" : "31"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U110", "Parent" : "31"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_53_8_1_1_U111", "Parent" : "31"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_43_8_1_1_U112", "Parent" : "31"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mux_33_8_1_1_U113", "Parent" : "31"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U114", "Parent" : "31"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U115", "Parent" : "31"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_12ns_24_4_1_U116", "Parent" : "31"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U117", "Parent" : "31"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U118", "Parent" : "31"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_24s_25_4_1_U119", "Parent" : "31"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U120", "Parent" : "31"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U121", "Parent" : "31"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_25s_26_4_1_U122", "Parent" : "31"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U123", "Parent" : "31"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U124", "Parent" : "31"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_26_4_1_U125", "Parent" : "31"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U126", "Parent" : "31"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U127", "Parent" : "31"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_26s_27_4_1_U128", "Parent" : "31"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U129", "Parent" : "31"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U130", "Parent" : "31"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_hscale_polyphase_fu_220.mac_muladd_8ns_16s_27s_27_4_1_U131", "Parent" : "31"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.grp_reg_ap_uint_9_s_fu_758", "Parent" : "30",
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0", "Parent" : "0", "Child" : ["71"],
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
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "94", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Port" : "stream_scaled", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "91", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["74"], "DependentChan" : "95", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Port" : "stream_out_422", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1634_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166", "Parent" : "70", "Child" : ["72", "73"],
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.mux_432_8_1_1_U211", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0", "Parent" : "0", "Child" : ["75", "78", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "MultiPixStream2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "362", "EstimateLatencyMax" : "2080090",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "70",
		"StartFifo" : "start_for_MultiPixStream2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["70"], "DependentChan" : "95", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "stream_out_422", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorModeOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130", "Port" : "mapComp", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1542_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130", "Parent" : "74", "Child" : ["76", "77"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln1538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "map_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "map_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "map_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1536_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130.mapComp_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140", "Parent" : "74", "Child" : ["79", "80", "81", "82"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "1923",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "map_V_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1544_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.mux_35_8_1_1_U254", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.mux_35_8_1_1_U255", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.mux_35_8_1_1_U256", "Parent" : "78"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_data_V_U", "Parent" : "74"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_keep_V_U", "Parent" : "74"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_strb_V_U", "Parent" : "74"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_user_V_U", "Parent" : "74"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_last_V_U", "Parent" : "74"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_id_V_U", "Parent" : "74"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_dest_V_U", "Parent" : "74"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruHcr1_channel_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruHcr2_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_in_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_upsampled_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_scaled_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_out_422_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MultiPixStream2AXIvideo_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_hscaler {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		Height {Type I LastRead 3 FirstWrite -1}
		WidthIn {Type I LastRead 1 FirstWrite -1}
		WidthOut {Type I LastRead 3 FirstWrite -1}
		ColorMode {Type I LastRead 3 FirstWrite -1}
		PixelRate {Type I LastRead -1 FirstWrite -1}
		ColorModeOut {Type I LastRead 0 FirstWrite -1}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}
		phasesH {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	Block_entry1_proc {
		ColorMode {Type I LastRead 0 FirstWrite -1}}
	Block_entry12_proc {
		ColorModeOut {Type I LastRead 0 FirstWrite -1}}
	AXIvideo2MultiPixStream {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthIn {Type I LastRead 0 FirstWrite -1}
		ColorMode {Type I LastRead 3 FirstWrite -1}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_V_out {Type O LastRead -1 FirstWrite 0}
		axi_last_V_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		sof_4 {Type I LastRead 0 FirstWrite -1}
		axi_last_V_2 {Type I LastRead 0 FirstWrite -1}
		axi_data_V_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln6 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1435 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1435_1 {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_V_3_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		axi_data_V_3_reload {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_V_4_out {Type O LastRead -1 FirstWrite 0}}
	v_hcresampler_core {
		stream_in {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 2 FirstWrite -1}
		WidthIn {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_upsampled {Type O LastRead -1 FirstWrite 2}}
	v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2 {
		pixbuf_y_val_V_19 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_18 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_17 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_05191015_lcssa1040 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		select_ln1632 {Type I LastRead 0 FirstWrite -1}
		WidthIn_load {Type I LastRead 0 FirstWrite -1}
		stream_in {Type I LastRead 1 FirstWrite -1}
		stream_upsampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_24_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_23_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_22_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_val_V_21_out {Type IO LastRead 3 FirstWrite 3}
		pixbuf_y_val_V_20_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0_21063_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0511_21060_out {Type IO LastRead 2 FirstWrite 2}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_out1 {Type IO LastRead 2 FirstWrite 2}
		p_out2 {Type IO LastRead 2 FirstWrite 2}
		p_out3 {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_01024_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01020_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_01014_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01012_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_05191010_out {Type IO LastRead 2 FirstWrite 1}}
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
		d {Type I LastRead 0 FirstWrite -1}}
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
		filt_res1_1_out {Type IO LastRead 4 FirstWrite 4}}
	MultiPixStream2AXIvideo {
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 3 FirstWrite -1}
		WidthOut {Type I LastRead 3 FirstWrite -1}
		ColorModeOut {Type I LastRead 0 FirstWrite -1}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1 {
		sub_ln1538 {Type I LastRead 0 FirstWrite -1}
		map_V_2_out {Type O LastRead -1 FirstWrite 0}
		map_V_1_out {Type O LastRead -1 FirstWrite 0}
		map_V_out {Type O LastRead -1 FirstWrite 0}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3 {
		sof {Type I LastRead 0 FirstWrite -1}
		trunc_ln5 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		map_V_2_reload {Type I LastRead 0 FirstWrite -1}
		map_V_1_reload {Type I LastRead 0 FirstWrite -1}
		map_V_reload {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1128", "Max" : "1073971216"}
	, {"Name" : "Interval", "Min" : "1128", "Max" : "1073971196"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 24 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 3 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 3 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
