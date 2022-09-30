#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_CTRL_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axis_video_TDATA", 24, hls_in, 0, "axis", "in_data", 1),
	Port_Property("s_axis_video_TKEEP", 3, hls_in, 1, "axis", "in_data", 1),
	Port_Property("s_axis_video_TSTRB", 3, hls_in, 2, "axis", "in_data", 1),
	Port_Property("s_axis_video_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("s_axis_video_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("s_axis_video_TID", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("s_axis_video_TDEST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("m_axis_video_TDATA", 24, hls_out, 19, "axis", "out_data", 1),
	Port_Property("m_axis_video_TKEEP", 3, hls_out, 20, "axis", "out_data", 1),
	Port_Property("m_axis_video_TSTRB", 3, hls_out, 21, "axis", "out_data", 1),
	Port_Property("m_axis_video_TUSER", 1, hls_out, 22, "axis", "out_data", 1),
	Port_Property("m_axis_video_TLAST", 1, hls_out, 23, "axis", "out_data", 1),
	Port_Property("m_axis_video_TID", 1, hls_out, 24, "axis", "out_data", 1),
	Port_Property("m_axis_video_TDEST", 1, hls_out, 25, "axis", "out_data", 1),
	Port_Property("s_axis_video_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("s_axis_video_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("m_axis_video_TVALID", 1, hls_out, 25, "axis", "out_vld", 1),
	Port_Property("m_axis_video_TREADY", 1, hls_in, 25, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "v_hcresampler";