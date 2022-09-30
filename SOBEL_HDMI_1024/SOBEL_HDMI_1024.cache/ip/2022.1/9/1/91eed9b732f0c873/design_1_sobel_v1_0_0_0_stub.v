// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Sep  4 11:27:55 2022
// Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sobel_v1_0_0_0_stub.v
// Design      : design_1_sobel_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sobel_v1_0,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_i, rst_n_i, s_data_i, s_data_valid_i, 
  s_data_ready_o, m_data_valid_o, m_data_ready_i, m_data_o, intr_o, width, wr_line_counter, 
  rd_counter, stor_counter, s_axi_lite_aclk, s_axi_lite_aresetn, s_axi_lite_awaddr, 
  s_axi_lite_awprot, s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_wdata, 
  s_axi_lite_wstrb, s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_bresp, 
  s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_araddr, s_axi_lite_arprot, 
  s_axi_lite_arvalid, s_axi_lite_arready, s_axi_lite_rdata, s_axi_lite_rresp, 
  s_axi_lite_rvalid, s_axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_n_i,s_data_i[31:0],s_data_valid_i,s_data_ready_o,m_data_valid_o,m_data_ready_i,m_data_o[31:0],intr_o,width[9:0],wr_line_counter[9:0],rd_counter[9:0],stor_counter[11:0],s_axi_lite_aclk,s_axi_lite_aresetn,s_axi_lite_awaddr[3:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[3:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready" */;
  input clk_i;
  input rst_n_i;
  input [31:0]s_data_i;
  input s_data_valid_i;
  output s_data_ready_o;
  output m_data_valid_o;
  input m_data_ready_i;
  output [31:0]m_data_o;
  output intr_o;
  output [9:0]width;
  output [9:0]wr_line_counter;
  output [9:0]rd_counter;
  output [11:0]stor_counter;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [3:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [3:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
endmodule
