// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 29 12:26:33 2022
// Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_9/bd_3a92_xbar_0_stub.v
// Design      : bd_3a92_xbar_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_26_axis_switch,Vivado 2022.1" *)
module bd_3a92_xbar_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tstrb, s_axis_tkeep, s_axis_tlast, s_axis_tid, s_axis_tdest, 
  s_axis_tuser, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tstrb, m_axis_tkeep, 
  m_axis_tlast, m_axis_tid, m_axis_tdest, m_axis_tuser, s_axi_ctrl_aclk, s_axi_ctrl_aresetn, 
  s_axi_ctrl_awvalid, s_axi_ctrl_awready, s_axi_ctrl_awaddr, s_axi_ctrl_wvalid, 
  s_axi_ctrl_wready, s_axi_ctrl_wdata, s_axi_ctrl_bvalid, s_axi_ctrl_bready, 
  s_axi_ctrl_bresp, s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_araddr, 
  s_axi_ctrl_rvalid, s_axi_ctrl_rready, s_axi_ctrl_rdata, s_axi_ctrl_rresp)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[9:0],s_axis_tready[9:0],s_axis_tdata[239:0],s_axis_tstrb[29:0],s_axis_tkeep[29:0],s_axis_tlast[9:0],s_axis_tid[9:0],s_axis_tdest[39:0],s_axis_tuser[9:0],m_axis_tvalid[9:0],m_axis_tready[9:0],m_axis_tdata[239:0],m_axis_tstrb[29:0],m_axis_tkeep[29:0],m_axis_tlast[9:0],m_axis_tid[9:0],m_axis_tdest[39:0],m_axis_tuser[9:0],s_axi_ctrl_aclk,s_axi_ctrl_aresetn,s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_awaddr[6:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_wdata[31:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_araddr[6:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0]" */;
  input aclk;
  input aresetn;
  input [9:0]s_axis_tvalid;
  output [9:0]s_axis_tready;
  input [239:0]s_axis_tdata;
  input [29:0]s_axis_tstrb;
  input [29:0]s_axis_tkeep;
  input [9:0]s_axis_tlast;
  input [9:0]s_axis_tid;
  input [39:0]s_axis_tdest;
  input [9:0]s_axis_tuser;
  output [9:0]m_axis_tvalid;
  input [9:0]m_axis_tready;
  output [239:0]m_axis_tdata;
  output [29:0]m_axis_tstrb;
  output [29:0]m_axis_tkeep;
  output [9:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [39:0]m_axis_tdest;
  output [9:0]m_axis_tuser;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
endmodule