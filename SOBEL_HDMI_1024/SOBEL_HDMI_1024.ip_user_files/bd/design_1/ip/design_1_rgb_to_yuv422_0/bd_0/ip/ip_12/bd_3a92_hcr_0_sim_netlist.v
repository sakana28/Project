// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Aug 29 12:32:48 2022
// Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_12/bd_3a92_hcr_0_sim_netlist.v
// Design      : bd_3a92_hcr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_3a92_hcr_0,bd_3a92_hcr_0_v_hcresampler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_3a92_hcr_0_v_hcresampler,Vivado 2022.1" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_3a92_hcr_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *) input [10:0]s_axi_CTRL_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *) input s_axi_CTRL_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *) output s_axi_CTRL_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *) input [31:0]s_axi_CTRL_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *) input [3:0]s_axi_CTRL_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *) input s_axi_CTRL_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *) output s_axi_CTRL_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *) output [1:0]s_axi_CTRL_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *) output s_axi_CTRL_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *) input s_axi_CTRL_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *) input [10:0]s_axi_CTRL_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *) input s_axi_CTRL_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *) output s_axi_CTRL_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *) output [31:0]s_axi_CTRL_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *) output [1:0]s_axi_CTRL_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *) output s_axi_CTRL_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 11, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 177777771, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_CTRL_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:s_axis_video:m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 177777771, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input s_axis_video_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) input [23:0]s_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TKEEP" *) input [2:0]s_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TSTRB" *) input [2:0]s_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input [0:0]s_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input [0:0]s_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TID" *) input [0:0]s_axis_video_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [0:0]s_axis_video_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [23:0]m_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TKEEP" *) output [2:0]m_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TSTRB" *) output [2:0]m_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output [0:0]m_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TID" *) output [0:0]m_axis_video_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_video_TDEST;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire [10:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [10:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [15:0]\^s_axi_CTRL_RDATA ;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire [23:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire [0:0]NLW_inst_m_axis_video_TDEST_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_video_TID_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_video_TKEEP_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_video_TSTRB_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED;
  wire [31:16]NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED;

  assign m_axis_video_TDEST[0] = \<const0> ;
  assign m_axis_video_TID[0] = \<const0> ;
  assign m_axis_video_TKEEP[2] = \<const1> ;
  assign m_axis_video_TKEEP[1] = \<const1> ;
  assign m_axis_video_TKEEP[0] = \<const1> ;
  assign m_axis_video_TSTRB[2] = \<const0> ;
  assign m_axis_video_TSTRB[1] = \<const0> ;
  assign m_axis_video_TSTRB[0] = \<const0> ;
  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_RDATA[15:0] = \^s_axi_CTRL_RDATA [15:0];
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_S_AXI_CTRL_ADDR_WIDTH = "11" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  bd_3a92_hcr_0_v_hcresampler inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TDEST(NLW_inst_m_axis_video_TDEST_UNCONNECTED[0]),
        .m_axis_video_TID(NLW_inst_m_axis_video_TID_UNCONNECTED[0]),
        .m_axis_video_TKEEP(NLW_inst_m_axis_video_TKEEP_UNCONNECTED[2:0]),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(NLW_inst_m_axis_video_TSTRB_UNCONNECTED[2:0]),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .m_axis_video_TVALID(m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR({1'b0,1'b0,1'b0,1'b0,s_axi_CTRL_ARADDR[6:0]}),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR({1'b0,1'b0,1'b0,1'b0,s_axi_CTRL_AWADDR[6:0]}),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BRESP(NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED[1:0]),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA({NLW_inst_s_axi_CTRL_RDATA_UNCONNECTED[31:16],\^s_axi_CTRL_RDATA }),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RRESP(NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED[1:0]),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_CTRL_WDATA[15:0]}),
        .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
        .s_axi_CTRL_WSTRB({1'b0,1'b0,s_axi_CTRL_WSTRB[1:0]}),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b0,1'b0,1'b0}),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TREADY(s_axis_video_TREADY),
        .s_axis_video_TSTRB({1'b0,1'b0,1'b0}),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID));
endmodule

module bd_3a92_hcr_0_AXIvideo2MultiPixStream
   (\B_V_data_1_state_reg[1] ,
    CO,
    start_once_reg,
    Q,
    internal_full_n_reg,
    shiftReg_ce,
    \axi_data_V_fu_82_reg[23] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    start_for_v_hcresampler_core_U0_full_n,
    AXIvideo2MultiPixStream_U0_ap_start,
    s_axis_video_TVALID,
    \mOutPtr_reg[2] ,
    srcYUV_full_n,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    \cols_reg_305_reg[10]_0 ,
    s_axis_video_TDATA,
    \rows_reg_300_reg[10]_0 );
  output \B_V_data_1_state_reg[1] ;
  output [0:0]CO;
  output start_once_reg;
  output [1:0]Q;
  output internal_full_n_reg;
  output shiftReg_ce;
  output [23:0]\axi_data_V_fu_82_reg[23] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input start_for_v_hcresampler_core_U0_full_n;
  input AXIvideo2MultiPixStream_U0_ap_start;
  input s_axis_video_TVALID;
  input \mOutPtr_reg[2] ;
  input srcYUV_full_n;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [10:0]\cols_reg_305_reg[10]_0 ;
  input [23:0]s_axis_video_TDATA;
  input [10:0]\rows_reg_300_reg[10]_0 ;

  wire AXIvideo2MultiPixStream_U0_ap_start;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg_n_5_[7] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state9;
  wire [9:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done_reg1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [23:0]axi_data_V_2_fu_74;
  wire [23:0]\axi_data_V_fu_82_reg[23] ;
  wire axi_last_V_2_reg_120;
  wire [10:0]cols_reg_305;
  wire [10:0]\cols_reg_305_reg[10]_0 ;
  wire \flow_control_loop_pipe_sequential_init_U/ap_done_cache ;
  wire \flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_10;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_8;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_7;
  wire [10:0]i_4_fu_235_p2;
  wire \i_fu_78[10]_i_2_n_5 ;
  wire [10:0]i_fu_78_reg;
  wire icmp_ln470_fu_230_p2_carry_i_1_n_5;
  wire icmp_ln470_fu_230_p2_carry_i_2_n_5;
  wire icmp_ln470_fu_230_p2_carry_i_3_n_5;
  wire icmp_ln470_fu_230_p2_carry_i_4_n_5;
  wire icmp_ln470_fu_230_p2_carry_n_6;
  wire icmp_ln470_fu_230_p2_carry_n_7;
  wire icmp_ln470_fu_230_p2_carry_n_8;
  wire internal_full_n_reg;
  wire \mOutPtr_reg[2] ;
  wire [23:0]p_0_in;
  wire [23:0]p_1_in;
  wire regslice_both_s_axis_video_V_data_V_U_n_8;
  wire regslice_both_s_axis_video_V_last_V_U_n_5;
  wire regslice_both_s_axis_video_V_last_V_U_n_7;
  wire regslice_both_s_axis_video_V_user_V_U_n_7;
  wire regslice_both_s_axis_video_V_user_V_U_n_8;
  wire [10:0]rows_reg_300;
  wire [10:0]\rows_reg_300_reg[10]_0 ;
  wire [23:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int_regslice;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;
  wire shiftReg_ce;
  wire sof_reg_106;
  wire srcYUV_full_n;
  wire start_for_v_hcresampler_core_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_5;
  wire [3:0]NLW_icmp_ln470_fu_230_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF570057005700)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(AXIvideo2MultiPixStream_U0_ap_start),
        .I1(start_for_v_hcresampler_core_U0_full_n),
        .I2(start_once_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(CO),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'hA800)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q[0]),
        .I1(start_once_reg),
        .I2(start_for_v_hcresampler_core_U0_full_n),
        .I3(AXIvideo2MultiPixStream_U0_ap_start),
        .O(ap_NS_fsm[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[5]_i_1__0 
       (.I0(Q[1]),
        .I1(CO),
        .O(ap_NS_fsm[5]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(\ap_CS_fsm_reg_n_5_[7] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_5_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  FDRE \axi_data_V_2_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[0]),
        .Q(axi_data_V_2_fu_74[0]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[10]),
        .Q(axi_data_V_2_fu_74[10]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[11]),
        .Q(axi_data_V_2_fu_74[11]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[12]),
        .Q(axi_data_V_2_fu_74[12]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[13]),
        .Q(axi_data_V_2_fu_74[13]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[14]),
        .Q(axi_data_V_2_fu_74[14]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[15]),
        .Q(axi_data_V_2_fu_74[15]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[16]),
        .Q(axi_data_V_2_fu_74[16]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[17]),
        .Q(axi_data_V_2_fu_74[17]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[18]),
        .Q(axi_data_V_2_fu_74[18]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[19]),
        .Q(axi_data_V_2_fu_74[19]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[1]),
        .Q(axi_data_V_2_fu_74[1]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[20]),
        .Q(axi_data_V_2_fu_74[20]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[21]),
        .Q(axi_data_V_2_fu_74[21]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[22] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[22]),
        .Q(axi_data_V_2_fu_74[22]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[23] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[23]),
        .Q(axi_data_V_2_fu_74[23]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[2]),
        .Q(axi_data_V_2_fu_74[2]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[3]),
        .Q(axi_data_V_2_fu_74[3]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[4]),
        .Q(axi_data_V_2_fu_74[4]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[5]),
        .Q(axi_data_V_2_fu_74[5]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[6]),
        .Q(axi_data_V_2_fu_74[6]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[7]),
        .Q(axi_data_V_2_fu_74[7]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[8]),
        .Q(axi_data_V_2_fu_74[8]),
        .R(1'b0));
  FDRE \axi_data_V_2_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .D(p_1_in[9]),
        .Q(axi_data_V_2_fu_74[9]),
        .R(1'b0));
  FDRE \axi_last_V_2_reg_120_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_8),
        .Q(axi_last_V_2_reg_120),
        .R(1'b0));
  FDRE \cols_reg_305_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [0]),
        .Q(cols_reg_305[0]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [10]),
        .Q(cols_reg_305[10]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [1]),
        .Q(cols_reg_305[1]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [2]),
        .Q(cols_reg_305[2]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [3]),
        .Q(cols_reg_305[3]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [4]),
        .Q(cols_reg_305[4]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [5]),
        .Q(cols_reg_305[5]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [6]),
        .Q(cols_reg_305[6]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [7]),
        .Q(cols_reg_305[7]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [8]),
        .Q(cols_reg_305[8]),
        .R(1'b0));
  FDRE \cols_reg_305_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\cols_reg_305_reg[10]_0 [9]),
        .Q(cols_reg_305[9]),
        .R(1'b0));
  bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180
       (.D({ap_NS_fsm[9],ap_NS_fsm[4]}),
        .E(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_6),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state9,ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .\ap_CS_fsm_reg[8] (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_10),
        .ap_clk(ap_clk),
        .ap_done_cache_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11),
        .ap_done_cache_reg_0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12),
        .ap_loop_init_int(\flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .sof_reg_106(sof_reg_106));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_10),
        .Q(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .R(ap_rst_n_inv));
  bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132
       (.D(ap_NS_fsm[3]),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_done_cache_reg(regslice_both_s_axis_video_V_user_V_U_n_7),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_2_reg_120(axi_last_V_2_reg_120),
        .\axi_last_V_2_reg_120_reg[0] (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11),
        .\axi_last_V_fu_48_reg[0]_0 (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_8),
        .\axi_last_V_fu_48_reg[0]_1 (regslice_both_s_axis_video_V_last_V_U_n_7),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_s_axis_video_V_user_V_U_n_8),
        .Q(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .R(ap_rst_n_inv));
  bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_width grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152
       (.B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_sel0(B_V_data_1_sel0),
        .B_V_data_1_sel_rd_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14),
        .B_V_data_1_sel_rd_reg_0(regslice_both_s_axis_video_V_data_V_U_n_8),
        .D(ap_NS_fsm[7:6]),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .\ap_CS_fsm_reg[5] (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13),
        .ap_clk(ap_clk),
        .ap_loop_init_int(\flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_V_fu_82_reg[23]_0 (\axi_data_V_fu_82_reg[23] ),
        .\axi_data_V_fu_82_reg[23]_1 (p_0_in),
        .\axi_last_V_fu_86_reg[0]_0 (regslice_both_s_axis_video_V_last_V_U_n_5),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_7),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .icmp_ln474_fu_193_p2_carry_0(cols_reg_305),
        .internal_full_n_reg(internal_full_n_reg),
        .\mOutPtr_reg[2] (\mOutPtr_reg[2] ),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .shiftReg_ce(shiftReg_ce),
        .sof_reg_106(sof_reg_106),
        .srcYUV_full_n(srcYUV_full_n));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13),
        .Q(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_78[0]_i_1 
       (.I0(i_fu_78_reg[0]),
        .O(i_4_fu_235_p2[0]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_fu_78[10]_i_1 
       (.I0(i_fu_78_reg[10]),
        .I1(i_fu_78_reg[8]),
        .I2(i_fu_78_reg[7]),
        .I3(i_fu_78_reg[6]),
        .I4(\i_fu_78[10]_i_2_n_5 ),
        .I5(i_fu_78_reg[9]),
        .O(i_4_fu_235_p2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_fu_78[10]_i_2 
       (.I0(i_fu_78_reg[3]),
        .I1(i_fu_78_reg[2]),
        .I2(i_fu_78_reg[0]),
        .I3(i_fu_78_reg[1]),
        .I4(i_fu_78_reg[4]),
        .I5(i_fu_78_reg[5]),
        .O(\i_fu_78[10]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_78[1]_i_1 
       (.I0(i_fu_78_reg[0]),
        .I1(i_fu_78_reg[1]),
        .O(i_4_fu_235_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_fu_78[2]_i_1 
       (.I0(i_fu_78_reg[2]),
        .I1(i_fu_78_reg[1]),
        .I2(i_fu_78_reg[0]),
        .O(i_4_fu_235_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_fu_78[3]_i_1 
       (.I0(i_fu_78_reg[3]),
        .I1(i_fu_78_reg[2]),
        .I2(i_fu_78_reg[0]),
        .I3(i_fu_78_reg[1]),
        .O(i_4_fu_235_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_fu_78[4]_i_1 
       (.I0(i_fu_78_reg[4]),
        .I1(i_fu_78_reg[1]),
        .I2(i_fu_78_reg[0]),
        .I3(i_fu_78_reg[2]),
        .I4(i_fu_78_reg[3]),
        .O(i_4_fu_235_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_fu_78[5]_i_1 
       (.I0(i_fu_78_reg[5]),
        .I1(i_fu_78_reg[3]),
        .I2(i_fu_78_reg[2]),
        .I3(i_fu_78_reg[0]),
        .I4(i_fu_78_reg[1]),
        .I5(i_fu_78_reg[4]),
        .O(i_4_fu_235_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_78[6]_i_1 
       (.I0(i_fu_78_reg[6]),
        .I1(\i_fu_78[10]_i_2_n_5 ),
        .O(i_4_fu_235_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_fu_78[7]_i_1 
       (.I0(i_fu_78_reg[7]),
        .I1(\i_fu_78[10]_i_2_n_5 ),
        .I2(i_fu_78_reg[6]),
        .O(i_4_fu_235_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_fu_78[8]_i_1 
       (.I0(i_fu_78_reg[8]),
        .I1(i_fu_78_reg[7]),
        .I2(i_fu_78_reg[6]),
        .I3(\i_fu_78[10]_i_2_n_5 ),
        .O(i_4_fu_235_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_fu_78[9]_i_1 
       (.I0(i_fu_78_reg[9]),
        .I1(\i_fu_78[10]_i_2_n_5 ),
        .I2(i_fu_78_reg[6]),
        .I3(i_fu_78_reg[7]),
        .I4(i_fu_78_reg[8]),
        .O(i_4_fu_235_p2[9]));
  FDRE \i_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[0]),
        .Q(i_fu_78_reg[0]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[10]),
        .Q(i_fu_78_reg[10]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[1]),
        .Q(i_fu_78_reg[1]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[2]),
        .Q(i_fu_78_reg[2]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[3]),
        .Q(i_fu_78_reg[3]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[4]),
        .Q(i_fu_78_reg[4]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[5]),
        .Q(i_fu_78_reg[5]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[6]),
        .Q(i_fu_78_reg[6]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[7]),
        .Q(i_fu_78_reg[7]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[8]),
        .Q(i_fu_78_reg[8]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[5]),
        .D(i_4_fu_235_p2[9]),
        .Q(i_fu_78_reg[9]),
        .R(ap_NS_fsm[1]));
  CARRY4 icmp_ln470_fu_230_p2_carry
       (.CI(1'b0),
        .CO({CO,icmp_ln470_fu_230_p2_carry_n_6,icmp_ln470_fu_230_p2_carry_n_7,icmp_ln470_fu_230_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln470_fu_230_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln470_fu_230_p2_carry_i_1_n_5,icmp_ln470_fu_230_p2_carry_i_2_n_5,icmp_ln470_fu_230_p2_carry_i_3_n_5,icmp_ln470_fu_230_p2_carry_i_4_n_5}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln470_fu_230_p2_carry_i_1
       (.I0(rows_reg_300[10]),
        .I1(i_fu_78_reg[10]),
        .I2(rows_reg_300[9]),
        .I3(i_fu_78_reg[9]),
        .O(icmp_ln470_fu_230_p2_carry_i_1_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln470_fu_230_p2_carry_i_2
       (.I0(rows_reg_300[7]),
        .I1(i_fu_78_reg[7]),
        .I2(i_fu_78_reg[8]),
        .I3(rows_reg_300[8]),
        .I4(i_fu_78_reg[6]),
        .I5(rows_reg_300[6]),
        .O(icmp_ln470_fu_230_p2_carry_i_2_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln470_fu_230_p2_carry_i_3
       (.I0(rows_reg_300[5]),
        .I1(i_fu_78_reg[5]),
        .I2(i_fu_78_reg[4]),
        .I3(rows_reg_300[4]),
        .I4(i_fu_78_reg[3]),
        .I5(rows_reg_300[3]),
        .O(icmp_ln470_fu_230_p2_carry_i_3_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln470_fu_230_p2_carry_i_4
       (.I0(rows_reg_300[2]),
        .I1(i_fu_78_reg[2]),
        .I2(i_fu_78_reg[0]),
        .I3(rows_reg_300[0]),
        .I4(i_fu_78_reg[1]),
        .I5(rows_reg_300[1]),
        .O(icmp_ln470_fu_230_p2_carry_i_4_n_5));
  bd_3a92_hcr_0_regslice_both_12 regslice_both_s_axis_video_V_data_V_U
       (.B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_sel0(B_V_data_1_sel0),
        .B_V_data_1_sel_rd_reg_0(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14),
        .\B_V_data_1_state_reg[1]_0 (\B_V_data_1_state_reg[1] ),
        .D(p_1_in),
        .Q(ap_CS_fsm_state3),
        .\ap_CS_fsm_reg[2] (regslice_both_s_axis_video_V_data_V_U_n_8),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_V_2_fu_74_reg[0] (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12),
        .\axi_data_V_2_fu_74_reg[23] (p_0_in),
        .\axi_data_V_2_fu_74_reg[23]_0 (\axi_data_V_fu_82_reg[23] ),
        .\axi_data_V_fu_82_reg[0] (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_7),
        .\axi_data_V_fu_82_reg[23] (axi_data_V_2_fu_74),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice));
  bd_3a92_hcr_0_regslice_both__parameterized1_13 regslice_both_s_axis_video_V_last_V_U
       (.\B_V_data_1_payload_B_reg[0]_0 (regslice_both_s_axis_video_V_last_V_U_n_7),
        .B_V_data_1_sel0(B_V_data_1_sel0),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_2_reg_120(axi_last_V_2_reg_120),
        .\axi_last_V_2_reg_120_reg[0] (regslice_both_s_axis_video_V_last_V_U_n_5),
        .\axi_last_V_fu_86_reg[0] (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_7),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice));
  bd_3a92_hcr_0_regslice_both__parameterized1_14 regslice_both_s_axis_video_V_user_V_U
       (.B_V_data_1_sel0(B_V_data_1_sel0),
        .\B_V_data_1_state_reg[0]_0 (regslice_both_s_axis_video_V_user_V_U_n_7),
        .D(ap_NS_fsm[2]),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[1] (regslice_both_s_axis_video_V_user_V_U_n_8),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice));
  FDRE \rows_reg_300_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [0]),
        .Q(rows_reg_300[0]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [10]),
        .Q(rows_reg_300[10]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [1]),
        .Q(rows_reg_300[1]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [2]),
        .Q(rows_reg_300[2]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [3]),
        .Q(rows_reg_300[3]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [4]),
        .Q(rows_reg_300[4]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [5]),
        .Q(rows_reg_300[5]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [6]),
        .Q(rows_reg_300[6]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [7]),
        .Q(rows_reg_300[7]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [8]),
        .Q(rows_reg_300[8]),
        .R(1'b0));
  FDRE \rows_reg_300_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\rows_reg_300_reg[10]_0 [9]),
        .Q(rows_reg_300[9]),
        .R(1'b0));
  FDRE \sof_reg_106_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12),
        .Q(sof_reg_106),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00EAEAEA)) 
    start_once_reg_i_1
       (.I0(start_once_reg),
        .I1(start_for_v_hcresampler_core_U0_full_n),
        .I2(AXIvideo2MultiPixStream_U0_ap_start),
        .I3(Q[1]),
        .I4(CO),
        .O(start_once_reg_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_5),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
endmodule

module bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol
   (ap_loop_init_int,
    E,
    D,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY,
    \ap_CS_fsm_reg[8] ,
    ap_done_cache_reg,
    ap_done_cache_reg_0,
    ap_rst_n_inv,
    ap_clk,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld,
    Q,
    ap_rst_n,
    s_axis_video_TVALID_int_regslice,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
    s_axis_video_TLAST_int_regslice,
    sof_reg_106);
  output ap_loop_init_int;
  output [0:0]E;
  output [1:0]D;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  output \ap_CS_fsm_reg[8] ;
  output ap_done_cache_reg;
  output ap_done_cache_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  input [3:0]Q;
  input ap_rst_n;
  input s_axis_video_TVALID_int_regslice;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  input s_axis_video_TLAST_int_regslice;
  input sof_reg_106;

  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_done_cache_reg;
  wire ap_done_cache_reg_0;
  wire ap_loop_init_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_80;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;
  wire sof_reg_106;

  FDRE \axi_last_V_reg_80_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_10),
        .Q(axi_last_V_reg_80),
        .R(1'b0));
  bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_17 flow_control_loop_pipe_sequential_init_U
       (.\B_V_data_1_state_reg[0] (flow_control_loop_pipe_sequential_init_U_n_10),
        .D(D),
        .E(E),
        .Q(Q),
        .\ap_CS_fsm_reg[8] (\ap_CS_fsm_reg[8] ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_done_cache_reg_1(ap_done_cache_reg_0),
        .ap_loop_init_int_reg_0(ap_loop_init_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_reg_80(axi_last_V_reg_80),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .sof_reg_106(sof_reg_106));
endmodule

module bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
   (ap_done_cache,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out,
    D,
    \axi_last_V_fu_48_reg[0]_0 ,
    ap_rst_n_inv,
    ap_done_cache_reg,
    ap_clk,
    \axi_last_V_fu_48_reg[0]_1 ,
    Q,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
    ap_done_reg1,
    \axi_last_V_2_reg_120_reg[0] ,
    axi_last_V_2_reg_120);
  output ap_done_cache;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out;
  output [0:0]D;
  output \axi_last_V_fu_48_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_done_cache_reg;
  input ap_clk;
  input \axi_last_V_fu_48_reg[0]_1 ;
  input [1:0]Q;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  input ap_done_reg1;
  input \axi_last_V_2_reg_120_reg[0] ;
  input axi_last_V_2_reg_120;

  wire [0:0]D;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_reg;
  wire ap_done_reg1;
  wire ap_rst_n_inv;
  wire axi_last_V_2_reg_120;
  wire \axi_last_V_2_reg_120_reg[0] ;
  wire \axi_last_V_fu_48_reg[0]_0 ;
  wire \axi_last_V_fu_48_reg[0]_1 ;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out;

  LUT4 #(
    .INIT(16'hBBB8)) 
    \axi_last_V_2_reg_120[0]_i_1 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out),
        .I1(Q[1]),
        .I2(\axi_last_V_2_reg_120_reg[0] ),
        .I3(axi_last_V_2_reg_120),
        .O(\axi_last_V_fu_48_reg[0]_0 ));
  FDRE \axi_last_V_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\axi_last_V_fu_48_reg[0]_1 ),
        .Q(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out),
        .R(1'b0));
  bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_16 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q[0]),
        .ap_clk(ap_clk),
        .ap_done_cache(ap_done_cache),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg));
endmodule

module bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_width
   (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
    B_V_data_1_sel0,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg,
    internal_full_n_reg,
    shiftReg_ce,
    D,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg,
    \ap_CS_fsm_reg[5] ,
    B_V_data_1_sel_rd_reg,
    \axi_data_V_fu_82_reg[23]_0 ,
    \axi_last_V_fu_86_reg[0]_0 ,
    ap_clk,
    ap_rst_n_inv,
    ap_rst_n,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY,
    Q,
    B_V_data_1_sel_rd_reg_0,
    \mOutPtr_reg[2] ,
    srcYUV_full_n,
    s_axis_video_TVALID_int_regslice,
    sof_reg_106,
    icmp_ln474_fu_193_p2_carry_0,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
    ap_loop_init_int,
    B_V_data_1_sel,
    \axi_data_V_fu_82_reg[23]_1 );
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  output B_V_data_1_sel0;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg;
  output internal_full_n_reg;
  output shiftReg_ce;
  output [1:0]D;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg;
  output \ap_CS_fsm_reg[5] ;
  output B_V_data_1_sel_rd_reg;
  output [23:0]\axi_data_V_fu_82_reg[23]_0 ;
  input \axi_last_V_fu_86_reg[0]_0 ;
  input ap_clk;
  input ap_rst_n_inv;
  input ap_rst_n;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  input [2:0]Q;
  input B_V_data_1_sel_rd_reg_0;
  input \mOutPtr_reg[2] ;
  input srcYUV_full_n;
  input s_axis_video_TVALID_int_regslice;
  input sof_reg_106;
  input [10:0]icmp_ln474_fu_193_p2_carry_0;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  input ap_loop_init_int;
  input B_V_data_1_sel;
  input [23:0]\axi_data_V_fu_82_reg[23]_1 ;

  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_reg;
  wire B_V_data_1_sel_rd_reg_0;
  wire [1:0]D;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [23:0]\axi_data_V_fu_82_reg[23]_0 ;
  wire [23:0]\axi_data_V_fu_82_reg[23]_1 ;
  wire axi_last_V_fu_864_out;
  wire \axi_last_V_fu_86_reg[0]_0 ;
  wire \axi_last_V_fu_86_reg_n_5_[0] ;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  wire icmp_ln474_fu_193_p2;
  wire [10:0]icmp_ln474_fu_193_p2_carry_0;
  wire icmp_ln474_fu_193_p2_carry_n_6;
  wire icmp_ln474_fu_193_p2_carry_n_7;
  wire icmp_ln474_fu_193_p2_carry_n_8;
  wire \icmp_ln474_reg_267_reg_n_5_[0] ;
  wire internal_full_n_reg;
  wire [10:0]j_4_fu_199_p2;
  wire j_fu_78;
  wire \j_fu_78_reg_n_5_[0] ;
  wire \j_fu_78_reg_n_5_[10] ;
  wire \j_fu_78_reg_n_5_[1] ;
  wire \j_fu_78_reg_n_5_[2] ;
  wire \j_fu_78_reg_n_5_[3] ;
  wire \j_fu_78_reg_n_5_[4] ;
  wire \j_fu_78_reg_n_5_[5] ;
  wire \j_fu_78_reg_n_5_[6] ;
  wire \j_fu_78_reg_n_5_[7] ;
  wire \j_fu_78_reg_n_5_[8] ;
  wire \j_fu_78_reg_n_5_[9] ;
  wire \mOutPtr_reg[2] ;
  wire s_axis_video_TVALID_int_regslice;
  wire shiftReg_ce;
  wire sof_reg_106;
  wire srcYUV_full_n;
  wire [3:0]NLW_icmp_ln474_fu_193_p2_carry_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_data_V_2_fu_74[23]_i_5 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I2(Q[2]),
        .I3(ap_loop_init_int),
        .O(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg));
  FDRE \axi_data_V_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [0]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [10]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [11]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [12]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [13]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [14]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[15] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [15]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[16] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [16]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[17] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [17]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[18] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [18]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[19] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [19]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [1]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[20] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [20]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[21] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [21]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[22] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [22]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[23] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [23]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [23]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [2]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [3]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [4]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [5]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [6]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [7]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [8]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [8]),
        .R(1'b0));
  FDRE \axi_data_V_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_data_V_fu_82_reg[23]_1 [9]),
        .Q(\axi_data_V_fu_82_reg[23]_0 [9]),
        .R(1'b0));
  FDRE \axi_last_V_fu_86_reg[0] 
       (.C(ap_clk),
        .CE(axi_last_V_fu_864_out),
        .D(\axi_last_V_fu_86_reg[0]_0 ),
        .Q(\axi_last_V_fu_86_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \eol_reg_153_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .R(1'b0));
  bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_15 flow_control_loop_pipe_sequential_init_U
       (.B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_sel0(B_V_data_1_sel0),
        .B_V_data_1_sel_rd_reg(B_V_data_1_sel_rd_reg),
        .B_V_data_1_sel_rd_reg_0(B_V_data_1_sel_rd_reg_0),
        .CO(icmp_ln474_fu_193_p2),
        .D(D),
        .E(axi_last_V_fu_864_out),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_13),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(flow_control_loop_pipe_sequential_init_U_n_6),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_last_V_fu_86_reg[0] (flow_control_loop_pipe_sequential_init_U_n_5),
        .\eol_reg_153_reg[0] (\axi_last_V_fu_86_reg_n_5_[0] ),
        .\eol_reg_153_reg[0]_0 (\icmp_ln474_reg_267_reg_n_5_[0] ),
        .\eol_reg_153_reg[0]_1 (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg_0(j_fu_78),
        .icmp_ln474_fu_193_p2_carry(icmp_ln474_fu_193_p2_carry_0),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(flow_control_loop_pipe_sequential_init_U_n_33),
        .\j_fu_78_reg[10] ({j_4_fu_199_p2[10:8],flow_control_loop_pipe_sequential_init_U_n_23,j_4_fu_199_p2[6:0]}),
        .\j_fu_78_reg[10]_0 ({\j_fu_78_reg_n_5_[10] ,\j_fu_78_reg_n_5_[9] ,\j_fu_78_reg_n_5_[8] ,\j_fu_78_reg_n_5_[7] ,\j_fu_78_reg_n_5_[6] ,\j_fu_78_reg_n_5_[5] ,\j_fu_78_reg_n_5_[4] ,\j_fu_78_reg_n_5_[3] ,\j_fu_78_reg_n_5_[2] ,\j_fu_78_reg_n_5_[1] ,\j_fu_78_reg_n_5_[0] }),
        .\mOutPtr_reg[2] (\mOutPtr_reg[2] ),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .shiftReg_ce(shiftReg_ce),
        .sof_reg_106(sof_reg_106),
        .srcYUV_full_n(srcYUV_full_n));
  CARRY4 icmp_ln474_fu_193_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln474_fu_193_p2,icmp_ln474_fu_193_p2_carry_n_6,icmp_ln474_fu_193_p2_carry_n_7,icmp_ln474_fu_193_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln474_fu_193_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19}));
  FDRE \icmp_ln474_reg_267_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_33),
        .Q(\icmp_ln474_reg_267_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \j_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[0]),
        .Q(\j_fu_78_reg_n_5_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[10]),
        .Q(\j_fu_78_reg_n_5_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[1]),
        .Q(\j_fu_78_reg_n_5_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[2]),
        .Q(\j_fu_78_reg_n_5_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[3]),
        .Q(\j_fu_78_reg_n_5_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[4]),
        .Q(\j_fu_78_reg_n_5_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[5]),
        .Q(\j_fu_78_reg_n_5_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[6]),
        .Q(\j_fu_78_reg_n_5_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(flow_control_loop_pipe_sequential_init_U_n_23),
        .Q(\j_fu_78_reg_n_5_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[8]),
        .Q(\j_fu_78_reg_n_5_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
  FDRE \j_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(j_4_fu_199_p2[9]),
        .Q(\j_fu_78_reg_n_5_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_13));
endmodule

module bd_3a92_hcr_0_CTRL_s_axi
   (ap_rst_n_inv,
    interrupt,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth,
    Q,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_CTRL_RVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_CTRL_BVALID,
    int_ap_start_reg_0,
    AXIvideo2MultiPixStream_U0_ap_start,
    \tmp_5_reg_1314_pp0_iter13_reg_reg[0] ,
    \int_input_video_format_reg[7]_0 ,
    icmp_ln145_fu_293_p2,
    \int_input_video_format_reg[1]_0 ,
    \ap_CS_fsm_reg[1] ,
    \int_height_reg[10]_0 ,
    \int_height_reg[10]_1 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    B,
    \int_coefs_0_1_reg[15]_0 ,
    \int_coefs_0_0_reg[15]_0 ,
    D,
    \cmp335_reg_1338_reg[0] ,
    s_axi_CTRL_RDATA,
    ap_clk,
    S,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_BREADY,
    int_ap_start_reg_1,
    int_ap_idle_reg_0,
    MultiPixStream2AXIvideo_U0_ap_start,
    internal_empty_n_reg,
    int_ap_idle_reg_1,
    start_for_v_hcresampler_core_U0_full_n,
    start_once_reg,
    ap_rst_n,
    tmp_5_reg_1314_pp0_iter13_reg,
    icmp_ln168_reg_1298_pp0_iter13_reg,
    CO,
    icmp_ln157_fu_363_p2_carry,
    s_axi_CTRL_AWVALID,
    or_ln350_reg_1380_pp0_iter4_reg,
    or_ln350_reg_1380_pp0_iter6_reg,
    or_ln350_reg_1380_pp0_iter8_reg,
    \int_isr_reg[0]_0 ,
    int_ap_start_reg_2,
    cmp335_reg_1338,
    s_axi_CTRL_AWADDR);
  output ap_rst_n_inv;
  output interrupt;
  output [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  output [10:0]Q;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_CTRL_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_CTRL_BVALID;
  output int_ap_start_reg_0;
  output AXIvideo2MultiPixStream_U0_ap_start;
  output \tmp_5_reg_1314_pp0_iter13_reg_reg[0] ;
  output \int_input_video_format_reg[7]_0 ;
  output icmp_ln145_fu_293_p2;
  output \int_input_video_format_reg[1]_0 ;
  output \ap_CS_fsm_reg[1] ;
  output [3:0]\int_height_reg[10]_0 ;
  output [10:0]\int_height_reg[10]_1 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [15:0]B;
  output [15:0]\int_coefs_0_1_reg[15]_0 ;
  output [15:0]\int_coefs_0_0_reg[15]_0 ;
  output [10:0]D;
  output [15:0]\cmp335_reg_1338_reg[0] ;
  output [15:0]s_axi_CTRL_RDATA;
  input ap_clk;
  input [1:0]S;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  input s_axi_CTRL_RREADY;
  input [15:0]s_axi_CTRL_WDATA;
  input [1:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  input s_axi_CTRL_BREADY;
  input [1:0]int_ap_start_reg_1;
  input [0:0]int_ap_idle_reg_0;
  input MultiPixStream2AXIvideo_U0_ap_start;
  input [1:0]internal_empty_n_reg;
  input int_ap_idle_reg_1;
  input start_for_v_hcresampler_core_U0_full_n;
  input start_once_reg;
  input ap_rst_n;
  input tmp_5_reg_1314_pp0_iter13_reg;
  input icmp_ln168_reg_1298_pp0_iter13_reg;
  input [0:0]CO;
  input [10:0]icmp_ln157_fu_363_p2_carry;
  input s_axi_CTRL_AWVALID;
  input or_ln350_reg_1380_pp0_iter4_reg;
  input or_ln350_reg_1380_pp0_iter6_reg;
  input or_ln350_reg_1380_pp0_iter8_reg;
  input \int_isr_reg[0]_0 ;
  input [0:0]int_ap_start_reg_2;
  input cmp335_reg_1338;
  input [6:0]s_axi_CTRL_AWADDR;

  wire AXIvideo2MultiPixStream_U0_ap_start;
  wire [15:0]B;
  wire [0:0]CO;
  wire [10:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_5 ;
  wire \FSM_onehot_rstate[2]_i_1_n_5 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_5 ;
  wire \FSM_onehot_wstate[2]_i_1_n_5 ;
  wire \FSM_onehot_wstate[3]_i_1_n_5 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire MultiPixStream2AXIvideo_U0_ap_start;
  wire [10:0]Q;
  wire [1:0]S;
  wire \SRL_SIG_reg[15][0]_srl16_i_10_n_5 ;
  wire \SRL_SIG_reg[15][0]_srl16_i_9_n_5 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ar_hs;
  wire auto_restart_status_i_1_n_5;
  wire auto_restart_status_reg_n_5;
  wire cmp335_reg_1338;
  wire [15:0]\cmp335_reg_1338_reg[0] ;
  wire [15:0]coefs_0_0;
  wire [15:0]coefs_0_1;
  wire [15:0]coefs_0_2;
  wire [15:0]coefs_0_3;
  wire [15:0]coefs_1_0;
  wire [15:0]coefs_1_1;
  wire [15:0]coefs_1_2;
  wire [15:0]coefs_1_3;
  wire [1:0]data3;
  wire [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  wire [15:11]height;
  wire icmp_ln145_fu_293_p2;
  wire [10:0]icmp_ln157_fu_363_p2_carry;
  wire icmp_ln159_fu_381_p2_carry_i_10_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_10_n_6;
  wire icmp_ln159_fu_381_p2_carry_i_10_n_7;
  wire icmp_ln159_fu_381_p2_carry_i_10_n_8;
  wire icmp_ln159_fu_381_p2_carry_i_14_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_5_n_7;
  wire icmp_ln159_fu_381_p2_carry_i_5_n_8;
  wire icmp_ln159_fu_381_p2_carry_i_7_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_7_n_6;
  wire icmp_ln159_fu_381_p2_carry_i_7_n_7;
  wire icmp_ln159_fu_381_p2_carry_i_7_n_8;
  wire icmp_ln168_reg_1298_pp0_iter13_reg;
  wire [7:0]input_video_format;
  wire [0:0]int_ap_idle_reg_0;
  wire int_ap_idle_reg_1;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_5;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_5;
  wire int_ap_start_reg_0;
  wire [1:0]int_ap_start_reg_1;
  wire [0:0]int_ap_start_reg_2;
  wire int_auto_restart_i_1_n_5;
  wire [15:0]int_coefs_0_00;
  wire \int_coefs_0_0[15]_i_1_n_5 ;
  wire [15:0]\int_coefs_0_0_reg[15]_0 ;
  wire [15:0]int_coefs_0_10;
  wire \int_coefs_0_1[15]_i_1_n_5 ;
  wire [15:0]\int_coefs_0_1_reg[15]_0 ;
  wire [15:0]int_coefs_0_20;
  wire \int_coefs_0_2[15]_i_1_n_5 ;
  wire \int_coefs_0_2[15]_i_3_n_5 ;
  wire [15:0]int_coefs_0_30;
  wire \int_coefs_0_3[15]_i_1_n_5 ;
  wire [15:0]int_coefs_1_00;
  wire \int_coefs_1_0[15]_i_1_n_5 ;
  wire [15:0]int_coefs_1_10;
  wire \int_coefs_1_1[15]_i_1_n_5 ;
  wire [15:0]int_coefs_1_20;
  wire \int_coefs_1_2[15]_i_1_n_5 ;
  wire [15:0]int_coefs_1_30;
  wire \int_coefs_1_3[15]_i_1_n_5 ;
  wire int_gie_i_1_n_5;
  wire int_gie_i_2_n_5;
  wire int_gie_reg_n_5;
  wire [15:0]int_height0;
  wire \int_height[15]_i_1_n_5 ;
  wire [3:0]\int_height_reg[10]_0 ;
  wire [10:0]\int_height_reg[10]_1 ;
  wire \int_ier[0]_i_1_n_5 ;
  wire \int_ier[1]_i_1_n_5 ;
  wire \int_ier[1]_i_2_n_5 ;
  wire \int_ier_reg_n_5_[0] ;
  wire \int_ier_reg_n_5_[1] ;
  wire [7:0]int_input_video_format0;
  wire \int_input_video_format[7]_i_1_n_5 ;
  wire \int_input_video_format[7]_i_3_n_5 ;
  wire \int_input_video_format_reg[1]_0 ;
  wire \int_input_video_format_reg[7]_0 ;
  wire int_interrupt0;
  wire \int_isr[0]_i_1_n_5 ;
  wire \int_isr[0]_i_2_n_5 ;
  wire \int_isr[0]_i_3_n_5 ;
  wire \int_isr[1]_i_1_n_5 ;
  wire \int_isr_reg[0]_0 ;
  wire [7:0]int_output_video_format0;
  wire \int_output_video_format[7]_i_1_n_5 ;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_5;
  wire int_task_ap_done_i_2_n_5;
  wire [15:0]int_width0;
  wire \int_width[15]_i_1_n_5 ;
  wire \int_width[15]_i_3_n_5 ;
  wire [1:0]internal_empty_n_reg;
  wire interrupt;
  wire \mOutPtr[4]_i_6_n_5 ;
  wire or_ln350_reg_1380_pp0_iter4_reg;
  wire or_ln350_reg_1380_pp0_iter6_reg;
  wire or_ln350_reg_1380_pp0_iter8_reg;
  wire [7:0]output_video_format;
  wire \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_5_n_5 ;
  wire [7:2]p_12_in;
  wire \rdata[0]_i_1_n_5 ;
  wire \rdata[0]_i_2_n_5 ;
  wire \rdata[0]_i_6_n_5 ;
  wire \rdata[0]_i_7_n_5 ;
  wire \rdata[0]_i_8_n_5 ;
  wire \rdata[0]_i_9_n_5 ;
  wire \rdata[10]_i_2_n_5 ;
  wire \rdata[10]_i_3_n_5 ;
  wire \rdata[10]_i_4_n_5 ;
  wire \rdata[10]_i_5_n_5 ;
  wire \rdata[11]_i_2_n_5 ;
  wire \rdata[11]_i_3_n_5 ;
  wire \rdata[11]_i_4_n_5 ;
  wire \rdata[11]_i_5_n_5 ;
  wire \rdata[12]_i_2_n_5 ;
  wire \rdata[12]_i_3_n_5 ;
  wire \rdata[12]_i_4_n_5 ;
  wire \rdata[12]_i_5_n_5 ;
  wire \rdata[13]_i_2_n_5 ;
  wire \rdata[13]_i_3_n_5 ;
  wire \rdata[13]_i_4_n_5 ;
  wire \rdata[13]_i_5_n_5 ;
  wire \rdata[14]_i_2_n_5 ;
  wire \rdata[14]_i_3_n_5 ;
  wire \rdata[14]_i_4_n_5 ;
  wire \rdata[14]_i_5_n_5 ;
  wire \rdata[15]_i_1_n_5 ;
  wire \rdata[15]_i_4_n_5 ;
  wire \rdata[15]_i_5_n_5 ;
  wire \rdata[15]_i_6_n_5 ;
  wire \rdata[15]_i_7_n_5 ;
  wire \rdata[1]_i_1_n_5 ;
  wire \rdata[1]_i_2_n_5 ;
  wire \rdata[1]_i_3_n_5 ;
  wire \rdata[1]_i_4_n_5 ;
  wire \rdata[1]_i_5_n_5 ;
  wire \rdata[1]_i_6_n_5 ;
  wire \rdata[1]_i_7_n_5 ;
  wire \rdata[1]_i_8_n_5 ;
  wire \rdata[1]_i_9_n_5 ;
  wire \rdata[2]_i_1_n_5 ;
  wire \rdata[2]_i_2_n_5 ;
  wire \rdata[2]_i_3_n_5 ;
  wire \rdata[2]_i_4_n_5 ;
  wire \rdata[2]_i_5_n_5 ;
  wire \rdata[3]_i_1_n_5 ;
  wire \rdata[3]_i_2_n_5 ;
  wire \rdata[3]_i_3_n_5 ;
  wire \rdata[3]_i_4_n_5 ;
  wire \rdata[3]_i_5_n_5 ;
  wire \rdata[4]_i_1_n_5 ;
  wire \rdata[4]_i_2_n_5 ;
  wire \rdata[4]_i_3_n_5 ;
  wire \rdata[4]_i_4_n_5 ;
  wire \rdata[4]_i_5_n_5 ;
  wire \rdata[5]_i_1_n_5 ;
  wire \rdata[5]_i_2_n_5 ;
  wire \rdata[5]_i_3_n_5 ;
  wire \rdata[5]_i_4_n_5 ;
  wire \rdata[5]_i_5_n_5 ;
  wire \rdata[6]_i_1_n_5 ;
  wire \rdata[6]_i_2_n_5 ;
  wire \rdata[6]_i_3_n_5 ;
  wire \rdata[6]_i_4_n_5 ;
  wire \rdata[6]_i_5_n_5 ;
  wire \rdata[7]_i_1_n_5 ;
  wire \rdata[7]_i_2_n_5 ;
  wire \rdata[7]_i_3_n_5 ;
  wire \rdata[7]_i_4_n_5 ;
  wire \rdata[7]_i_5_n_5 ;
  wire \rdata[8]_i_2_n_5 ;
  wire \rdata[8]_i_3_n_5 ;
  wire \rdata[8]_i_4_n_5 ;
  wire \rdata[8]_i_5_n_5 ;
  wire \rdata[9]_i_1_n_5 ;
  wire \rdata[9]_i_2_n_5 ;
  wire \rdata[9]_i_3_n_5 ;
  wire \rdata[9]_i_4_n_5 ;
  wire \rdata[9]_i_5_n_5 ;
  wire \rdata_reg[0]_i_3_n_5 ;
  wire \rdata_reg[0]_i_4_n_5 ;
  wire \rdata_reg[0]_i_5_n_5 ;
  wire \rdata_reg[10]_i_1_n_5 ;
  wire \rdata_reg[11]_i_1_n_5 ;
  wire \rdata_reg[12]_i_1_n_5 ;
  wire \rdata_reg[13]_i_1_n_5 ;
  wire \rdata_reg[14]_i_1_n_5 ;
  wire \rdata_reg[15]_i_3_n_5 ;
  wire \rdata_reg[8]_i_1_n_5 ;
  wire [6:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARVALID;
  wire [6:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [15:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [15:0]s_axi_CTRL_WDATA;
  wire [1:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire start_for_v_hcresampler_core_U0_full_n;
  wire start_once_reg;
  wire \sub_reg_191[10]_i_2_n_5 ;
  wire tmp_5_reg_1314_pp0_iter13_reg;
  wire \tmp_5_reg_1314_pp0_iter13_reg_reg[0] ;
  wire waddr;
  wire \waddr_reg_n_5_[0] ;
  wire \waddr_reg_n_5_[1] ;
  wire \waddr_reg_n_5_[2] ;
  wire \waddr_reg_n_5_[3] ;
  wire \waddr_reg_n_5_[4] ;
  wire \waddr_reg_n_5_[5] ;
  wire \waddr_reg_n_5_[6] ;
  wire [15:11]width;
  wire [3:2]NLW_icmp_ln159_fu_381_p2_carry_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_icmp_ln159_fu_381_p2_carry_i_5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_CTRL_RREADY),
        .I1(s_axi_CTRL_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_CTRL_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .I2(s_axi_CTRL_RREADY),
        .I3(s_axi_CTRL_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_5 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_5 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_5 ),
        .Q(s_axi_CTRL_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_CTRL_BREADY),
        .I1(s_axi_CTRL_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_CTRL_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_CTRL_AWVALID),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_5 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_WVALID),
        .I2(s_axi_CTRL_BREADY),
        .I3(s_axi_CTRL_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_5 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_5 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_5 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_5 ),
        .Q(s_axi_CTRL_BVALID),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \SRL_SIG_reg[15][0]_srl16_i_10 
       (.I0(output_video_format[3]),
        .I1(input_video_format[3]),
        .I2(input_video_format[4]),
        .I3(output_video_format[4]),
        .I4(input_video_format[5]),
        .I5(output_video_format[5]),
        .O(\SRL_SIG_reg[15][0]_srl16_i_10_n_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \SRL_SIG_reg[15][0]_srl16_i_8 
       (.I0(input_video_format[7]),
        .I1(output_video_format[7]),
        .I2(input_video_format[6]),
        .I3(output_video_format[6]),
        .I4(\SRL_SIG_reg[15][0]_srl16_i_9_n_5 ),
        .I5(\SRL_SIG_reg[15][0]_srl16_i_10_n_5 ),
        .O(\int_input_video_format_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \SRL_SIG_reg[15][0]_srl16_i_9 
       (.I0(output_video_format[0]),
        .I1(input_video_format[0]),
        .I2(input_video_format[2]),
        .I3(output_video_format[2]),
        .I4(input_video_format[1]),
        .I5(output_video_format[1]),
        .O(\SRL_SIG_reg[15][0]_srl16_i_9_n_5 ));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_12_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_5),
        .O(auto_restart_status_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_5),
        .Q(auto_restart_status_reg_n_5),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln157_fu_363_p2_carry_i_1
       (.I0(\int_height_reg[10]_1 [10]),
        .I1(icmp_ln157_fu_363_p2_carry[10]),
        .I2(\int_height_reg[10]_1 [9]),
        .I3(icmp_ln157_fu_363_p2_carry[9]),
        .O(\int_height_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln157_fu_363_p2_carry_i_2
       (.I0(\int_height_reg[10]_1 [8]),
        .I1(icmp_ln157_fu_363_p2_carry[8]),
        .I2(icmp_ln157_fu_363_p2_carry[6]),
        .I3(\int_height_reg[10]_1 [6]),
        .I4(icmp_ln157_fu_363_p2_carry[7]),
        .I5(\int_height_reg[10]_1 [7]),
        .O(\int_height_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln157_fu_363_p2_carry_i_3
       (.I0(\int_height_reg[10]_1 [4]),
        .I1(icmp_ln157_fu_363_p2_carry[4]),
        .I2(icmp_ln157_fu_363_p2_carry[5]),
        .I3(\int_height_reg[10]_1 [5]),
        .I4(icmp_ln157_fu_363_p2_carry[3]),
        .I5(\int_height_reg[10]_1 [3]),
        .O(\int_height_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln157_fu_363_p2_carry_i_4
       (.I0(\int_height_reg[10]_1 [2]),
        .I1(icmp_ln157_fu_363_p2_carry[2]),
        .I2(icmp_ln157_fu_363_p2_carry[0]),
        .I3(\int_height_reg[10]_1 [0]),
        .I4(icmp_ln157_fu_363_p2_carry[1]),
        .I5(\int_height_reg[10]_1 [1]),
        .O(\int_height_reg[10]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 icmp_ln159_fu_381_p2_carry_i_10
       (.CI(1'b0),
        .CO({icmp_ln159_fu_381_p2_carry_i_10_n_5,icmp_ln159_fu_381_p2_carry_i_10_n_6,icmp_ln159_fu_381_p2_carry_i_10_n_7,icmp_ln159_fu_381_p2_carry_i_10_n_8}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[3:0]),
        .S({Q[3],S[1],icmp_ln159_fu_381_p2_carry_i_14_n_5,S[0]}));
  LUT2 #(
    .INIT(4'h9)) 
    icmp_ln159_fu_381_p2_carry_i_14
       (.I0(icmp_ln145_fu_293_p2),
        .I1(Q[1]),
        .O(icmp_ln159_fu_381_p2_carry_i_14_n_5));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 icmp_ln159_fu_381_p2_carry_i_5
       (.CI(icmp_ln159_fu_381_p2_carry_i_7_n_5),
        .CO({NLW_icmp_ln159_fu_381_p2_carry_i_5_CO_UNCONNECTED[3:2],icmp_ln159_fu_381_p2_carry_i_5_n_7,icmp_ln159_fu_381_p2_carry_i_5_n_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_icmp_ln159_fu_381_p2_carry_i_5_O_UNCONNECTED[3],grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[10:8]}),
        .S({1'b0,Q[10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 icmp_ln159_fu_381_p2_carry_i_7
       (.CI(icmp_ln159_fu_381_p2_carry_i_10_n_5),
        .CO({icmp_ln159_fu_381_p2_carry_i_7_n_5,icmp_ln159_fu_381_p2_carry_i_7_n_6,icmp_ln159_fu_381_p2_carry_i_7_n_7,icmp_ln159_fu_381_p2_carry_i_7_n_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[7:4]),
        .S(Q[7:4]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    int_ap_idle_i_1
       (.I0(int_ap_start_reg_0),
        .I1(int_ap_start_reg_1[0]),
        .I2(int_ap_idle_reg_0),
        .I3(MultiPixStream2AXIvideo_U0_ap_start),
        .I4(internal_empty_n_reg[0]),
        .I5(int_ap_idle_reg_1),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_12_in[2]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h75553000)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_5),
        .I1(p_12_in[7]),
        .I2(int_ap_start_reg_2),
        .I3(int_ap_start_reg_1[1]),
        .I4(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_5),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    int_ap_start_i_1
       (.I0(p_12_in[7]),
        .I1(int_ap_start_reg_1[1]),
        .I2(int_ap_start_reg_2),
        .I3(int_ap_start5_out),
        .I4(AXIvideo2MultiPixStream_U0_ap_start),
        .O(int_ap_start_i_1_n_5));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_5_[3] ),
        .I2(s_axi_CTRL_WSTRB[0]),
        .I3(\waddr_reg_n_5_[4] ),
        .I4(\waddr_reg_n_5_[2] ),
        .I5(\int_width[15]_i_3_n_5 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_5),
        .Q(AXIvideo2MultiPixStream_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(\int_ier[1]_i_2_n_5 ),
        .I2(\waddr_reg_n_5_[4] ),
        .I3(s_axi_CTRL_WSTRB[0]),
        .I4(\waddr_reg_n_5_[3] ),
        .I5(p_12_in[7]),
        .O(int_auto_restart_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_5),
        .Q(p_12_in[7]),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[0]),
        .O(int_coefs_0_00[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[10]),
        .O(int_coefs_0_00[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[11]),
        .O(int_coefs_0_00[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[12]),
        .O(int_coefs_0_00[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[13]),
        .O(int_coefs_0_00[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[14]),
        .O(int_coefs_0_00[14]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \int_coefs_0_0[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\int_input_video_format[7]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[5] ),
        .I4(\waddr_reg_n_5_[6] ),
        .O(\int_coefs_0_0[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[15]),
        .O(int_coefs_0_00[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[1]),
        .O(int_coefs_0_00[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[2]),
        .O(int_coefs_0_00[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[3]),
        .O(int_coefs_0_00[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[4]),
        .O(int_coefs_0_00[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[5]),
        .O(int_coefs_0_00[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[6]),
        .O(int_coefs_0_00[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_0[7]),
        .O(int_coefs_0_00[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[8]),
        .O(int_coefs_0_00[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_0[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_0[9]),
        .O(int_coefs_0_00[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[0]),
        .Q(coefs_0_0[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[10]),
        .Q(coefs_0_0[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[11]),
        .Q(coefs_0_0[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[12]),
        .Q(coefs_0_0[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[13]),
        .Q(coefs_0_0[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[14]),
        .Q(coefs_0_0[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[15]),
        .Q(coefs_0_0[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[1]),
        .Q(coefs_0_0[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[2]),
        .Q(coefs_0_0[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[3]),
        .Q(coefs_0_0[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[4]),
        .Q(coefs_0_0[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[5]),
        .Q(coefs_0_0[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[6]),
        .Q(coefs_0_0[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[7]),
        .Q(coefs_0_0[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[8]),
        .Q(coefs_0_0[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_0_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_0_0[15]_i_1_n_5 ),
        .D(int_coefs_0_00[9]),
        .Q(coefs_0_0[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[0]),
        .O(int_coefs_0_10[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[10]),
        .O(int_coefs_0_10[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[11]),
        .O(int_coefs_0_10[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[12]),
        .O(int_coefs_0_10[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[13]),
        .O(int_coefs_0_10[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[14]),
        .O(int_coefs_0_10[14]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \int_coefs_0_1[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\int_input_video_format[7]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[5] ),
        .I4(\waddr_reg_n_5_[6] ),
        .O(\int_coefs_0_1[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[15]),
        .O(int_coefs_0_10[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[1]),
        .O(int_coefs_0_10[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[2]),
        .O(int_coefs_0_10[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[3]),
        .O(int_coefs_0_10[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[4]),
        .O(int_coefs_0_10[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[5]),
        .O(int_coefs_0_10[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[6]),
        .O(int_coefs_0_10[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_1[7]),
        .O(int_coefs_0_10[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[8]),
        .O(int_coefs_0_10[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_1[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_1[9]),
        .O(int_coefs_0_10[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[0]),
        .Q(coefs_0_1[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[10]),
        .Q(coefs_0_1[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[11]),
        .Q(coefs_0_1[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[12]),
        .Q(coefs_0_1[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[13]),
        .Q(coefs_0_1[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[14]),
        .Q(coefs_0_1[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[15]),
        .Q(coefs_0_1[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[1]),
        .Q(coefs_0_1[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[2]),
        .Q(coefs_0_1[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[3]),
        .Q(coefs_0_1[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[4]),
        .Q(coefs_0_1[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[5]),
        .Q(coefs_0_1[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[6]),
        .Q(coefs_0_1[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[7]),
        .Q(coefs_0_1[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[8]),
        .Q(coefs_0_1[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_1_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_0_1[15]_i_1_n_5 ),
        .D(int_coefs_0_10[9]),
        .Q(coefs_0_1[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[0]),
        .O(int_coefs_0_20[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[10]),
        .O(int_coefs_0_20[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[11]),
        .O(int_coefs_0_20[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[12]),
        .O(int_coefs_0_20[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[13]),
        .O(int_coefs_0_20[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[14]),
        .O(int_coefs_0_20[14]));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_coefs_0_2[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[5] ),
        .I2(\int_coefs_0_2[15]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[4] ),
        .O(\int_coefs_0_2[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[15]),
        .O(int_coefs_0_20[15]));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \int_coefs_0_2[15]_i_3 
       (.I0(\waddr_reg_n_5_[1] ),
        .I1(\waddr_reg_n_5_[0] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_CTRL_WVALID),
        .I4(\waddr_reg_n_5_[2] ),
        .I5(\waddr_reg_n_5_[6] ),
        .O(\int_coefs_0_2[15]_i_3_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[1]),
        .O(int_coefs_0_20[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[2]),
        .O(int_coefs_0_20[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[3]),
        .O(int_coefs_0_20[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[4]),
        .O(int_coefs_0_20[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[5]),
        .O(int_coefs_0_20[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[6]),
        .O(int_coefs_0_20[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_2[7]),
        .O(int_coefs_0_20[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[8]),
        .O(int_coefs_0_20[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_2[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_2[9]),
        .O(int_coefs_0_20[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[0]),
        .Q(coefs_0_2[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[10]),
        .Q(coefs_0_2[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[11]),
        .Q(coefs_0_2[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[12]),
        .Q(coefs_0_2[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[13]),
        .Q(coefs_0_2[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[14]),
        .Q(coefs_0_2[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[15]),
        .Q(coefs_0_2[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[1]),
        .Q(coefs_0_2[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[2]),
        .Q(coefs_0_2[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[3]),
        .Q(coefs_0_2[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[4]),
        .Q(coefs_0_2[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[5]),
        .Q(coefs_0_2[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[6]),
        .Q(coefs_0_2[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[7]),
        .Q(coefs_0_2[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[8]),
        .Q(coefs_0_2[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_2_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_0_2[15]_i_1_n_5 ),
        .D(int_coefs_0_20[9]),
        .Q(coefs_0_2[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[0]),
        .O(int_coefs_0_30[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[10]),
        .O(int_coefs_0_30[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[11]),
        .O(int_coefs_0_30[11]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[12]),
        .O(int_coefs_0_30[12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[13]),
        .O(int_coefs_0_30[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[14]),
        .O(int_coefs_0_30[14]));
  LUT4 #(
    .INIT(16'h0002)) 
    \int_coefs_0_3[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[5] ),
        .I2(\int_coefs_0_2[15]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[4] ),
        .O(\int_coefs_0_3[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[15]),
        .O(int_coefs_0_30[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[1]),
        .O(int_coefs_0_30[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[2]),
        .O(int_coefs_0_30[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[3]),
        .O(int_coefs_0_30[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[4]),
        .O(int_coefs_0_30[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[5]),
        .O(int_coefs_0_30[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[6]),
        .O(int_coefs_0_30[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_0_3[7]),
        .O(int_coefs_0_30[7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[8]),
        .O(int_coefs_0_30[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_0_3[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_0_3[9]),
        .O(int_coefs_0_30[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[0]),
        .Q(coefs_0_3[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[10]),
        .Q(coefs_0_3[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[11]),
        .Q(coefs_0_3[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[12]),
        .Q(coefs_0_3[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[13]),
        .Q(coefs_0_3[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[14]),
        .Q(coefs_0_3[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[15]),
        .Q(coefs_0_3[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[1]),
        .Q(coefs_0_3[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[2]),
        .Q(coefs_0_3[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[3]),
        .Q(coefs_0_3[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[4]),
        .Q(coefs_0_3[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[5]),
        .Q(coefs_0_3[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[6]),
        .Q(coefs_0_3[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[7]),
        .Q(coefs_0_3[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[8]),
        .Q(coefs_0_3[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_0_3_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_0_3[15]_i_1_n_5 ),
        .D(int_coefs_0_30[9]),
        .Q(coefs_0_3[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[0]),
        .O(int_coefs_1_00[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[10]),
        .O(int_coefs_1_00[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[11]),
        .O(int_coefs_1_00[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[12]),
        .O(int_coefs_1_00[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[13]),
        .O(int_coefs_1_00[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[14]),
        .O(int_coefs_1_00[14]));
  LUT4 #(
    .INIT(16'h0004)) 
    \int_coefs_1_0[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\int_coefs_0_2[15]_i_3_n_5 ),
        .O(\int_coefs_1_0[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[15]),
        .O(int_coefs_1_00[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[1]),
        .O(int_coefs_1_00[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[2]),
        .O(int_coefs_1_00[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[3]),
        .O(int_coefs_1_00[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[4]),
        .O(int_coefs_1_00[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[5]),
        .O(int_coefs_1_00[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[6]),
        .O(int_coefs_1_00[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_0[7]),
        .O(int_coefs_1_00[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[8]),
        .O(int_coefs_1_00[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_0[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_0[9]),
        .O(int_coefs_1_00[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[0]),
        .Q(coefs_1_0[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[10]),
        .Q(coefs_1_0[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[11]),
        .Q(coefs_1_0[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[12]),
        .Q(coefs_1_0[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[13]),
        .Q(coefs_1_0[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[14]),
        .Q(coefs_1_0[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[15]),
        .Q(coefs_1_0[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[1]),
        .Q(coefs_1_0[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[2]),
        .Q(coefs_1_0[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[3]),
        .Q(coefs_1_0[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[4]),
        .Q(coefs_1_0[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[5]),
        .Q(coefs_1_0[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[6]),
        .Q(coefs_1_0[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[7]),
        .Q(coefs_1_0[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[8]),
        .Q(coefs_1_0[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_0_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_1_0[15]_i_1_n_5 ),
        .D(int_coefs_1_00[9]),
        .Q(coefs_1_0[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[0]),
        .O(int_coefs_1_10[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[10]),
        .O(int_coefs_1_10[10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[11]),
        .O(int_coefs_1_10[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[12]),
        .O(int_coefs_1_10[12]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[13]),
        .O(int_coefs_1_10[13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[14]),
        .O(int_coefs_1_10[14]));
  LUT4 #(
    .INIT(16'h0008)) 
    \int_coefs_1_1[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\int_coefs_0_2[15]_i_3_n_5 ),
        .O(\int_coefs_1_1[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[15]),
        .O(int_coefs_1_10[15]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[1]),
        .O(int_coefs_1_10[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[2]),
        .O(int_coefs_1_10[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[3]),
        .O(int_coefs_1_10[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[4]),
        .O(int_coefs_1_10[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[5]),
        .O(int_coefs_1_10[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[6]),
        .O(int_coefs_1_10[6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_1[7]),
        .O(int_coefs_1_10[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[8]),
        .O(int_coefs_1_10[8]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_1[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_1[9]),
        .O(int_coefs_1_10[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[0]),
        .Q(coefs_1_1[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[10]),
        .Q(coefs_1_1[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[11]),
        .Q(coefs_1_1[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[12]),
        .Q(coefs_1_1[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[13]),
        .Q(coefs_1_1[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[14]),
        .Q(coefs_1_1[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[15]),
        .Q(coefs_1_1[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[1]),
        .Q(coefs_1_1[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[2]),
        .Q(coefs_1_1[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[3]),
        .Q(coefs_1_1[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[4]),
        .Q(coefs_1_1[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[5]),
        .Q(coefs_1_1[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[6]),
        .Q(coefs_1_1[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[7]),
        .Q(coefs_1_1[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[8]),
        .Q(coefs_1_1[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_1_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_1_1[15]_i_1_n_5 ),
        .D(int_coefs_1_10[9]),
        .Q(coefs_1_1[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[0]),
        .O(int_coefs_1_20[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[10]),
        .O(int_coefs_1_20[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[11]),
        .O(int_coefs_1_20[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[12]),
        .O(int_coefs_1_20[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[13]),
        .O(int_coefs_1_20[13]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[14]),
        .O(int_coefs_1_20[14]));
  LUT4 #(
    .INIT(16'h0010)) 
    \int_coefs_1_2[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\int_coefs_0_2[15]_i_3_n_5 ),
        .O(\int_coefs_1_2[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[15]),
        .O(int_coefs_1_20[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[1]),
        .O(int_coefs_1_20[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[2]),
        .O(int_coefs_1_20[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[3]),
        .O(int_coefs_1_20[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[4]),
        .O(int_coefs_1_20[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[5]),
        .O(int_coefs_1_20[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[6]),
        .O(int_coefs_1_20[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_2[7]),
        .O(int_coefs_1_20[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[8]),
        .O(int_coefs_1_20[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_2[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_2[9]),
        .O(int_coefs_1_20[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[0]),
        .Q(coefs_1_2[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[10]),
        .Q(coefs_1_2[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[11]),
        .Q(coefs_1_2[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[12]),
        .Q(coefs_1_2[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[13]),
        .Q(coefs_1_2[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[14]),
        .Q(coefs_1_2[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[15]),
        .Q(coefs_1_2[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[1]),
        .Q(coefs_1_2[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[2]),
        .Q(coefs_1_2[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[3]),
        .Q(coefs_1_2[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[4]),
        .Q(coefs_1_2[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[5]),
        .Q(coefs_1_2[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[6]),
        .Q(coefs_1_2[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[7]),
        .Q(coefs_1_2[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[8]),
        .Q(coefs_1_2[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_2_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_1_2[15]_i_1_n_5 ),
        .D(int_coefs_1_20[9]),
        .Q(coefs_1_2[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[0]),
        .O(int_coefs_1_30[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[10]),
        .O(int_coefs_1_30[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[11]),
        .O(int_coefs_1_30[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[12]),
        .O(int_coefs_1_30[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[13]),
        .O(int_coefs_1_30[13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[14]),
        .O(int_coefs_1_30[14]));
  LUT4 #(
    .INIT(16'h0020)) 
    \int_coefs_1_3[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[4] ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\int_coefs_0_2[15]_i_3_n_5 ),
        .O(\int_coefs_1_3[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[15]),
        .O(int_coefs_1_30[15]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[1]),
        .O(int_coefs_1_30[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[2]),
        .O(int_coefs_1_30[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[3]),
        .O(int_coefs_1_30[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[4]),
        .O(int_coefs_1_30[4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[5]),
        .O(int_coefs_1_30[5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[6]),
        .O(int_coefs_1_30[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(coefs_1_3[7]),
        .O(int_coefs_1_30[7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[8]),
        .O(int_coefs_1_30[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_coefs_1_3[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(coefs_1_3[9]),
        .O(int_coefs_1_30[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[0] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[0]),
        .Q(coefs_1_3[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[10] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[10]),
        .Q(coefs_1_3[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[11] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[11]),
        .Q(coefs_1_3[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[12] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[12]),
        .Q(coefs_1_3[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[13] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[13]),
        .Q(coefs_1_3[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[14] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[14]),
        .Q(coefs_1_3[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[15] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[15]),
        .Q(coefs_1_3[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[1] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[1]),
        .Q(coefs_1_3[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[2] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[2]),
        .Q(coefs_1_3[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[3] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[3]),
        .Q(coefs_1_3[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[4] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[4]),
        .Q(coefs_1_3[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[5] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[5]),
        .Q(coefs_1_3[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[6] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[6]),
        .Q(coefs_1_3[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[7] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[7]),
        .Q(coefs_1_3[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[8] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[8]),
        .Q(coefs_1_3[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_coefs_1_3_reg[9] 
       (.C(ap_clk),
        .CE(\int_coefs_1_3[15]_i_1_n_5 ),
        .D(int_coefs_1_30[9]),
        .Q(coefs_1_3[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\int_width[15]_i_3_n_5 ),
        .I2(\waddr_reg_n_5_[2] ),
        .I3(int_gie_i_2_n_5),
        .I4(int_gie_reg_n_5),
        .O(int_gie_i_1_n_5));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\waddr_reg_n_5_[4] ),
        .O(int_gie_i_2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_5),
        .Q(int_gie_reg_n_5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [0]),
        .O(int_height0[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_height_reg[10]_1 [10]),
        .O(int_height0[10]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(height[11]),
        .O(int_height0[11]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(height[12]),
        .O(int_height0[12]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(height[13]),
        .O(int_height0[13]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(height[14]),
        .O(int_height0[14]));
  LUT4 #(
    .INIT(16'h0200)) 
    \int_height[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[2] ),
        .I2(\int_width[15]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[4] ),
        .O(\int_height[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(height[15]),
        .O(int_height0[15]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [1]),
        .O(int_height0[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [2]),
        .O(int_height0[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [3]),
        .O(int_height0[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [4]),
        .O(int_height0[4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [5]),
        .O(int_height0[5]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [6]),
        .O(int_height0[6]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_height_reg[10]_1 [7]),
        .O(int_height0[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_height_reg[10]_1 [8]),
        .O(int_height0[8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_height_reg[10]_1 [9]),
        .O(int_height0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[0] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[0]),
        .Q(\int_height_reg[10]_1 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[10] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[10]),
        .Q(\int_height_reg[10]_1 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[11] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[11]),
        .Q(height[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[12] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[12]),
        .Q(height[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[13] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[13]),
        .Q(height[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[14] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[14]),
        .Q(height[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[15] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[15]),
        .Q(height[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[1] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[1]),
        .Q(\int_height_reg[10]_1 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[2] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[2]),
        .Q(\int_height_reg[10]_1 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[3] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[3]),
        .Q(\int_height_reg[10]_1 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[4] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[4]),
        .Q(\int_height_reg[10]_1 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[5] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[5]),
        .Q(\int_height_reg[10]_1 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[6] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[6]),
        .Q(\int_height_reg[10]_1 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[7] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[7]),
        .Q(\int_height_reg[10]_1 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[8] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[8]),
        .Q(\int_height_reg[10]_1 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[9] 
       (.C(ap_clk),
        .CE(\int_height[15]_i_1_n_5 ),
        .D(int_height0[9]),
        .Q(\int_height_reg[10]_1 [9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_5 ),
        .I2(\waddr_reg_n_5_[3] ),
        .I3(\waddr_reg_n_5_[4] ),
        .I4(s_axi_CTRL_WSTRB[0]),
        .I5(\int_ier_reg_n_5_[0] ),
        .O(\int_ier[0]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(\int_ier[1]_i_2_n_5 ),
        .I2(\waddr_reg_n_5_[3] ),
        .I3(\waddr_reg_n_5_[4] ),
        .I4(s_axi_CTRL_WSTRB[0]),
        .I5(\int_ier_reg_n_5_[1] ),
        .O(\int_ier[1]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_5_[2] ),
        .I1(\int_width[15]_i_3_n_5 ),
        .O(\int_ier[1]_i_2_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_5 ),
        .Q(\int_ier_reg_n_5_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_5 ),
        .Q(\int_ier_reg_n_5_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[0]),
        .O(int_input_video_format0[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[1]),
        .O(int_input_video_format0[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[2]),
        .O(int_input_video_format0[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[3]),
        .O(int_input_video_format0[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[4]),
        .O(int_input_video_format0[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[5]),
        .O(int_input_video_format0[5]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[6]),
        .O(int_input_video_format0[6]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \int_input_video_format[7]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\int_input_video_format[7]_i_3_n_5 ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\waddr_reg_n_5_[6] ),
        .I4(\waddr_reg_n_5_[4] ),
        .O(\int_input_video_format[7]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_video_format[7]_i_2 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(input_video_format[7]),
        .O(int_input_video_format0[7]));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \int_input_video_format[7]_i_3 
       (.I0(\waddr_reg_n_5_[2] ),
        .I1(s_axi_CTRL_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_5_[0] ),
        .I4(\waddr_reg_n_5_[1] ),
        .O(\int_input_video_format[7]_i_3_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[0] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[0]),
        .Q(input_video_format[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[1] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[1]),
        .Q(input_video_format[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[2] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[2]),
        .Q(input_video_format[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[3] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[3]),
        .Q(input_video_format[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[4] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[4]),
        .Q(input_video_format[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[5] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[5]),
        .Q(input_video_format[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[6] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[6]),
        .Q(input_video_format[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_video_format_reg[7] 
       (.C(ap_clk),
        .CE(\int_input_video_format[7]_i_1_n_5 ),
        .D(int_input_video_format0[7]),
        .Q(input_video_format[7]),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_5),
        .I1(data3[0]),
        .I2(data3[1]),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8F88)) 
    \int_isr[0]_i_1 
       (.I0(\int_isr_reg[0]_0 ),
        .I1(\int_ier_reg_n_5_[0] ),
        .I2(\int_isr[0]_i_2_n_5 ),
        .I3(data3[0]),
        .O(\int_isr[0]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \int_isr[0]_i_2 
       (.I0(\int_isr[0]_i_3_n_5 ),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[0]),
        .I3(s_axi_CTRL_ARADDR[2]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .O(\int_isr[0]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_isr[0]_i_3 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .I2(s_axi_CTRL_ARADDR[4]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .O(\int_isr[0]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hD555C000)) 
    \int_isr[1]_i_1 
       (.I0(\int_isr[0]_i_2_n_5 ),
        .I1(int_ap_start_reg_2),
        .I2(int_ap_start_reg_1[1]),
        .I3(\int_ier_reg_n_5_[1] ),
        .I4(data3[1]),
        .O(\int_isr[1]_i_1_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_5 ),
        .Q(data3[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_5 ),
        .Q(data3[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[0]),
        .O(int_output_video_format0[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[1]),
        .O(int_output_video_format0[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[2]),
        .O(int_output_video_format0[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[3]),
        .O(int_output_video_format0[3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[4]),
        .O(int_output_video_format0[4]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[5]),
        .O(int_output_video_format0[5]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[6]),
        .O(int_output_video_format0[6]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \int_output_video_format[7]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\int_input_video_format[7]_i_3_n_5 ),
        .I2(\waddr_reg_n_5_[5] ),
        .I3(\waddr_reg_n_5_[6] ),
        .I4(\waddr_reg_n_5_[4] ),
        .O(\int_output_video_format[7]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_output_video_format[7]_i_2 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(output_video_format[7]),
        .O(int_output_video_format0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[0] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[0]),
        .Q(output_video_format[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[1] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[1]),
        .Q(output_video_format[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[2] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[2]),
        .Q(output_video_format[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[3] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[3]),
        .Q(output_video_format[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[4] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[4]),
        .Q(output_video_format[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[5] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[5]),
        .Q(output_video_format[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[6] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[6]),
        .Q(output_video_format[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_output_video_format_reg[7] 
       (.C(ap_clk),
        .CE(\int_output_video_format[7]_i_1_n_5 ),
        .D(int_output_video_format0[7]),
        .Q(output_video_format[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h3B08FFFF3B083B08)) 
    int_task_ap_done_i_1
       (.I0(ap_idle),
        .I1(auto_restart_status_reg_n_5),
        .I2(p_12_in[2]),
        .I3(\int_isr_reg[0]_0 ),
        .I4(int_task_ap_done_i_2_n_5),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_5));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    int_task_ap_done_i_2
       (.I0(s_axi_CTRL_ARADDR[6]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(s_axi_CTRL_ARADDR[4]),
        .I3(ar_hs),
        .I4(\rdata[1]_i_4_n_5 ),
        .I5(s_axi_CTRL_ARADDR[3]),
        .O(int_task_ap_done_i_2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_5),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[0]),
        .O(int_width0[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(Q[10]),
        .O(int_width0[10]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(width[11]),
        .O(int_width0[11]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(width[12]),
        .O(int_width0[12]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(width[13]),
        .O(int_width0[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(width[14]),
        .O(int_width0[14]));
  LUT4 #(
    .INIT(16'h0100)) 
    \int_width[15]_i_1 
       (.I0(\waddr_reg_n_5_[3] ),
        .I1(\waddr_reg_n_5_[2] ),
        .I2(\int_width[15]_i_3_n_5 ),
        .I3(\waddr_reg_n_5_[4] ),
        .O(\int_width[15]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[15]_i_2 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(width[15]),
        .O(int_width0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \int_width[15]_i_3 
       (.I0(s_axi_CTRL_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_5_[0] ),
        .I3(\waddr_reg_n_5_[1] ),
        .I4(\waddr_reg_n_5_[5] ),
        .I5(\waddr_reg_n_5_[6] ),
        .O(\int_width[15]_i_3_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[1]),
        .O(int_width0[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[2]),
        .O(int_width0[2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[3]),
        .O(int_width0[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[4]),
        .O(int_width0[4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[5]),
        .O(int_width0[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[6]),
        .O(int_width0[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(Q[7]),
        .O(int_width0[7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(Q[8]),
        .O(int_width0[8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(Q[9]),
        .O(int_width0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[0] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[10] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[11] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[11]),
        .Q(width[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[12] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[12]),
        .Q(width[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[13] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[13]),
        .Q(width[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[14] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[14]),
        .Q(width[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[15] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[15]),
        .Q(width[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[1] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[2] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[3] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[4] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[5] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[6] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[7] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[8] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[9] 
       (.C(ap_clk),
        .CE(\int_width[15]_i_1_n_5 ),
        .D(int_width0[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    internal_empty_n_i_2
       (.I0(CO),
        .I1(internal_empty_n_reg[1]),
        .O(\ap_CS_fsm_reg[1] ));
  LUT3 #(
    .INIT(8'hA8)) 
    \mOutPtr[0]_i_2 
       (.I0(AXIvideo2MultiPixStream_U0_ap_start),
        .I1(start_for_v_hcresampler_core_U0_full_n),
        .I2(start_once_reg),
        .O(int_ap_start_reg_0));
  LUT5 #(
    .INIT(32'hAAA8AAAB)) 
    \mOutPtr[4]_i_5 
       (.I0(tmp_5_reg_1314_pp0_iter13_reg),
        .I1(\mOutPtr[4]_i_6_n_5 ),
        .I2(\SRL_SIG_reg[15][0]_srl16_i_9_n_5 ),
        .I3(\SRL_SIG_reg[15][0]_srl16_i_10_n_5 ),
        .I4(icmp_ln168_reg_1298_pp0_iter13_reg),
        .O(\tmp_5_reg_1314_pp0_iter13_reg_reg[0] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \mOutPtr[4]_i_6 
       (.I0(output_video_format[6]),
        .I1(input_video_format[6]),
        .I2(output_video_format[7]),
        .I3(input_video_format[7]),
        .O(\mOutPtr[4]_i_6_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_3 
       (.I0(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_5_n_5 ),
        .I1(input_video_format[1]),
        .I2(input_video_format[0]),
        .I3(input_video_format[2]),
        .I4(input_video_format[3]),
        .O(\int_input_video_format_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_5 
       (.I0(input_video_format[6]),
        .I1(input_video_format[4]),
        .I2(input_video_format[7]),
        .I3(input_video_format[5]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_5_n_5 ));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10
       (.I0(coefs_0_2[7]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[7]),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10__0
       (.I0(coefs_0_1[7]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[7]),
        .O(\int_coefs_0_1_reg[15]_0 [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_10__1
       (.I0(coefs_0_0[7]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[7]),
        .O(\int_coefs_0_0_reg[15]_0 [7]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_10__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[6]),
        .I3(coefs_1_3[6]),
        .O(\cmp335_reg_1338_reg[0] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(coefs_0_2[6]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11__0
       (.I0(coefs_0_1[6]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[6]),
        .O(\int_coefs_0_1_reg[15]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11__1
       (.I0(coefs_0_0[6]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[6]),
        .O(\int_coefs_0_0_reg[15]_0 [6]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_11__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[5]),
        .I3(coefs_1_3[5]),
        .O(\cmp335_reg_1338_reg[0] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(coefs_0_2[5]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12__0
       (.I0(coefs_0_1[5]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[5]),
        .O(\int_coefs_0_1_reg[15]_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12__1
       (.I0(coefs_0_0[5]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[5]),
        .O(\int_coefs_0_0_reg[15]_0 [5]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_12__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[4]),
        .I3(coefs_1_3[4]),
        .O(\cmp335_reg_1338_reg[0] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(coefs_0_2[4]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13__0
       (.I0(coefs_0_1[4]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[4]),
        .O(\int_coefs_0_1_reg[15]_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13__1
       (.I0(coefs_0_0[4]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[4]),
        .O(\int_coefs_0_0_reg[15]_0 [4]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_13__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[3]),
        .I3(coefs_1_3[3]),
        .O(\cmp335_reg_1338_reg[0] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(coefs_0_2[3]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14__0
       (.I0(coefs_0_1[3]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[3]),
        .O(\int_coefs_0_1_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14__1
       (.I0(coefs_0_0[3]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[3]),
        .O(\int_coefs_0_0_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_14__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[2]),
        .I3(coefs_1_3[2]),
        .O(\cmp335_reg_1338_reg[0] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(coefs_0_2[2]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15__0
       (.I0(coefs_0_1[2]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[2]),
        .O(\int_coefs_0_1_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15__1
       (.I0(coefs_0_0[2]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[2]),
        .O(\int_coefs_0_0_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_15__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[1]),
        .I3(coefs_1_3[1]),
        .O(\cmp335_reg_1338_reg[0] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(coefs_0_2[1]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16__0
       (.I0(coefs_0_1[1]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[1]),
        .O(\int_coefs_0_1_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16__1
       (.I0(coefs_0_0[1]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[1]),
        .O(\int_coefs_0_0_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_16__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[0]),
        .I3(coefs_1_3[0]),
        .O(\cmp335_reg_1338_reg[0] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17__0
       (.I0(coefs_0_2[0]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17__1
       (.I0(coefs_0_1[0]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[0]),
        .O(\int_coefs_0_1_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17__2
       (.I0(coefs_0_0[0]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[0]),
        .O(\int_coefs_0_0_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_1__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[15]),
        .I3(coefs_1_3[15]),
        .O(\cmp335_reg_1338_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    p_reg_reg_i_25
       (.I0(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_5_n_5 ),
        .I1(input_video_format[0]),
        .I2(input_video_format[1]),
        .I3(input_video_format[2]),
        .I4(input_video_format[3]),
        .O(icmp_ln145_fu_293_p2));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2__0
       (.I0(coefs_0_2[15]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2__1
       (.I0(coefs_0_1[15]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[15]),
        .O(\int_coefs_0_1_reg[15]_0 [15]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_2__2
       (.I0(coefs_0_0[15]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[15]),
        .O(\int_coefs_0_0_reg[15]_0 [15]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_2__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[14]),
        .I3(coefs_1_3[14]),
        .O(\cmp335_reg_1338_reg[0] [14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3__0
       (.I0(coefs_0_2[14]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[14]),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3__1
       (.I0(coefs_0_1[14]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[14]),
        .O(\int_coefs_0_1_reg[15]_0 [14]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_3__2
       (.I0(coefs_0_0[14]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[14]),
        .O(\int_coefs_0_0_reg[15]_0 [14]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_3__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[13]),
        .I3(coefs_1_3[13]),
        .O(\cmp335_reg_1338_reg[0] [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4__0
       (.I0(coefs_0_2[13]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4__1
       (.I0(coefs_0_1[13]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[13]),
        .O(\int_coefs_0_1_reg[15]_0 [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_4__2
       (.I0(coefs_0_0[13]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[13]),
        .O(\int_coefs_0_0_reg[15]_0 [13]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_4__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[12]),
        .I3(coefs_1_3[12]),
        .O(\cmp335_reg_1338_reg[0] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5__0
       (.I0(coefs_0_2[12]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5__1
       (.I0(coefs_0_1[12]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[12]),
        .O(\int_coefs_0_1_reg[15]_0 [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_5__2
       (.I0(coefs_0_0[12]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[12]),
        .O(\int_coefs_0_0_reg[15]_0 [12]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_5__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[11]),
        .I3(coefs_1_3[11]),
        .O(\cmp335_reg_1338_reg[0] [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6__0
       (.I0(coefs_0_2[11]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6__1
       (.I0(coefs_0_1[11]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[11]),
        .O(\int_coefs_0_1_reg[15]_0 [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_6__2
       (.I0(coefs_0_0[11]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[11]),
        .O(\int_coefs_0_0_reg[15]_0 [11]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_6__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[10]),
        .I3(coefs_1_3[10]),
        .O(\cmp335_reg_1338_reg[0] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7__0
       (.I0(coefs_0_2[10]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7__1
       (.I0(coefs_0_1[10]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[10]),
        .O(\int_coefs_0_1_reg[15]_0 [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_7__2
       (.I0(coefs_0_0[10]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[10]),
        .O(\int_coefs_0_0_reg[15]_0 [10]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_7__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[9]),
        .I3(coefs_1_3[9]),
        .O(\cmp335_reg_1338_reg[0] [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8__0
       (.I0(coefs_0_2[9]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8__1
       (.I0(coefs_0_1[9]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[9]),
        .O(\int_coefs_0_1_reg[15]_0 [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_8__2
       (.I0(coefs_0_0[9]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[9]),
        .O(\int_coefs_0_0_reg[15]_0 [9]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_8__3
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[8]),
        .I3(coefs_1_3[8]),
        .O(\cmp335_reg_1338_reg[0] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9
       (.I0(coefs_0_2[8]),
        .I1(or_ln350_reg_1380_pp0_iter4_reg),
        .I2(coefs_1_2[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9__0
       (.I0(coefs_0_1[8]),
        .I1(or_ln350_reg_1380_pp0_iter6_reg),
        .I2(coefs_1_1[8]),
        .O(\int_coefs_0_1_reg[15]_0 [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_9__1
       (.I0(coefs_0_0[8]),
        .I1(or_ln350_reg_1380_pp0_iter8_reg),
        .I2(coefs_1_0[8]),
        .O(\int_coefs_0_0_reg[15]_0 [8]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    p_reg_reg_i_9__2
       (.I0(cmp335_reg_1338),
        .I1(icmp_ln145_fu_293_p2),
        .I2(coefs_0_3[7]),
        .I3(coefs_1_3[7]),
        .O(\cmp335_reg_1338_reg[0] [7]));
  LUT6 #(
    .INIT(64'hEAFFFFFFEA000000)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_5 ),
        .I1(\rdata[1]_i_4_n_5 ),
        .I2(\rdata_reg[0]_i_3_n_5 ),
        .I3(s_axi_CTRL_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_CTRL_RDATA[0]),
        .O(\rdata[0]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'h00000000000000B8)) 
    \rdata[0]_i_2 
       (.I0(data3[0]),
        .I1(s_axi_CTRL_ARADDR[3]),
        .I2(int_gie_reg_n_5),
        .I3(s_axi_CTRL_ARADDR[1]),
        .I4(s_axi_CTRL_ARADDR[0]),
        .I5(\rdata[1]_i_5_n_5 ),
        .O(\rdata[0]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_6 
       (.I0(coefs_1_2[0]),
        .I1(input_video_format[0]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_2[0]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(AXIvideo2MultiPixStream_U0_ap_start),
        .O(\rdata[0]_i_6_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_7 
       (.I0(coefs_0_0[0]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[0]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[0]),
        .O(\rdata[0]_i_7_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_8 
       (.I0(coefs_1_3[0]),
        .I1(output_video_format[0]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_3[0]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(\int_ier_reg_n_5_[0] ),
        .O(\rdata[0]_i_8_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_9 
       (.I0(coefs_0_1[0]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[0]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [0]),
        .O(\rdata[0]_i_9_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[10]_i_2 
       (.I0(\rdata[10]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[10]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[10]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[10]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[10]_i_3 
       (.I0(\rdata[10]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[10]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[10]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[10]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[10]_i_4 
       (.I0(coefs_0_0[10]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[10]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[10]),
        .O(\rdata[10]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[10]_i_5 
       (.I0(coefs_0_1[10]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[10]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [10]),
        .O(\rdata[10]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[11]_i_2 
       (.I0(\rdata[11]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[11]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[11]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[11]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[11]_i_3 
       (.I0(\rdata[11]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[11]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[11]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[11]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[11]_i_4 
       (.I0(coefs_0_0[11]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[11]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(width[11]),
        .O(\rdata[11]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[11]_i_5 
       (.I0(coefs_0_1[11]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[11]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(height[11]),
        .O(\rdata[11]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[12]_i_2 
       (.I0(\rdata[12]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[12]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[12]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[12]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[12]_i_3 
       (.I0(\rdata[12]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[12]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[12]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[12]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[12]_i_4 
       (.I0(coefs_0_0[12]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[12]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(width[12]),
        .O(\rdata[12]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[12]_i_5 
       (.I0(coefs_0_1[12]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[12]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(height[12]),
        .O(\rdata[12]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[13]_i_2 
       (.I0(\rdata[13]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[13]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[13]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[13]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[13]_i_3 
       (.I0(\rdata[13]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[13]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[13]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[13]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[13]_i_4 
       (.I0(coefs_0_0[13]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[13]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(width[13]),
        .O(\rdata[13]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[13]_i_5 
       (.I0(coefs_0_1[13]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[13]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(height[13]),
        .O(\rdata[13]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[14]_i_2 
       (.I0(\rdata[14]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[14]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[14]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[14]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[14]_i_3 
       (.I0(\rdata[14]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[14]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[14]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[14]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[14]_i_4 
       (.I0(coefs_0_0[14]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[14]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(width[14]),
        .O(\rdata[14]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[14]_i_5 
       (.I0(coefs_0_1[14]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[14]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(height[14]),
        .O(\rdata[14]_i_5_n_5 ));
  LUT5 #(
    .INIT(32'h88888880)) 
    \rdata[15]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[1]),
        .I4(s_axi_CTRL_ARADDR[0]),
        .O(\rdata[15]_i_1_n_5 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[15]_i_2 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[15]_i_4 
       (.I0(\rdata[15]_i_6_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[15]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[15]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[15]_i_4_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[15]_i_5 
       (.I0(\rdata[15]_i_7_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[15]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[15]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[15]_i_5_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[15]_i_6 
       (.I0(coefs_0_0[15]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[15]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(width[15]),
        .O(\rdata[15]_i_6_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[15]_i_7 
       (.I0(coefs_0_1[15]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[15]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(height[15]),
        .O(\rdata[15]_i_7_n_5 ));
  LUT6 #(
    .INIT(64'hBAFFFFFFBA000000)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_5 ),
        .I1(\rdata[1]_i_3_n_5 ),
        .I2(\rdata[1]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_CTRL_RDATA[1]),
        .O(\rdata[1]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rdata[1]_i_2 
       (.I0(data3[1]),
        .I1(s_axi_CTRL_ARADDR[3]),
        .I2(s_axi_CTRL_ARADDR[1]),
        .I3(s_axi_CTRL_ARADDR[0]),
        .I4(\rdata[1]_i_5_n_5 ),
        .O(\rdata[1]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    \rdata[1]_i_3 
       (.I0(\rdata[1]_i_6_n_5 ),
        .I1(\rdata[1]_i_7_n_5 ),
        .I2(\rdata[1]_i_8_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[1]_i_9_n_5 ),
        .O(\rdata[1]_i_3_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[1]_i_4 
       (.I0(s_axi_CTRL_ARADDR[0]),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .O(\rdata[1]_i_4_n_5 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rdata[1]_i_5 
       (.I0(s_axi_CTRL_ARADDR[2]),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[1]_i_5_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_6 
       (.I0(coefs_0_1[1]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[1]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [1]),
        .O(\rdata[1]_i_6_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_7 
       (.I0(coefs_0_0[1]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[1]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[1]),
        .O(\rdata[1]_i_7_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[1]_i_8 
       (.I0(coefs_1_2[1]),
        .I1(input_video_format[1]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_2[1]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(int_task_ap_done__0),
        .O(\rdata[1]_i_8_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[1]_i_9 
       (.I0(coefs_1_3[1]),
        .I1(output_video_format[1]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_3[1]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(\int_ier_reg_n_5_[1] ),
        .O(\rdata[1]_i_9_n_5 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_5 ),
        .I1(\rdata[2]_i_3_n_5 ),
        .I2(\rdata[2]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[2]_i_5_n_5 ),
        .O(\rdata[2]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_2 
       (.I0(coefs_0_1[2]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[2]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [2]),
        .O(\rdata[2]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_3 
       (.I0(coefs_0_0[2]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[2]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[2]),
        .O(\rdata[2]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[2]_i_4 
       (.I0(coefs_1_3[2]),
        .I1(output_video_format[2]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[2]),
        .O(\rdata[2]_i_4_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[2]_i_5 
       (.I0(coefs_1_2[2]),
        .I1(input_video_format[2]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_2[2]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(p_12_in[2]),
        .O(\rdata[2]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_5 ),
        .I1(\rdata[3]_i_3_n_5 ),
        .I2(\rdata[3]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[3]_i_5_n_5 ),
        .O(\rdata[3]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_2 
       (.I0(coefs_0_1[3]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[3]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [3]),
        .O(\rdata[3]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_3 
       (.I0(coefs_0_0[3]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[3]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[3]),
        .O(\rdata[3]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[3]_i_4 
       (.I0(coefs_1_3[3]),
        .I1(output_video_format[3]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[3]),
        .O(\rdata[3]_i_4_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3]_i_5 
       (.I0(coefs_1_2[3]),
        .I1(input_video_format[3]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_2[3]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(int_ap_ready__0),
        .O(\rdata[3]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_5 ),
        .I1(\rdata[4]_i_3_n_5 ),
        .I2(\rdata[4]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[4]_i_5_n_5 ),
        .O(\rdata[4]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[4]_i_2 
       (.I0(coefs_0_1[4]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[4]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [4]),
        .O(\rdata[4]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[4]_i_3 
       (.I0(coefs_1_2[4]),
        .I1(input_video_format[4]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_2[4]),
        .O(\rdata[4]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[4]_i_4 
       (.I0(coefs_1_3[4]),
        .I1(output_video_format[4]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[4]),
        .O(\rdata[4]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[4]_i_5 
       (.I0(coefs_0_0[4]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[4]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[4]),
        .O(\rdata[4]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_5 ),
        .I1(\rdata[5]_i_3_n_5 ),
        .I2(\rdata[5]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[5]_i_5_n_5 ),
        .O(\rdata[5]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[5]_i_2 
       (.I0(coefs_0_0[5]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[5]),
        .O(\rdata[5]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[5]_i_3 
       (.I0(coefs_0_1[5]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [5]),
        .O(\rdata[5]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[5]_i_4 
       (.I0(coefs_1_2[5]),
        .I1(input_video_format[5]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_2[5]),
        .O(\rdata[5]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[5]_i_5 
       (.I0(coefs_1_3[5]),
        .I1(output_video_format[5]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[5]),
        .O(\rdata[5]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_5 ),
        .I1(\rdata[6]_i_3_n_5 ),
        .I2(\rdata[6]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\rdata[6]_i_5_n_5 ),
        .O(\rdata[6]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[6]_i_2 
       (.I0(coefs_0_0[6]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[6]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[6]),
        .O(\rdata[6]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[6]_i_3 
       (.I0(coefs_0_1[6]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[6]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [6]),
        .O(\rdata[6]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[6]_i_4 
       (.I0(coefs_1_2[6]),
        .I1(input_video_format[6]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_2[6]),
        .O(\rdata[6]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[6]_i_5 
       (.I0(coefs_1_3[6]),
        .I1(output_video_format[6]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[6]),
        .O(\rdata[6]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hFFF0CCAA00F0CCAA)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_5 ),
        .I1(\rdata[7]_i_3_n_5 ),
        .I2(\rdata[7]_i_4_n_5 ),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(s_axi_CTRL_ARADDR[4]),
        .I5(\rdata[7]_i_5_n_5 ),
        .O(\rdata[7]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[7]_i_2 
       (.I0(coefs_1_2[7]),
        .I1(input_video_format[7]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(coefs_0_2[7]),
        .I4(s_axi_CTRL_ARADDR[6]),
        .I5(p_12_in[7]),
        .O(\rdata[7]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[7]_i_3 
       (.I0(coefs_1_3[7]),
        .I1(output_video_format[7]),
        .I2(s_axi_CTRL_ARADDR[5]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(coefs_0_3[7]),
        .O(\rdata[7]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_4 
       (.I0(coefs_0_0[7]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[7]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[7]),
        .O(\rdata[7]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_5 
       (.I0(coefs_0_1[7]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[7]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [7]),
        .O(\rdata[7]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[8]_i_2 
       (.I0(\rdata[8]_i_4_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_2[8]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_2[8]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[8]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \rdata[8]_i_3 
       (.I0(\rdata[8]_i_5_n_5 ),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(coefs_0_3[8]),
        .I3(s_axi_CTRL_ARADDR[5]),
        .I4(coefs_1_3[8]),
        .I5(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[8]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[8]_i_4 
       (.I0(coefs_0_0[8]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[8]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[8]),
        .O(\rdata[8]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[8]_i_5 
       (.I0(coefs_0_1[8]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[8]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [8]),
        .O(\rdata[8]_i_5_n_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_5 ),
        .I1(\rdata[9]_i_3_n_5 ),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(\rdata[9]_i_4_n_5 ),
        .I4(s_axi_CTRL_ARADDR[4]),
        .I5(\rdata[9]_i_5_n_5 ),
        .O(\rdata[9]_i_1_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[9]_i_2 
       (.I0(coefs_0_1[9]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_1[9]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(\int_height_reg[10]_1 [9]),
        .O(\rdata[9]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \rdata[9]_i_3 
       (.I0(coefs_0_3[9]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_3[9]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .O(\rdata[9]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[9]_i_4 
       (.I0(coefs_0_0[9]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_1_0[9]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(Q[9]),
        .O(\rdata[9]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \rdata[9]_i_5 
       (.I0(coefs_1_2[9]),
        .I1(s_axi_CTRL_ARADDR[5]),
        .I2(coefs_0_2[9]),
        .I3(s_axi_CTRL_ARADDR[6]),
        .I4(interrupt),
        .O(\rdata[9]_i_5_n_5 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[0]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[0]),
        .R(1'b0));
  MUXF8 \rdata_reg[0]_i_3 
       (.I0(\rdata_reg[0]_i_4_n_5 ),
        .I1(\rdata_reg[0]_i_5_n_5 ),
        .O(\rdata_reg[0]_i_3_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  MUXF7 \rdata_reg[0]_i_4 
       (.I0(\rdata[0]_i_6_n_5 ),
        .I1(\rdata[0]_i_7_n_5 ),
        .O(\rdata_reg[0]_i_4_n_5 ),
        .S(s_axi_CTRL_ARADDR[4]));
  MUXF7 \rdata_reg[0]_i_5 
       (.I0(\rdata[0]_i_8_n_5 ),
        .I1(\rdata[0]_i_9_n_5 ),
        .O(\rdata_reg[0]_i_5_n_5 ),
        .S(s_axi_CTRL_ARADDR[4]));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[10]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[10]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[10]_i_1 
       (.I0(\rdata[10]_i_2_n_5 ),
        .I1(\rdata[10]_i_3_n_5 ),
        .O(\rdata_reg[10]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[11]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[11]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[11]_i_1 
       (.I0(\rdata[11]_i_2_n_5 ),
        .I1(\rdata[11]_i_3_n_5 ),
        .O(\rdata_reg[11]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[12]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[12]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[12]_i_1 
       (.I0(\rdata[12]_i_2_n_5 ),
        .I1(\rdata[12]_i_3_n_5 ),
        .O(\rdata_reg[12]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[13]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[13]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[13]_i_1 
       (.I0(\rdata[13]_i_2_n_5 ),
        .I1(\rdata[13]_i_3_n_5 ),
        .O(\rdata_reg[13]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[14]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[14]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[14]_i_1 
       (.I0(\rdata[14]_i_2_n_5 ),
        .I1(\rdata[14]_i_3_n_5 ),
        .O(\rdata_reg[14]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[15]_i_3_n_5 ),
        .Q(s_axi_CTRL_RDATA[15]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[15]_i_3 
       (.I0(\rdata[15]_i_4_n_5 ),
        .I1(\rdata[15]_i_5_n_5 ),
        .O(\rdata_reg[15]_i_3_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[1]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[2]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[3]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[4]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[5]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[5]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[6]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[6]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[7]),
        .R(\rdata[15]_i_1_n_5 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[8]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[8]),
        .R(\rdata[15]_i_1_n_5 ));
  MUXF7 \rdata_reg[8]_i_1 
       (.I0(\rdata[8]_i_2_n_5 ),
        .I1(\rdata[8]_i_3_n_5 ),
        .O(\rdata_reg[8]_i_1_n_5 ),
        .S(s_axi_CTRL_ARADDR[3]));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_5 ),
        .Q(s_axi_CTRL_RDATA[9]),
        .R(\rdata[15]_i_1_n_5 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_191[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \sub_reg_191[10]_i_1 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(\sub_reg_191[10]_i_2_n_5 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sub_reg_191[10]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\sub_reg_191[10]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sub_reg_191[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sub_reg_191[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sub_reg_191[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sub_reg_191[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sub_reg_191[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sub_reg_191[6]_i_1 
       (.I0(Q[6]),
        .I1(\sub_reg_191[10]_i_2_n_5 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \sub_reg_191[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\sub_reg_191[10]_i_2_n_5 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \sub_reg_191[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\sub_reg_191[10]_i_2_n_5 ),
        .I3(Q[6]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \sub_reg_191[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\sub_reg_191[10]_i_2_n_5 ),
        .I4(Q[7]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[6]_i_1 
       (.I0(s_axi_CTRL_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[0]),
        .Q(\waddr_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[1]),
        .Q(\waddr_reg_n_5_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[2]),
        .Q(\waddr_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[3]),
        .Q(\waddr_reg_n_5_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[4]),
        .Q(\waddr_reg_n_5_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[5]),
        .Q(\waddr_reg_n_5_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[6]),
        .Q(\waddr_reg_n_5_[6] ),
        .R(1'b0));
endmodule

module bd_3a92_hcr_0_MultiPixStream2AXIvideo
   (\B_V_data_1_state_reg[0] ,
    Q,
    B_V_data_1_sel_wr01_out,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[5]_0 ,
    E,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TDATA,
    ap_rst_n_inv,
    ap_clk,
    MultiPixStream2AXIvideo_U0_ap_start,
    m_axis_video_TREADY,
    outYUV_empty_n,
    shiftReg_ce,
    ap_rst_n,
    \cols_reg_186_reg[10]_0 ,
    out,
    D,
    \rows_reg_181_reg[10]_0 );
  output \B_V_data_1_state_reg[0] ;
  output [0:0]Q;
  output B_V_data_1_sel_wr01_out;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[5]_0 ;
  output [0:0]E;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [23:0]m_axis_video_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input MultiPixStream2AXIvideo_U0_ap_start;
  input m_axis_video_TREADY;
  input outYUV_empty_n;
  input shiftReg_ce;
  input ap_rst_n;
  input [10:0]\cols_reg_186_reg[10]_0 ;
  input [23:0]out;
  input [10:0]D;
  input [10:0]\rows_reg_181_reg[10]_0 ;

  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr01_out;
  wire \B_V_data_1_state_reg[0] ;
  wire [10:0]D;
  wire [0:0]E;
  wire MultiPixStream2AXIvideo_U0_ap_start;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[5]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [5:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_189;
  wire [10:0]cols_reg_186;
  wire [10:0]\cols_reg_186_reg[10]_0 ;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_11;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_12;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_13;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_5;
  wire [10:0]i_2_fu_163_p2;
  wire \i_fu_70[10]_i_2_n_5 ;
  wire [10:0]i_fu_70_reg;
  wire icmp_ln546_fu_158_p2;
  wire icmp_ln546_fu_158_p2_carry_i_1_n_5;
  wire icmp_ln546_fu_158_p2_carry_i_2_n_5;
  wire icmp_ln546_fu_158_p2_carry_i_3_n_5;
  wire icmp_ln546_fu_158_p2_carry_i_4_n_5;
  wire icmp_ln546_fu_158_p2_carry_n_6;
  wire icmp_ln546_fu_158_p2_carry_n_7;
  wire icmp_ln546_fu_158_p2_carry_n_8;
  wire internal_empty_n_reg;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire m_axis_video_TREADY_int_regslice;
  wire [0:0]m_axis_video_TUSER;
  wire [23:0]out;
  wire outYUV_empty_n;
  wire [10:0]rows_reg_181;
  wire [10:0]\rows_reg_181_reg[10]_0 ;
  wire shiftReg_ce;
  wire sof_reg_86;
  wire [10:0]sub_reg_191;
  wire [3:0]NLW_icmp_ln546_fu_158_p2_carry_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(Q),
        .I1(MultiPixStream2AXIvideo_U0_ap_start),
        .O(ap_NS_fsm[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(ap_CS_fsm_state3),
        .I1(icmp_ln546_fu_158_p2),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  FDRE \cols_reg_186_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [0]),
        .Q(cols_reg_186[0]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [10]),
        .Q(cols_reg_186[10]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [1]),
        .Q(cols_reg_186[1]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [2]),
        .Q(cols_reg_186[2]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [3]),
        .Q(cols_reg_186[3]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [4]),
        .Q(cols_reg_186[4]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [5]),
        .Q(cols_reg_186[5]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [6]),
        .Q(cols_reg_186[6]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [7]),
        .Q(cols_reg_186[7]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [8]),
        .Q(cols_reg_186[8]),
        .R(1'b0));
  FDRE \cols_reg_186_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\cols_reg_186_reg[10]_0 [9]),
        .Q(cols_reg_186[9]),
        .R(1'b0));
  bd_3a92_hcr_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .\B_V_data_1_state_reg[1] (B_V_data_1_sel_wr01_out),
        .D({ap_NS_fsm[4],ap_NS_fsm[2]}),
        .E(E),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[3] (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_11),
        .\ap_CS_fsm_reg[4] (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_13),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_fu_162_p2_carry_0(sub_reg_191),
        .axi_last_V_reg_189(axi_last_V_reg_189),
        .grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .icmp_ln548_fu_150_p2_carry_0(cols_reg_186),
        .\icmp_ln548_reg_185_reg[0]_0 (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_12),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .outYUV_empty_n(outYUV_empty_n),
        .shiftReg_ce(shiftReg_ce),
        .\sof_2_reg_130_reg[0]_0 (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_5),
        .sof_reg_86(sof_reg_86));
  FDRE #(
    .INIT(1'b0)) 
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_11),
        .Q(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_70[0]_i_1 
       (.I0(i_fu_70_reg[0]),
        .O(i_2_fu_163_p2[0]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_fu_70[10]_i_1 
       (.I0(i_fu_70_reg[10]),
        .I1(i_fu_70_reg[6]),
        .I2(\i_fu_70[10]_i_2_n_5 ),
        .I3(i_fu_70_reg[7]),
        .I4(i_fu_70_reg[8]),
        .I5(i_fu_70_reg[9]),
        .O(i_2_fu_163_p2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_fu_70[10]_i_2 
       (.I0(i_fu_70_reg[3]),
        .I1(i_fu_70_reg[2]),
        .I2(i_fu_70_reg[0]),
        .I3(i_fu_70_reg[1]),
        .I4(i_fu_70_reg[4]),
        .I5(i_fu_70_reg[5]),
        .O(\i_fu_70[10]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_70[1]_i_1 
       (.I0(i_fu_70_reg[0]),
        .I1(i_fu_70_reg[1]),
        .O(i_2_fu_163_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_fu_70[2]_i_1 
       (.I0(i_fu_70_reg[2]),
        .I1(i_fu_70_reg[1]),
        .I2(i_fu_70_reg[0]),
        .O(i_2_fu_163_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_fu_70[3]_i_1 
       (.I0(i_fu_70_reg[3]),
        .I1(i_fu_70_reg[2]),
        .I2(i_fu_70_reg[0]),
        .I3(i_fu_70_reg[1]),
        .O(i_2_fu_163_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_fu_70[4]_i_1 
       (.I0(i_fu_70_reg[4]),
        .I1(i_fu_70_reg[1]),
        .I2(i_fu_70_reg[0]),
        .I3(i_fu_70_reg[2]),
        .I4(i_fu_70_reg[3]),
        .O(i_2_fu_163_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_fu_70[5]_i_1 
       (.I0(i_fu_70_reg[5]),
        .I1(i_fu_70_reg[3]),
        .I2(i_fu_70_reg[2]),
        .I3(i_fu_70_reg[0]),
        .I4(i_fu_70_reg[1]),
        .I5(i_fu_70_reg[4]),
        .O(i_2_fu_163_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_70[6]_i_1 
       (.I0(i_fu_70_reg[6]),
        .I1(\i_fu_70[10]_i_2_n_5 ),
        .O(i_2_fu_163_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_fu_70[7]_i_1 
       (.I0(i_fu_70_reg[7]),
        .I1(\i_fu_70[10]_i_2_n_5 ),
        .I2(i_fu_70_reg[6]),
        .O(i_2_fu_163_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_fu_70[8]_i_1 
       (.I0(i_fu_70_reg[8]),
        .I1(i_fu_70_reg[6]),
        .I2(\i_fu_70[10]_i_2_n_5 ),
        .I3(i_fu_70_reg[7]),
        .O(i_2_fu_163_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_fu_70[9]_i_1 
       (.I0(i_fu_70_reg[9]),
        .I1(i_fu_70_reg[8]),
        .I2(i_fu_70_reg[7]),
        .I3(\i_fu_70[10]_i_2_n_5 ),
        .I4(i_fu_70_reg[6]),
        .O(i_2_fu_163_p2[9]));
  FDRE \i_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[0]),
        .Q(i_fu_70_reg[0]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[10]),
        .Q(i_fu_70_reg[10]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[1]),
        .Q(i_fu_70_reg[1]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[2]),
        .Q(i_fu_70_reg[2]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[3]),
        .Q(i_fu_70_reg[3]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[4]),
        .Q(i_fu_70_reg[4]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[5]),
        .Q(i_fu_70_reg[5]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[6]),
        .Q(i_fu_70_reg[6]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[7]),
        .Q(i_fu_70_reg[7]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[8]),
        .Q(i_fu_70_reg[8]),
        .R(ap_NS_fsm[1]));
  FDRE \i_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(i_2_fu_163_p2[9]),
        .Q(i_fu_70_reg[9]),
        .R(ap_NS_fsm[1]));
  CARRY4 icmp_ln546_fu_158_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln546_fu_158_p2,icmp_ln546_fu_158_p2_carry_n_6,icmp_ln546_fu_158_p2_carry_n_7,icmp_ln546_fu_158_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln546_fu_158_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln546_fu_158_p2_carry_i_1_n_5,icmp_ln546_fu_158_p2_carry_i_2_n_5,icmp_ln546_fu_158_p2_carry_i_3_n_5,icmp_ln546_fu_158_p2_carry_i_4_n_5}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln546_fu_158_p2_carry_i_1
       (.I0(rows_reg_181[10]),
        .I1(i_fu_70_reg[10]),
        .I2(rows_reg_181[9]),
        .I3(i_fu_70_reg[9]),
        .O(icmp_ln546_fu_158_p2_carry_i_1_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln546_fu_158_p2_carry_i_2
       (.I0(rows_reg_181[8]),
        .I1(i_fu_70_reg[8]),
        .I2(i_fu_70_reg[6]),
        .I3(rows_reg_181[6]),
        .I4(i_fu_70_reg[7]),
        .I5(rows_reg_181[7]),
        .O(icmp_ln546_fu_158_p2_carry_i_2_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln546_fu_158_p2_carry_i_3
       (.I0(rows_reg_181[5]),
        .I1(i_fu_70_reg[5]),
        .I2(i_fu_70_reg[4]),
        .I3(rows_reg_181[4]),
        .I4(i_fu_70_reg[3]),
        .I5(rows_reg_181[3]),
        .O(icmp_ln546_fu_158_p2_carry_i_3_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln546_fu_158_p2_carry_i_4
       (.I0(rows_reg_181[2]),
        .I1(i_fu_70_reg[2]),
        .I2(i_fu_70_reg[0]),
        .I3(rows_reg_181[0]),
        .I4(i_fu_70_reg[1]),
        .I5(rows_reg_181[1]),
        .O(icmp_ln546_fu_158_p2_carry_i_4_n_5));
  bd_3a92_hcr_0_regslice_both regslice_both_m_axis_video_V_data_V_U
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_12),
        .\B_V_data_1_state_reg[0]_0 (\B_V_data_1_state_reg[0] ),
        .\B_V_data_1_state_reg[0]_1 (B_V_data_1_sel_wr01_out),
        .CO(icmp_ln546_fu_158_p2),
        .D({ap_NS_fsm[5],ap_NS_fsm[0]}),
        .MultiPixStream2AXIvideo_U0_ap_start(MultiPixStream2AXIvideo_U0_ap_start),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state3,Q}),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_empty_n_reg(internal_empty_n_reg),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .out(out));
  bd_3a92_hcr_0_regslice_both__parameterized1 regslice_both_m_axis_video_V_last_V_U
       (.\B_V_data_1_state_reg[1]_0 (B_V_data_1_sel_wr01_out),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_reg_189(axi_last_V_reg_189),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY));
  bd_3a92_hcr_0_regslice_both__parameterized1_10 regslice_both_m_axis_video_V_user_V_U
       (.\B_V_data_1_payload_A_reg[0]_0 (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_5),
        .\B_V_data_1_state_reg[1]_0 (B_V_data_1_sel_wr01_out),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER));
  FDRE \rows_reg_181_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [0]),
        .Q(rows_reg_181[0]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [10]),
        .Q(rows_reg_181[10]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [1]),
        .Q(rows_reg_181[1]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [2]),
        .Q(rows_reg_181[2]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [3]),
        .Q(rows_reg_181[3]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [4]),
        .Q(rows_reg_181[4]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [5]),
        .Q(rows_reg_181[5]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [6]),
        .Q(rows_reg_181[6]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [7]),
        .Q(rows_reg_181[7]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [8]),
        .Q(rows_reg_181[8]),
        .R(1'b0));
  FDRE \rows_reg_181_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\rows_reg_181_reg[10]_0 [9]),
        .Q(rows_reg_181[9]),
        .R(1'b0));
  FDRE \sof_reg_86_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_n_13),
        .Q(sof_reg_86),
        .R(1'b0));
  FDRE \sub_reg_191_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[0]),
        .Q(sub_reg_191[0]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[10]),
        .Q(sub_reg_191[10]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[1]),
        .Q(sub_reg_191[1]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[2]),
        .Q(sub_reg_191[2]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[3]),
        .Q(sub_reg_191[3]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[4]),
        .Q(sub_reg_191[4]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[5]),
        .Q(sub_reg_191[5]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[6]),
        .Q(sub_reg_191[6]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[7]),
        .Q(sub_reg_191[7]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[8]),
        .Q(sub_reg_191[8]),
        .R(1'b0));
  FDRE \sub_reg_191_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(D[9]),
        .Q(sub_reg_191[9]),
        .R(1'b0));
endmodule

module bd_3a92_hcr_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2
   (\sof_2_reg_130_reg[0]_0 ,
    axi_last_V_reg_189,
    E,
    \B_V_data_1_state_reg[1] ,
    D,
    \ap_CS_fsm_reg[3] ,
    \icmp_ln548_reg_185_reg[0]_0 ,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n_inv,
    ap_clk,
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg,
    Q,
    outYUV_empty_n,
    m_axis_video_TREADY_int_regslice,
    shiftReg_ce,
    ap_rst_n,
    axi_last_V_fu_162_p2_carry_0,
    icmp_ln548_fu_150_p2_carry_0,
    sof_reg_86,
    B_V_data_1_sel_wr);
  output \sof_2_reg_130_reg[0]_0 ;
  output axi_last_V_reg_189;
  output [0:0]E;
  output \B_V_data_1_state_reg[1] ;
  output [1:0]D;
  output \ap_CS_fsm_reg[3] ;
  output \icmp_ln548_reg_185_reg[0]_0 ;
  output \ap_CS_fsm_reg[4] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg;
  input [2:0]Q;
  input outYUV_empty_n;
  input m_axis_video_TREADY_int_regslice;
  input shiftReg_ce;
  input ap_rst_n;
  input [10:0]axi_last_V_fu_162_p2_carry_0;
  input [10:0]icmp_ln548_fu_150_p2_carry_0;
  input sof_reg_86;
  input B_V_data_1_sel_wr;

  wire B_V_data_1_sel_wr;
  wire \B_V_data_1_state_reg[1] ;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_5;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_fu_162_p2;
  wire [10:0]axi_last_V_fu_162_p2_carry_0;
  wire axi_last_V_fu_162_p2_carry_n_6;
  wire axi_last_V_fu_162_p2_carry_n_7;
  wire axi_last_V_fu_162_p2_carry_n_8;
  wire axi_last_V_reg_189;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg;
  wire icmp_ln548_fu_150_p2;
  wire [10:0]icmp_ln548_fu_150_p2_carry_0;
  wire icmp_ln548_fu_150_p2_carry_n_6;
  wire icmp_ln548_fu_150_p2_carry_n_7;
  wire icmp_ln548_fu_150_p2_carry_n_8;
  wire \icmp_ln548_reg_185_reg[0]_0 ;
  wire \icmp_ln548_reg_185_reg_n_5_[0] ;
  wire [10:0]j_2_fu_156_p2;
  wire j_fu_72;
  wire \j_fu_72_reg_n_5_[0] ;
  wire \j_fu_72_reg_n_5_[10] ;
  wire \j_fu_72_reg_n_5_[1] ;
  wire \j_fu_72_reg_n_5_[2] ;
  wire \j_fu_72_reg_n_5_[3] ;
  wire \j_fu_72_reg_n_5_[4] ;
  wire \j_fu_72_reg_n_5_[5] ;
  wire \j_fu_72_reg_n_5_[6] ;
  wire \j_fu_72_reg_n_5_[7] ;
  wire \j_fu_72_reg_n_5_[8] ;
  wire \j_fu_72_reg_n_5_[9] ;
  wire m_axis_video_TREADY_int_regslice;
  wire outYUV_empty_n;
  wire shiftReg_ce;
  wire \sof_2_reg_130_reg[0]_0 ;
  wire sof_reg_86;
  wire [3:0]NLW_axi_last_V_fu_162_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln548_fu_150_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    B_V_data_1_sel_wr_i_1__4
       (.I0(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[2]),
        .I3(outYUV_empty_n),
        .I4(m_axis_video_TREADY_int_regslice),
        .I5(B_V_data_1_sel_wr),
        .O(\icmp_ln548_reg_185_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(m_axis_video_TREADY_int_regslice),
        .I1(outYUV_empty_n),
        .I2(Q[2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .O(\B_V_data_1_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I1(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[2]),
        .I4(outYUV_empty_n),
        .I5(m_axis_video_TREADY_int_regslice),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_5),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  CARRY4 axi_last_V_fu_162_p2_carry
       (.CI(1'b0),
        .CO({axi_last_V_fu_162_p2,axi_last_V_fu_162_p2_carry_n_6,axi_last_V_fu_162_p2_carry_n_7,axi_last_V_fu_162_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_last_V_fu_162_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13}));
  FDRE \axi_last_V_reg_189_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(axi_last_V_reg_189),
        .R(1'b0));
  bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_11 flow_control_loop_pipe_sequential_init_U
       (.CO(icmp_ln548_fu_150_p2),
        .D(D),
        .E(j_fu_72),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_6),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .ap_done_reg1(ap_done_reg1),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(flow_control_loop_pipe_sequential_init_U_n_5),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_V_fu_162_p2_carry(axi_last_V_fu_162_p2_carry_0),
        .axi_last_V_reg_189(axi_last_V_reg_189),
        .\axi_last_V_reg_189_reg[0] (flow_control_loop_pipe_sequential_init_U_n_31),
        .\axi_last_V_reg_189_reg[0]_0 (axi_last_V_fu_162_p2),
        .grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .icmp_ln548_fu_150_p2_carry(icmp_ln548_fu_150_p2_carry_0),
        .\icmp_ln548_reg_185_reg[0] (flow_control_loop_pipe_sequential_init_U_n_32),
        .\icmp_ln548_reg_185_reg[0]_0 (\icmp_ln548_reg_185_reg_n_5_[0] ),
        .\j_fu_72_reg[10] ({j_2_fu_156_p2[10:8],flow_control_loop_pipe_sequential_init_U_n_21,j_2_fu_156_p2[6:0]}),
        .\j_fu_72_reg[10]_0 ({\j_fu_72_reg_n_5_[10] ,\j_fu_72_reg_n_5_[9] ,\j_fu_72_reg_n_5_[8] ,\j_fu_72_reg_n_5_[7] ,\j_fu_72_reg_n_5_[6] ,\j_fu_72_reg_n_5_[5] ,\j_fu_72_reg_n_5_[4] ,\j_fu_72_reg_n_5_[3] ,\j_fu_72_reg_n_5_[2] ,\j_fu_72_reg_n_5_[1] ,\j_fu_72_reg_n_5_[0] }),
        .\j_fu_72_reg[9] ({flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17}),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .outYUV_empty_n(outYUV_empty_n),
        .\sof_2_reg_130_reg[0] (\B_V_data_1_state_reg[1] ),
        .\sof_2_reg_130_reg[0]_0 (\sof_2_reg_130_reg[0]_0 ),
        .sof_reg_86(sof_reg_86),
        .\sof_reg_86_reg[0] (flow_control_loop_pipe_sequential_init_U_n_30));
  CARRY4 icmp_ln548_fu_150_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln548_fu_150_p2,icmp_ln548_fu_150_p2_carry_n_6,icmp_ln548_fu_150_p2_carry_n_7,icmp_ln548_fu_150_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln548_fu_150_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17}));
  FDRE \icmp_ln548_reg_185_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_32),
        .Q(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \j_fu_72_reg[0] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[0]),
        .Q(\j_fu_72_reg_n_5_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[10] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[10]),
        .Q(\j_fu_72_reg_n_5_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[1] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[1]),
        .Q(\j_fu_72_reg_n_5_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[2] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[2]),
        .Q(\j_fu_72_reg_n_5_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[3] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[3]),
        .Q(\j_fu_72_reg_n_5_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[4] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[4]),
        .Q(\j_fu_72_reg_n_5_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[5] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[5]),
        .Q(\j_fu_72_reg_n_5_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[6] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[6]),
        .Q(\j_fu_72_reg_n_5_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[7] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(flow_control_loop_pipe_sequential_init_U_n_21),
        .Q(\j_fu_72_reg_n_5_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[8] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[8]),
        .Q(\j_fu_72_reg_n_5_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE \j_fu_72_reg[9] 
       (.C(ap_clk),
        .CE(j_fu_72),
        .D(j_2_fu_156_p2[9]),
        .Q(\j_fu_72_reg_n_5_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \mOutPtr[4]_i_1__0 
       (.I0(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[2]),
        .I3(outYUV_empty_n),
        .I4(m_axis_video_TREADY_int_regslice),
        .I5(shiftReg_ce),
        .O(E));
  FDRE \sof_2_reg_130_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_30),
        .Q(\sof_2_reg_130_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA8A8A8A8A8A8A8A)) 
    \sof_reg_86[0]_i_2 
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(\icmp_ln548_reg_185_reg_n_5_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[2]),
        .I4(outYUV_empty_n),
        .I5(m_axis_video_TREADY_int_regslice),
        .O(ap_done_reg1));
endmodule

module bd_3a92_hcr_0_fifo_w24_d16_S
   (outYUV_empty_n,
    outYUV_full_n,
    out,
    ap_clk,
    ap_rst_n,
    shiftReg_ce,
    B_V_data_1_sel_wr01_out,
    \mOutPtr_reg[4]_0 ,
    in,
    SS,
    E);
  output outYUV_empty_n;
  output outYUV_full_n;
  output [23:0]out;
  input ap_clk;
  input ap_rst_n;
  input shiftReg_ce;
  input B_V_data_1_sel_wr01_out;
  input \mOutPtr_reg[4]_0 ;
  input [23:0]in;
  input [0:0]SS;
  input [0:0]E;

  wire B_V_data_1_sel_wr01_out;
  wire [0:0]E;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire [23:0]in;
  wire internal_empty_n_i_1__2_n_5;
  wire internal_empty_n_i_2__1_n_5;
  wire internal_full_n_i_1__2_n_5;
  wire internal_full_n_i_2__2_n_5;
  wire [4:0]mOutPtr_reg;
  wire \mOutPtr_reg[4]_0 ;
  wire [23:0]out;
  wire outYUV_empty_n;
  wire outYUV_full_n;
  wire [4:0]p_1_out;
  wire shiftReg_ce;

  bd_3a92_hcr_0_fifo_w24_d16_S_shiftReg_9 U_bd_3a92_hcr_0_fifo_w24_d16_S_ram
       (.Q(mOutPtr_reg),
        .ap_clk(ap_clk),
        .in(in),
        .out(out),
        .shiftReg_ce(shiftReg_ce));
  LUT5 #(
    .INIT(32'hCC8C0C00)) 
    internal_empty_n_i_1__2
       (.I0(internal_empty_n_i_2__1_n_5),
        .I1(ap_rst_n),
        .I2(B_V_data_1_sel_wr01_out),
        .I3(shiftReg_ce),
        .I4(outYUV_empty_n),
        .O(internal_empty_n_i_1__2_n_5));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    internal_empty_n_i_2__1
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[3]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[0]),
        .O(internal_empty_n_i_2__1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_5),
        .Q(outYUV_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDFFD5DD)) 
    internal_full_n_i_1__2
       (.I0(ap_rst_n),
        .I1(outYUV_full_n),
        .I2(internal_full_n_i_2__2_n_5),
        .I3(shiftReg_ce),
        .I4(B_V_data_1_sel_wr01_out),
        .O(internal_full_n_i_1__2_n_5));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    internal_full_n_i_2__2
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[3]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[2]),
        .O(internal_full_n_i_2__2_n_5));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_5),
        .Q(outYUV_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(mOutPtr_reg[0]),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    \mOutPtr[1]_i_1__0 
       (.I0(mOutPtr_reg[0]),
        .I1(B_V_data_1_sel_wr01_out),
        .I2(shiftReg_ce),
        .I3(mOutPtr_reg[1]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h4FB0FB04)) 
    \mOutPtr[2]_i_1__0 
       (.I0(shiftReg_ce),
        .I1(B_V_data_1_sel_wr01_out),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[1]),
        .O(p_1_out[2]));
  LUT6 #(
    .INIT(64'h7F7FFE7F80800180)) 
    \mOutPtr[3]_i_1__0 
       (.I0(mOutPtr_reg[0]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[1]),
        .I3(B_V_data_1_sel_wr01_out),
        .I4(shiftReg_ce),
        .I5(mOutPtr_reg[3]),
        .O(p_1_out[3]));
  LUT6 #(
    .INIT(64'hDFFF2000FFFB0004)) 
    \mOutPtr[4]_i_2__0 
       (.I0(mOutPtr_reg[0]),
        .I1(\mOutPtr_reg[4]_0 ),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[4]),
        .I5(mOutPtr_reg[3]),
        .O(p_1_out[4]));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[0]),
        .Q(mOutPtr_reg[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[1]),
        .Q(mOutPtr_reg[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[2]),
        .Q(mOutPtr_reg[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[3]),
        .Q(mOutPtr_reg[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[4]),
        .Q(mOutPtr_reg[4]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_fifo_w24_d16_S" *) 
module bd_3a92_hcr_0_fifo_w24_d16_S_0
   (srcYUV_empty_n,
    srcYUV_full_n,
    out,
    ap_clk,
    ap_rst_n,
    shiftReg_ce,
    internal_full_n_reg_0,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    \mOutPtr_reg[2]_0 ,
    in,
    ap_rst_n_inv,
    E);
  output srcYUV_empty_n;
  output srcYUV_full_n;
  output [23:0]out;
  input ap_clk;
  input ap_rst_n;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input internal_empty_n_reg_0;
  input internal_empty_n_reg_1;
  input \mOutPtr_reg[2]_0 ;
  input [23:0]in;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [23:0]in;
  wire internal_empty_n_i_1__1_n_5;
  wire internal_empty_n_i_2__0_n_5;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__1_n_5;
  wire internal_full_n_i_2__1_n_5;
  wire internal_full_n_reg_0;
  wire [4:0]mOutPtr_reg;
  wire \mOutPtr_reg[2]_0 ;
  wire [23:0]out;
  wire [4:0]p_1_out;
  wire shiftReg_ce;
  wire srcYUV_empty_n;
  wire srcYUV_full_n;

  bd_3a92_hcr_0_fifo_w24_d16_S_shiftReg U_bd_3a92_hcr_0_fifo_w24_d16_S_ram
       (.Q(mOutPtr_reg),
        .ap_clk(ap_clk),
        .in(in),
        .out(out),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hCCCCCCC8CCCC0000)) 
    internal_empty_n_i_1__1
       (.I0(internal_empty_n_i_2__0_n_5),
        .I1(ap_rst_n),
        .I2(internal_empty_n_reg_0),
        .I3(internal_empty_n_reg_1),
        .I4(shiftReg_ce),
        .I5(srcYUV_empty_n),
        .O(internal_empty_n_i_1__1_n_5));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    internal_empty_n_i_2__0
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[3]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[0]),
        .O(internal_empty_n_i_2__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_5),
        .Q(srcYUV_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDFFD5DD)) 
    internal_full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(srcYUV_full_n),
        .I2(internal_full_n_i_2__1_n_5),
        .I3(shiftReg_ce),
        .I4(internal_full_n_reg_0),
        .O(internal_full_n_i_1__1_n_5));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    internal_full_n_i_2__1
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[3]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[2]),
        .O(internal_full_n_i_2__1_n_5));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_5),
        .Q(srcYUV_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(mOutPtr_reg[0]),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr_reg[0]),
        .I1(\mOutPtr_reg[2]_0 ),
        .I2(mOutPtr_reg[1]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \mOutPtr[2]_i_1 
       (.I0(\mOutPtr_reg[2]_0 ),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[1]),
        .O(p_1_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \mOutPtr[3]_i_1 
       (.I0(mOutPtr_reg[0]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[1]),
        .I3(\mOutPtr_reg[2]_0 ),
        .I4(mOutPtr_reg[3]),
        .O(p_1_out[3]));
  LUT6 #(
    .INIT(64'hDFFF2000FFFB0004)) 
    \mOutPtr[4]_i_2 
       (.I0(mOutPtr_reg[0]),
        .I1(\mOutPtr_reg[2]_0 ),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[4]),
        .I5(mOutPtr_reg[3]),
        .O(p_1_out[4]));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[0]),
        .Q(mOutPtr_reg[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[1]),
        .Q(mOutPtr_reg[1]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[2]),
        .Q(mOutPtr_reg[2]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[3]),
        .Q(mOutPtr_reg[3]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(p_1_out[4]),
        .Q(mOutPtr_reg[4]),
        .S(ap_rst_n_inv));
endmodule

module bd_3a92_hcr_0_fifo_w24_d16_S_shiftReg
   (out,
    Q,
    shiftReg_ce,
    in,
    ap_clk);
  output [23:0]out;
  input [4:0]Q;
  input shiftReg_ce;
  input [23:0]in;
  input ap_clk;

  wire [4:0]Q;
  wire ap_clk;
  wire [23:0]in;
  wire [23:0]out;
  wire [3:0]shiftReg_addr;
  wire shiftReg_ce;

  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][0]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_2 
       (.I0(Q[0]),
        .I1(Q[4]),
        .O(shiftReg_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_3 
       (.I0(Q[1]),
        .I1(Q[4]),
        .O(shiftReg_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_4 
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(shiftReg_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(shiftReg_addr[3]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][10]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][11]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][12]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][13]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][14]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][15]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][16]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][16]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][17]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][17]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][18]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][18]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][19]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][19]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][1]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][20]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][20]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][21]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][21]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][22]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][22]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][23]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][23]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][2]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][3]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][4]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][5]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][6]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][7]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][8]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\srcYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][9]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[9]));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_fifo_w24_d16_S_shiftReg" *) 
module bd_3a92_hcr_0_fifo_w24_d16_S_shiftReg_9
   (out,
    Q,
    shiftReg_ce,
    in,
    ap_clk);
  output [23:0]out;
  input [4:0]Q;
  input shiftReg_ce;
  input [23:0]in;
  input ap_clk;

  wire [4:0]Q;
  wire ap_clk;
  wire [23:0]in;
  wire [23:0]out;
  wire [3:0]shiftReg_addr;
  wire shiftReg_ce;

  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][0]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_3__0 
       (.I0(Q[0]),
        .I1(Q[4]),
        .O(shiftReg_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_4__0 
       (.I0(Q[1]),
        .I1(Q[4]),
        .O(shiftReg_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_5__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(shiftReg_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[15][0]_srl16_i_6 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(shiftReg_addr[3]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][10]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][11]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][12]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][13]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][14]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][15]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][16]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][16]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][17]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][17]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][18]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][18]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][19]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][19]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][1]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][20]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][20]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][21]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][21]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][22]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][22]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][23]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][23]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][2]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][3]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][4]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][5]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][6]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][7]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][8]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15] " *) 
  (* srl_name = "inst/\outYUV_U/U_bd_3a92_hcr_0_fifo_w24_d16_S_ram/SRL_SIG_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[15][9]_srl16 
       (.A0(shiftReg_addr[0]),
        .A1(shiftReg_addr[1]),
        .A2(shiftReg_addr[2]),
        .A3(shiftReg_addr[3]),
        .CE(shiftReg_ce),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[9]));
endmodule

module bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init
   (\select_ln220_reg_1302_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    E,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg,
    ap_loop_init_int_reg_0,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_0,
    ap_sig_allocacmp_x_1,
    D,
    \pixbuf_y_val_V_3_load_reg_605_reg[7] ,
    \pixbuf_y_val_V_4_load_reg_610_reg[7] ,
    \pixbuf_y_val_V_load_reg_595_reg[7] ,
    DI,
    S,
    \x_fu_174_reg[10] ,
    \x_fu_174_reg[9] ,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3,
    \int_width_reg[10] ,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4,
    \x_fu_174_reg[2] ,
    \tmp_5_reg_1314_reg[0] ,
    \ap_CS_fsm_reg[2]_0 ,
    \icmp_ln168_reg_1298_reg[0] ,
    internal_full_n_reg,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_5,
    ap_rst_n_inv,
    ap_clk,
    \select_ln220_reg_1302_reg[0]_0 ,
    CO,
    ap_done_cache_reg_0,
    SR,
    ap_loop_exit_ready_pp0_iter13_reg,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg,
    Q,
    icmp_ln168_reg_1298_pp0_iter12_reg,
    \pixbuf_y_val_V_1_fu_178_reg[0] ,
    ap_enable_reg_pp0_iter13,
    ap_rst_n,
    \select_ln220_reg_1302_reg[0]_1 ,
    \x_fu_174_reg[10]_0 ,
    \pixbuf_y_val_V_5_fu_182_reg[7] ,
    \pixbuf_y_val_V_5_fu_182_reg[7]_0 ,
    \pixbuf_y_val_V_6_fu_186_reg[7] ,
    \pixbuf_y_val_V_6_fu_186_reg[7]_0 ,
    \pixbuf_y_val_V_7_fu_190_reg[7] ,
    \pixbuf_y_val_V_7_fu_190_reg[7]_0 ,
    \pixbuf_y_val_V_1_fu_178_reg[7] ,
    \pixbuf_y_val_V_1_fu_178_reg[7]_0 ,
    icmp_ln168_fu_403_p2_carry__0,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth,
    icmp_ln145_fu_293_p2,
    O,
    \tmp_5_reg_1314_reg[0]_0 ,
    tmp_5_reg_1314,
    \icmp_ln168_reg_1298_reg[0]_0 ,
    icmp_ln168_reg_1298);
  output \select_ln220_reg_1302_reg[0] ;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output [0:0]E;
  output [0:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg;
  output [0:0]ap_loop_init_int_reg_0;
  output [0:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_0;
  output [0:0]ap_sig_allocacmp_x_1;
  output [7:0]D;
  output [7:0]\pixbuf_y_val_V_3_load_reg_605_reg[7] ;
  output [7:0]\pixbuf_y_val_V_4_load_reg_610_reg[7] ;
  output [7:0]\pixbuf_y_val_V_load_reg_595_reg[7] ;
  output [3:0]DI;
  output [3:0]S;
  output [10:0]\x_fu_174_reg[10] ;
  output [3:0]\x_fu_174_reg[9] ;
  output [3:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1;
  output [3:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2;
  output [2:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3;
  output [1:0]\int_width_reg[10] ;
  output [1:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4;
  output [2:0]\x_fu_174_reg[2] ;
  output \tmp_5_reg_1314_reg[0] ;
  output \ap_CS_fsm_reg[2]_0 ;
  output \icmp_ln168_reg_1298_reg[0] ;
  output internal_full_n_reg;
  output grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_5;
  input ap_rst_n_inv;
  input ap_clk;
  input \select_ln220_reg_1302_reg[0]_0 ;
  input [0:0]CO;
  input ap_done_cache_reg_0;
  input [0:0]SR;
  input ap_loop_exit_ready_pp0_iter13_reg;
  input grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg;
  input [1:0]Q;
  input icmp_ln168_reg_1298_pp0_iter12_reg;
  input \pixbuf_y_val_V_1_fu_178_reg[0] ;
  input ap_enable_reg_pp0_iter13;
  input ap_rst_n;
  input \select_ln220_reg_1302_reg[0]_1 ;
  input [10:0]\x_fu_174_reg[10]_0 ;
  input [7:0]\pixbuf_y_val_V_5_fu_182_reg[7] ;
  input [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_0 ;
  input [7:0]\pixbuf_y_val_V_6_fu_186_reg[7] ;
  input [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_0 ;
  input [7:0]\pixbuf_y_val_V_7_fu_190_reg[7] ;
  input [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_0 ;
  input [7:0]\pixbuf_y_val_V_1_fu_178_reg[7] ;
  input [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_0 ;
  input [10:0]icmp_ln168_fu_403_p2_carry__0;
  input [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  input icmp_ln145_fu_293_p2;
  input [0:0]O;
  input \tmp_5_reg_1314_reg[0]_0 ;
  input tmp_5_reg_1314;
  input [0:0]\icmp_ln168_reg_1298_reg[0]_0 ;
  input icmp_ln168_reg_1298;

  wire [0:0]CO;
  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__2_n_5;
  wire ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter13;
  wire ap_loop_exit_ready_pp0_iter13_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_5;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]ap_sig_allocacmp_x_1;
  wire [2:1]ap_sig_allocacmp_x_1__0;
  wire grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg;
  wire [0:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg;
  wire [0:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_0;
  wire [3:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1;
  wire [3:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2;
  wire [2:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3;
  wire [1:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4;
  wire grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_5;
  wire [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  wire icmp_ln145_fu_293_p2;
  wire icmp_ln159_fu_381_p2_carry_i_11_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_6_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_8_n_5;
  wire icmp_ln159_fu_381_p2_carry_i_9_n_5;
  wire [10:0]icmp_ln168_fu_403_p2_carry__0;
  wire icmp_ln168_reg_1298;
  wire icmp_ln168_reg_1298_pp0_iter12_reg;
  wire \icmp_ln168_reg_1298_reg[0] ;
  wire [0:0]\icmp_ln168_reg_1298_reg[0]_0 ;
  wire [1:0]\int_width_reg[10] ;
  wire internal_full_n_reg;
  wire \pixbuf_y_val_V_1_fu_178_reg[0] ;
  wire [7:0]\pixbuf_y_val_V_1_fu_178_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_3_load_reg_605_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_4_load_reg_610_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_5_fu_182_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_6_fu_186_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_7_fu_190_reg[7] ;
  wire [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_load_reg_595_reg[7] ;
  wire \select_ln220_reg_1302[0]_i_2_n_5 ;
  wire \select_ln220_reg_1302[0]_i_3_n_5 ;
  wire \select_ln220_reg_1302[0]_i_4_n_5 ;
  wire \select_ln220_reg_1302[0]_i_5_n_5 ;
  wire \select_ln220_reg_1302_reg[0] ;
  wire \select_ln220_reg_1302_reg[0]_0 ;
  wire \select_ln220_reg_1302_reg[0]_1 ;
  wire tmp_5_reg_1314;
  wire \tmp_5_reg_1314_reg[0] ;
  wire \tmp_5_reg_1314_reg[0]_0 ;
  wire \x_fu_174[10]_i_5_n_5 ;
  wire \x_fu_174[5]_i_2_n_5 ;
  wire \x_fu_174[5]_i_4_n_5 ;
  wire \x_fu_174[6]_i_2_n_5 ;
  wire \x_fu_174[8]_i_2_n_5 ;
  wire \x_fu_174[9]_i_2_n_5 ;
  wire \x_fu_174[9]_i_3_n_5 ;
  wire [10:0]\x_fu_174_reg[10] ;
  wire [10:0]\x_fu_174_reg[10]_0 ;
  wire [2:0]\x_fu_174_reg[2] ;
  wire [3:0]\x_fu_174_reg[9] ;

  LUT6 #(
    .INIT(64'hBAFFBABAAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(SR),
        .I1(ap_done_cache_reg_0),
        .I2(ap_loop_exit_ready_pp0_iter13_reg),
        .I3(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[2] [0]));
  LUT6 #(
    .INIT(64'hEFAAEFEFAAAAAAAA)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(Q[0]),
        .I1(ap_done_cache_reg_0),
        .I2(ap_loop_exit_ready_pp0_iter13_reg),
        .I3(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[2] [1]));
  LUT4 #(
    .INIT(16'h7530)) 
    ap_done_cache_i_1__2
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_done_cache_reg_0),
        .I2(ap_loop_exit_ready_pp0_iter13_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__2_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_loop_exit_ready_pp0_iter12_reg_reg_srl12_i_1
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(CO),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_5));
  LUT5 #(
    .INIT(32'hF3BBF3FB)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_loop_exit_ready_pp0_iter13_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_0),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(ap_loop_init_int_i_1__1_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hFABA)) 
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(CO),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I3(ap_done_cache_reg_0),
        .O(\ap_CS_fsm_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln159_fu_381_p2_carry_i_1
       (.I0(\x_fu_174_reg[10]_0 [9]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[9]),
        .I2(\x_fu_174_reg[10]_0 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[10]),
        .O(\x_fu_174_reg[9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln159_fu_381_p2_carry_i_11
       (.I0(\x_fu_174_reg[10]_0 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(icmp_ln159_fu_381_p2_carry_i_11_n_5));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln159_fu_381_p2_carry_i_12
       (.I0(\x_fu_174_reg[10]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(ap_sig_allocacmp_x_1__0[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln159_fu_381_p2_carry_i_2
       (.I0(icmp_ln159_fu_381_p2_carry_i_6_n_5),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[6]),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[7]),
        .I3(icmp_ln159_fu_381_p2_carry_i_8_n_5),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[8]),
        .I5(icmp_ln159_fu_381_p2_carry_i_9_n_5),
        .O(\x_fu_174_reg[9] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln159_fu_381_p2_carry_i_3
       (.I0(\x_fu_174[5]_i_4_n_5 ),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[3]),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[4]),
        .I3(icmp_ln159_fu_381_p2_carry_i_11_n_5),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[5]),
        .I5(\x_fu_174[5]_i_2_n_5 ),
        .O(\x_fu_174_reg[9] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln159_fu_381_p2_carry_i_4
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[0]),
        .I1(ap_sig_allocacmp_x_1),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[2]),
        .I3(ap_sig_allocacmp_x_1__0[2]),
        .I4(ap_sig_allocacmp_x_1__0[1]),
        .I5(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth[1]),
        .O(\x_fu_174_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln159_fu_381_p2_carry_i_6
       (.I0(\x_fu_174_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(icmp_ln159_fu_381_p2_carry_i_6_n_5));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln159_fu_381_p2_carry_i_8
       (.I0(\x_fu_174_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(icmp_ln159_fu_381_p2_carry_i_8_n_5));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln159_fu_381_p2_carry_i_9
       (.I0(\x_fu_174_reg[10]_0 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(icmp_ln159_fu_381_p2_carry_i_9_n_5));
  LUT4 #(
    .INIT(16'h80AA)) 
    icmp_ln168_fu_403_p2_carry__0_i_1
       (.I0(icmp_ln168_fu_403_p2_carry__0[10]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [10]),
        .O(\int_width_reg[10] [1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln168_fu_403_p2_carry__0_i_2
       (.I0(icmp_ln168_fu_403_p2_carry__0[9]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [9]),
        .I4(icmp_ln168_fu_403_p2_carry__0[8]),
        .I5(\x_fu_174_reg[10]_0 [8]),
        .O(\int_width_reg[10] [0]));
  LUT4 #(
    .INIT(16'h708F)) 
    icmp_ln168_fu_403_p2_carry__0_i_3
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [10]),
        .I3(icmp_ln168_fu_403_p2_carry__0[10]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4[1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln168_fu_403_p2_carry__0_i_4
       (.I0(\x_fu_174_reg[10]_0 [9]),
        .I1(icmp_ln168_fu_403_p2_carry__0[9]),
        .I2(\x_fu_174_reg[10]_0 [8]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(icmp_ln168_fu_403_p2_carry__0[8]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4[0]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln168_fu_403_p2_carry_i_1
       (.I0(icmp_ln168_fu_403_p2_carry__0[7]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [7]),
        .I4(icmp_ln168_fu_403_p2_carry__0[6]),
        .I5(\x_fu_174_reg[10]_0 [6]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln168_fu_403_p2_carry_i_2
       (.I0(icmp_ln168_fu_403_p2_carry__0[5]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [5]),
        .I4(icmp_ln168_fu_403_p2_carry__0[4]),
        .I5(\x_fu_174_reg[10]_0 [4]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln168_fu_403_p2_carry_i_3
       (.I0(icmp_ln168_fu_403_p2_carry__0[3]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [3]),
        .I4(icmp_ln168_fu_403_p2_carry__0[2]),
        .I5(\x_fu_174_reg[10]_0 [2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC0EA80AAEAFF80AA)) 
    icmp_ln168_fu_403_p2_carry_i_4
       (.I0(icmp_ln168_fu_403_p2_carry__0[1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [1]),
        .I4(icmp_ln168_fu_403_p2_carry__0[0]),
        .I5(\x_fu_174_reg[10]_0 [0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln168_fu_403_p2_carry_i_5
       (.I0(\x_fu_174_reg[10]_0 [7]),
        .I1(icmp_ln168_fu_403_p2_carry__0[7]),
        .I2(\x_fu_174_reg[10]_0 [6]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(icmp_ln168_fu_403_p2_carry__0[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln168_fu_403_p2_carry_i_6
       (.I0(\x_fu_174_reg[10]_0 [5]),
        .I1(icmp_ln168_fu_403_p2_carry__0[5]),
        .I2(\x_fu_174_reg[10]_0 [4]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(icmp_ln168_fu_403_p2_carry__0[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln168_fu_403_p2_carry_i_7
       (.I0(\x_fu_174_reg[10]_0 [3]),
        .I1(icmp_ln168_fu_403_p2_carry__0[3]),
        .I2(\x_fu_174_reg[10]_0 [2]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(icmp_ln168_fu_403_p2_carry__0[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln168_fu_403_p2_carry_i_8
       (.I0(\x_fu_174_reg[10]_0 [1]),
        .I1(icmp_ln168_fu_403_p2_carry__0[1]),
        .I2(\x_fu_174_reg[10]_0 [0]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(icmp_ln168_fu_403_p2_carry__0[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \icmp_ln168_reg_1298[0]_i_1 
       (.I0(\icmp_ln168_reg_1298_reg[0]_0 ),
        .I1(CO),
        .I2(ap_done_cache_reg_0),
        .I3(icmp_ln168_reg_1298),
        .O(\icmp_ln168_reg_1298_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \odd_col_reg_1293[0]_i_1 
       (.I0(CO),
        .I1(ap_done_cache_reg_0),
        .O(internal_full_n_reg));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__0_i_1
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [7]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2[3]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__0_i_2
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [6]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__0_i_3
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [5]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2[1]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__0_i_4
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [4]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2[0]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__1_i_1
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [10]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__1_i_2
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [9]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3[1]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry__1_i_3
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [8]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    out_x_fu_393_p2_carry_i_1
       (.I0(\x_fu_174_reg[10]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(\x_fu_174_reg[2] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    out_x_fu_393_p2_carry_i_2
       (.I0(\x_fu_174_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(\x_fu_174_reg[2] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    out_x_fu_393_p2_carry_i_3
       (.I0(\x_fu_174_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(\x_fu_174_reg[2] [0]));
  LUT3 #(
    .INIT(8'h8F)) 
    out_x_fu_393_p2_carry_i_4
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [3]),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1[3]));
  LUT4 #(
    .INIT(16'h708F)) 
    out_x_fu_393_p2_carry_i_5
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [2]),
        .I3(icmp_ln145_fu_293_p2),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1[2]));
  LUT4 #(
    .INIT(16'h8F70)) 
    out_x_fu_393_p2_carry_i_6
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [1]),
        .I3(icmp_ln145_fu_293_p2),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1[1]));
  LUT4 #(
    .INIT(16'h708F)) 
    out_x_fu_393_p2_carry_i_7
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [0]),
        .I3(icmp_ln145_fu_293_p2),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[0]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [0]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [0]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[1]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [1]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[2]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [2]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [2]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[3]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [3]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [3]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[4]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [4]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [4]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[5]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [5]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [5]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[6]_i_1 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [6]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [6]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [6]));
  LUT6 #(
    .INIT(64'h00000000FF202020)) 
    \pixbuf_y_val_V_1_fu_178[7]_i_1 
       (.I0(icmp_ln168_reg_1298_pp0_iter12_reg),
        .I1(\pixbuf_y_val_V_1_fu_178_reg[0] ),
        .I2(ap_enable_reg_pp0_iter13),
        .I3(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(ap_done_cache_reg_0),
        .O(E));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_1_fu_178[7]_i_2 
       (.I0(\pixbuf_y_val_V_1_fu_178_reg[7] [7]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [7]),
        .O(\pixbuf_y_val_V_load_reg_595_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[0]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [0]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[1]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[2]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [2]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[3]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [3]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[4]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [4]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[5]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [5]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[6]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [6]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_5_fu_182[7]_i_1 
       (.I0(\pixbuf_y_val_V_5_fu_182_reg[7] [7]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[0]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [0]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [0]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[1]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [1]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[2]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [2]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [2]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[3]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [3]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [3]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[4]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [4]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [4]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[5]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [5]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [5]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[6]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [6]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [6]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_6_fu_186[7]_i_1 
       (.I0(\pixbuf_y_val_V_6_fu_186_reg[7] [7]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [7]),
        .O(\pixbuf_y_val_V_3_load_reg_605_reg[7] [7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[0]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [0]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [0]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[1]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [1]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[2]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [2]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [2]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[3]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [3]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [3]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[4]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [4]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [4]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[5]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [5]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [5]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[6]_i_1 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [6]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [6]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h000088F8)) 
    \pixbuf_y_val_V_7_fu_190[7]_i_1 
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter13),
        .I3(\pixbuf_y_val_V_1_fu_178_reg[0] ),
        .I4(ap_done_cache_reg_0),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pixbuf_y_val_V_7_fu_190[7]_i_2 
       (.I0(\pixbuf_y_val_V_7_fu_190_reg[7] [7]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [7]),
        .O(\pixbuf_y_val_V_4_load_reg_610_reg[7] [7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAF030)) 
    \select_ln220_reg_1302[0]_i_1 
       (.I0(\select_ln220_reg_1302_reg[0]_0 ),
        .I1(\select_ln220_reg_1302[0]_i_2_n_5 ),
        .I2(\select_ln220_reg_1302[0]_i_3_n_5 ),
        .I3(\select_ln220_reg_1302[0]_i_4_n_5 ),
        .I4(CO),
        .I5(ap_done_cache_reg_0),
        .O(\select_ln220_reg_1302_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \select_ln220_reg_1302[0]_i_2 
       (.I0(\select_ln220_reg_1302_reg[0]_1 ),
        .I1(\x_fu_174_reg[10]_0 [4]),
        .I2(\x_fu_174_reg[10]_0 [3]),
        .I3(\x_fu_174_reg[10]_0 [6]),
        .I4(\x_fu_174_reg[10]_0 [0]),
        .I5(\x_fu_174[9]_i_3_n_5 ),
        .O(\select_ln220_reg_1302[0]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h00000000C0C0C0D5)) 
    \select_ln220_reg_1302[0]_i_3 
       (.I0(\x_fu_174_reg[10]_0 [1]),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [2]),
        .I4(\x_fu_174_reg[10]_0 [5]),
        .I5(\select_ln220_reg_1302[0]_i_5_n_5 ),
        .O(\select_ln220_reg_1302[0]_i_3_n_5 ));
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    \select_ln220_reg_1302[0]_i_4 
       (.I0(\x_fu_174[5]_i_4_n_5 ),
        .I1(icmp_ln159_fu_381_p2_carry_i_11_n_5),
        .I2(ap_sig_allocacmp_x_1),
        .I3(\select_ln220_reg_1302_reg[0]_1 ),
        .I4(icmp_ln159_fu_381_p2_carry_i_6_n_5),
        .I5(\x_fu_174_reg[10]_0 [7]),
        .O(\select_ln220_reg_1302[0]_i_4_n_5 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \select_ln220_reg_1302[0]_i_5 
       (.I0(\x_fu_174_reg[10]_0 [7]),
        .I1(\x_fu_174_reg[10]_0 [10]),
        .I2(\x_fu_174_reg[10]_0 [8]),
        .I3(ap_loop_init_int),
        .I4(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I5(\x_fu_174_reg[10]_0 [9]),
        .O(\select_ln220_reg_1302[0]_i_5_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \tmp_5_reg_1314[0]_i_1 
       (.I0(O),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(ap_done_cache_reg_0),
        .I3(CO),
        .I4(tmp_5_reg_1314),
        .O(\tmp_5_reg_1314_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln159_reg_1282[0]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(ap_sig_allocacmp_x_1));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \x_fu_174[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\x_fu_174_reg[10]_0 [0]),
        .O(\x_fu_174_reg[10] [0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \x_fu_174[10]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I3(ap_done_cache_reg_0),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \x_fu_174[10]_i_2 
       (.I0(ap_done_cache_reg_0),
        .I1(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I2(CO),
        .O(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_0));
  LUT5 #(
    .INIT(32'h12222222)) 
    \x_fu_174[10]_i_3 
       (.I0(\x_fu_174_reg[10]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [8]),
        .I3(\x_fu_174[10]_i_5_n_5 ),
        .I4(\x_fu_174_reg[10]_0 [9]),
        .O(\x_fu_174_reg[10] [10]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \x_fu_174[10]_i_5 
       (.I0(\x_fu_174_reg[10]_0 [7]),
        .I1(\x_fu_174[8]_i_2_n_5 ),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\x_fu_174_reg[10]_0 [5]),
        .I5(\x_fu_174_reg[10]_0 [6]),
        .O(\x_fu_174[10]_i_5_n_5 ));
  LUT3 #(
    .INIT(8'h12)) 
    \x_fu_174[1]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(\x_fu_174_reg[10]_0 [0]),
        .O(\x_fu_174_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \x_fu_174[2]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [2]),
        .I1(\x_fu_174_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [0]),
        .O(\x_fu_174_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \x_fu_174[3]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [3]),
        .I1(\x_fu_174_reg[10]_0 [0]),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [1]),
        .I4(\x_fu_174_reg[10]_0 [2]),
        .O(\x_fu_174_reg[10] [3]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \x_fu_174[4]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [4]),
        .I1(\x_fu_174_reg[10]_0 [3]),
        .I2(\x_fu_174[9]_i_3_n_5 ),
        .I3(\x_fu_174_reg[10]_0 [2]),
        .I4(\x_fu_174_reg[10]_0 [1]),
        .I5(\x_fu_174_reg[10]_0 [0]),
        .O(\x_fu_174_reg[10] [4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x_fu_174[5]_i_1 
       (.I0(\x_fu_174[5]_i_2_n_5 ),
        .I1(\x_fu_174_reg[10]_0 [4]),
        .I2(\x_fu_174_reg[10]_0 [0]),
        .I3(ap_sig_allocacmp_x_1__0[1]),
        .I4(\x_fu_174_reg[10]_0 [2]),
        .I5(\x_fu_174[5]_i_4_n_5 ),
        .O(\x_fu_174_reg[10] [5]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \x_fu_174[5]_i_2 
       (.I0(\x_fu_174_reg[10]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(\x_fu_174[5]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \x_fu_174[5]_i_3 
       (.I0(\x_fu_174_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(ap_sig_allocacmp_x_1__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \x_fu_174[5]_i_4 
       (.I0(\x_fu_174_reg[10]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .O(\x_fu_174[5]_i_4_n_5 ));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \x_fu_174[6]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [6]),
        .I1(\x_fu_174_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174[6]_i_2_n_5 ),
        .I4(\x_fu_174_reg[10]_0 [4]),
        .O(\x_fu_174_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    \x_fu_174[6]_i_2 
       (.I0(\x_fu_174_reg[10]_0 [0]),
        .I1(\x_fu_174_reg[10]_0 [1]),
        .I2(\x_fu_174_reg[10]_0 [2]),
        .I3(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\x_fu_174_reg[10]_0 [3]),
        .O(\x_fu_174[6]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \x_fu_174[7]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [7]),
        .I1(\x_fu_174[8]_i_2_n_5 ),
        .I2(ap_loop_init_int),
        .I3(\x_fu_174_reg[10]_0 [5]),
        .I4(\x_fu_174_reg[10]_0 [6]),
        .O(\x_fu_174_reg[10] [7]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \x_fu_174[8]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [8]),
        .I1(\x_fu_174_reg[10]_0 [6]),
        .I2(\x_fu_174_reg[10]_0 [5]),
        .I3(\x_fu_174[9]_i_3_n_5 ),
        .I4(\x_fu_174[8]_i_2_n_5 ),
        .I5(\x_fu_174_reg[10]_0 [7]),
        .O(\x_fu_174_reg[10] [8]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \x_fu_174[8]_i_2 
       (.I0(\x_fu_174_reg[10]_0 [3]),
        .I1(\x_fu_174[9]_i_3_n_5 ),
        .I2(\x_fu_174_reg[10]_0 [2]),
        .I3(\x_fu_174_reg[10]_0 [1]),
        .I4(\x_fu_174_reg[10]_0 [0]),
        .I5(\x_fu_174_reg[10]_0 [4]),
        .O(\x_fu_174[8]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h00006AAA0000AAAA)) 
    \x_fu_174[9]_i_1 
       (.I0(\x_fu_174_reg[10]_0 [9]),
        .I1(\x_fu_174_reg[10]_0 [7]),
        .I2(\x_fu_174[9]_i_2_n_5 ),
        .I3(\x_fu_174_reg[10]_0 [6]),
        .I4(\x_fu_174[9]_i_3_n_5 ),
        .I5(\x_fu_174_reg[10]_0 [8]),
        .O(\x_fu_174_reg[10] [9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \x_fu_174[9]_i_2 
       (.I0(\x_fu_174_reg[10]_0 [4]),
        .I1(\x_fu_174_reg[10]_0 [0]),
        .I2(ap_sig_allocacmp_x_1__0[1]),
        .I3(\x_fu_174_reg[10]_0 [2]),
        .I4(\x_fu_174[5]_i_4_n_5 ),
        .I5(\x_fu_174[5]_i_2_n_5 ),
        .O(\x_fu_174[9]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_fu_174[9]_i_3 
       (.I0(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\x_fu_174[9]_i_3_n_5 ));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init" *) 
module bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_11
   (ap_loop_exit_ready_pp0_iter1_reg_reg,
    SR,
    E,
    D,
    S,
    \j_fu_72_reg[9] ,
    \j_fu_72_reg[10] ,
    \ap_CS_fsm_reg[3] ,
    \sof_reg_86_reg[0] ,
    \axi_last_V_reg_189_reg[0] ,
    \icmp_ln548_reg_185_reg[0] ,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_exit_ready_pp0_iter1_reg,
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg,
    CO,
    ap_rst_n,
    Q,
    m_axis_video_TREADY_int_regslice,
    outYUV_empty_n,
    ap_enable_reg_pp0_iter1,
    \icmp_ln548_reg_185_reg[0]_0 ,
    axi_last_V_fu_162_p2_carry,
    icmp_ln548_fu_150_p2_carry,
    \j_fu_72_reg[10]_0 ,
    sof_reg_86,
    \sof_2_reg_130_reg[0] ,
    \sof_2_reg_130_reg[0]_0 ,
    \axi_last_V_reg_189_reg[0]_0 ,
    axi_last_V_reg_189,
    ap_done_reg1);
  output ap_loop_exit_ready_pp0_iter1_reg_reg;
  output [0:0]SR;
  output [0:0]E;
  output [1:0]D;
  output [3:0]S;
  output [3:0]\j_fu_72_reg[9] ;
  output [10:0]\j_fu_72_reg[10] ;
  output \ap_CS_fsm_reg[3] ;
  output \sof_reg_86_reg[0] ;
  output \axi_last_V_reg_189_reg[0] ;
  output \icmp_ln548_reg_185_reg[0] ;
  output \ap_CS_fsm_reg[4] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg;
  input [0:0]CO;
  input ap_rst_n;
  input [2:0]Q;
  input m_axis_video_TREADY_int_regslice;
  input outYUV_empty_n;
  input ap_enable_reg_pp0_iter1;
  input \icmp_ln548_reg_185_reg[0]_0 ;
  input [10:0]axi_last_V_fu_162_p2_carry;
  input [10:0]icmp_ln548_fu_150_p2_carry;
  input [10:0]\j_fu_72_reg[10]_0 ;
  input sof_reg_86;
  input \sof_2_reg_130_reg[0] ;
  input \sof_2_reg_130_reg[0]_0 ;
  input [0:0]\axi_last_V_reg_189_reg[0]_0 ;
  input axi_last_V_reg_189;
  input ap_done_reg1;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm[4]_i_2_n_5 ;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__3_n_5;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__2_n_5;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [10:0]axi_last_V_fu_162_p2_carry;
  wire axi_last_V_reg_189;
  wire \axi_last_V_reg_189_reg[0] ;
  wire [0:0]\axi_last_V_reg_189_reg[0]_0 ;
  wire grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg;
  wire [10:0]icmp_ln548_fu_150_p2_carry;
  wire icmp_ln548_fu_150_p2_carry_i_10_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_11_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_12_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_13_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_5_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_6_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_7_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_8_n_5;
  wire icmp_ln548_fu_150_p2_carry_i_9_n_5;
  wire \icmp_ln548_reg_185_reg[0] ;
  wire \icmp_ln548_reg_185_reg[0]_0 ;
  wire \j_fu_72[10]_i_4_n_5 ;
  wire \j_fu_72[6]_i_2_n_5 ;
  wire \j_fu_72[8]_i_2_n_5 ;
  wire \j_fu_72[8]_i_3_n_5 ;
  wire \j_fu_72[9]_i_2_n_5 ;
  wire [10:0]\j_fu_72_reg[10] ;
  wire [10:0]\j_fu_72_reg[10]_0 ;
  wire [3:0]\j_fu_72_reg[9] ;
  wire m_axis_video_TREADY_int_regslice;
  wire outYUV_empty_n;
  wire \sof_2_reg_130_reg[0] ;
  wire \sof_2_reg_130_reg[0]_0 ;
  wire sof_reg_86;
  wire \sof_reg_86_reg[0] ;

  LUT6 #(
    .INIT(64'hBAFFBABAAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(Q[0]),
        .I1(\ap_CS_fsm[4]_i_2_n_5 ),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEFAAEFEFAAAAAAAA)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(Q[1]),
        .I1(\ap_CS_fsm[4]_i_2_n_5 ),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00007F00)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(m_axis_video_TREADY_int_regslice),
        .I1(outYUV_empty_n),
        .I2(Q[2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\icmp_ln548_reg_185_reg[0]_0 ),
        .O(\ap_CS_fsm[4]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    ap_done_cache_i_1__3
       (.I0(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I1(\ap_CS_fsm[4]_i_2_n_5 ),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__3_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__3_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(\ap_CS_fsm[4]_i_2_n_5 ),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(CO),
        .O(ap_loop_exit_ready_pp0_iter1_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hF3BBF3FB)) 
    ap_loop_init_int_i_1__2
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(\ap_CS_fsm[4]_i_2_n_5 ),
        .I4(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(ap_loop_init_int_i_1__2_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__2_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    axi_last_V_fu_162_p2_carry_i_1
       (.I0(\j_fu_72_reg[10]_0 [9]),
        .I1(axi_last_V_fu_162_p2_carry[9]),
        .I2(\j_fu_72_reg[10]_0 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I5(axi_last_V_fu_162_p2_carry[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_last_V_fu_162_p2_carry_i_2
       (.I0(icmp_ln548_fu_150_p2_carry_i_5_n_5),
        .I1(axi_last_V_fu_162_p2_carry[7]),
        .I2(axi_last_V_fu_162_p2_carry[6]),
        .I3(icmp_ln548_fu_150_p2_carry_i_6_n_5),
        .I4(axi_last_V_fu_162_p2_carry[8]),
        .I5(icmp_ln548_fu_150_p2_carry_i_7_n_5),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_last_V_fu_162_p2_carry_i_3
       (.I0(icmp_ln548_fu_150_p2_carry_i_8_n_5),
        .I1(axi_last_V_fu_162_p2_carry[5]),
        .I2(axi_last_V_fu_162_p2_carry[4]),
        .I3(icmp_ln548_fu_150_p2_carry_i_9_n_5),
        .I4(axi_last_V_fu_162_p2_carry[3]),
        .I5(icmp_ln548_fu_150_p2_carry_i_10_n_5),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_last_V_fu_162_p2_carry_i_4
       (.I0(icmp_ln548_fu_150_p2_carry_i_11_n_5),
        .I1(axi_last_V_fu_162_p2_carry[0]),
        .I2(axi_last_V_fu_162_p2_carry[1]),
        .I3(icmp_ln548_fu_150_p2_carry_i_12_n_5),
        .I4(axi_last_V_fu_162_p2_carry[2]),
        .I5(icmp_ln548_fu_150_p2_carry_i_13_n_5),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \axi_last_V_reg_189[0]_i_1 
       (.I0(\axi_last_V_reg_189_reg[0]_0 ),
        .I1(CO),
        .I2(\ap_CS_fsm[4]_i_2_n_5 ),
        .I3(axi_last_V_reg_189),
        .O(\axi_last_V_reg_189_reg[0] ));
  LUT4 #(
    .INIT(16'hFABA)) 
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(CO),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(\ap_CS_fsm[4]_i_2_n_5 ),
        .O(\ap_CS_fsm_reg[3] ));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln548_fu_150_p2_carry_i_1
       (.I0(\j_fu_72_reg[10]_0 [9]),
        .I1(icmp_ln548_fu_150_p2_carry[9]),
        .I2(\j_fu_72_reg[10]_0 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I5(icmp_ln548_fu_150_p2_carry[10]),
        .O(\j_fu_72_reg[9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_10
       (.I0(\j_fu_72_reg[10]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_10_n_5));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_11
       (.I0(\j_fu_72_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_11_n_5));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_12
       (.I0(\j_fu_72_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_12_n_5));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_13
       (.I0(\j_fu_72_reg[10]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_13_n_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln548_fu_150_p2_carry_i_2
       (.I0(icmp_ln548_fu_150_p2_carry_i_5_n_5),
        .I1(icmp_ln548_fu_150_p2_carry[7]),
        .I2(icmp_ln548_fu_150_p2_carry[6]),
        .I3(icmp_ln548_fu_150_p2_carry_i_6_n_5),
        .I4(icmp_ln548_fu_150_p2_carry[8]),
        .I5(icmp_ln548_fu_150_p2_carry_i_7_n_5),
        .O(\j_fu_72_reg[9] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln548_fu_150_p2_carry_i_3
       (.I0(icmp_ln548_fu_150_p2_carry_i_8_n_5),
        .I1(icmp_ln548_fu_150_p2_carry[5]),
        .I2(icmp_ln548_fu_150_p2_carry[4]),
        .I3(icmp_ln548_fu_150_p2_carry_i_9_n_5),
        .I4(icmp_ln548_fu_150_p2_carry[3]),
        .I5(icmp_ln548_fu_150_p2_carry_i_10_n_5),
        .O(\j_fu_72_reg[9] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln548_fu_150_p2_carry_i_4
       (.I0(icmp_ln548_fu_150_p2_carry_i_11_n_5),
        .I1(icmp_ln548_fu_150_p2_carry[0]),
        .I2(icmp_ln548_fu_150_p2_carry[1]),
        .I3(icmp_ln548_fu_150_p2_carry_i_12_n_5),
        .I4(icmp_ln548_fu_150_p2_carry[2]),
        .I5(icmp_ln548_fu_150_p2_carry_i_13_n_5),
        .O(\j_fu_72_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_5
       (.I0(\j_fu_72_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_5_n_5));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_6
       (.I0(\j_fu_72_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_6_n_5));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_7
       (.I0(\j_fu_72_reg[10]_0 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_7_n_5));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_8
       (.I0(\j_fu_72_reg[10]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_8_n_5));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln548_fu_150_p2_carry_i_9
       (.I0(\j_fu_72_reg[10]_0 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .O(icmp_ln548_fu_150_p2_carry_i_9_n_5));
  LUT6 #(
    .INIT(64'hAA8A8A8A8A8A8A8A)) 
    \icmp_ln548_reg_185[0]_i_1 
       (.I0(CO),
        .I1(\icmp_ln548_reg_185_reg[0]_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[2]),
        .I4(outYUV_empty_n),
        .I5(m_axis_video_TREADY_int_regslice),
        .O(\icmp_ln548_reg_185_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    \j_fu_72[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_72_reg[10]_0 [0]),
        .O(\j_fu_72_reg[10] [0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \j_fu_72[10]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(\ap_CS_fsm[4]_i_2_n_5 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \j_fu_72[10]_i_2 
       (.I0(\ap_CS_fsm[4]_i_2_n_5 ),
        .I1(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I2(CO),
        .O(E));
  LUT5 #(
    .INIT(32'h12222222)) 
    \j_fu_72[10]_i_3 
       (.I0(\j_fu_72_reg[10]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_72_reg[10]_0 [8]),
        .I3(\j_fu_72[10]_i_4_n_5 ),
        .I4(\j_fu_72_reg[10]_0 [9]),
        .O(\j_fu_72_reg[10] [10]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \j_fu_72[10]_i_4 
       (.I0(\j_fu_72_reg[10]_0 [7]),
        .I1(\j_fu_72[8]_i_3_n_5 ),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_72_reg[10]_0 [5]),
        .I5(\j_fu_72_reg[10]_0 [6]),
        .O(\j_fu_72[10]_i_4_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \j_fu_72[1]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_72_reg[10]_0 [1]),
        .O(\j_fu_72_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \j_fu_72[2]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [2]),
        .I1(\j_fu_72_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_72_reg[10]_0 [0]),
        .O(\j_fu_72_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_72[3]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [3]),
        .I1(\j_fu_72_reg[10]_0 [0]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_72_reg[10]_0 [1]),
        .I4(\j_fu_72_reg[10]_0 [2]),
        .O(\j_fu_72_reg[10] [3]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \j_fu_72[4]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [4]),
        .I1(\j_fu_72_reg[10]_0 [2]),
        .I2(\j_fu_72_reg[10]_0 [1]),
        .I3(\j_fu_72[8]_i_2_n_5 ),
        .I4(\j_fu_72_reg[10]_0 [0]),
        .I5(\j_fu_72_reg[10]_0 [3]),
        .O(\j_fu_72_reg[10] [4]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \j_fu_72[5]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_72_reg[10]_0 [5]),
        .I2(\j_fu_72[6]_i_2_n_5 ),
        .I3(\j_fu_72_reg[10]_0 [4]),
        .O(\j_fu_72_reg[10] [5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_72[6]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [6]),
        .I1(\j_fu_72_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_72_reg[10]_0 [4]),
        .I4(\j_fu_72[6]_i_2_n_5 ),
        .O(\j_fu_72_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \j_fu_72[6]_i_2 
       (.I0(\j_fu_72_reg[10]_0 [3]),
        .I1(\j_fu_72_reg[10]_0 [0]),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_72_reg[10]_0 [1]),
        .I5(\j_fu_72_reg[10]_0 [2]),
        .O(\j_fu_72[6]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_72[7]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [7]),
        .I1(\j_fu_72[8]_i_3_n_5 ),
        .I2(ap_loop_init_int),
        .I3(\j_fu_72_reg[10]_0 [5]),
        .I4(\j_fu_72_reg[10]_0 [6]),
        .O(\j_fu_72_reg[10] [7]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \j_fu_72[8]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [8]),
        .I1(\j_fu_72_reg[10]_0 [6]),
        .I2(\j_fu_72_reg[10]_0 [5]),
        .I3(\j_fu_72[8]_i_2_n_5 ),
        .I4(\j_fu_72[8]_i_3_n_5 ),
        .I5(\j_fu_72_reg[10]_0 [7]),
        .O(\j_fu_72_reg[10] [8]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j_fu_72[8]_i_2 
       (.I0(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\j_fu_72[8]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \j_fu_72[8]_i_3 
       (.I0(\j_fu_72_reg[10]_0 [4]),
        .I1(\j_fu_72_reg[10]_0 [2]),
        .I2(\j_fu_72_reg[10]_0 [1]),
        .I3(\j_fu_72[8]_i_2_n_5 ),
        .I4(\j_fu_72_reg[10]_0 [0]),
        .I5(\j_fu_72_reg[10]_0 [3]),
        .O(\j_fu_72[8]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h22122222)) 
    \j_fu_72[9]_i_1 
       (.I0(\j_fu_72_reg[10]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_72_reg[10]_0 [7]),
        .I3(\j_fu_72[9]_i_2_n_5 ),
        .I4(\j_fu_72_reg[10]_0 [8]),
        .O(\j_fu_72_reg[10] [9]));
  LUT6 #(
    .INIT(64'hF777FFFFFFFFFFFF)) 
    \j_fu_72[9]_i_2 
       (.I0(\j_fu_72_reg[10]_0 [6]),
        .I1(\j_fu_72_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I4(\j_fu_72_reg[10]_0 [4]),
        .I5(\j_fu_72[6]_i_2_n_5 ),
        .O(\j_fu_72[9]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h3A3333330A000000)) 
    \sof_2_reg_130[0]_i_1 
       (.I0(sof_reg_86),
        .I1(\sof_2_reg_130_reg[0] ),
        .I2(\ap_CS_fsm[4]_i_2_n_5 ),
        .I3(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\sof_2_reg_130_reg[0]_0 ),
        .O(\sof_reg_86_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55F70000)) 
    \sof_reg_86[0]_i_1 
       (.I0(Q[2]),
        .I1(ap_done_cache),
        .I2(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2_fu_100_ap_start_reg),
        .I3(ap_done_reg1),
        .I4(sof_reg_86),
        .I5(Q[0]),
        .O(\ap_CS_fsm_reg[4] ));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init" *) 
module bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_15
   (\axi_last_V_fu_86_reg[0] ,
    ap_enable_reg_pp0_iter1_reg,
    B_V_data_1_sel0,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg,
    internal_full_n_reg,
    shiftReg_ce,
    E,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg_0,
    SR,
    D,
    S,
    \j_fu_78_reg[10] ,
    \ap_CS_fsm_reg[5] ,
    B_V_data_1_sel_rd_reg,
    internal_full_n_reg_0,
    ap_rst_n_inv,
    ap_clk,
    \eol_reg_153_reg[0] ,
    \eol_reg_153_reg[0]_0 ,
    ap_enable_reg_pp0_iter1,
    \eol_reg_153_reg[0]_1 ,
    ap_rst_n,
    CO,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY,
    Q,
    B_V_data_1_sel_rd_reg_0,
    \mOutPtr_reg[2] ,
    srcYUV_full_n,
    s_axis_video_TVALID_int_regslice,
    sof_reg_106,
    \j_fu_78_reg[10]_0 ,
    icmp_ln474_fu_193_p2_carry,
    B_V_data_1_sel);
  output \axi_last_V_fu_86_reg[0] ;
  output ap_enable_reg_pp0_iter1_reg;
  output B_V_data_1_sel0;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg;
  output internal_full_n_reg;
  output shiftReg_ce;
  output [0:0]E;
  output [0:0]grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg_0;
  output [0:0]SR;
  output [1:0]D;
  output [3:0]S;
  output [10:0]\j_fu_78_reg[10] ;
  output \ap_CS_fsm_reg[5] ;
  output B_V_data_1_sel_rd_reg;
  output internal_full_n_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input \eol_reg_153_reg[0] ;
  input \eol_reg_153_reg[0]_0 ;
  input ap_enable_reg_pp0_iter1;
  input \eol_reg_153_reg[0]_1 ;
  input ap_rst_n;
  input [0:0]CO;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  input [2:0]Q;
  input B_V_data_1_sel_rd_reg_0;
  input \mOutPtr_reg[2] ;
  input srcYUV_full_n;
  input s_axis_video_TVALID_int_regslice;
  input sof_reg_106;
  input [10:0]\j_fu_78_reg[10]_0 ;
  input [10:0]icmp_ln474_fu_193_p2_carry;
  input B_V_data_1_sel;

  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_reg;
  wire B_V_data_1_sel_rd_reg_0;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_5;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_5;
  wire ap_loop_init_int_i_2_n_5;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \axi_last_V_fu_86_reg[0] ;
  wire \eol_reg_153_reg[0] ;
  wire \eol_reg_153_reg[0]_0 ;
  wire \eol_reg_153_reg[0]_1 ;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg;
  wire [0:0]grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg_0;
  wire [10:0]icmp_ln474_fu_193_p2_carry;
  wire icmp_ln474_fu_193_p2_carry_i_5_n_5;
  wire icmp_ln474_fu_193_p2_carry_i_6_n_5;
  wire icmp_ln474_fu_193_p2_carry_i_7_n_5;
  wire icmp_ln474_fu_193_p2_carry_i_8_n_5;
  wire icmp_ln474_fu_193_p2_carry_i_9_n_5;
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire \j_fu_78[10]_i_4_n_5 ;
  wire \j_fu_78[10]_i_6_n_5 ;
  wire \j_fu_78[10]_i_7_n_5 ;
  wire \j_fu_78[6]_i_2_n_5 ;
  wire \j_fu_78[8]_i_2_n_5 ;
  wire \j_fu_78[8]_i_3_n_5 ;
  wire \j_fu_78[9]_i_2_n_5 ;
  wire [10:0]\j_fu_78_reg[10] ;
  wire [10:0]\j_fu_78_reg[10]_0 ;
  wire \mOutPtr_reg[2] ;
  wire s_axis_video_TVALID_int_regslice;
  wire shiftReg_ce;
  wire sof_reg_106;
  wire srcYUV_full_n;

  LUT2 #(
    .INIT(4'h6)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(B_V_data_1_sel0),
        .I1(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAA03FF0300)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .I2(ap_loop_init_int_i_2_n_5),
        .I3(Q[1]),
        .I4(B_V_data_1_sel_rd_reg_0),
        .I5(Q[2]),
        .O(B_V_data_1_sel0));
  LUT6 #(
    .INIT(64'h00A8000000000000)) 
    \SRL_SIG_reg[15][0]_srl16_i_1 
       (.I0(Q[1]),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .I2(s_axis_video_TVALID_int_regslice),
        .I3(\eol_reg_153_reg[0]_0 ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(srcYUV_full_n),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_reg1),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[1]),
        .I1(ap_done_cache),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(ap_done_reg1),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA8A8A80000000000)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(CO),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .I2(s_axis_video_TVALID_int_regslice),
        .I3(\j_fu_78[10]_i_4_n_5 ),
        .I4(srcYUV_full_n),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(ap_done_reg1));
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_reg1),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h880C8800)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_rst_n),
        .I2(CO),
        .I3(ap_loop_init_int_i_2_n_5),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT5 #(
    .INIT(32'hBBF3BBBB)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_rst_n),
        .I2(CO),
        .I3(ap_loop_init_int_i_2_n_5),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_5));
  LUT6 #(
    .INIT(64'h000400040004FFFF)) 
    ap_loop_init_int_i_2
       (.I0(\j_fu_78[10]_i_7_n_5 ),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I2(CO),
        .I3(s_axis_video_TVALID_int_regslice),
        .I4(\j_fu_78[10]_i_4_n_5 ),
        .I5(srcYUV_full_n),
        .O(ap_loop_init_int_i_2_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8B8B8B8B800B8B8)) 
    \axi_data_V_fu_82[23]_i_1 
       (.I0(\j_fu_78[8]_i_2_n_5 ),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .I2(s_axis_video_TVALID_int_regslice),
        .I3(\eol_reg_153_reg[0]_0 ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(srcYUV_full_n),
        .O(E));
  LUT6 #(
    .INIT(64'hFF000000FF00EF20)) 
    \eol_reg_153[0]_i_1 
       (.I0(\eol_reg_153_reg[0] ),
        .I1(\eol_reg_153_reg[0]_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\eol_reg_153_reg[0]_1 ),
        .I4(ap_loop_init_int_i_2_n_5),
        .I5(\j_fu_78[8]_i_2_n_5 ),
        .O(\axi_last_V_fu_86_reg[0] ));
  LUT3 #(
    .INIT(8'hBA)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(ap_done_reg1),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(\ap_CS_fsm_reg[5] ));
  LUT6 #(
    .INIT(64'h0090909033090909)) 
    icmp_ln474_fu_193_p2_carry_i_1
       (.I0(\j_fu_78_reg[10]_0 [9]),
        .I1(icmp_ln474_fu_193_p2_carry[9]),
        .I2(\j_fu_78_reg[10]_0 [10]),
        .I3(ap_loop_init_int),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I5(icmp_ln474_fu_193_p2_carry[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln474_fu_193_p2_carry_i_2
       (.I0(icmp_ln474_fu_193_p2_carry_i_5_n_5),
        .I1(icmp_ln474_fu_193_p2_carry[7]),
        .I2(icmp_ln474_fu_193_p2_carry[6]),
        .I3(icmp_ln474_fu_193_p2_carry_i_6_n_5),
        .I4(icmp_ln474_fu_193_p2_carry[8]),
        .I5(icmp_ln474_fu_193_p2_carry_i_7_n_5),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h00002AD5)) 
    icmp_ln474_fu_193_p2_carry_i_3
       (.I0(\j_fu_78_reg[10]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(icmp_ln474_fu_193_p2_carry[5]),
        .I4(icmp_ln474_fu_193_p2_carry_i_8_n_5),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h00002AD5)) 
    icmp_ln474_fu_193_p2_carry_i_4
       (.I0(\j_fu_78_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(icmp_ln474_fu_193_p2_carry[0]),
        .I4(icmp_ln474_fu_193_p2_carry_i_9_n_5),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln474_fu_193_p2_carry_i_5
       (.I0(\j_fu_78_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(icmp_ln474_fu_193_p2_carry_i_5_n_5));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln474_fu_193_p2_carry_i_6
       (.I0(\j_fu_78_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(icmp_ln474_fu_193_p2_carry_i_6_n_5));
  LUT3 #(
    .INIT(8'h2A)) 
    icmp_ln474_fu_193_p2_carry_i_7
       (.I0(\j_fu_78_reg[10]_0 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .O(icmp_ln474_fu_193_p2_carry_i_7_n_5));
  LUT6 #(
    .INIT(64'hFF6F6F6FCCF6F6F6)) 
    icmp_ln474_fu_193_p2_carry_i_8
       (.I0(\j_fu_78_reg[10]_0 [3]),
        .I1(icmp_ln474_fu_193_p2_carry[3]),
        .I2(\j_fu_78_reg[10]_0 [4]),
        .I3(ap_loop_init_int),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I5(icmp_ln474_fu_193_p2_carry[4]),
        .O(icmp_ln474_fu_193_p2_carry_i_8_n_5));
  LUT6 #(
    .INIT(64'hFF6F6F6FCCF6F6F6)) 
    icmp_ln474_fu_193_p2_carry_i_9
       (.I0(\j_fu_78_reg[10]_0 [2]),
        .I1(icmp_ln474_fu_193_p2_carry[2]),
        .I2(\j_fu_78_reg[10]_0 [1]),
        .I3(ap_loop_init_int),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I5(icmp_ln474_fu_193_p2_carry[1]),
        .O(icmp_ln474_fu_193_p2_carry_i_9_n_5));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AFF00)) 
    \icmp_ln474_reg_267[0]_i_1 
       (.I0(CO),
        .I1(srcYUV_full_n),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\eol_reg_153_reg[0]_0 ),
        .I4(s_axis_video_TVALID_int_regslice),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .O(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \j_fu_78[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_78_reg[10]_0 [0]),
        .O(\j_fu_78_reg[10] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \j_fu_78[10]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_done_reg1),
        .O(SR));
  LUT6 #(
    .INIT(64'h2220222022200000)) 
    \j_fu_78[10]_i_2 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I1(CO),
        .I2(srcYUV_full_n),
        .I3(\j_fu_78[10]_i_4_n_5 ),
        .I4(s_axis_video_TVALID_int_regslice),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .O(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg_0));
  LUT5 #(
    .INIT(32'h12222222)) 
    \j_fu_78[10]_i_3 
       (.I0(\j_fu_78_reg[10]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_78_reg[10]_0 [8]),
        .I3(\j_fu_78[10]_i_6_n_5 ),
        .I4(\j_fu_78_reg[10]_0 [9]),
        .O(\j_fu_78_reg[10] [10]));
  LUT2 #(
    .INIT(4'hB)) 
    \j_fu_78[10]_i_4 
       (.I0(\eol_reg_153_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\j_fu_78[10]_i_4_n_5 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \j_fu_78[10]_i_5 
       (.I0(\j_fu_78[10]_i_7_n_5 ),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I2(CO),
        .O(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \j_fu_78[10]_i_6 
       (.I0(\j_fu_78_reg[10]_0 [7]),
        .I1(\j_fu_78[8]_i_3_n_5 ),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_78_reg[10]_0 [5]),
        .I5(\j_fu_78_reg[10]_0 [6]),
        .O(\j_fu_78[10]_i_6_n_5 ));
  LUT6 #(
    .INIT(64'hCECECECECFC0CECE)) 
    \j_fu_78[10]_i_7 
       (.I0(\eol_reg_153_reg[0]_1 ),
        .I1(sof_reg_106),
        .I2(\j_fu_78[8]_i_2_n_5 ),
        .I3(\eol_reg_153_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\eol_reg_153_reg[0]_0 ),
        .O(\j_fu_78[10]_i_7_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \j_fu_78[1]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_78_reg[10]_0 [1]),
        .O(\j_fu_78_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \j_fu_78[2]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [2]),
        .I1(\j_fu_78_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_78_reg[10]_0 [0]),
        .O(\j_fu_78_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_78[3]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [3]),
        .I1(\j_fu_78_reg[10]_0 [0]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_78_reg[10]_0 [1]),
        .I4(\j_fu_78_reg[10]_0 [2]),
        .O(\j_fu_78_reg[10] [3]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \j_fu_78[4]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [4]),
        .I1(\j_fu_78_reg[10]_0 [2]),
        .I2(\j_fu_78_reg[10]_0 [1]),
        .I3(\j_fu_78[8]_i_2_n_5 ),
        .I4(\j_fu_78_reg[10]_0 [0]),
        .I5(\j_fu_78_reg[10]_0 [3]),
        .O(\j_fu_78_reg[10] [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \j_fu_78[5]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_78_reg[10]_0 [5]),
        .I2(\j_fu_78[6]_i_2_n_5 ),
        .I3(\j_fu_78_reg[10]_0 [4]),
        .O(\j_fu_78_reg[10] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_78[6]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [6]),
        .I1(\j_fu_78_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(\j_fu_78_reg[10]_0 [4]),
        .I4(\j_fu_78[6]_i_2_n_5 ),
        .O(\j_fu_78_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \j_fu_78[6]_i_2 
       (.I0(\j_fu_78_reg[10]_0 [3]),
        .I1(\j_fu_78_reg[10]_0 [0]),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_78_reg[10]_0 [1]),
        .I5(\j_fu_78_reg[10]_0 [2]),
        .O(\j_fu_78[6]_i_2_n_5 ));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \j_fu_78[7]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [7]),
        .I1(\j_fu_78[8]_i_3_n_5 ),
        .I2(ap_loop_init_int),
        .I3(\j_fu_78_reg[10]_0 [5]),
        .I4(\j_fu_78_reg[10]_0 [6]),
        .O(\j_fu_78_reg[10] [7]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \j_fu_78[8]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [8]),
        .I1(\j_fu_78_reg[10]_0 [6]),
        .I2(\j_fu_78_reg[10]_0 [5]),
        .I3(\j_fu_78[8]_i_2_n_5 ),
        .I4(\j_fu_78[8]_i_3_n_5 ),
        .I5(\j_fu_78_reg[10]_0 [7]),
        .O(\j_fu_78_reg[10] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \j_fu_78[8]_i_2 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\j_fu_78[8]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \j_fu_78[8]_i_3 
       (.I0(\j_fu_78_reg[10]_0 [4]),
        .I1(\j_fu_78_reg[10]_0 [2]),
        .I2(\j_fu_78_reg[10]_0 [1]),
        .I3(\j_fu_78[8]_i_2_n_5 ),
        .I4(\j_fu_78_reg[10]_0 [0]),
        .I5(\j_fu_78_reg[10]_0 [3]),
        .O(\j_fu_78[8]_i_3_n_5 ));
  LUT5 #(
    .INIT(32'h22122222)) 
    \j_fu_78[9]_i_1 
       (.I0(\j_fu_78_reg[10]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(\j_fu_78_reg[10]_0 [7]),
        .I3(\j_fu_78[9]_i_2_n_5 ),
        .I4(\j_fu_78_reg[10]_0 [8]),
        .O(\j_fu_78_reg[10] [9]));
  LUT6 #(
    .INIT(64'hF777FFFFFFFFFFFF)) 
    \j_fu_78[9]_i_2 
       (.I0(\j_fu_78_reg[10]_0 [6]),
        .I1(\j_fu_78_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg),
        .I4(\j_fu_78_reg[10]_0 [4]),
        .I5(\j_fu_78[6]_i_2_n_5 ),
        .O(\j_fu_78[9]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hA2A2A2AAAAAAAAAA)) 
    \mOutPtr[4]_i_4 
       (.I0(\mOutPtr_reg[2] ),
        .I1(srcYUV_full_n),
        .I2(\j_fu_78[10]_i_4_n_5 ),
        .I3(s_axis_video_TVALID_int_regslice),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg),
        .I5(Q[1]),
        .O(internal_full_n_reg));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init" *) 
module bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_16
   (ap_done_cache,
    D,
    ap_rst_n_inv,
    ap_done_cache_reg_0,
    ap_clk,
    Q,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
    ap_done_reg1);
  output ap_done_cache;
  output [0:0]D;
  input ap_rst_n_inv;
  input ap_done_cache_reg_0;
  input ap_clk;
  input [0:0]Q;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  input ap_done_reg1;

  wire [0:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_reg_0;
  wire ap_done_reg1;
  wire ap_rst_n_inv;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;

  LUT4 #(
    .INIT(16'hAA08)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q),
        .I1(ap_done_cache),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I3(ap_done_reg1),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_reg_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init" *) 
module bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_17
   (ap_loop_init_int_reg_0,
    E,
    D,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY,
    \B_V_data_1_state_reg[0] ,
    \ap_CS_fsm_reg[8] ,
    ap_done_cache_reg_0,
    ap_done_cache_reg_1,
    ap_rst_n_inv,
    ap_clk,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld,
    Q,
    axi_last_V_reg_80,
    ap_rst_n,
    s_axis_video_TVALID_int_regslice,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
    s_axis_video_TLAST_int_regslice,
    sof_reg_106);
  output ap_loop_init_int_reg_0;
  output [0:0]E;
  output [1:0]D;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  output \B_V_data_1_state_reg[0] ;
  output \ap_CS_fsm_reg[8] ;
  output ap_done_cache_reg_0;
  output ap_done_cache_reg_1;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  input [3:0]Q;
  input axi_last_V_reg_80;
  input ap_rst_n;
  input s_axis_video_TVALID_int_regslice;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  input s_axis_video_TLAST_int_regslice;
  input sof_reg_106;

  wire \B_V_data_1_state_reg[0] ;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \ap_CS_fsm[9]_i_2_n_5 ;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_5;
  wire ap_done_cache_reg_0;
  wire ap_done_cache_reg_1;
  wire ap_done_reg3;
  wire ap_loop_init_int_i_1__0_n_5;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_80;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;
  wire sof_reg_106;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0200A200)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(axi_last_V_reg_80),
        .I2(ap_loop_init_int_reg_0),
        .I3(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .O(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_s_axis_video_TREADY));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\ap_CS_fsm[9]_i_2_n_5 ),
        .I3(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I4(ap_done_cache),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(Q[2]),
        .I1(\ap_CS_fsm[9]_i_2_n_5 ),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \ap_CS_fsm[9]_i_2 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I2(ap_loop_init_int_reg_0),
        .I3(axi_last_V_reg_80),
        .O(\ap_CS_fsm[9]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ap_done_cache_i_1__1
       (.I0(axi_last_V_reg_80),
        .I1(ap_loop_init_int_reg_0),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I3(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFF5FF5577F5FF55)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(axi_last_V_reg_80),
        .I3(ap_loop_init_int_reg_0),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .O(ap_loop_init_int_i_1__0_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_5),
        .Q(ap_loop_init_int_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF8FF888888888888)) 
    \axi_data_V_2_fu_74[23]_i_1 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld),
        .I1(Q[0]),
        .I2(ap_loop_init_int_reg_0),
        .I3(axi_last_V_reg_80),
        .I4(Q[3]),
        .I5(ap_done_reg3),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCC8C80)) 
    \axi_data_V_2_fu_74[23]_i_4 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I2(ap_loop_init_int_reg_0),
        .I3(axi_last_V_reg_80),
        .I4(s_axis_video_TVALID_int_regslice),
        .O(ap_done_reg3));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \axi_last_V_2_reg_120[0]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I2(axi_last_V_reg_80),
        .I3(ap_loop_init_int_reg_0),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I5(Q[3]),
        .O(ap_done_cache_reg_0));
  LUT6 #(
    .INIT(64'hF0F8F0F0B8F8F0F0)) 
    \axi_last_V_reg_80[0]_i_1 
       (.I0(s_axis_video_TLAST_int_regslice),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(axi_last_V_reg_80),
        .I3(ap_loop_init_int_reg_0),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .O(\B_V_data_1_state_reg[0] ));
  LUT5 #(
    .INIT(32'hAEAAAEEE)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_i_1
       (.I0(Q[2]),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out),
        .I3(ap_loop_init_int_reg_0),
        .I4(axi_last_V_reg_80),
        .O(\ap_CS_fsm_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1DFF0000)) 
    \sof_reg_106[0]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg),
        .I2(\ap_CS_fsm[9]_i_2_n_5 ),
        .I3(Q[3]),
        .I4(sof_reg_106),
        .I5(Q[1]),
        .O(ap_done_cache_reg_1));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1
   (P,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg,
    p_reg_reg_0,
    select_ln220_reg_1302_pp0_iter2_reg,
    p_reg_reg_1,
    p_reg_reg_2,
    p_reg_reg_3);
  output [23:0]P;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [7:0]p_reg_reg_0;
  input select_ln220_reg_1302_pp0_iter2_reg;
  input [7:0]p_reg_reg_1;
  input p_reg_reg_2;
  input [7:0]p_reg_reg_3;

  wire [23:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [15:0]p_reg_reg;
  wire [7:0]p_reg_reg_0;
  wire [7:0]p_reg_reg_1;
  wire p_reg_reg_2;
  wire [7:0]p_reg_reg_3;
  wire select_ln220_reg_1302_pp0_iter2_reg;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0_8 bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0_U
       (.P(P),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1),
        .p_reg_reg_3(p_reg_reg_2),
        .p_reg_reg_4(p_reg_reg_3),
        .select_ln220_reg_1302_pp0_iter2_reg(select_ln220_reg_1302_pp0_iter2_reg));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_1
   (P,
    \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg,
    p_reg_reg_0,
    select_ln220_reg_1302_pp0_iter2_reg,
    p_reg_reg_1,
    p_reg_reg_2,
    trunc_ln159_reg_1282_pp0_iter2_reg,
    p_reg_reg_3);
  output [23:0]P;
  output \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [7:0]p_reg_reg_0;
  input select_ln220_reg_1302_pp0_iter2_reg;
  input [7:0]p_reg_reg_1;
  input [7:0]p_reg_reg_2;
  input trunc_ln159_reg_1282_pp0_iter2_reg;
  input p_reg_reg_3;

  wire [23:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [15:0]p_reg_reg;
  wire [7:0]p_reg_reg_0;
  wire [7:0]p_reg_reg_1;
  wire [7:0]p_reg_reg_2;
  wire p_reg_reg_3;
  wire select_ln220_reg_1302_pp0_iter2_reg;
  wire trunc_ln159_reg_1282_pp0_iter2_reg;
  wire \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0 bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0_U
       (.P(P),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1),
        .p_reg_reg_3(p_reg_reg_2),
        .p_reg_reg_4(p_reg_reg_3),
        .select_ln220_reg_1302_pp0_iter2_reg(select_ln220_reg_1302_pp0_iter2_reg),
        .trunc_ln159_reg_1282_pp0_iter2_reg(trunc_ln159_reg_1282_pp0_iter2_reg),
        .\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] (\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0
   (P,
    \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg_0,
    p_reg_reg_1,
    select_ln220_reg_1302_pp0_iter2_reg,
    p_reg_reg_2,
    p_reg_reg_3,
    trunc_ln159_reg_1282_pp0_iter2_reg,
    p_reg_reg_4);
  output [23:0]P;
  output \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]p_reg_reg_1;
  input select_ln220_reg_1302_pp0_iter2_reg;
  input [7:0]p_reg_reg_2;
  input [7:0]p_reg_reg_3;
  input trunc_ln159_reg_1282_pp0_iter2_reg;
  input p_reg_reg_4;

  wire [23:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [7:0]grp_fu_1119_p0;
  wire [15:0]p_reg_reg_0;
  wire [7:0]p_reg_reg_1;
  wire [7:0]p_reg_reg_2;
  wire [7:0]p_reg_reg_3;
  wire p_reg_reg_4;
  wire select_ln220_reg_1302_pp0_iter2_reg;
  wire trunc_ln159_reg_1282_pp0_iter2_reg;
  wire \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_4 
       (.I0(trunc_ln159_reg_1282_pp0_iter2_reg),
        .I1(p_reg_reg_4),
        .O(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,grp_fu_1119_p0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_17
       (.I0(p_reg_reg_1[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[7]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[7]),
        .O(grp_fu_1119_p0[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_18
       (.I0(p_reg_reg_1[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[6]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[6]),
        .O(grp_fu_1119_p0[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_19
       (.I0(p_reg_reg_1[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[5]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[5]),
        .O(grp_fu_1119_p0[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_20
       (.I0(p_reg_reg_1[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[4]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[4]),
        .O(grp_fu_1119_p0[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_21
       (.I0(p_reg_reg_1[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[3]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[3]),
        .O(grp_fu_1119_p0[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_22
       (.I0(p_reg_reg_1[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[2]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[2]),
        .O(grp_fu_1119_p0[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_23
       (.I0(p_reg_reg_1[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[1]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[1]),
        .O(grp_fu_1119_p0[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_24
       (.I0(p_reg_reg_1[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[0]),
        .I3(\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] ),
        .I4(p_reg_reg_3[0]),
        .O(grp_fu_1119_p0[0]));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_DSP48_0_8
   (P,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg_0,
    p_reg_reg_1,
    select_ln220_reg_1302_pp0_iter2_reg,
    p_reg_reg_2,
    p_reg_reg_3,
    p_reg_reg_4);
  output [23:0]P;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]p_reg_reg_1;
  input select_ln220_reg_1302_pp0_iter2_reg;
  input [7:0]p_reg_reg_2;
  input p_reg_reg_3;
  input [7:0]p_reg_reg_4;

  wire [23:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [7:0]grp_fu_1111_p0;
  wire [15:0]p_reg_reg_0;
  wire [7:0]p_reg_reg_1;
  wire [7:0]p_reg_reg_2;
  wire p_reg_reg_3;
  wire [7:0]p_reg_reg_4;
  wire select_ln220_reg_1302_pp0_iter2_reg;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,grp_fu_1111_p0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_1__2
       (.I0(p_reg_reg_1[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[7]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[7]),
        .O(grp_fu_1111_p0[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_2
       (.I0(p_reg_reg_1[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[6]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[6]),
        .O(grp_fu_1111_p0[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_3
       (.I0(p_reg_reg_1[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[5]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[5]),
        .O(grp_fu_1111_p0[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_4
       (.I0(p_reg_reg_1[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[4]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[4]),
        .O(grp_fu_1111_p0[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_5
       (.I0(p_reg_reg_1[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[3]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[3]),
        .O(grp_fu_1111_p0[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_6
       (.I0(p_reg_reg_1[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[2]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[2]),
        .O(grp_fu_1111_p0[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_7
       (.I0(p_reg_reg_1[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[1]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[1]),
        .O(grp_fu_1111_p0[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_8
       (.I0(p_reg_reg_1[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_2[0]),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4[0]),
        .O(grp_fu_1111_p0[0]));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1
   (P,
    filt_res0_5_reg_14190,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    B,
    Q,
    p_reg_reg,
    or_ln384_reg_1344_pp0_iter5_reg,
    ap_enable_reg_pp0_iter6,
    icmp_ln159_reg_1289_pp0_iter5_reg,
    p_reg_reg_0);
  output [24:0]P;
  output filt_res0_5_reg_14190;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]B;
  input [7:0]Q;
  input [23:0]p_reg_reg;
  input or_ln384_reg_1344_pp0_iter5_reg;
  input ap_enable_reg_pp0_iter6;
  input icmp_ln159_reg_1289_pp0_iter5_reg;
  input p_reg_reg_0;

  wire [15:0]B;
  wire [24:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter6;
  wire filt_res0_5_reg_14190;
  wire icmp_ln159_reg_1289_pp0_iter5_reg;
  wire or_ln384_reg_1344_pp0_iter5_reg;
  wire [23:0]p_reg_reg;
  wire p_reg_reg_0;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1_7 bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1_U
       (.B(B),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .filt_res0_5_reg_14190(filt_res0_5_reg_14190),
        .icmp_ln159_reg_1289_pp0_iter5_reg(icmp_ln159_reg_1289_pp0_iter5_reg),
        .or_ln384_reg_1344_pp0_iter5_reg(or_ln384_reg_1344_pp0_iter5_reg),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_2
   (P,
    ap_block_pp0_stage0_subdone,
    filt_res0_5_reg_14190,
    ap_clk,
    B,
    Q,
    p_reg_reg);
  output [24:0]P;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_5_reg_14190;
  input ap_clk;
  input [15:0]B;
  input [7:0]Q;
  input [23:0]p_reg_reg;

  wire [15:0]B;
  wire [24:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_5_reg_14190;
  wire [23:0]p_reg_reg;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1 bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1_U
       (.B(B),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_5_reg_14190(filt_res0_5_reg_14190),
        .p_reg_reg_0(p_reg_reg));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1
   (P,
    ap_block_pp0_stage0_subdone,
    filt_res0_5_reg_14190,
    ap_clk,
    B,
    Q,
    p_reg_reg_0);
  output [24:0]P;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_5_reg_14190;
  input ap_clk;
  input [15:0]B;
  input [7:0]Q;
  input [23:0]p_reg_reg_0;

  wire [15:0]B;
  wire [24:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_5_reg_14190;
  wire [23:0]p_reg_reg_0;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(filt_res0_5_reg_14190),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:25],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_DSP48_1_7
   (P,
    filt_res0_5_reg_14190,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    B,
    Q,
    p_reg_reg_0,
    or_ln384_reg_1344_pp0_iter5_reg,
    ap_enable_reg_pp0_iter6,
    icmp_ln159_reg_1289_pp0_iter5_reg,
    p_reg_reg_1);
  output [24:0]P;
  output filt_res0_5_reg_14190;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]B;
  input [7:0]Q;
  input [23:0]p_reg_reg_0;
  input or_ln384_reg_1344_pp0_iter5_reg;
  input ap_enable_reg_pp0_iter6;
  input icmp_ln159_reg_1289_pp0_iter5_reg;
  input p_reg_reg_1;

  wire [15:0]B;
  wire [24:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter6;
  wire filt_res0_5_reg_14190;
  wire icmp_ln159_reg_1289_pp0_iter5_reg;
  wire or_ln384_reg_1344_pp0_iter5_reg;
  wire [23:0]p_reg_reg_0;
  wire p_reg_reg_1;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0[23],p_reg_reg_0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(filt_res0_5_reg_14190),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:25],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0008)) 
    p_reg_reg_i_1
       (.I0(or_ln384_reg_1344_pp0_iter5_reg),
        .I1(ap_enable_reg_pp0_iter6),
        .I2(icmp_ln159_reg_1289_pp0_iter5_reg),
        .I3(p_reg_reg_1),
        .O(filt_res0_5_reg_14190));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1
   (P,
    filt_res0_6_reg_14550,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg,
    Q,
    p_reg_reg_0,
    ap_enable_reg_pp0_iter8,
    icmp_ln159_reg_1289_pp0_iter7_reg,
    or_ln384_reg_1344_pp0_iter7_reg,
    p_reg_reg_1);
  output [25:0]P;
  output filt_res0_6_reg_14550;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [7:0]Q;
  input [24:0]p_reg_reg_0;
  input ap_enable_reg_pp0_iter8;
  input icmp_ln159_reg_1289_pp0_iter7_reg;
  input or_ln384_reg_1344_pp0_iter7_reg;
  input p_reg_reg_1;

  wire [25:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter8;
  wire filt_res0_6_reg_14550;
  wire icmp_ln159_reg_1289_pp0_iter7_reg;
  wire or_ln384_reg_1344_pp0_iter7_reg;
  wire [15:0]p_reg_reg;
  wire [24:0]p_reg_reg_0;
  wire p_reg_reg_1;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2_6 bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2_U
       (.P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .filt_res0_6_reg_14550(filt_res0_6_reg_14550),
        .icmp_ln159_reg_1289_pp0_iter7_reg(icmp_ln159_reg_1289_pp0_iter7_reg),
        .or_ln384_reg_1344_pp0_iter7_reg(or_ln384_reg_1344_pp0_iter7_reg),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_3
   (P,
    ap_block_pp0_stage0_subdone,
    filt_res0_6_reg_14550,
    ap_clk,
    p_reg_reg,
    Q,
    p_reg_reg_0);
  output [25:0]P;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_6_reg_14550;
  input ap_clk;
  input [15:0]p_reg_reg;
  input [7:0]Q;
  input [24:0]p_reg_reg_0;

  wire [25:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_6_reg_14550;
  wire [15:0]p_reg_reg;
  wire [24:0]p_reg_reg_0;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2 bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2_U
       (.P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_6_reg_14550(filt_res0_6_reg_14550),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2
   (P,
    ap_block_pp0_stage0_subdone,
    filt_res0_6_reg_14550,
    ap_clk,
    p_reg_reg_0,
    Q,
    p_reg_reg_1);
  output [25:0]P;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_6_reg_14550;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]Q;
  input [24:0]p_reg_reg_1;

  wire [25:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_6_reg_14550;
  wire [15:0]p_reg_reg_0;
  wire [24:0]p_reg_reg_1;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(filt_res0_6_reg_14550),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:26],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_DSP48_2_6
   (P,
    filt_res0_6_reg_14550,
    ap_block_pp0_stage0_subdone,
    ap_clk,
    p_reg_reg_0,
    Q,
    p_reg_reg_1,
    ap_enable_reg_pp0_iter8,
    icmp_ln159_reg_1289_pp0_iter7_reg,
    or_ln384_reg_1344_pp0_iter7_reg,
    p_reg_reg_2);
  output [25:0]P;
  output filt_res0_6_reg_14550;
  input ap_block_pp0_stage0_subdone;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]Q;
  input [24:0]p_reg_reg_1;
  input ap_enable_reg_pp0_iter8;
  input icmp_ln159_reg_1289_pp0_iter7_reg;
  input or_ln384_reg_1344_pp0_iter7_reg;
  input p_reg_reg_2;

  wire [25:0]P;
  wire [7:0]Q;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter8;
  wire filt_res0_6_reg_14550;
  wire icmp_ln159_reg_1289_pp0_iter7_reg;
  wire or_ln384_reg_1344_pp0_iter7_reg;
  wire [15:0]p_reg_reg_0;
  wire [24:0]p_reg_reg_1;
  wire p_reg_reg_2;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1[24],p_reg_reg_1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(filt_res0_6_reg_14550),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:26],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0020)) 
    p_reg_reg_i_1__0
       (.I0(ap_enable_reg_pp0_iter8),
        .I1(icmp_ln159_reg_1289_pp0_iter7_reg),
        .I2(or_ln384_reg_1344_pp0_iter7_reg),
        .I3(p_reg_reg_2),
        .O(filt_res0_6_reg_14550));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1
   (P,
    ap_block_pp0_stage0_subdone,
    filt_res0_7_reg_14910,
    internal_full_n_reg,
    p_reg_reg,
    ap_clk,
    p_reg_reg_0,
    A,
    p_reg_reg_1,
    ap_enable_reg_pp0_iter10,
    icmp_ln159_reg_1289_pp0_iter9_reg,
    or_ln384_reg_1344_pp0_iter9_reg,
    outYUV_full_n,
    ap_enable_reg_pp0_iter14,
    tmp_5_reg_1314_pp0_iter13_reg,
    p_reg_reg_2,
    p_reg_reg_3,
    srcYUV_empty_n,
    icmp_ln168_reg_1298,
    icmp_ln159_reg_1289,
    ap_enable_reg_pp0_iter1);
  output [8:0]P;
  output ap_block_pp0_stage0_subdone;
  output filt_res0_7_reg_14910;
  output internal_full_n_reg;
  output p_reg_reg;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]A;
  input [25:0]p_reg_reg_1;
  input ap_enable_reg_pp0_iter10;
  input icmp_ln159_reg_1289_pp0_iter9_reg;
  input or_ln384_reg_1344_pp0_iter9_reg;
  input outYUV_full_n;
  input ap_enable_reg_pp0_iter14;
  input tmp_5_reg_1314_pp0_iter13_reg;
  input p_reg_reg_2;
  input p_reg_reg_3;
  input srcYUV_empty_n;
  input icmp_ln168_reg_1298;
  input icmp_ln159_reg_1289;
  input ap_enable_reg_pp0_iter1;

  wire [7:0]A;
  wire [8:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter14;
  wire filt_res0_7_reg_14910;
  wire icmp_ln159_reg_1289;
  wire icmp_ln159_reg_1289_pp0_iter9_reg;
  wire icmp_ln168_reg_1298;
  wire internal_full_n_reg;
  wire or_ln384_reg_1344_pp0_iter9_reg;
  wire outYUV_full_n;
  wire p_reg_reg;
  wire [15:0]p_reg_reg_0;
  wire [25:0]p_reg_reg_1;
  wire p_reg_reg_2;
  wire p_reg_reg_3;
  wire srcYUV_empty_n;
  wire tmp_5_reg_1314_pp0_iter13_reg;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3_5 bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3_U
       (.A(A),
        .P(P),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter10(ap_enable_reg_pp0_iter10),
        .ap_enable_reg_pp0_iter14(ap_enable_reg_pp0_iter14),
        .filt_res0_7_reg_14910(filt_res0_7_reg_14910),
        .icmp_ln159_reg_1289(icmp_ln159_reg_1289),
        .icmp_ln159_reg_1289_pp0_iter9_reg(icmp_ln159_reg_1289_pp0_iter9_reg),
        .icmp_ln168_reg_1298(icmp_ln168_reg_1298),
        .internal_full_n_reg(ap_block_pp0_stage0_subdone),
        .internal_full_n_reg_0(internal_full_n_reg),
        .or_ln384_reg_1344_pp0_iter9_reg(or_ln384_reg_1344_pp0_iter9_reg),
        .outYUV_full_n(outYUV_full_n),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1),
        .p_reg_reg_3(p_reg_reg_2),
        .p_reg_reg_4(p_reg_reg_3),
        .srcYUV_empty_n(srcYUV_empty_n),
        .tmp_5_reg_1314_pp0_iter13_reg(tmp_5_reg_1314_pp0_iter13_reg));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_4
   (P,
    p_reg_reg,
    ap_block_pp0_stage0_subdone,
    filt_res0_7_reg_14910,
    ap_clk,
    p_reg_reg_0,
    A,
    p_reg_reg_1);
  output [8:0]P;
  output p_reg_reg;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_7_reg_14910;
  input ap_clk;
  input [15:0]p_reg_reg_0;
  input [7:0]A;
  input [25:0]p_reg_reg_1;

  wire [7:0]A;
  wire [8:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_7_reg_14910;
  wire p_reg_reg;
  wire [15:0]p_reg_reg_0;
  wire [25:0]p_reg_reg_1;

  bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3 bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3_U
       (.A(A),
        .P(P),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_7_reg_14910(filt_res0_7_reg_14910),
        .p_reg_reg_0(p_reg_reg),
        .p_reg_reg_1(p_reg_reg_0),
        .p_reg_reg_2(p_reg_reg_1));
endmodule

module bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3
   (P,
    p_reg_reg_0,
    ap_block_pp0_stage0_subdone,
    filt_res0_7_reg_14910,
    ap_clk,
    p_reg_reg_1,
    A,
    p_reg_reg_2);
  output [8:0]P;
  output p_reg_reg_0;
  input ap_block_pp0_stage0_subdone;
  input filt_res0_7_reg_14910;
  input ap_clk;
  input [15:0]p_reg_reg_1;
  input [7:0]A;
  input [25:0]p_reg_reg_2;

  wire [7:0]A;
  wire [8:0]P;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire filt_res0_7_reg_14910;
  wire p_reg_reg_0;
  wire [15:0]p_reg_reg_1;
  wire [25:0]p_reg_reg_2;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_106;
  wire p_reg_reg_n_107;
  wire p_reg_reg_n_108;
  wire p_reg_reg_n_109;
  wire p_reg_reg_n_110;
  wire p_reg_reg_n_99;
  wire [4:0]tmp_4_fu_838_p4;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \icmp_ln404_reg_1528[0]_i_2 
       (.I0(tmp_4_fu_838_p4[4]),
        .I1(tmp_4_fu_838_p4[3]),
        .I2(tmp_4_fu_838_p4[2]),
        .I3(tmp_4_fu_838_p4[1]),
        .I4(tmp_4_fu_838_p4[0]),
        .I5(P[8]),
        .O(p_reg_reg_0));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_1[15],p_reg_reg_1[15],p_reg_reg_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_subdone),
        .CEA2(ap_block_pp0_stage0_subdone),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_subdone),
        .CEC(filt_res0_7_reg_14910),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ap_block_pp0_stage0_subdone),
        .CEP(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:26],P[8],tmp_4_fu_838_p4,P[7:0],p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108,p_reg_reg_n_109,p_reg_reg_n_110}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3" *) 
module bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_DSP48_3_5
   (P,
    internal_full_n_reg,
    filt_res0_7_reg_14910,
    internal_full_n_reg_0,
    p_reg_reg_0,
    ap_clk,
    p_reg_reg_1,
    A,
    p_reg_reg_2,
    ap_enable_reg_pp0_iter10,
    icmp_ln159_reg_1289_pp0_iter9_reg,
    or_ln384_reg_1344_pp0_iter9_reg,
    outYUV_full_n,
    ap_enable_reg_pp0_iter14,
    tmp_5_reg_1314_pp0_iter13_reg,
    p_reg_reg_3,
    p_reg_reg_4,
    srcYUV_empty_n,
    icmp_ln168_reg_1298,
    icmp_ln159_reg_1289,
    ap_enable_reg_pp0_iter1);
  output [8:0]P;
  output internal_full_n_reg;
  output filt_res0_7_reg_14910;
  output internal_full_n_reg_0;
  output p_reg_reg_0;
  input ap_clk;
  input [15:0]p_reg_reg_1;
  input [7:0]A;
  input [25:0]p_reg_reg_2;
  input ap_enable_reg_pp0_iter10;
  input icmp_ln159_reg_1289_pp0_iter9_reg;
  input or_ln384_reg_1344_pp0_iter9_reg;
  input outYUV_full_n;
  input ap_enable_reg_pp0_iter14;
  input tmp_5_reg_1314_pp0_iter13_reg;
  input p_reg_reg_3;
  input p_reg_reg_4;
  input srcYUV_empty_n;
  input icmp_ln168_reg_1298;
  input icmp_ln159_reg_1289;
  input ap_enable_reg_pp0_iter1;

  wire [7:0]A;
  wire [8:0]P;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter14;
  wire filt_res0_7_reg_14910;
  wire icmp_ln159_reg_1289;
  wire icmp_ln159_reg_1289_pp0_iter9_reg;
  wire icmp_ln168_reg_1298;
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire or_ln384_reg_1344_pp0_iter9_reg;
  wire outYUV_full_n;
  wire p_reg_reg_0;
  wire [15:0]p_reg_reg_1;
  wire [25:0]p_reg_reg_2;
  wire p_reg_reg_3;
  wire p_reg_reg_4;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_106;
  wire p_reg_reg_n_107;
  wire p_reg_reg_n_108;
  wire p_reg_reg_n_109;
  wire p_reg_reg_n_110;
  wire p_reg_reg_n_99;
  wire srcYUV_empty_n;
  wire [4:0]tmp_1_fu_816_p4;
  wire tmp_5_reg_1314_pp0_iter13_reg;
  wire \x_fu_174[10]_i_6_n_5 ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \icmp_ln168_reg_1298_pp0_iter1_reg[0]_i_1 
       (.I0(internal_full_n_reg_0),
        .O(internal_full_n_reg));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \icmp_ln403_reg_1517[0]_i_1 
       (.I0(tmp_1_fu_816_p4[4]),
        .I1(tmp_1_fu_816_p4[3]),
        .I2(tmp_1_fu_816_p4[2]),
        .I3(tmp_1_fu_816_p4[1]),
        .I4(tmp_1_fu_816_p4[0]),
        .I5(P[8]),
        .O(p_reg_reg_0));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_1[15],p_reg_reg_1[15],p_reg_reg_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2[25],p_reg_reg_2}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(internal_full_n_reg),
        .CEA2(internal_full_n_reg),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(internal_full_n_reg),
        .CEC(filt_res0_7_reg_14910),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(internal_full_n_reg),
        .CEP(internal_full_n_reg),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:26],P[8],tmp_1_fu_816_p4,P[7:0],p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105,p_reg_reg_n_106,p_reg_reg_n_107,p_reg_reg_n_108,p_reg_reg_n_109,p_reg_reg_n_110}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0020)) 
    p_reg_reg_i_1__1
       (.I0(ap_enable_reg_pp0_iter10),
        .I1(icmp_ln159_reg_1289_pp0_iter9_reg),
        .I2(or_ln384_reg_1344_pp0_iter9_reg),
        .I3(internal_full_n_reg_0),
        .O(filt_res0_7_reg_14910));
  LUT6 #(
    .INIT(64'hFFFFFFFF04440400)) 
    \x_fu_174[10]_i_4 
       (.I0(outYUV_full_n),
        .I1(ap_enable_reg_pp0_iter14),
        .I2(tmp_5_reg_1314_pp0_iter13_reg),
        .I3(p_reg_reg_3),
        .I4(p_reg_reg_4),
        .I5(\x_fu_174[10]_i_6_n_5 ),
        .O(internal_full_n_reg_0));
  LUT4 #(
    .INIT(16'h0400)) 
    \x_fu_174[10]_i_6 
       (.I0(srcYUV_empty_n),
        .I1(icmp_ln168_reg_1298),
        .I2(icmp_ln159_reg_1289),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\x_fu_174[10]_i_6_n_5 ));
endmodule

module bd_3a92_hcr_0_regslice_both
   (m_axis_video_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    B_V_data_1_sel_wr,
    D,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[5] ,
    m_axis_video_TDATA,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    MultiPixStream2AXIvideo_U0_ap_start,
    Q,
    m_axis_video_TREADY,
    \B_V_data_1_state_reg[0]_1 ,
    CO,
    out);
  output m_axis_video_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output B_V_data_1_sel_wr;
  output [1:0]D;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[5] ;
  output [23:0]m_axis_video_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input MultiPixStream2AXIvideo_U0_ap_start;
  input [2:0]Q;
  input m_axis_video_TREADY;
  input \B_V_data_1_state_reg[0]_1 ;
  input [0:0]CO;
  input [23:0]out;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_5_[0] ;
  wire \B_V_data_1_payload_A_reg_n_5_[10] ;
  wire \B_V_data_1_payload_A_reg_n_5_[11] ;
  wire \B_V_data_1_payload_A_reg_n_5_[12] ;
  wire \B_V_data_1_payload_A_reg_n_5_[13] ;
  wire \B_V_data_1_payload_A_reg_n_5_[14] ;
  wire \B_V_data_1_payload_A_reg_n_5_[15] ;
  wire \B_V_data_1_payload_A_reg_n_5_[16] ;
  wire \B_V_data_1_payload_A_reg_n_5_[17] ;
  wire \B_V_data_1_payload_A_reg_n_5_[18] ;
  wire \B_V_data_1_payload_A_reg_n_5_[19] ;
  wire \B_V_data_1_payload_A_reg_n_5_[1] ;
  wire \B_V_data_1_payload_A_reg_n_5_[20] ;
  wire \B_V_data_1_payload_A_reg_n_5_[21] ;
  wire \B_V_data_1_payload_A_reg_n_5_[22] ;
  wire \B_V_data_1_payload_A_reg_n_5_[23] ;
  wire \B_V_data_1_payload_A_reg_n_5_[2] ;
  wire \B_V_data_1_payload_A_reg_n_5_[3] ;
  wire \B_V_data_1_payload_A_reg_n_5_[4] ;
  wire \B_V_data_1_payload_A_reg_n_5_[5] ;
  wire \B_V_data_1_payload_A_reg_n_5_[6] ;
  wire \B_V_data_1_payload_A_reg_n_5_[7] ;
  wire \B_V_data_1_payload_A_reg_n_5_[8] ;
  wire \B_V_data_1_payload_A_reg_n_5_[9] ;
  wire \B_V_data_1_payload_B_reg_n_5_[0] ;
  wire \B_V_data_1_payload_B_reg_n_5_[10] ;
  wire \B_V_data_1_payload_B_reg_n_5_[11] ;
  wire \B_V_data_1_payload_B_reg_n_5_[12] ;
  wire \B_V_data_1_payload_B_reg_n_5_[13] ;
  wire \B_V_data_1_payload_B_reg_n_5_[14] ;
  wire \B_V_data_1_payload_B_reg_n_5_[15] ;
  wire \B_V_data_1_payload_B_reg_n_5_[16] ;
  wire \B_V_data_1_payload_B_reg_n_5_[17] ;
  wire \B_V_data_1_payload_B_reg_n_5_[18] ;
  wire \B_V_data_1_payload_B_reg_n_5_[19] ;
  wire \B_V_data_1_payload_B_reg_n_5_[1] ;
  wire \B_V_data_1_payload_B_reg_n_5_[20] ;
  wire \B_V_data_1_payload_B_reg_n_5_[21] ;
  wire \B_V_data_1_payload_B_reg_n_5_[22] ;
  wire \B_V_data_1_payload_B_reg_n_5_[23] ;
  wire \B_V_data_1_payload_B_reg_n_5_[2] ;
  wire \B_V_data_1_payload_B_reg_n_5_[3] ;
  wire \B_V_data_1_payload_B_reg_n_5_[4] ;
  wire \B_V_data_1_payload_B_reg_n_5_[5] ;
  wire \B_V_data_1_payload_B_reg_n_5_[6] ;
  wire \B_V_data_1_payload_B_reg_n_5_[7] ;
  wire \B_V_data_1_payload_B_reg_n_5_[8] ;
  wire \B_V_data_1_payload_B_reg_n_5_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__2_n_5;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_5 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire [0:0]CO;
  wire [1:0]D;
  wire MultiPixStream2AXIvideo_U0_ap_start;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire internal_empty_n_reg;
  wire [23:0]m_axis_video_TDATA;
  wire m_axis_video_TREADY;
  wire m_axis_video_TREADY_int_regslice;
  wire [23:0]out;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[23]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[0]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[10]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[11]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[12]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[13]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[14]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[15]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[16]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[17]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[18]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[19]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[1]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[20]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[21]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[22]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[23]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[2]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[3]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[4]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[5]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[6]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[7]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[8]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(out[9]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[23]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[0]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[10]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[11]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[12]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[13]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[14]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[15]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[16]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[17]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[18]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[19]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[1]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[20]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[21]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[22]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[23]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[2]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[3]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[4]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[5]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[6]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[7]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[8]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(out[9]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__2
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_video_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__2_n_5));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__2_n_5),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_1 ),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(m_axis_video_TREADY),
        .I3(m_axis_video_TREADY_int_regslice),
        .O(\B_V_data_1_state[0]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_1 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_5 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(m_axis_video_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF444FFFF44444444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(MultiPixStream2AXIvideo_U0_ap_start),
        .I1(Q[0]),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(m_axis_video_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8FFF888888888888)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(m_axis_video_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .I5(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \mOutPtr[0]_i_2__0 
       (.I0(Q[2]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(m_axis_video_TREADY),
        .I3(m_axis_video_TREADY_int_regslice),
        .O(\ap_CS_fsm_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h80AA0000)) 
    \mOutPtr[1]_i_2__0 
       (.I0(MultiPixStream2AXIvideo_U0_ap_start),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(m_axis_video_TREADY),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(Q[2]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[0] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[10] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[11] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[12] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[13] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[14] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[15] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[16] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[17] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[18] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[19] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[1] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[20] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[21] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[22] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[23] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[2] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[3] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[4] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[5] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[6] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[7] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[8] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_5_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_5_[9] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_regslice_both" *) 
module bd_3a92_hcr_0_regslice_both_12
   (\B_V_data_1_state_reg[1]_0 ,
    s_axis_video_TVALID_int_regslice,
    B_V_data_1_sel,
    \ap_CS_fsm_reg[2] ,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld,
    \axi_data_V_2_fu_74_reg[23] ,
    D,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_rd_reg_0,
    B_V_data_1_sel0,
    s_axis_video_TVALID,
    Q,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
    \axi_data_V_fu_82_reg[23] ,
    \axi_data_V_fu_82_reg[0] ,
    \axi_data_V_2_fu_74_reg[23]_0 ,
    \axi_data_V_2_fu_74_reg[0] ,
    s_axis_video_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output s_axis_video_TVALID_int_regslice;
  output B_V_data_1_sel;
  output \ap_CS_fsm_reg[2] ;
  output grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  output [23:0]\axi_data_V_2_fu_74_reg[23] ;
  output [23:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_rd_reg_0;
  input B_V_data_1_sel0;
  input s_axis_video_TVALID;
  input [0:0]Q;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  input [23:0]\axi_data_V_fu_82_reg[23] ;
  input \axi_data_V_fu_82_reg[0] ;
  input [23:0]\axi_data_V_2_fu_74_reg[23]_0 ;
  input \axi_data_V_2_fu_74_reg[0] ;
  input [23:0]s_axis_video_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_5_[0] ;
  wire \B_V_data_1_payload_A_reg_n_5_[10] ;
  wire \B_V_data_1_payload_A_reg_n_5_[11] ;
  wire \B_V_data_1_payload_A_reg_n_5_[12] ;
  wire \B_V_data_1_payload_A_reg_n_5_[13] ;
  wire \B_V_data_1_payload_A_reg_n_5_[14] ;
  wire \B_V_data_1_payload_A_reg_n_5_[15] ;
  wire \B_V_data_1_payload_A_reg_n_5_[16] ;
  wire \B_V_data_1_payload_A_reg_n_5_[17] ;
  wire \B_V_data_1_payload_A_reg_n_5_[18] ;
  wire \B_V_data_1_payload_A_reg_n_5_[19] ;
  wire \B_V_data_1_payload_A_reg_n_5_[1] ;
  wire \B_V_data_1_payload_A_reg_n_5_[20] ;
  wire \B_V_data_1_payload_A_reg_n_5_[21] ;
  wire \B_V_data_1_payload_A_reg_n_5_[22] ;
  wire \B_V_data_1_payload_A_reg_n_5_[23] ;
  wire \B_V_data_1_payload_A_reg_n_5_[2] ;
  wire \B_V_data_1_payload_A_reg_n_5_[3] ;
  wire \B_V_data_1_payload_A_reg_n_5_[4] ;
  wire \B_V_data_1_payload_A_reg_n_5_[5] ;
  wire \B_V_data_1_payload_A_reg_n_5_[6] ;
  wire \B_V_data_1_payload_A_reg_n_5_[7] ;
  wire \B_V_data_1_payload_A_reg_n_5_[8] ;
  wire \B_V_data_1_payload_A_reg_n_5_[9] ;
  wire \B_V_data_1_payload_B_reg_n_5_[0] ;
  wire \B_V_data_1_payload_B_reg_n_5_[10] ;
  wire \B_V_data_1_payload_B_reg_n_5_[11] ;
  wire \B_V_data_1_payload_B_reg_n_5_[12] ;
  wire \B_V_data_1_payload_B_reg_n_5_[13] ;
  wire \B_V_data_1_payload_B_reg_n_5_[14] ;
  wire \B_V_data_1_payload_B_reg_n_5_[15] ;
  wire \B_V_data_1_payload_B_reg_n_5_[16] ;
  wire \B_V_data_1_payload_B_reg_n_5_[17] ;
  wire \B_V_data_1_payload_B_reg_n_5_[18] ;
  wire \B_V_data_1_payload_B_reg_n_5_[19] ;
  wire \B_V_data_1_payload_B_reg_n_5_[1] ;
  wire \B_V_data_1_payload_B_reg_n_5_[20] ;
  wire \B_V_data_1_payload_B_reg_n_5_[21] ;
  wire \B_V_data_1_payload_B_reg_n_5_[22] ;
  wire \B_V_data_1_payload_B_reg_n_5_[23] ;
  wire \B_V_data_1_payload_B_reg_n_5_[2] ;
  wire \B_V_data_1_payload_B_reg_n_5_[3] ;
  wire \B_V_data_1_payload_B_reg_n_5_[4] ;
  wire \B_V_data_1_payload_B_reg_n_5_[5] ;
  wire \B_V_data_1_payload_B_reg_n_5_[6] ;
  wire \B_V_data_1_payload_B_reg_n_5_[7] ;
  wire \B_V_data_1_payload_B_reg_n_5_[8] ;
  wire \B_V_data_1_payload_B_reg_n_5_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_reg_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_5;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_5 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [23:0]D;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \axi_data_V_2_fu_74_reg[0] ;
  wire [23:0]\axi_data_V_2_fu_74_reg[23] ;
  wire [23:0]\axi_data_V_2_fu_74_reg[23]_0 ;
  wire \axi_data_V_fu_82_reg[0] ;
  wire [23:0]\axi_data_V_fu_82_reg[23] ;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld;
  wire [23:0]s_axis_video_TDATA;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[23]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(s_axis_video_TVALID_int_regslice),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_5_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[23]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(s_axis_video_TVALID_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_5_[9] ),
        .R(1'b0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_reg_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(s_axis_video_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_5));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_5),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(s_axis_video_TVALID),
        .I2(s_axis_video_TVALID_int_regslice),
        .I3(B_V_data_1_sel0),
        .O(\B_V_data_1_state[0]_i_1__0_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(B_V_data_1_sel0),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(Q),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_5 ),
        .Q(s_axis_video_TVALID_int_regslice),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[0]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [0]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[0] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[10]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [10]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[10] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[11]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [11]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[11] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[12]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [12]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[12] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[13]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [13]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[13] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[14]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [14]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[14] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[15]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [15]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[15] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[16]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [16]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[16] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[17]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [17]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[17] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[18]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [18]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[18] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[19]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [19]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[19] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[1]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [1]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[1] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[20]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [20]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[20] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[21]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [21]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[21] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[22]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [22]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[22] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[23]_i_2 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [23]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[23] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[23] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_data_V_2_fu_74[23]_i_3 
       (.I0(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I1(s_axis_video_TVALID_int_regslice),
        .O(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_data_V_out_ap_vld));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[2]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [2]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[2] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[3]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [3]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[3] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[4]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [4]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[4] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[5]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [5]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[5] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[6]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [6]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[6] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[7]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [7]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[7] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[8]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [8]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[8] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_2_fu_74[9]_i_1 
       (.I0(\axi_data_V_2_fu_74_reg[23]_0 [9]),
        .I1(\axi_data_V_2_fu_74_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[9] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[9] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[0]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [0]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[0] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[0] ),
        .O(\axi_data_V_2_fu_74_reg[23] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[10]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [10]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[10] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[10] ),
        .O(\axi_data_V_2_fu_74_reg[23] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[11]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [11]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[11] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[11] ),
        .O(\axi_data_V_2_fu_74_reg[23] [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[12]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [12]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[12] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[12] ),
        .O(\axi_data_V_2_fu_74_reg[23] [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[13]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [13]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[13] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[13] ),
        .O(\axi_data_V_2_fu_74_reg[23] [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[14]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [14]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[14] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[14] ),
        .O(\axi_data_V_2_fu_74_reg[23] [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[15]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [15]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[15] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[15] ),
        .O(\axi_data_V_2_fu_74_reg[23] [15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[16]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [16]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[16] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[16] ),
        .O(\axi_data_V_2_fu_74_reg[23] [16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[17]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [17]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[17] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[17] ),
        .O(\axi_data_V_2_fu_74_reg[23] [17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[18]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [18]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[18] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[18] ),
        .O(\axi_data_V_2_fu_74_reg[23] [18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[19]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [19]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[19] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[19] ),
        .O(\axi_data_V_2_fu_74_reg[23] [19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[1]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [1]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[1] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[1] ),
        .O(\axi_data_V_2_fu_74_reg[23] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[20]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [20]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[20] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[20] ),
        .O(\axi_data_V_2_fu_74_reg[23] [20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[21]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [21]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[21] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[21] ),
        .O(\axi_data_V_2_fu_74_reg[23] [21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[22]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [22]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[22] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[22] ),
        .O(\axi_data_V_2_fu_74_reg[23] [22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[23]_i_2 
       (.I0(\axi_data_V_fu_82_reg[23] [23]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[23] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[23] ),
        .O(\axi_data_V_2_fu_74_reg[23] [23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[2]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [2]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[2] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[2] ),
        .O(\axi_data_V_2_fu_74_reg[23] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[3]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [3]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[3] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[3] ),
        .O(\axi_data_V_2_fu_74_reg[23] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[4]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [4]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[4] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[4] ),
        .O(\axi_data_V_2_fu_74_reg[23] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[5]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [5]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[5] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[5] ),
        .O(\axi_data_V_2_fu_74_reg[23] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[6]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [6]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[6] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[6] ),
        .O(\axi_data_V_2_fu_74_reg[23] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[7]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [7]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[7] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[7] ),
        .O(\axi_data_V_2_fu_74_reg[23] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[8]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [8]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[8] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[8] ),
        .O(\axi_data_V_2_fu_74_reg[23] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_fu_82[9]_i_1 
       (.I0(\axi_data_V_fu_82_reg[23] [9]),
        .I1(\axi_data_V_fu_82_reg[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_5_[9] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg_n_5_[9] ),
        .O(\axi_data_V_2_fu_74_reg[23] [9]));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_regslice_both" *) 
module bd_3a92_hcr_0_regslice_both__parameterized1
   (m_axis_video_TLAST,
    ap_rst_n_inv,
    ap_clk,
    m_axis_video_TREADY,
    \B_V_data_1_state_reg[1]_0 ,
    axi_last_V_reg_189);
  output [0:0]m_axis_video_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_video_TREADY;
  input \B_V_data_1_state_reg[1]_0 ;
  input axi_last_V_reg_189;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__2_n_5 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__2_n_5 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__4_n_5;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__3_n_5;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__4_n_5 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg_n_5_[0] ;
  wire \B_V_data_1_state_reg_n_5_[1] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire axi_last_V_reg_189;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1__2 
       (.I0(axi_last_V_reg_189),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__2_n_5 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__2_n_5 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1__2 
       (.I0(axi_last_V_reg_189),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__2_n_5 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__2_n_5 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__4
       (.I0(\B_V_data_1_state_reg_n_5_[0] ),
        .I1(m_axis_video_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__4_n_5));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__4_n_5),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__3
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(\B_V_data_1_state_reg_n_5_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__3_n_5));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__3_n_5),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hAECC)) 
    \B_V_data_1_state[0]_i_1__4 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(m_axis_video_TREADY),
        .I3(\B_V_data_1_state_reg_n_5_[1] ),
        .O(\B_V_data_1_state[0]_i_1__4_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \B_V_data_1_state[1]_i_1__4 
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__4_n_5 ),
        .Q(\B_V_data_1_state_reg_n_5_[0] ),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_5_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_video_TLAST));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_regslice_both" *) 
module bd_3a92_hcr_0_regslice_both__parameterized1_10
   (m_axis_video_TUSER,
    ap_rst_n_inv,
    ap_clk,
    m_axis_video_TREADY,
    \B_V_data_1_state_reg[1]_0 ,
    \B_V_data_1_payload_A_reg[0]_0 );
  output [0:0]m_axis_video_TUSER;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_video_TREADY;
  input \B_V_data_1_state_reg[1]_0 ;
  input \B_V_data_1_payload_A_reg[0]_0 ;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__1_n_5 ;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__1_n_5 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__3_n_5;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__2_n_5;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__3_n_5 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg_n_5_[0] ;
  wire \B_V_data_1_state_reg_n_5_[1] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1__1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__1_n_5 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__1_n_5 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1__1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__1_n_5 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__1_n_5 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__3
       (.I0(\B_V_data_1_state_reg_n_5_[0] ),
        .I1(m_axis_video_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__3_n_5));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__3_n_5),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__2
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(\B_V_data_1_state_reg_n_5_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__2_n_5));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__2_n_5),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hAECC)) 
    \B_V_data_1_state[0]_i_1__3 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(m_axis_video_TREADY),
        .I3(\B_V_data_1_state_reg_n_5_[1] ),
        .O(\B_V_data_1_state[0]_i_1__3_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \B_V_data_1_state[1]_i_1__3 
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__3_n_5 ),
        .Q(\B_V_data_1_state_reg_n_5_[0] ),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_5_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_TUSER[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_video_TUSER));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_regslice_both" *) 
module bd_3a92_hcr_0_regslice_both__parameterized1_13
   (\axi_last_V_2_reg_120_reg[0] ,
    s_axis_video_TLAST_int_regslice,
    \B_V_data_1_payload_B_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel0,
    s_axis_video_TVALID,
    axi_last_V_2_reg_120,
    \axi_last_V_fu_86_reg[0] ,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
    s_axis_video_TVALID_int_regslice,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out,
    s_axis_video_TLAST);
  output \axi_last_V_2_reg_120_reg[0] ;
  output s_axis_video_TLAST_int_regslice;
  output \B_V_data_1_payload_B_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel0;
  input s_axis_video_TVALID;
  input axi_last_V_2_reg_120;
  input \axi_last_V_fu_86_reg[0] ;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  input s_axis_video_TVALID_int_regslice;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out;
  input [0:0]s_axis_video_TLAST;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__0_n_5 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__0_n_5 ;
  wire \B_V_data_1_payload_B_reg[0]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_i_1__0_n_5;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_5;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__2_n_5 ;
  wire \B_V_data_1_state_reg_n_5_[0] ;
  wire \B_V_data_1_state_reg_n_5_[1] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire axi_last_V_2_reg_120;
  wire \axi_last_V_2_reg_120_reg[0] ;
  wire \axi_last_V_fu_86_reg[0] ;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1__0 
       (.I0(s_axis_video_TLAST),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__0_n_5 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__0_n_5 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1__0 
       (.I0(s_axis_video_TLAST),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__0_n_5 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__0_n_5 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(B_V_data_1_sel0),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_5));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_5),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(\B_V_data_1_state_reg_n_5_[1] ),
        .I1(s_axis_video_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_5));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_5),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \B_V_data_1_state[0]_i_1__2 
       (.I0(\B_V_data_1_state_reg_n_5_[1] ),
        .I1(s_axis_video_TVALID),
        .I2(\B_V_data_1_state_reg_n_5_[0] ),
        .I3(B_V_data_1_sel0),
        .O(\B_V_data_1_state[0]_i_1__2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_1__2 
       (.I0(\B_V_data_1_state_reg_n_5_[0] ),
        .I1(B_V_data_1_sel0),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_5_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__2_n_5 ),
        .Q(\B_V_data_1_state_reg_n_5_[0] ),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_5_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \axi_last_V_fu_48[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .I3(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I4(s_axis_video_TVALID_int_regslice),
        .I5(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_V_out),
        .O(\B_V_data_1_payload_B_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_last_V_fu_86[0]_i_1 
       (.I0(axi_last_V_2_reg_120),
        .I1(\axi_last_V_fu_86_reg[0] ),
        .I2(B_V_data_1_payload_B),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_A),
        .O(\axi_last_V_2_reg_120_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V_reg_80[0]_i_2 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(s_axis_video_TLAST_int_regslice));
endmodule

(* ORIG_REF_NAME = "bd_3a92_hcr_0_regslice_both" *) 
module bd_3a92_hcr_0_regslice_both__parameterized1_14
   (D,
    ap_done_reg1,
    \B_V_data_1_state_reg[0]_0 ,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
    ap_done_cache,
    s_axis_video_TVALID_int_regslice,
    B_V_data_1_sel0,
    s_axis_video_TVALID,
    s_axis_video_TUSER);
  output [0:0]D;
  output ap_done_reg1;
  output \B_V_data_1_state_reg[0]_0 ;
  output \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [1:0]Q;
  input grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  input ap_done_cache;
  input s_axis_video_TVALID_int_regslice;
  input B_V_data_1_sel0;
  input s_axis_video_TVALID;
  input [0:0]s_axis_video_TUSER;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_5 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_5 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel0;
  wire B_V_data_1_sel_rd_i_1_n_5;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_5;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_5 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg_n_5_[0] ;
  wire \B_V_data_1_state_reg_n_5_[1] ;
  wire [0:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_reg1;
  wire ap_rst_n_inv;
  wire grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(s_axis_video_TUSER),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_5 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_5 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(s_axis_video_TUSER),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_5_[1] ),
        .I3(\B_V_data_1_state_reg_n_5_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_5 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_5 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(B_V_data_1_sel0),
        .I1(\B_V_data_1_state_reg_n_5_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_5));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_5),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(\B_V_data_1_state_reg_n_5_[1] ),
        .I1(s_axis_video_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_5));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_5),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(\B_V_data_1_state_reg_n_5_[1] ),
        .I1(s_axis_video_TVALID),
        .I2(\B_V_data_1_state_reg_n_5_[0] ),
        .I3(B_V_data_1_sel0),
        .O(\B_V_data_1_state[0]_i_1__1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(\B_V_data_1_state_reg_n_5_[0] ),
        .I1(B_V_data_1_sel0),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_5_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_5 ),
        .Q(\B_V_data_1_state_reg_n_5_[0] ),
        .R(ap_rst_n_inv));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_5_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_reg1),
        .I2(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[1]),
        .O(D));
  LUT5 #(
    .INIT(32'h88800080)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I2(B_V_data_1_payload_A),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_B),
        .O(ap_done_reg1));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    ap_done_cache_i_1
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(B_V_data_1_payload_A),
        .I2(B_V_data_1_sel),
        .I3(B_V_data_1_payload_B),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I5(ap_done_cache),
        .O(\B_V_data_1_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAAFFFFAAAA)) 
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(B_V_data_1_payload_B),
        .I2(B_V_data_1_sel),
        .I3(B_V_data_1_payload_A),
        .I4(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg),
        .I5(s_axis_video_TVALID_int_regslice),
        .O(\ap_CS_fsm_reg[1] ));
endmodule

module bd_3a92_hcr_0_start_for_MultiPixStream2AXIvideo_U0
   (start_for_MultiPixStream2AXIvideo_U0_full_n,
    MultiPixStream2AXIvideo_U0_ap_start,
    ap_clk,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    \mOutPtr_reg[1]_0 ,
    v_hcresampler_core_U0_ap_start,
    start_once_reg,
    ap_rst_n_inv);
  output start_for_MultiPixStream2AXIvideo_U0_full_n;
  output MultiPixStream2AXIvideo_U0_ap_start;
  input ap_clk;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input \mOutPtr_reg[1]_0 ;
  input v_hcresampler_core_U0_ap_start;
  input start_once_reg;
  input ap_rst_n_inv;

  wire MultiPixStream2AXIvideo_U0_ap_start;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1_n_5;
  wire internal_full_n_i_1_n_5;
  wire internal_full_n_i_2_n_5;
  wire \mOutPtr[0]_i_1_n_5 ;
  wire \mOutPtr[1]_i_1_n_5 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_5_[0] ;
  wire \mOutPtr_reg_n_5_[1] ;
  wire start_for_MultiPixStream2AXIvideo_U0_full_n;
  wire start_once_reg;
  wire v_hcresampler_core_U0_ap_start;

  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_5_[1] ),
        .I1(\mOutPtr_reg_n_5_[0] ),
        .I2(\mOutPtr_reg[0]_0 ),
        .I3(internal_full_n_i_2_n_5),
        .I4(MultiPixStream2AXIvideo_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_5),
        .Q(MultiPixStream2AXIvideo_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I2(\mOutPtr_reg_n_5_[1] ),
        .I3(\mOutPtr_reg_n_5_[0] ),
        .I4(internal_full_n_i_2_n_5),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(internal_full_n_i_1_n_5));
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2
       (.I0(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I1(v_hcresampler_core_U0_ap_start),
        .I2(start_once_reg),
        .O(internal_full_n_i_2_n_5));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_5),
        .Q(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777877788887888)) 
    \mOutPtr[0]_i_1 
       (.I0(MultiPixStream2AXIvideo_U0_ap_start),
        .I1(\mOutPtr_reg[0]_0 ),
        .I2(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I3(v_hcresampler_core_U0_ap_start),
        .I4(start_once_reg),
        .I5(\mOutPtr_reg_n_5_[0] ),
        .O(\mOutPtr[0]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hBAAADFFF45552000)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_5_[0] ),
        .I1(start_once_reg),
        .I2(v_hcresampler_core_U0_ap_start),
        .I3(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(\mOutPtr_reg_n_5_[1] ),
        .O(\mOutPtr[1]_i_1_n_5 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_5 ),
        .Q(\mOutPtr_reg_n_5_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_5 ),
        .Q(\mOutPtr_reg_n_5_[1] ),
        .S(ap_rst_n_inv));
endmodule

module bd_3a92_hcr_0_start_for_v_hcresampler_core_U0
   (start_for_v_hcresampler_core_U0_full_n,
    v_hcresampler_core_U0_ap_start,
    internal_empty_n_reg_0,
    ap_clk,
    start_for_MultiPixStream2AXIvideo_U0_full_n,
    start_once_reg,
    internal_empty_n_reg_1,
    ap_rst_n,
    AXIvideo2MultiPixStream_U0_ap_start,
    start_once_reg_0,
    Q,
    CO,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n_inv);
  output start_for_v_hcresampler_core_U0_full_n;
  output v_hcresampler_core_U0_ap_start;
  output internal_empty_n_reg_0;
  input ap_clk;
  input start_for_MultiPixStream2AXIvideo_U0_full_n;
  input start_once_reg;
  input internal_empty_n_reg_1;
  input ap_rst_n;
  input AXIvideo2MultiPixStream_U0_ap_start;
  input start_once_reg_0;
  input [0:0]Q;
  input [0:0]CO;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n_inv;

  wire AXIvideo2MultiPixStream_U0_ap_start;
  wire [0:0]CO;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__0_n_5;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__0_n_5;
  wire internal_full_n_i_2__0_n_5;
  wire \mOutPtr[0]_i_1_n_5 ;
  wire \mOutPtr[1]_i_1_n_5 ;
  wire \mOutPtr[1]_i_2_n_5 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg_n_5_[0] ;
  wire \mOutPtr_reg_n_5_[1] ;
  wire start_for_MultiPixStream2AXIvideo_U0_full_n;
  wire start_for_v_hcresampler_core_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;
  wire v_hcresampler_core_U0_ap_start;

  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    int_ap_idle_i_2
       (.I0(v_hcresampler_core_U0_ap_start),
        .I1(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I2(start_once_reg),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_5_[1] ),
        .I1(\mOutPtr_reg_n_5_[0] ),
        .I2(internal_empty_n_reg_1),
        .I3(\mOutPtr[1]_i_2_n_5 ),
        .I4(v_hcresampler_core_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_5),
        .Q(v_hcresampler_core_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__0
       (.I0(ap_rst_n),
        .I1(start_for_v_hcresampler_core_U0_full_n),
        .I2(\mOutPtr_reg_n_5_[1] ),
        .I3(\mOutPtr_reg_n_5_[0] ),
        .I4(\mOutPtr[1]_i_2_n_5 ),
        .I5(internal_full_n_i_2__0_n_5),
        .O(internal_full_n_i_1__0_n_5));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__0
       (.I0(v_hcresampler_core_U0_ap_start),
        .I1(Q),
        .I2(CO),
        .O(internal_full_n_i_2__0_n_5));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_5),
        .Q(start_for_v_hcresampler_core_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7F807F80807F80)) 
    \mOutPtr[0]_i_1 
       (.I0(v_hcresampler_core_U0_ap_start),
        .I1(Q),
        .I2(CO),
        .I3(\mOutPtr_reg[0]_0 ),
        .I4(start_once_reg_0),
        .I5(\mOutPtr_reg_n_5_[0] ),
        .O(\mOutPtr[0]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hE777777718888888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_5_[0] ),
        .I1(\mOutPtr[1]_i_2_n_5 ),
        .I2(CO),
        .I3(Q),
        .I4(v_hcresampler_core_U0_ap_start),
        .I5(\mOutPtr_reg_n_5_[1] ),
        .O(\mOutPtr[1]_i_1_n_5 ));
  LUT3 #(
    .INIT(8'h08)) 
    \mOutPtr[1]_i_2 
       (.I0(start_for_v_hcresampler_core_U0_full_n),
        .I1(AXIvideo2MultiPixStream_U0_ap_start),
        .I2(start_once_reg_0),
        .O(\mOutPtr[1]_i_2_n_5 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_5 ),
        .Q(\mOutPtr_reg_n_5_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_5 ),
        .Q(\mOutPtr_reg_n_5_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* C_S_AXI_CTRL_ADDR_WIDTH = "11" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* hls_module = "yes" *) 
module bd_3a92_hcr_0_v_hcresampler
   (s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWADDR,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    m_axis_video_TVALID,
    m_axis_video_TREADY);
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [10:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  input [10:0]s_axi_CTRL_ARADDR;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  output [1:0]s_axi_CTRL_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;

  wire \<const0> ;
  wire AXIvideo2MultiPixStream_U0_ap_start;
  wire AXIvideo2MultiPixStream_U0_n_10;
  wire AXIvideo2MultiPixStream_U0_n_9;
  wire [23:0]AXIvideo2MultiPixStream_U0_srcYUV_din;
  wire CTRL_s_axi_U_n_113;
  wire CTRL_s_axi_U_n_33;
  wire CTRL_s_axi_U_n_35;
  wire CTRL_s_axi_U_n_36;
  wire CTRL_s_axi_U_n_38;
  wire CTRL_s_axi_U_n_39;
  wire CTRL_s_axi_U_n_40;
  wire CTRL_s_axi_U_n_41;
  wire CTRL_s_axi_U_n_42;
  wire CTRL_s_axi_U_n_43;
  wire MultiPixStream2AXIvideo_U0_ap_start;
  wire MultiPixStream2AXIvideo_U0_n_10;
  wire MultiPixStream2AXIvideo_U0_n_6;
  wire MultiPixStream2AXIvideo_U0_n_8;
  wire MultiPixStream2AXIvideo_U0_n_9;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/cmp335_reg_1338 ;
  wire \grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln168_reg_1298_pp0_iter13_reg ;
  wire \grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/tmp_5_reg_1314_pp0_iter13_reg ;
  wire [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  wire [10:0]height;
  wire icmp_ln145_fu_293_p2;
  wire icmp_ln157_fu_363_p2;
  wire icmp_ln470_fu_230_p2;
  wire interrupt;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire or_ln350_reg_1380_pp0_iter4_reg;
  wire or_ln350_reg_1380_pp0_iter6_reg;
  wire or_ln350_reg_1380_pp0_iter8_reg;
  wire [23:0]outYUV_dout;
  wire outYUV_empty_n;
  wire outYUV_full_n;
  wire \regslice_both_m_axis_video_V_data_V_U/B_V_data_1_sel_wr01_out ;
  wire [10:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [10:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [15:0]\^s_axi_CTRL_RDATA ;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire [23:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire [15:0]sext_ln1540_1_fu_757_p1;
  wire [15:0]sext_ln1540_2_fu_772_p1;
  wire [15:0]sext_ln1540_3_fu_793_p1;
  wire [15:0]sext_ln1540_fu_692_p1;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire [23:0]srcYUV_dout;
  wire srcYUV_empty_n;
  wire srcYUV_full_n;
  wire start_for_MultiPixStream2AXIvideo_U0_full_n;
  wire start_for_v_hcresampler_core_U0_U_n_7;
  wire start_for_v_hcresampler_core_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_1;
  wire [10:0]sub_fu_149_p2;
  wire v_hcresampler_core_U0_ap_start;
  wire v_hcresampler_core_U0_n_14;
  wire v_hcresampler_core_U0_n_15;
  wire v_hcresampler_core_U0_n_16;
  wire v_hcresampler_core_U0_n_17;
  wire v_hcresampler_core_U0_n_19;
  wire v_hcresampler_core_U0_n_20;
  wire v_hcresampler_core_U0_n_56;
  wire v_hcresampler_core_U0_n_57;
  wire [23:0]v_hcresampler_core_U0_outYUV_din;
  wire [10:0]width;
  wire [10:0]y_fu_92_reg;

  assign m_axis_video_TDEST[0] = \<const0> ;
  assign m_axis_video_TID[0] = \<const0> ;
  assign m_axis_video_TKEEP[2] = \<const0> ;
  assign m_axis_video_TKEEP[1] = \<const0> ;
  assign m_axis_video_TKEEP[0] = \<const0> ;
  assign m_axis_video_TSTRB[2] = \<const0> ;
  assign m_axis_video_TSTRB[1] = \<const0> ;
  assign m_axis_video_TSTRB[0] = \<const0> ;
  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_RDATA[15:0] = \^s_axi_CTRL_RDATA [15:0];
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  bd_3a92_hcr_0_AXIvideo2MultiPixStream AXIvideo2MultiPixStream_U0
       (.AXIvideo2MultiPixStream_U0_ap_start(AXIvideo2MultiPixStream_U0_ap_start),
        .\B_V_data_1_state_reg[1] (s_axis_video_TREADY),
        .CO(icmp_ln470_fu_230_p2),
        .Q({ap_CS_fsm_state5,AXIvideo2MultiPixStream_U0_n_9}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_V_fu_82_reg[23] (AXIvideo2MultiPixStream_U0_srcYUV_din),
        .\cols_reg_305_reg[10]_0 (width),
        .internal_full_n_reg(AXIvideo2MultiPixStream_U0_n_10),
        .\mOutPtr_reg[2] (v_hcresampler_core_U0_n_19),
        .\rows_reg_300_reg[10]_0 (height),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .shiftReg_ce(shiftReg_ce),
        .srcYUV_full_n(srcYUV_full_n),
        .start_for_v_hcresampler_core_U0_full_n(start_for_v_hcresampler_core_U0_full_n),
        .start_once_reg(start_once_reg));
  bd_3a92_hcr_0_CTRL_s_axi CTRL_s_axi_U
       (.AXIvideo2MultiPixStream_U0_ap_start(AXIvideo2MultiPixStream_U0_ap_start),
        .B(sext_ln1540_1_fu_757_p1),
        .CO(icmp_ln157_fu_363_p2),
        .D({sub_fu_149_p2[10:2],CTRL_s_axi_U_n_113,sub_fu_149_p2[0]}),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_WREADY),
        .MultiPixStream2AXIvideo_U0_ap_start(MultiPixStream2AXIvideo_U0_ap_start),
        .Q(width),
        .S({v_hcresampler_core_U0_n_56,v_hcresampler_core_U0_n_57}),
        .\ap_CS_fsm_reg[1] (CTRL_s_axi_U_n_39),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .cmp335_reg_1338(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/cmp335_reg_1338 ),
        .\cmp335_reg_1338_reg[0] (sext_ln1540_fu_692_p1),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth),
        .icmp_ln145_fu_293_p2(icmp_ln145_fu_293_p2),
        .icmp_ln157_fu_363_p2_carry(y_fu_92_reg),
        .icmp_ln168_reg_1298_pp0_iter13_reg(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln168_reg_1298_pp0_iter13_reg ),
        .int_ap_idle_reg_0(MultiPixStream2AXIvideo_U0_n_6),
        .int_ap_idle_reg_1(start_for_v_hcresampler_core_U0_U_n_7),
        .int_ap_start_reg_0(CTRL_s_axi_U_n_33),
        .int_ap_start_reg_1({ap_CS_fsm_state5,AXIvideo2MultiPixStream_U0_n_9}),
        .int_ap_start_reg_2(icmp_ln470_fu_230_p2),
        .\int_coefs_0_0_reg[15]_0 (sext_ln1540_3_fu_793_p1),
        .\int_coefs_0_1_reg[15]_0 (sext_ln1540_2_fu_772_p1),
        .\int_height_reg[10]_0 ({CTRL_s_axi_U_n_40,CTRL_s_axi_U_n_41,CTRL_s_axi_U_n_42,CTRL_s_axi_U_n_43}),
        .\int_height_reg[10]_1 (height),
        .\int_input_video_format_reg[1]_0 (CTRL_s_axi_U_n_38),
        .\int_input_video_format_reg[7]_0 (CTRL_s_axi_U_n_36),
        .\int_isr_reg[0]_0 (MultiPixStream2AXIvideo_U0_n_9),
        .internal_empty_n_reg({ap_CS_fsm_state2,v_hcresampler_core_U0_n_14}),
        .interrupt(interrupt),
        .or_ln350_reg_1380_pp0_iter4_reg(or_ln350_reg_1380_pp0_iter4_reg),
        .or_ln350_reg_1380_pp0_iter6_reg(or_ln350_reg_1380_pp0_iter6_reg),
        .or_ln350_reg_1380_pp0_iter8_reg(or_ln350_reg_1380_pp0_iter8_reg),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR[6:0]),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR[6:0]),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA(\^s_axi_CTRL_RDATA ),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA[15:0]),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB[1:0]),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
        .start_for_v_hcresampler_core_U0_full_n(start_for_v_hcresampler_core_U0_full_n),
        .start_once_reg(start_once_reg),
        .tmp_5_reg_1314_pp0_iter13_reg(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/tmp_5_reg_1314_pp0_iter13_reg ),
        .\tmp_5_reg_1314_pp0_iter13_reg_reg[0] (CTRL_s_axi_U_n_35));
  GND GND
       (.G(\<const0> ));
  bd_3a92_hcr_0_MultiPixStream2AXIvideo MultiPixStream2AXIvideo_U0
       (.B_V_data_1_sel_wr01_out(\regslice_both_m_axis_video_V_data_V_U/B_V_data_1_sel_wr01_out ),
        .\B_V_data_1_state_reg[0] (m_axis_video_TVALID),
        .D({sub_fu_149_p2[10:2],CTRL_s_axi_U_n_113,sub_fu_149_p2[0]}),
        .E(MultiPixStream2AXIvideo_U0_n_10),
        .MultiPixStream2AXIvideo_U0_ap_start(MultiPixStream2AXIvideo_U0_ap_start),
        .Q(MultiPixStream2AXIvideo_U0_n_6),
        .\ap_CS_fsm_reg[5]_0 (MultiPixStream2AXIvideo_U0_n_9),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cols_reg_186_reg[10]_0 (width),
        .internal_empty_n_reg(MultiPixStream2AXIvideo_U0_n_8),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .out(outYUV_dout),
        .outYUV_empty_n(outYUV_empty_n),
        .\rows_reg_181_reg[10]_0 (height),
        .shiftReg_ce(shiftReg_ce_0));
  bd_3a92_hcr_0_fifo_w24_d16_S outYUV_U
       (.B_V_data_1_sel_wr01_out(\regslice_both_m_axis_video_V_data_V_U/B_V_data_1_sel_wr01_out ),
        .E(MultiPixStream2AXIvideo_U0_n_10),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in(v_hcresampler_core_U0_outYUV_din),
        .\mOutPtr_reg[4]_0 (v_hcresampler_core_U0_n_17),
        .out(outYUV_dout),
        .outYUV_empty_n(outYUV_empty_n),
        .outYUV_full_n(outYUV_full_n),
        .shiftReg_ce(shiftReg_ce_0));
  bd_3a92_hcr_0_fifo_w24_d16_S_0 srcYUV_U
       (.E(v_hcresampler_core_U0_n_15),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in(AXIvideo2MultiPixStream_U0_srcYUV_din),
        .internal_empty_n_reg_0(v_hcresampler_core_U0_n_16),
        .internal_empty_n_reg_1(v_hcresampler_core_U0_n_20),
        .internal_full_n_reg_0(v_hcresampler_core_U0_n_19),
        .\mOutPtr_reg[2]_0 (AXIvideo2MultiPixStream_U0_n_10),
        .out(srcYUV_dout),
        .shiftReg_ce(shiftReg_ce),
        .srcYUV_empty_n(srcYUV_empty_n),
        .srcYUV_full_n(srcYUV_full_n));
  bd_3a92_hcr_0_start_for_MultiPixStream2AXIvideo_U0 start_for_MultiPixStream2AXIvideo_U0_U
       (.MultiPixStream2AXIvideo_U0_ap_start(MultiPixStream2AXIvideo_U0_ap_start),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\mOutPtr_reg[0]_0 (MultiPixStream2AXIvideo_U0_n_9),
        .\mOutPtr_reg[1]_0 (MultiPixStream2AXIvideo_U0_n_8),
        .start_for_MultiPixStream2AXIvideo_U0_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .start_once_reg(start_once_reg_1),
        .v_hcresampler_core_U0_ap_start(v_hcresampler_core_U0_ap_start));
  bd_3a92_hcr_0_start_for_v_hcresampler_core_U0 start_for_v_hcresampler_core_U0_U
       (.AXIvideo2MultiPixStream_U0_ap_start(AXIvideo2MultiPixStream_U0_ap_start),
        .CO(icmp_ln157_fu_363_p2),
        .Q(ap_CS_fsm_state2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_empty_n_reg_0(start_for_v_hcresampler_core_U0_U_n_7),
        .internal_empty_n_reg_1(CTRL_s_axi_U_n_39),
        .\mOutPtr_reg[0]_0 (CTRL_s_axi_U_n_33),
        .start_for_MultiPixStream2AXIvideo_U0_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .start_for_v_hcresampler_core_U0_full_n(start_for_v_hcresampler_core_U0_full_n),
        .start_once_reg(start_once_reg_1),
        .start_once_reg_0(start_once_reg),
        .v_hcresampler_core_U0_ap_start(v_hcresampler_core_U0_ap_start));
  bd_3a92_hcr_0_v_hcresampler_core v_hcresampler_core_U0
       (.B(sext_ln1540_1_fu_757_p1),
        .B_V_data_1_sel_wr01_out(\regslice_both_m_axis_video_V_data_V_U/B_V_data_1_sel_wr01_out ),
        .CO(icmp_ln157_fu_363_p2),
        .E(v_hcresampler_core_U0_n_15),
        .Q({ap_CS_fsm_state2,v_hcresampler_core_U0_n_14}),
        .S({v_hcresampler_core_U0_n_56,v_hcresampler_core_U0_n_57}),
        .\ap_CS_fsm_reg[3]_0 (v_hcresampler_core_U0_n_17),
        .\ap_CS_fsm_reg[3]_1 (v_hcresampler_core_U0_n_19),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(v_hcresampler_core_U0_n_20),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .cmp335_reg_1338(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/cmp335_reg_1338 ),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth),
        .icmp_ln145_fu_293_p2(icmp_ln145_fu_293_p2),
        .icmp_ln168_fu_403_p2_carry__0(width),
        .icmp_ln168_reg_1298_pp0_iter13_reg(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln168_reg_1298_pp0_iter13_reg ),
        .in(v_hcresampler_core_U0_outYUV_din),
        .internal_empty_n_reg(v_hcresampler_core_U0_n_16),
        .\mOutPtr_reg[0] (CTRL_s_axi_U_n_35),
        .or_ln350_reg_1380_pp0_iter4_reg(or_ln350_reg_1380_pp0_iter4_reg),
        .or_ln350_reg_1380_pp0_iter6_reg(or_ln350_reg_1380_pp0_iter6_reg),
        .or_ln350_reg_1380_pp0_iter8_reg(or_ln350_reg_1380_pp0_iter8_reg),
        .out(srcYUV_dout),
        .outYUV_full_n(outYUV_full_n),
        .p_reg_reg(sext_ln1540_fu_692_p1),
        .p_reg_reg_0(sext_ln1540_2_fu_772_p1),
        .p_reg_reg_1(sext_ln1540_3_fu_793_p1),
        .\select_ln262_reg_1554_reg[0] (CTRL_s_axi_U_n_38),
        .shiftReg_ce(shiftReg_ce_0),
        .shiftReg_ce_0(shiftReg_ce),
        .srcYUV_empty_n(srcYUV_empty_n),
        .start_for_MultiPixStream2AXIvideo_U0_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .start_once_reg(start_once_reg_1),
        .start_once_reg_reg_0({CTRL_s_axi_U_n_40,CTRL_s_axi_U_n_41,CTRL_s_axi_U_n_42,CTRL_s_axi_U_n_43}),
        .tmp_5_reg_1314_pp0_iter13_reg(\grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/tmp_5_reg_1314_pp0_iter13_reg ),
        .\tmp_5_reg_1314_reg[0] (CTRL_s_axi_U_n_36),
        .v_hcresampler_core_U0_ap_start(v_hcresampler_core_U0_ap_start),
        .\y_fu_92_reg[10]_0 (y_fu_92_reg));
endmodule

module bd_3a92_hcr_0_v_hcresampler_core
   (icmp_ln168_reg_1298_pp0_iter13_reg,
    or_ln350_reg_1380_pp0_iter4_reg,
    or_ln350_reg_1380_pp0_iter6_reg,
    or_ln350_reg_1380_pp0_iter8_reg,
    CO,
    cmp335_reg_1338,
    start_once_reg,
    tmp_5_reg_1314_pp0_iter13_reg,
    Q,
    E,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[3]_0 ,
    shiftReg_ce,
    \ap_CS_fsm_reg[3]_1 ,
    ap_enable_reg_pp0_iter1_reg,
    \y_fu_92_reg[10]_0 ,
    in,
    S,
    ap_clk,
    ap_rst_n_inv,
    p_reg_reg,
    B,
    p_reg_reg_0,
    p_reg_reg_1,
    start_once_reg_reg_0,
    ap_rst_n,
    start_for_MultiPixStream2AXIvideo_U0_full_n,
    v_hcresampler_core_U0_ap_start,
    shiftReg_ce_0,
    srcYUV_empty_n,
    B_V_data_1_sel_wr01_out,
    outYUV_full_n,
    \mOutPtr_reg[0] ,
    \tmp_5_reg_1314_reg[0] ,
    icmp_ln145_fu_293_p2,
    \select_ln262_reg_1554_reg[0] ,
    icmp_ln168_fu_403_p2_carry__0,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth,
    out);
  output icmp_ln168_reg_1298_pp0_iter13_reg;
  output or_ln350_reg_1380_pp0_iter4_reg;
  output or_ln350_reg_1380_pp0_iter6_reg;
  output or_ln350_reg_1380_pp0_iter8_reg;
  output [0:0]CO;
  output cmp335_reg_1338;
  output start_once_reg;
  output tmp_5_reg_1314_pp0_iter13_reg;
  output [1:0]Q;
  output [0:0]E;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[3]_0 ;
  output shiftReg_ce;
  output \ap_CS_fsm_reg[3]_1 ;
  output ap_enable_reg_pp0_iter1_reg;
  output [10:0]\y_fu_92_reg[10]_0 ;
  output [23:0]in;
  output [1:0]S;
  input ap_clk;
  input ap_rst_n_inv;
  input [15:0]p_reg_reg;
  input [15:0]B;
  input [15:0]p_reg_reg_0;
  input [15:0]p_reg_reg_1;
  input [3:0]start_once_reg_reg_0;
  input ap_rst_n;
  input start_for_MultiPixStream2AXIvideo_U0_full_n;
  input v_hcresampler_core_U0_ap_start;
  input shiftReg_ce_0;
  input srcYUV_empty_n;
  input B_V_data_1_sel_wr01_out;
  input outYUV_full_n;
  input \mOutPtr_reg[0] ;
  input \tmp_5_reg_1314_reg[0] ;
  input icmp_ln145_fu_293_p2;
  input \select_ln262_reg_1554_reg[0] ;
  input [10:0]icmp_ln168_fu_403_p2_carry__0;
  input [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  input [23:0]out;

  wire [15:0]B;
  wire B_V_data_1_sel_wr01_out;
  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]S;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg[3]_1 ;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire cmp335_reg_1338;
  wire [7:0]filt_res0_fu_84;
  wire [7:0]filt_res1_fu_88;
  wire filt_res1_fu_880;
  wire grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o;
  wire [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  wire grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_n_169;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o;
  wire [7:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o;
  wire icmp_ln145_fu_293_p2;
  wire icmp_ln157_fu_363_p2_carry_n_6;
  wire icmp_ln157_fu_363_p2_carry_n_7;
  wire icmp_ln157_fu_363_p2_carry_n_8;
  wire [10:0]icmp_ln168_fu_403_p2_carry__0;
  wire icmp_ln168_reg_1298_pp0_iter13_reg;
  wire [23:0]in;
  wire internal_empty_n_reg;
  wire \mOutPtr_reg[0] ;
  wire or_ln350_reg_1380_pp0_iter4_reg;
  wire or_ln350_reg_1380_pp0_iter6_reg;
  wire or_ln350_reg_1380_pp0_iter8_reg;
  wire [23:0]out;
  wire outYUV_full_n;
  wire [7:0]p_0_0_0_0_0185443_lcssa489_fu_116;
  wire [7:0]p_0_0_0_0_0185445448_lcssa492_fu_120;
  wire [7:0]p_0_0_0_0_0185_1455_lcssa501_fu_132;
  wire [7:0]p_0_0_0_0_0185_2461_lcssa507_fu_140;
  wire [7:0]p_0_0_0_0_0193428_lcssa471_fu_96;
  wire [7:0]p_0_0_0_0_0449_lcssa495_fu_124;
  wire p_0_0_0_0_0449_lcssa495_fu_1240;
  wire [7:0]p_0_0_0_0_0451454_lcssa498_fu_128;
  wire [7:0]p_0_0_0_0_0_1458_lcssa504_fu_136;
  wire [7:0]p_0_0_0_0_0_2465_lcssa510_fu_144;
  wire [7:0]p_0_1_0_0_0430_lcssa474_fu_100;
  wire [7:0]p_0_1_0_0_0437_lcssa483_fu_108;
  wire [7:0]p_0_1_0_0_0441_lcssa486_fu_112;
  wire p_0_1_0_0_0441_lcssa486_fu_1120;
  wire [7:0]p_0_2_0_0_0432_lcssa477_fu_104;
  wire p_0_2_0_0_0432_lcssa477_fu_1040;
  wire [15:0]p_reg_reg;
  wire [15:0]p_reg_reg_0;
  wire [15:0]p_reg_reg_1;
  wire [7:0]pixbuf_y_val_V_1_fu_152;
  wire pixbuf_y_val_V_1_fu_1520;
  wire [7:0]pixbuf_y_val_V_1_fu_178;
  wire [7:0]pixbuf_y_val_V_2_fu_156;
  wire pixbuf_y_val_V_2_fu_1560;
  wire [7:0]pixbuf_y_val_V_2_load_reg_600;
  wire [7:0]pixbuf_y_val_V_3_fu_160;
  wire [7:0]pixbuf_y_val_V_3_load_reg_605;
  wire [7:0]pixbuf_y_val_V_4_fu_164;
  wire [7:0]pixbuf_y_val_V_4_load_reg_610;
  wire [7:0]pixbuf_y_val_V_5_fu_182;
  wire [7:0]pixbuf_y_val_V_6_fu_186;
  wire [7:0]pixbuf_y_val_V_7_fu_190;
  wire [7:0]pixbuf_y_val_V_9_reg_1533;
  wire [7:0]pixbuf_y_val_V_fu_148;
  wire [7:0]pixbuf_y_val_V_load_reg_595;
  wire \select_ln262_reg_1554_reg[0] ;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire srcYUV_empty_n;
  wire start_for_MultiPixStream2AXIvideo_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1__0_n_5;
  wire [3:0]start_once_reg_reg_0;
  wire tmp_5_reg_1314_pp0_iter13_reg;
  wire \tmp_5_reg_1314_reg[0] ;
  wire [7:0]trunc_ln145_1_reg_1324_pp0_iter12_reg;
  wire [7:0]trunc_ln145_2_reg_1332_pp0_iter12_reg;
  wire [7:0]trunc_ln145_reg_1318_pp0_iter12_reg;
  wire v_hcresampler_core_U0_ap_start;
  wire [10:0]y_2_fu_368_p2;
  wire \y_fu_92[10]_i_3_n_5 ;
  wire [10:0]\y_fu_92_reg[10]_0 ;
  wire [3:0]NLW_icmp_ln157_fu_363_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF570057005700)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(v_hcresampler_core_U0_ap_start),
        .I1(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I2(start_once_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(CO),
        .O(ap_NS_fsm[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(Q[1]),
        .I1(CO),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  FDRE \filt_res0_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[0]),
        .Q(filt_res0_fu_84[0]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[1]),
        .Q(filt_res0_fu_84[1]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[2]),
        .Q(filt_res0_fu_84[2]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[3]),
        .Q(filt_res0_fu_84[3]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[4]),
        .Q(filt_res0_fu_84[4]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[5]),
        .Q(filt_res0_fu_84[5]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[6]),
        .Q(filt_res0_fu_84[6]),
        .R(1'b0));
  FDRE \filt_res0_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o[7]),
        .Q(filt_res0_fu_84[7]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[0] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[0]),
        .Q(filt_res1_fu_88[0]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[1] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[1]),
        .Q(filt_res1_fu_88[1]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[2] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[2]),
        .Q(filt_res1_fu_88[2]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[3] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[3]),
        .Q(filt_res1_fu_88[3]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[4] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[4]),
        .Q(filt_res1_fu_88[4]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[5] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[5]),
        .Q(filt_res1_fu_88[5]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[6] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[6]),
        .Q(filt_res1_fu_88[6]),
        .R(1'b0));
  FDRE \filt_res1_fu_88_reg[7] 
       (.C(ap_clk),
        .CE(filt_res1_fu_880),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o[7]),
        .Q(filt_res1_fu_88[7]),
        .R(1'b0));
  bd_3a92_hcr_0_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2 grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240
       (.B(B),
        .\B_V_data_1_payload_B_reg[15] (p_0_1_0_0_0430_lcssa474_fu_100),
        .\B_V_data_1_payload_B_reg[23] (p_0_2_0_0_0432_lcssa477_fu_104),
        .\B_V_data_1_payload_B_reg[7] (p_0_0_0_0_0193428_lcssa471_fu_96),
        .\B_V_data_1_payload_B_reg[7]_0 (pixbuf_y_val_V_1_fu_152),
        .B_V_data_1_sel_wr01_out(B_V_data_1_sel_wr01_out),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg),
        .E(E),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .SR(ap_NS_fsm12_out),
        .\ap_CS_fsm_reg[2] ({ap_NS_fsm[3],ap_NS_fsm[1]}),
        .\ap_CS_fsm_reg[2]_0 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_n_169),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3]_0 ),
        .\ap_CS_fsm_reg[3]_0 (pixbuf_y_val_V_1_fu_1520),
        .\ap_CS_fsm_reg[3]_1 (\ap_CS_fsm_reg[3]_1 ),
        .\ap_CS_fsm_reg[3]_2 (p_0_0_0_0_0449_lcssa495_fu_1240),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter13_reg_0(p_0_2_0_0_0432_lcssa477_fu_1040),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cmp335_reg_1338_reg[0]_0 (cmp335_reg_1338),
        .\filt_res0_fu_84_reg[7] (filt_res0_fu_84),
        .\filt_res1_fu_88_reg[7] (filt_res1_fu_88),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth),
        .icmp_ln145_fu_293_p2(icmp_ln145_fu_293_p2),
        .\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_0 (filt_res1_fu_880),
        .\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_1 (pixbuf_y_val_V_2_fu_1560),
        .\icmp_ln159_reg_1289_pp0_iter1_reg_reg[0]_0 (p_0_1_0_0_0441_lcssa486_fu_1120),
        .icmp_ln168_fu_403_p2_carry__0_0(icmp_ln168_fu_403_p2_carry__0),
        .\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 (icmp_ln168_reg_1298_pp0_iter13_reg),
        .\icmp_ln403_reg_1517_reg[0]_0 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res0_1_out_o),
        .\icmp_ln404_reg_1528_reg[0]_0 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_filt_res1_1_out_o),
        .in(in),
        .internal_empty_n_reg(internal_empty_n_reg),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0] ),
        .or_ln350_reg_1380_pp0_iter4_reg(or_ln350_reg_1380_pp0_iter4_reg),
        .or_ln350_reg_1380_pp0_iter6_reg(or_ln350_reg_1380_pp0_iter6_reg),
        .or_ln350_reg_1380_pp0_iter8_reg(or_ln350_reg_1380_pp0_iter8_reg),
        .out(out),
        .outYUV_full_n(outYUV_full_n),
        .\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] (p_0_0_0_0_0185_1455_lcssa501_fu_132),
        .\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] (p_0_0_0_0_0185_2461_lcssa507_fu_140),
        .\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] (p_0_0_0_0_0_1458_lcssa504_fu_136),
        .\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] (p_0_0_0_0_0_2465_lcssa510_fu_144),
        .\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o),
        .\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o),
        .\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o),
        .\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o),
        .\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o),
        .\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o),
        .\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o),
        .\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_0(p_reg_reg_0),
        .p_reg_reg_1(p_reg_reg_1),
        .p_reg_reg_2(p_0_1_0_0_0437_lcssa483_fu_108),
        .p_reg_reg_3(p_0_1_0_0_0441_lcssa486_fu_112),
        .p_reg_reg_4(p_0_0_0_0_0185443_lcssa489_fu_116),
        .p_reg_reg_5(p_0_0_0_0_0185445448_lcssa492_fu_120),
        .p_reg_reg_6(p_0_0_0_0_0449_lcssa495_fu_124),
        .p_reg_reg_7(p_0_0_0_0_0451454_lcssa498_fu_128),
        .\pixbuf_y_val_V_1_fu_178_reg[7]_0 (pixbuf_y_val_V_1_fu_178),
        .\pixbuf_y_val_V_1_fu_178_reg[7]_1 (pixbuf_y_val_V_load_reg_595),
        .\pixbuf_y_val_V_5_fu_182_reg[7]_0 (pixbuf_y_val_V_5_fu_182),
        .\pixbuf_y_val_V_5_fu_182_reg[7]_1 (pixbuf_y_val_V_2_load_reg_600),
        .\pixbuf_y_val_V_6_fu_186_reg[7]_0 (pixbuf_y_val_V_6_fu_186),
        .\pixbuf_y_val_V_6_fu_186_reg[7]_1 (pixbuf_y_val_V_3_load_reg_605),
        .\pixbuf_y_val_V_7_fu_190_reg[7]_0 (pixbuf_y_val_V_7_fu_190),
        .\pixbuf_y_val_V_7_fu_190_reg[7]_1 (pixbuf_y_val_V_4_load_reg_610),
        .\pixbuf_y_val_V_9_reg_1533_reg[7]_0 (pixbuf_y_val_V_9_reg_1533),
        .\select_ln262_reg_1554_reg[0]_0 (\select_ln262_reg_1554_reg[0] ),
        .shiftReg_ce(shiftReg_ce),
        .shiftReg_ce_0(shiftReg_ce_0),
        .srcYUV_empty_n(srcYUV_empty_n),
        .tmp_5_reg_1314_pp0_iter13_reg(tmp_5_reg_1314_pp0_iter13_reg),
        .\tmp_5_reg_1314_reg[0]_0 (\tmp_5_reg_1314_reg[0] ),
        .\trunc_ln145_1_reg_1324_reg[7]_0 (trunc_ln145_1_reg_1324_pp0_iter12_reg),
        .\trunc_ln145_1_reg_1324_reg[7]_1 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o),
        .\trunc_ln145_2_reg_1332_reg[7]_0 (trunc_ln145_2_reg_1332_pp0_iter12_reg),
        .\trunc_ln145_2_reg_1332_reg[7]_1 (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o));
  FDRE #(
    .INIT(1'b0)) 
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_n_169),
        .Q(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .R(ap_rst_n_inv));
  CARRY4 icmp_ln157_fu_363_p2_carry
       (.CI(1'b0),
        .CO({CO,icmp_ln157_fu_363_p2_carry_n_6,icmp_ln157_fu_363_p2_carry_n_7,icmp_ln157_fu_363_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln157_fu_363_p2_carry_O_UNCONNECTED[3:0]),
        .S(start_once_reg_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln159_fu_381_p2_carry_i_13
       (.I0(icmp_ln145_fu_293_p2),
        .I1(icmp_ln168_fu_403_p2_carry__0[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln159_fu_381_p2_carry_i_15
       (.I0(icmp_ln145_fu_293_p2),
        .I1(icmp_ln168_fu_403_p2_carry__0[0]),
        .O(S[0]));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[0]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[1]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[2]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[3]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[4]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[5]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[6]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445_out_o[7]),
        .Q(p_0_0_0_0_0185443_lcssa489_fu_116[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[0]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[1]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[2]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[3]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[4]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[5]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[6]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185445448_lcssa492_fu_120_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185445447_out_o[7]),
        .Q(p_0_0_0_0_0185445448_lcssa492_fu_120[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[0]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[1]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[2]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[3]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[4]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[5]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[6]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_1457_out_o[7]),
        .Q(p_0_0_0_0_0185_1455_lcssa501_fu_132[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[0]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[1]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[2]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[3]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[4]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[5]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[6]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0185_2461_lcssa507_fu_140_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0185_2463_out_o[7]),
        .Q(p_0_0_0_0_0185_2461_lcssa507_fu_140[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[0] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[0]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[1] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[1]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[2] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[2]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[3] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[3]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[4] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[4]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[5] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[5]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[6] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[6]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0193428_lcssa471_fu_96_reg[7] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_reg_1318_pp0_iter12_reg[7]),
        .Q(p_0_0_0_0_0193428_lcssa471_fu_96[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[0]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[1]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[2]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[3]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[4]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[5]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[6]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0449_lcssa495_fu_124_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451_out_o[7]),
        .Q(p_0_0_0_0_0449_lcssa495_fu_124[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[0]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[1]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[2]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[3]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[4]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[5]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[6]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0451454_lcssa498_fu_128_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0451453_out_o[7]),
        .Q(p_0_0_0_0_0451454_lcssa498_fu_128[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[0]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[1]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[2]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[3]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[4]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[5]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[6]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_1460_out_o[7]),
        .Q(p_0_0_0_0_0_1458_lcssa504_fu_136[7]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[0] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[0]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[0]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[1] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[1]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[1]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[2] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[2]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[2]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[3] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[3]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[3]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[4] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[4]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[4]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[5] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[5]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[5]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[6] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[6]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[6]),
        .R(1'b0));
  FDRE \p_0_0_0_0_0_2465_lcssa510_fu_144_reg[7] 
       (.C(ap_clk),
        .CE(p_0_0_0_0_0449_lcssa495_fu_1240),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_0_0_0_0_2467_out_o[7]),
        .Q(p_0_0_0_0_0_2465_lcssa510_fu_144[7]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[0]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[0]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[1]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[1]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[2]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[2]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[3]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[3]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[4] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[4]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[4]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[5] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[5]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[5]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[6] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[6]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[6]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0430_lcssa474_fu_100_reg[7] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_1_reg_1324_pp0_iter12_reg[7]),
        .Q(p_0_1_0_0_0430_lcssa474_fu_100[7]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[0] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[0]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[0]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[1] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[1]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[1]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[2] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[2]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[2]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[3] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[3]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[3]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[4] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[4]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[4]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[5] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[5]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[5]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[6] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[6]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[6]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0437_lcssa483_fu_108_reg[7] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0436_out_o[7]),
        .Q(p_0_1_0_0_0437_lcssa483_fu_108[7]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[0] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[0]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[0]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[1] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[1]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[1]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[2] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[2]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[2]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[3] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[3]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[3]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[4] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[4]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[4]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[5] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[5]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[5]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[6] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[6]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[6]),
        .R(1'b0));
  FDRE \p_0_1_0_0_0441_lcssa486_fu_112_reg[7] 
       (.C(ap_clk),
        .CE(p_0_1_0_0_0441_lcssa486_fu_1120),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_p_0_1_0_0_0440_out_o[7]),
        .Q(p_0_1_0_0_0441_lcssa486_fu_112[7]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[0] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[0]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[0]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[1] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[1]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[1]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[2] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[2]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[2]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[3] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[3]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[3]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[4] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[4]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[4]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[5] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[5]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[5]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[6] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[6]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[6]),
        .R(1'b0));
  FDRE \p_0_2_0_0_0432_lcssa477_fu_104_reg[7] 
       (.C(ap_clk),
        .CE(p_0_2_0_0_0432_lcssa477_fu_1040),
        .D(trunc_ln145_2_reg_1332_pp0_iter12_reg[7]),
        .Q(p_0_2_0_0_0432_lcssa477_fu_104[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[0]),
        .Q(pixbuf_y_val_V_1_fu_152[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[1]),
        .Q(pixbuf_y_val_V_1_fu_152[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[2]),
        .Q(pixbuf_y_val_V_1_fu_152[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[3]),
        .Q(pixbuf_y_val_V_1_fu_152[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[4]),
        .Q(pixbuf_y_val_V_1_fu_152[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[5]),
        .Q(pixbuf_y_val_V_1_fu_152[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[6]),
        .Q(pixbuf_y_val_V_1_fu_152[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_152_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_1520),
        .D(pixbuf_y_val_V_9_reg_1533[7]),
        .Q(pixbuf_y_val_V_1_fu_152[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[0]),
        .Q(pixbuf_y_val_V_2_fu_156[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[1]),
        .Q(pixbuf_y_val_V_2_fu_156[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[2]),
        .Q(pixbuf_y_val_V_2_fu_156[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[3]),
        .Q(pixbuf_y_val_V_2_fu_156[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[4]),
        .Q(pixbuf_y_val_V_2_fu_156[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[5]),
        .Q(pixbuf_y_val_V_2_fu_156[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[6]),
        .Q(pixbuf_y_val_V_2_fu_156[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_fu_156_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_5_fu_182[7]),
        .Q(pixbuf_y_val_V_2_fu_156[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[0]),
        .Q(pixbuf_y_val_V_2_load_reg_600[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[1]),
        .Q(pixbuf_y_val_V_2_load_reg_600[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[2]),
        .Q(pixbuf_y_val_V_2_load_reg_600[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[3]),
        .Q(pixbuf_y_val_V_2_load_reg_600[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[4]),
        .Q(pixbuf_y_val_V_2_load_reg_600[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[5]),
        .Q(pixbuf_y_val_V_2_load_reg_600[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[6]),
        .Q(pixbuf_y_val_V_2_load_reg_600[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_2_load_reg_600_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_2_fu_156[7]),
        .Q(pixbuf_y_val_V_2_load_reg_600[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[0]),
        .Q(pixbuf_y_val_V_3_fu_160[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[1]),
        .Q(pixbuf_y_val_V_3_fu_160[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[2]),
        .Q(pixbuf_y_val_V_3_fu_160[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[3]),
        .Q(pixbuf_y_val_V_3_fu_160[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[4]),
        .Q(pixbuf_y_val_V_3_fu_160[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[5]),
        .Q(pixbuf_y_val_V_3_fu_160[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[6]),
        .Q(pixbuf_y_val_V_3_fu_160[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_fu_160_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_6_fu_186[7]),
        .Q(pixbuf_y_val_V_3_fu_160[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[0]),
        .Q(pixbuf_y_val_V_3_load_reg_605[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[1]),
        .Q(pixbuf_y_val_V_3_load_reg_605[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[2]),
        .Q(pixbuf_y_val_V_3_load_reg_605[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[3]),
        .Q(pixbuf_y_val_V_3_load_reg_605[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[4]),
        .Q(pixbuf_y_val_V_3_load_reg_605[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[5]),
        .Q(pixbuf_y_val_V_3_load_reg_605[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[6]),
        .Q(pixbuf_y_val_V_3_load_reg_605[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_3_load_reg_605_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_3_fu_160[7]),
        .Q(pixbuf_y_val_V_3_load_reg_605[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[0]),
        .Q(pixbuf_y_val_V_4_fu_164[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[1]),
        .Q(pixbuf_y_val_V_4_fu_164[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[2]),
        .Q(pixbuf_y_val_V_4_fu_164[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[3]),
        .Q(pixbuf_y_val_V_4_fu_164[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[4]),
        .Q(pixbuf_y_val_V_4_fu_164[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[5]),
        .Q(pixbuf_y_val_V_4_fu_164[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[6]),
        .Q(pixbuf_y_val_V_4_fu_164[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_fu_164_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_7_fu_190[7]),
        .Q(pixbuf_y_val_V_4_fu_164[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[0]),
        .Q(pixbuf_y_val_V_4_load_reg_610[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[1]),
        .Q(pixbuf_y_val_V_4_load_reg_610[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[2]),
        .Q(pixbuf_y_val_V_4_load_reg_610[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[3]),
        .Q(pixbuf_y_val_V_4_load_reg_610[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[4]),
        .Q(pixbuf_y_val_V_4_load_reg_610[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[5]),
        .Q(pixbuf_y_val_V_4_load_reg_610[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[6]),
        .Q(pixbuf_y_val_V_4_load_reg_610[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_4_load_reg_610_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_4_fu_164[7]),
        .Q(pixbuf_y_val_V_4_load_reg_610[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[0]),
        .Q(pixbuf_y_val_V_fu_148[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[1]),
        .Q(pixbuf_y_val_V_fu_148[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[2]),
        .Q(pixbuf_y_val_V_fu_148[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[3]),
        .Q(pixbuf_y_val_V_fu_148[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[4]),
        .Q(pixbuf_y_val_V_fu_148[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[5]),
        .Q(pixbuf_y_val_V_fu_148[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[6]),
        .Q(pixbuf_y_val_V_fu_148[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_fu_148_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_2_fu_1560),
        .D(pixbuf_y_val_V_1_fu_178[7]),
        .Q(pixbuf_y_val_V_fu_148[7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[0]),
        .Q(pixbuf_y_val_V_load_reg_595[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[1]),
        .Q(pixbuf_y_val_V_load_reg_595[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[2]),
        .Q(pixbuf_y_val_V_load_reg_595[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[3]),
        .Q(pixbuf_y_val_V_load_reg_595[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[4]),
        .Q(pixbuf_y_val_V_load_reg_595[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[5]),
        .Q(pixbuf_y_val_V_load_reg_595[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[6]),
        .Q(pixbuf_y_val_V_load_reg_595[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_load_reg_595_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(pixbuf_y_val_V_fu_148[7]),
        .Q(pixbuf_y_val_V_load_reg_595[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00EAEAEA)) 
    start_once_reg_i_1__0
       (.I0(start_once_reg),
        .I1(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I2(v_hcresampler_core_U0_ap_start),
        .I3(Q[1]),
        .I4(CO),
        .O(start_once_reg_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_5),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \y_fu_92[0]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [0]),
        .O(y_2_fu_368_p2[0]));
  LUT4 #(
    .INIT(16'hA800)) 
    \y_fu_92[10]_i_1 
       (.I0(Q[0]),
        .I1(start_once_reg),
        .I2(start_for_MultiPixStream2AXIvideo_U0_full_n),
        .I3(v_hcresampler_core_U0_ap_start),
        .O(ap_NS_fsm12_out));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \y_fu_92[10]_i_2 
       (.I0(\y_fu_92_reg[10]_0 [10]),
        .I1(\y_fu_92_reg[10]_0 [6]),
        .I2(\y_fu_92[10]_i_3_n_5 ),
        .I3(\y_fu_92_reg[10]_0 [7]),
        .I4(\y_fu_92_reg[10]_0 [8]),
        .I5(\y_fu_92_reg[10]_0 [9]),
        .O(y_2_fu_368_p2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \y_fu_92[10]_i_3 
       (.I0(\y_fu_92_reg[10]_0 [5]),
        .I1(\y_fu_92_reg[10]_0 [4]),
        .I2(\y_fu_92_reg[10]_0 [3]),
        .I3(\y_fu_92_reg[10]_0 [2]),
        .I4(\y_fu_92_reg[10]_0 [0]),
        .I5(\y_fu_92_reg[10]_0 [1]),
        .O(\y_fu_92[10]_i_3_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_fu_92[1]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [0]),
        .I1(\y_fu_92_reg[10]_0 [1]),
        .O(y_2_fu_368_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_fu_92[2]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [2]),
        .I1(\y_fu_92_reg[10]_0 [1]),
        .I2(\y_fu_92_reg[10]_0 [0]),
        .O(y_2_fu_368_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_fu_92[3]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [3]),
        .I1(\y_fu_92_reg[10]_0 [2]),
        .I2(\y_fu_92_reg[10]_0 [0]),
        .I3(\y_fu_92_reg[10]_0 [1]),
        .O(y_2_fu_368_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \y_fu_92[4]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [4]),
        .I1(\y_fu_92_reg[10]_0 [1]),
        .I2(\y_fu_92_reg[10]_0 [0]),
        .I3(\y_fu_92_reg[10]_0 [2]),
        .I4(\y_fu_92_reg[10]_0 [3]),
        .O(y_2_fu_368_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \y_fu_92[5]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [5]),
        .I1(\y_fu_92_reg[10]_0 [4]),
        .I2(\y_fu_92_reg[10]_0 [3]),
        .I3(\y_fu_92_reg[10]_0 [2]),
        .I4(\y_fu_92_reg[10]_0 [0]),
        .I5(\y_fu_92_reg[10]_0 [1]),
        .O(y_2_fu_368_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_fu_92[6]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [6]),
        .I1(\y_fu_92[10]_i_3_n_5 ),
        .O(y_2_fu_368_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_fu_92[7]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [7]),
        .I1(\y_fu_92[10]_i_3_n_5 ),
        .I2(\y_fu_92_reg[10]_0 [6]),
        .O(y_2_fu_368_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_fu_92[8]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [8]),
        .I1(\y_fu_92_reg[10]_0 [6]),
        .I2(\y_fu_92[10]_i_3_n_5 ),
        .I3(\y_fu_92_reg[10]_0 [7]),
        .O(y_2_fu_368_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \y_fu_92[9]_i_1 
       (.I0(\y_fu_92_reg[10]_0 [9]),
        .I1(\y_fu_92_reg[10]_0 [8]),
        .I2(\y_fu_92_reg[10]_0 [7]),
        .I3(\y_fu_92[10]_i_3_n_5 ),
        .I4(\y_fu_92_reg[10]_0 [6]),
        .O(y_2_fu_368_p2[9]));
  FDRE \y_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[0]),
        .Q(\y_fu_92_reg[10]_0 [0]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[10]),
        .Q(\y_fu_92_reg[10]_0 [10]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[1]),
        .Q(\y_fu_92_reg[10]_0 [1]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[2]),
        .Q(\y_fu_92_reg[10]_0 [2]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[3]),
        .Q(\y_fu_92_reg[10]_0 [3]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[4]),
        .Q(\y_fu_92_reg[10]_0 [4]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[5]),
        .Q(\y_fu_92_reg[10]_0 [5]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[6]),
        .Q(\y_fu_92_reg[10]_0 [6]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[7]),
        .Q(\y_fu_92_reg[10]_0 [7]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[8]),
        .Q(\y_fu_92_reg[10]_0 [8]),
        .R(ap_NS_fsm12_out));
  FDRE \y_fu_92_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(y_2_fu_368_p2[9]),
        .Q(\y_fu_92_reg[10]_0 [9]),
        .R(ap_NS_fsm12_out));
endmodule

module bd_3a92_hcr_0_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2
   (\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ,
    or_ln350_reg_1380_pp0_iter4_reg,
    or_ln350_reg_1380_pp0_iter6_reg,
    or_ln350_reg_1380_pp0_iter8_reg,
    \cmp335_reg_1338_reg[0]_0 ,
    tmp_5_reg_1314_pp0_iter13_reg,
    D,
    \trunc_ln145_1_reg_1324_reg[7]_0 ,
    \trunc_ln145_2_reg_1332_reg[7]_0 ,
    \ap_CS_fsm_reg[2] ,
    E,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[3] ,
    shiftReg_ce,
    \ap_CS_fsm_reg[3]_0 ,
    \ap_CS_fsm_reg[3]_1 ,
    ap_enable_reg_pp0_iter1_reg_0,
    \icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_0 ,
    ap_enable_reg_pp0_iter13_reg_0,
    \icmp_ln159_reg_1289_pp0_iter1_reg_reg[0]_0 ,
    \ap_CS_fsm_reg[3]_2 ,
    \icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_1 ,
    \trunc_ln145_1_reg_1324_reg[7]_1 ,
    \trunc_ln145_2_reg_1332_reg[7]_1 ,
    \p_0_1_0_0_0437_lcssa483_fu_108_reg[7] ,
    \p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 ,
    \p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 ,
    \p_0_1_0_0_0441_lcssa486_fu_112_reg[7] ,
    \p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 ,
    \p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 ,
    \pixbuf_y_val_V_6_fu_186_reg[7]_0 ,
    \pixbuf_y_val_V_7_fu_190_reg[7]_0 ,
    \pixbuf_y_val_V_1_fu_178_reg[7]_0 ,
    \icmp_ln404_reg_1528_reg[0]_0 ,
    \icmp_ln403_reg_1517_reg[0]_0 ,
    \p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 ,
    \p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 ,
    \ap_CS_fsm_reg[2]_0 ,
    in,
    \pixbuf_y_val_V_5_fu_182_reg[7]_0 ,
    \pixbuf_y_val_V_9_reg_1533_reg[7]_0 ,
    ap_clk,
    ap_rst_n_inv,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg,
    p_reg_reg,
    B,
    p_reg_reg_0,
    p_reg_reg_1,
    ap_rst_n,
    SR,
    Q,
    shiftReg_ce_0,
    srcYUV_empty_n,
    B_V_data_1_sel_wr01_out,
    outYUV_full_n,
    \mOutPtr_reg[0] ,
    \tmp_5_reg_1314_reg[0]_0 ,
    icmp_ln145_fu_293_p2,
    \select_ln262_reg_1554_reg[0]_0 ,
    p_reg_reg_2,
    p_reg_reg_3,
    p_reg_reg_4,
    \p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] ,
    \p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] ,
    p_reg_reg_5,
    p_reg_reg_6,
    \p_0_0_0_0_0449_lcssa495_fu_124_reg[7] ,
    \p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] ,
    p_reg_reg_7,
    \pixbuf_y_val_V_5_fu_182_reg[7]_1 ,
    \pixbuf_y_val_V_6_fu_186_reg[7]_1 ,
    \pixbuf_y_val_V_7_fu_190_reg[7]_1 ,
    \pixbuf_y_val_V_1_fu_178_reg[7]_1 ,
    icmp_ln168_fu_403_p2_carry__0_0,
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth,
    \filt_res1_fu_88_reg[7] ,
    \filt_res0_fu_84_reg[7] ,
    \B_V_data_1_payload_B_reg[23] ,
    \B_V_data_1_payload_B_reg[15] ,
    \B_V_data_1_payload_B_reg[7] ,
    \B_V_data_1_payload_B_reg[7]_0 ,
    out);
  output \icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ;
  output or_ln350_reg_1380_pp0_iter4_reg;
  output or_ln350_reg_1380_pp0_iter6_reg;
  output or_ln350_reg_1380_pp0_iter8_reg;
  output \cmp335_reg_1338_reg[0]_0 ;
  output tmp_5_reg_1314_pp0_iter13_reg;
  output [7:0]D;
  output [7:0]\trunc_ln145_1_reg_1324_reg[7]_0 ;
  output [7:0]\trunc_ln145_2_reg_1332_reg[7]_0 ;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output [0:0]E;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[3] ;
  output shiftReg_ce;
  output [0:0]\ap_CS_fsm_reg[3]_0 ;
  output \ap_CS_fsm_reg[3]_1 ;
  output ap_enable_reg_pp0_iter1_reg_0;
  output [0:0]\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_0 ;
  output [0:0]ap_enable_reg_pp0_iter13_reg_0;
  output [0:0]\icmp_ln159_reg_1289_pp0_iter1_reg_reg[0]_0 ;
  output [0:0]\ap_CS_fsm_reg[3]_2 ;
  output [0:0]\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_1 ;
  output [7:0]\trunc_ln145_1_reg_1324_reg[7]_1 ;
  output [7:0]\trunc_ln145_2_reg_1332_reg[7]_1 ;
  output [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] ;
  output [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 ;
  output [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 ;
  output [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] ;
  output [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 ;
  output [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 ;
  output [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_0 ;
  output [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_0 ;
  output [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_0 ;
  output [7:0]\icmp_ln404_reg_1528_reg[0]_0 ;
  output [7:0]\icmp_ln403_reg_1517_reg[0]_0 ;
  output [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 ;
  output [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 ;
  output \ap_CS_fsm_reg[2]_0 ;
  output [23:0]in;
  output [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_0 ;
  output [7:0]\pixbuf_y_val_V_9_reg_1533_reg[7]_0 ;
  input ap_clk;
  input ap_rst_n_inv;
  input grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg;
  input [15:0]p_reg_reg;
  input [15:0]B;
  input [15:0]p_reg_reg_0;
  input [15:0]p_reg_reg_1;
  input ap_rst_n;
  input [0:0]SR;
  input [1:0]Q;
  input shiftReg_ce_0;
  input srcYUV_empty_n;
  input B_V_data_1_sel_wr01_out;
  input outYUV_full_n;
  input \mOutPtr_reg[0] ;
  input \tmp_5_reg_1314_reg[0]_0 ;
  input icmp_ln145_fu_293_p2;
  input \select_ln262_reg_1554_reg[0]_0 ;
  input [7:0]p_reg_reg_2;
  input [7:0]p_reg_reg_3;
  input [7:0]p_reg_reg_4;
  input [7:0]\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] ;
  input [7:0]\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] ;
  input [7:0]p_reg_reg_5;
  input [7:0]p_reg_reg_6;
  input [7:0]\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] ;
  input [7:0]\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] ;
  input [7:0]p_reg_reg_7;
  input [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_1 ;
  input [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_1 ;
  input [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_1 ;
  input [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_1 ;
  input [10:0]icmp_ln168_fu_403_p2_carry__0_0;
  input [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  input [7:0]\filt_res1_fu_88_reg[7] ;
  input [7:0]\filt_res0_fu_84_reg[7] ;
  input [7:0]\B_V_data_1_payload_B_reg[23] ;
  input [7:0]\B_V_data_1_payload_B_reg[15] ;
  input [7:0]\B_V_data_1_payload_B_reg[7] ;
  input [7:0]\B_V_data_1_payload_B_reg[7]_0 ;
  input [23:0]out;

  wire [15:0]B;
  wire [7:0]\B_V_data_1_payload_B_reg[15] ;
  wire [7:0]\B_V_data_1_payload_B_reg[23] ;
  wire [7:0]\B_V_data_1_payload_B_reg[7] ;
  wire [7:0]\B_V_data_1_payload_B_reg[7]_0 ;
  wire B_V_data_1_sel_wr01_out;
  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[15][0]_srl16_i_7_n_5 ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[3] ;
  wire [0:0]\ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg[3]_1 ;
  wire [0:0]\ap_CS_fsm_reg[3]_2 ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter11;
  wire ap_enable_reg_pp0_iter12;
  wire ap_enable_reg_pp0_iter13;
  wire [0:0]ap_enable_reg_pp0_iter13_reg_0;
  wire ap_enable_reg_pp0_iter14;
  wire ap_enable_reg_pp0_iter14_i_1_n_5;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter9;
  wire ap_loop_exit_ready_pp0_iter12_reg_reg_srl12_n_5;
  wire ap_loop_exit_ready_pp0_iter13_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]ap_sig_allocacmp_x_1;
  wire \cmp335_reg_1338[0]_i_1_n_5 ;
  wire \cmp335_reg_1338_pp0_iter11_reg_reg[0]_srl9_n_5 ;
  wire cmp335_reg_1338_pp0_iter12_reg;
  wire \cmp335_reg_1338_reg[0]_0 ;
  wire filt_res0_5_reg_14190;
  wire filt_res0_6_reg_14550;
  wire filt_res0_7_reg_14910;
  wire [7:0]\filt_res0_fu_84_reg[7] ;
  wire [19:12]filt_res0_reg_1501;
  wire filt_res0_reg_15010;
  wire \filt_res1_fu_88[7]_i_3_n_5 ;
  wire [7:0]\filt_res1_fu_88_reg[7] ;
  wire [19:12]filt_res1_reg_1506;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_43;
  wire flow_control_loop_pipe_sequential_init_U_n_44;
  wire flow_control_loop_pipe_sequential_init_U_n_45;
  wire flow_control_loop_pipe_sequential_init_U_n_46;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_50;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
  wire flow_control_loop_pipe_sequential_init_U_n_56;
  wire flow_control_loop_pipe_sequential_init_U_n_64;
  wire flow_control_loop_pipe_sequential_init_U_n_65;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_71;
  wire flow_control_loop_pipe_sequential_init_U_n_72;
  wire flow_control_loop_pipe_sequential_init_U_n_73;
  wire flow_control_loop_pipe_sequential_init_U_n_74;
  wire flow_control_loop_pipe_sequential_init_U_n_75;
  wire flow_control_loop_pipe_sequential_init_U_n_76;
  wire flow_control_loop_pipe_sequential_init_U_n_77;
  wire flow_control_loop_pipe_sequential_init_U_n_78;
  wire flow_control_loop_pipe_sequential_init_U_n_79;
  wire flow_control_loop_pipe_sequential_init_U_n_80;
  wire flow_control_loop_pipe_sequential_init_U_n_81;
  wire flow_control_loop_pipe_sequential_init_U_n_82;
  wire flow_control_loop_pipe_sequential_init_U_n_83;
  wire flow_control_loop_pipe_sequential_init_U_n_84;
  wire flow_control_loop_pipe_sequential_init_U_n_85;
  wire flow_control_loop_pipe_sequential_init_U_n_86;
  wire flow_control_loop_pipe_sequential_init_U_n_88;
  wire flow_control_loop_pipe_sequential_init_U_n_89;
  wire flow_control_loop_pipe_sequential_init_U_n_90;
  wire grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg;
  wire [10:0]grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth;
  wire icmp_ln145_fu_293_p2;
  wire icmp_ln159_fu_381_p2;
  wire icmp_ln159_fu_381_p2_carry_n_6;
  wire icmp_ln159_fu_381_p2_carry_n_7;
  wire icmp_ln159_fu_381_p2_carry_n_8;
  wire icmp_ln159_reg_1289;
  wire icmp_ln159_reg_1289_pp0_iter10_reg;
  wire icmp_ln159_reg_1289_pp0_iter11_reg;
  wire [0:0]\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_0 ;
  wire [0:0]\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_1 ;
  wire \icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ;
  wire [0:0]\icmp_ln159_reg_1289_pp0_iter1_reg_reg[0]_0 ;
  wire \icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ;
  wire \icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ;
  wire \icmp_ln159_reg_1289_pp0_iter4_reg_reg[0]_srl2_n_5 ;
  wire icmp_ln159_reg_1289_pp0_iter5_reg;
  wire icmp_ln159_reg_1289_pp0_iter6_reg;
  wire icmp_ln159_reg_1289_pp0_iter7_reg;
  wire icmp_ln159_reg_1289_pp0_iter8_reg;
  wire icmp_ln159_reg_1289_pp0_iter9_reg;
  wire icmp_ln168_fu_403_p2;
  wire [10:0]icmp_ln168_fu_403_p2_carry__0_0;
  wire icmp_ln168_fu_403_p2_carry__0_n_8;
  wire icmp_ln168_fu_403_p2_carry_n_5;
  wire icmp_ln168_fu_403_p2_carry_n_6;
  wire icmp_ln168_fu_403_p2_carry_n_7;
  wire icmp_ln168_fu_403_p2_carry_n_8;
  wire icmp_ln168_reg_1298;
  wire \icmp_ln168_reg_1298_pp0_iter11_reg_reg[0]_srl10_n_5 ;
  wire icmp_ln168_reg_1298_pp0_iter12_reg;
  wire \icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ;
  wire icmp_ln168_reg_1298_pp0_iter1_reg;
  wire icmp_ln403_reg_1517;
  wire icmp_ln403_reg_15170;
  wire [7:0]\icmp_ln403_reg_1517_reg[0]_0 ;
  wire icmp_ln404_reg_1528;
  wire [7:0]\icmp_ln404_reg_1528_reg[0]_0 ;
  wire [23:0]in;
  wire internal_empty_n_reg;
  wire \mOutPtr_reg[0] ;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_10;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_11;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_12;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_13;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_14;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_15;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_16;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_17;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_18;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_19;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_20;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_21;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_22;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_23;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_24;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_25;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_26;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_27;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_28;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_5;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_6;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_7;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_8;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U53_n_9;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_10;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_11;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_12;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_13;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_14;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_15;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_16;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_17;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_18;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_19;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_20;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_21;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_22;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_23;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_24;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_25;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_26;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_27;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_28;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_5;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_6;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_7;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_8;
  wire mac_muladd_8ns_16s_12ns_24_4_1_U54_n_9;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_10;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_11;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_12;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_13;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_14;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_15;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_16;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_17;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_18;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_19;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_20;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_21;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_22;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_23;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_24;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_25;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_26;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_27;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_28;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_29;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_5;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_6;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_7;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_8;
  wire mac_muladd_8ns_16s_24s_25_4_1_U55_n_9;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_10;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_11;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_12;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_13;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_14;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_15;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_16;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_17;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_18;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_19;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_20;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_21;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_22;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_23;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_24;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_25;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_26;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_27;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_28;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_29;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_5;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_6;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_7;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_8;
  wire mac_muladd_8ns_16s_24s_25_4_1_U56_n_9;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_10;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_11;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_12;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_13;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_14;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_15;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_16;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_17;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_18;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_19;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_20;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_21;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_22;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_23;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_24;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_25;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_26;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_27;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_28;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_29;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_30;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_5;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_6;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_7;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_8;
  wire mac_muladd_8ns_16s_25s_26_4_1_U57_n_9;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_10;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_11;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_12;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_13;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_14;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_15;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_16;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_17;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_18;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_19;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_20;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_21;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_22;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_23;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_24;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_25;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_26;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_27;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_28;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_29;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_30;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_5;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_6;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_7;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_8;
  wire mac_muladd_8ns_16s_25s_26_4_1_U58_n_9;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_10;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_11;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_12;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_13;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_16;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_17;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_6;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_7;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_8;
  wire mac_muladd_8ns_16s_26s_26_4_1_U59_n_9;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_10;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_11;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_12;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_13;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_14;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_6;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_7;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_8;
  wire mac_muladd_8ns_16s_26s_26_4_1_U60_n_9;
  wire odd_col_reg_1293;
  wire odd_col_reg_1293_pp0_iter1_reg;
  wire or_ln350_reg_1380;
  wire or_ln350_reg_13800;
  wire or_ln350_reg_1380_pp0_iter4_reg;
  wire or_ln350_reg_1380_pp0_iter5_reg;
  wire or_ln350_reg_1380_pp0_iter6_reg;
  wire or_ln350_reg_1380_pp0_iter7_reg;
  wire or_ln350_reg_1380_pp0_iter8_reg;
  wire or_ln384_reg_1344;
  wire \or_ln384_reg_1344[0]_i_1_n_5 ;
  wire or_ln384_reg_1344_pp0_iter10_reg;
  wire or_ln384_reg_1344_pp0_iter11_reg;
  wire or_ln384_reg_1344_pp0_iter12_reg;
  wire \or_ln384_reg_1344_pp0_iter4_reg_reg[0]_srl2_n_5 ;
  wire or_ln384_reg_1344_pp0_iter5_reg;
  wire or_ln384_reg_1344_pp0_iter6_reg;
  wire or_ln384_reg_1344_pp0_iter7_reg;
  wire or_ln384_reg_1344_pp0_iter8_reg;
  wire or_ln384_reg_1344_pp0_iter9_reg;
  wire [23:0]out;
  wire outYUV_full_n;
  wire out_x_fu_393_p2_carry__0_n_5;
  wire out_x_fu_393_p2_carry__0_n_6;
  wire out_x_fu_393_p2_carry__0_n_7;
  wire out_x_fu_393_p2_carry__0_n_8;
  wire out_x_fu_393_p2_carry__1_n_6;
  wire out_x_fu_393_p2_carry__1_n_7;
  wire out_x_fu_393_p2_carry__1_n_8;
  wire out_x_fu_393_p2_carry_n_12;
  wire out_x_fu_393_p2_carry_n_5;
  wire out_x_fu_393_p2_carry_n_6;
  wire out_x_fu_393_p2_carry_n_7;
  wire out_x_fu_393_p2_carry_n_8;
  wire [7:0]\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] ;
  wire [7:0]\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] ;
  wire [7:0]\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] ;
  wire \p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ;
  wire [7:0]\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] ;
  wire \p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ;
  wire [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] ;
  wire [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 ;
  wire [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 ;
  wire [7:0]\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 ;
  wire \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ;
  wire [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] ;
  wire [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 ;
  wire [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 ;
  wire [7:0]\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 ;
  wire p_0_in;
  wire p_0_in0_out;
  wire [15:0]p_reg_reg;
  wire [15:0]p_reg_reg_0;
  wire [15:0]p_reg_reg_1;
  wire [7:0]p_reg_reg_2;
  wire [7:0]p_reg_reg_3;
  wire [7:0]p_reg_reg_4;
  wire [7:0]p_reg_reg_5;
  wire [7:0]p_reg_reg_6;
  wire [7:0]p_reg_reg_7;
  wire pixbuf_y_val_V_10_reg_15390;
  wire [7:0]pixbuf_y_val_V_11_reg_1544;
  wire pixbuf_y_val_V_1_fu_178;
  wire [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_1_fu_178_reg[7]_1 ;
  wire pixbuf_y_val_V_5_fu_182;
  wire [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_5_fu_182_reg[7]_1 ;
  wire [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_6_fu_186_reg[7]_1 ;
  wire [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_0 ;
  wire [7:0]\pixbuf_y_val_V_7_fu_190_reg[7]_1 ;
  wire [7:0]\pixbuf_y_val_V_9_reg_1533_reg[7]_0 ;
  wire select_ln220_reg_1302_pp0_iter1_reg;
  wire select_ln220_reg_1302_pp0_iter2_reg;
  wire \select_ln220_reg_1302_reg_n_5_[0] ;
  wire [7:0]select_ln250_1_fu_633_p3;
  wire [7:0]select_ln250_1_reg_1355;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[0]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[1]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[2]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[3]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[4]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[5]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[6]_srl3_n_5 ;
  wire \select_ln250_1_reg_1355_pp0_iter6_reg_reg[7]_srl3_n_5 ;
  wire [7:0]select_ln250_1_reg_1355_pp0_iter7_reg;
  wire [7:0]select_ln250_2_fu_640_p3;
  wire [7:0]select_ln250_2_reg_1360;
  wire [7:0]select_ln250_2_reg_1360_pp0_iter4_reg;
  wire [7:0]select_ln250_2_reg_1360_pp0_iter5_reg;
  wire [7:0]select_ln250_3_fu_647_p3;
  wire [7:0]select_ln250_3_reg_1365;
  wire [7:0]select_ln250_3_reg_1365_pp0_iter4_reg;
  wire [7:0]select_ln250_3_reg_1365_pp0_iter5_reg;
  wire [7:0]select_ln250_5_fu_661_p3;
  wire [7:0]select_ln250_5_reg_1370;
  wire [7:0]select_ln250_7_fu_675_p3;
  wire [7:0]select_ln250_7_reg_1375;
  wire [7:0]select_ln250_fu_626_p3;
  wire [7:0]select_ln250_reg_1350;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[0]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[1]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[2]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[3]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[4]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[5]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[6]_srl3_n_5 ;
  wire \select_ln250_reg_1350_pp0_iter6_reg_reg[7]_srl3_n_5 ;
  wire [7:0]select_ln250_reg_1350_pp0_iter7_reg;
  wire [7:0]select_ln262_reg_1554;
  wire select_ln262_reg_15540;
  wire select_ln262_reg_1554_0;
  wire \select_ln262_reg_1554_reg[0]_0 ;
  wire [7:0]select_ln408_fu_994_p3;
  wire [7:0]select_ln408_reg_1549;
  wire \select_ln408_reg_1549[0]_i_2_n_5 ;
  wire \select_ln408_reg_1549[1]_i_2_n_5 ;
  wire \select_ln408_reg_1549[2]_i_2_n_5 ;
  wire \select_ln408_reg_1549[3]_i_2_n_5 ;
  wire \select_ln408_reg_1549[4]_i_2_n_5 ;
  wire \select_ln408_reg_1549[5]_i_2_n_5 ;
  wire \select_ln408_reg_1549[6]_i_2_n_5 ;
  wire \select_ln408_reg_1549[7]_i_3_n_5 ;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire srcYUV_empty_n;
  wire [5:5]tmp_1_fu_816_p4;
  wire tmp_3_reg_1522;
  wire [5:5]tmp_4_fu_838_p4;
  wire tmp_5_reg_1314;
  wire \tmp_5_reg_1314_pp0_iter12_reg_reg[0]_srl12_n_5 ;
  wire tmp_5_reg_1314_pp0_iter13_reg;
  wire \tmp_5_reg_1314_reg[0]_0 ;
  wire tmp_reg_1511;
  wire [7:0]trunc_ln145_1_reg_1324;
  wire trunc_ln145_1_reg_13240;
  wire [7:0]\trunc_ln145_1_reg_1324_reg[7]_0 ;
  wire [7:0]\trunc_ln145_1_reg_1324_reg[7]_1 ;
  wire [7:0]trunc_ln145_2_reg_1332;
  wire [7:0]\trunc_ln145_2_reg_1332_reg[7]_0 ;
  wire [7:0]\trunc_ln145_2_reg_1332_reg[7]_1 ;
  wire [7:0]trunc_ln145_reg_1318;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[0]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[1]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[2]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[3]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[4]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[5]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[6]_srl10_n_5 ;
  wire \trunc_ln145_reg_1318_pp0_iter11_reg_reg[7]_srl10_n_5 ;
  wire trunc_ln159_reg_1282;
  wire trunc_ln159_reg_1282_pp0_iter1_reg;
  wire trunc_ln159_reg_1282_pp0_iter2_reg;
  wire [7:0]trunc_ln408_1_fu_990_p1;
  wire [10:0]x_2_fu_387_p2;
  wire x_fu_174;
  wire \x_fu_174_reg_n_5_[0] ;
  wire \x_fu_174_reg_n_5_[10] ;
  wire \x_fu_174_reg_n_5_[1] ;
  wire \x_fu_174_reg_n_5_[2] ;
  wire \x_fu_174_reg_n_5_[3] ;
  wire \x_fu_174_reg_n_5_[4] ;
  wire \x_fu_174_reg_n_5_[5] ;
  wire \x_fu_174_reg_n_5_[6] ;
  wire \x_fu_174_reg_n_5_[7] ;
  wire \x_fu_174_reg_n_5_[8] ;
  wire \x_fu_174_reg_n_5_[9] ;
  wire [3:0]NLW_icmp_ln159_fu_381_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln168_fu_403_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln168_fu_403_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln168_fu_403_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_out_x_fu_393_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_out_x_fu_393_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_out_x_fu_393_p2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_out_x_fu_393_p2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \SRL_SIG_reg[15][0]_srl16_i_1__0 
       (.I0(ap_enable_reg_pp0_iter14),
        .I1(Q[1]),
        .I2(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I3(\SRL_SIG_reg[15][0]_srl16_i_7_n_5 ),
        .O(shiftReg_ce));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][0]_srl16_i_2__0 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [0]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [0]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[0]),
        .O(in[0]));
  LUT4 #(
    .INIT(16'hD1FF)) 
    \SRL_SIG_reg[15][0]_srl16_i_7 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(tmp_5_reg_1314_pp0_iter13_reg),
        .I3(outYUV_full_n),
        .O(\SRL_SIG_reg[15][0]_srl16_i_7_n_5 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][10]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [2]),
        .I3(select_ln408_reg_1549[2]),
        .O(in[10]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][11]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [3]),
        .I3(select_ln408_reg_1549[3]),
        .O(in[11]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][12]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [4]),
        .I3(select_ln408_reg_1549[4]),
        .O(in[12]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][13]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [5]),
        .I3(select_ln408_reg_1549[5]),
        .O(in[13]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][14]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [6]),
        .I3(select_ln408_reg_1549[6]),
        .O(in[14]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][15]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [7]),
        .I3(select_ln408_reg_1549[7]),
        .O(in[15]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][16]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [0]),
        .I3(select_ln262_reg_1554[0]),
        .O(in[16]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][17]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [1]),
        .I3(select_ln262_reg_1554[1]),
        .O(in[17]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][18]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [2]),
        .I3(select_ln262_reg_1554[2]),
        .O(in[18]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][19]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [3]),
        .I3(select_ln262_reg_1554[3]),
        .O(in[19]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][1]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [1]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [1]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[1]),
        .O(in[1]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][20]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [4]),
        .I3(select_ln262_reg_1554[4]),
        .O(in[20]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][21]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [5]),
        .I3(select_ln262_reg_1554[5]),
        .O(in[21]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][22]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [6]),
        .I3(select_ln262_reg_1554[6]),
        .O(in[22]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][23]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[23] [7]),
        .I3(select_ln262_reg_1554[7]),
        .O(in[23]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][2]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [2]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [2]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[2]),
        .O(in[2]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][3]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [3]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [3]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[3]),
        .O(in[3]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][4]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [4]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [4]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[4]),
        .O(in[4]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][5]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [5]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [5]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[5]),
        .O(in[5]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][6]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [6]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [6]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[6]),
        .O(in[6]));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \SRL_SIG_reg[15][7]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[7] [7]),
        .I3(\B_V_data_1_payload_B_reg[7]_0 [7]),
        .I4(icmp_ln145_fu_293_p2),
        .I5(pixbuf_y_val_V_11_reg_1544[7]),
        .O(in[7]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][8]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [0]),
        .I3(select_ln408_reg_1549[0]),
        .O(in[8]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[15][9]_srl16_i_1 
       (.I0(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .I1(\tmp_5_reg_1314_reg[0]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] [1]),
        .I3(select_ln408_reg_1549[1]),
        .O(in[9]));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter10_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter9),
        .Q(ap_enable_reg_pp0_iter10),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter11_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter10),
        .Q(ap_enable_reg_pp0_iter11),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter12_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter11),
        .Q(ap_enable_reg_pp0_iter12),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter13_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter12),
        .Q(ap_enable_reg_pp0_iter13),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'hC044C000)) 
    ap_enable_reg_pp0_iter14_i_1
       (.I0(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter14),
        .I3(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I4(ap_enable_reg_pp0_iter13),
        .O(ap_enable_reg_pp0_iter14_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter14_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter14_i_1_n_5),
        .Q(ap_enable_reg_pp0_iter14),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter7_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter6),
        .Q(ap_enable_reg_pp0_iter7),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter7),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter9_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_enable_reg_pp0_iter8),
        .Q(ap_enable_reg_pp0_iter9),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/ap_loop_exit_ready_pp0_iter12_reg_reg_srl12 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter12_reg_reg_srl12
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(flow_control_loop_pipe_sequential_init_U_n_90),
        .Q(ap_loop_exit_ready_pp0_iter12_reg_reg_srl12_n_5));
  FDRE ap_loop_exit_ready_pp0_iter13_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_loop_exit_ready_pp0_iter12_reg_reg_srl12_n_5),
        .Q(ap_loop_exit_ready_pp0_iter13_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD01)) 
    \cmp335_reg_1338[0]_i_1 
       (.I0(odd_col_reg_1293_pp0_iter1_reg),
        .I1(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .I2(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I3(\cmp335_reg_1338_reg[0]_0 ),
        .O(\cmp335_reg_1338[0]_i_1_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/cmp335_reg_1338_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/cmp335_reg_1338_pp0_iter11_reg_reg[0]_srl9 " *) 
  SRL16E \cmp335_reg_1338_pp0_iter11_reg_reg[0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(\cmp335_reg_1338_reg[0]_0 ),
        .Q(\cmp335_reg_1338_pp0_iter11_reg_reg[0]_srl9_n_5 ));
  FDRE \cmp335_reg_1338_pp0_iter12_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\cmp335_reg_1338_pp0_iter11_reg_reg[0]_srl9_n_5 ),
        .Q(cmp335_reg_1338_pp0_iter12_reg),
        .R(1'b0));
  FDRE \cmp335_reg_1338_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cmp335_reg_1338[0]_i_1_n_5 ),
        .Q(\cmp335_reg_1338_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[0]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[12]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [0]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[1]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[13]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [1]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[2]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[14]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [2]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[3]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[15]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [3]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[4]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[16]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [4]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[5]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[17]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [5]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[6]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[18]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [6]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [6]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res0_fu_84[7]_i_1 
       (.I0(icmp_ln403_reg_1517),
        .I1(filt_res0_reg_1501[19]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_reg_1511),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res0_fu_84_reg[7] [7]),
        .O(\icmp_ln403_reg_1517_reg[0]_0 [7]));
  FDRE \filt_res0_reg_1501_reg[12] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_13),
        .Q(filt_res0_reg_1501[12]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[13] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_12),
        .Q(filt_res0_reg_1501[13]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[14] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_11),
        .Q(filt_res0_reg_1501[14]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[15] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_10),
        .Q(filt_res0_reg_1501[15]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[16] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_9),
        .Q(filt_res0_reg_1501[16]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[17] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_8),
        .Q(filt_res0_reg_1501[17]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[18] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_7),
        .Q(filt_res0_reg_1501[18]),
        .R(1'b0));
  FDRE \filt_res0_reg_1501_reg[19] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_6),
        .Q(filt_res0_reg_1501[19]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[0]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[12]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [0]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[1]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[13]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [1]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[2]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[14]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [2]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[3]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[15]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [3]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[4]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[16]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [4]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[5]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[17]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [5]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[6]_i_1 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[18]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [6]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \filt_res1_fu_88[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I1(ap_enable_reg_pp0_iter13),
        .I2(Q[1]),
        .I3(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0FEFFFFF00E00000)) 
    \filt_res1_fu_88[7]_i_2 
       (.I0(icmp_ln404_reg_1528),
        .I1(filt_res1_reg_1506[19]),
        .I2(or_ln384_reg_1344_pp0_iter12_reg),
        .I3(tmp_3_reg_1522),
        .I4(\filt_res1_fu_88[7]_i_3_n_5 ),
        .I5(\filt_res1_fu_88_reg[7] [7]),
        .O(\icmp_ln404_reg_1528_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \filt_res1_fu_88[7]_i_3 
       (.I0(ap_enable_reg_pp0_iter13),
        .I1(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .O(\filt_res1_fu_88[7]_i_3_n_5 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \filt_res1_reg_1506[19]_i_1 
       (.I0(ap_enable_reg_pp0_iter12),
        .I1(icmp_ln159_reg_1289_pp0_iter11_reg),
        .I2(or_ln384_reg_1344_pp0_iter11_reg),
        .I3(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(filt_res0_reg_15010));
  FDRE \filt_res1_reg_1506_reg[12] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_13),
        .Q(filt_res1_reg_1506[12]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[13] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_12),
        .Q(filt_res1_reg_1506[13]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[14] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_11),
        .Q(filt_res1_reg_1506[14]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[15] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_10),
        .Q(filt_res1_reg_1506[15]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[16] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_9),
        .Q(filt_res1_reg_1506[16]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[17] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_8),
        .Q(filt_res1_reg_1506[17]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[18] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_7),
        .Q(filt_res1_reg_1506[18]),
        .R(1'b0));
  FDRE \filt_res1_reg_1506_reg[19] 
       (.C(ap_clk),
        .CE(filt_res0_reg_15010),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_6),
        .Q(filt_res1_reg_1506[19]),
        .R(1'b0));
  bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.CO(icmp_ln159_fu_381_p2),
        .D({flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20}),
        .DI({flow_control_loop_pipe_sequential_init_U_n_45,flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48}),
        .E(pixbuf_y_val_V_1_fu_178),
        .O(p_0_in),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_49,flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52}),
        .SR(SR),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .ap_enable_reg_pp0_iter13(ap_enable_reg_pp0_iter13),
        .ap_loop_exit_ready_pp0_iter13_reg(ap_loop_exit_ready_pp0_iter13_reg),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_10),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_x_1(ap_sig_allocacmp_x_1),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg(pixbuf_y_val_V_5_fu_182),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_0(x_fu_174),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_1({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_2({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_3({flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78}),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_4({flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82}),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_ap_start_reg_reg_5(flow_control_loop_pipe_sequential_init_U_n_90),
        .grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240_loopWidth),
        .icmp_ln145_fu_293_p2(icmp_ln145_fu_293_p2),
        .icmp_ln168_fu_403_p2_carry__0(icmp_ln168_fu_403_p2_carry__0_0),
        .icmp_ln168_reg_1298(icmp_ln168_reg_1298),
        .icmp_ln168_reg_1298_pp0_iter12_reg(icmp_ln168_reg_1298_pp0_iter12_reg),
        .\icmp_ln168_reg_1298_reg[0] (flow_control_loop_pipe_sequential_init_U_n_88),
        .\icmp_ln168_reg_1298_reg[0]_0 (icmp_ln168_fu_403_p2),
        .\int_width_reg[10] ({flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}),
        .internal_full_n_reg(flow_control_loop_pipe_sequential_init_U_n_89),
        .\pixbuf_y_val_V_1_fu_178_reg[0] (\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .\pixbuf_y_val_V_1_fu_178_reg[7] (\pixbuf_y_val_V_1_fu_178_reg[7]_1 ),
        .\pixbuf_y_val_V_1_fu_178_reg[7]_0 (D),
        .\pixbuf_y_val_V_3_load_reg_605_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27,flow_control_loop_pipe_sequential_init_U_n_28}),
        .\pixbuf_y_val_V_4_load_reg_610_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36}),
        .\pixbuf_y_val_V_5_fu_182_reg[7] (\pixbuf_y_val_V_5_fu_182_reg[7]_1 ),
        .\pixbuf_y_val_V_5_fu_182_reg[7]_0 (\pixbuf_y_val_V_6_fu_186_reg[7]_0 ),
        .\pixbuf_y_val_V_6_fu_186_reg[7] (\pixbuf_y_val_V_6_fu_186_reg[7]_1 ),
        .\pixbuf_y_val_V_6_fu_186_reg[7]_0 (\pixbuf_y_val_V_7_fu_190_reg[7]_0 ),
        .\pixbuf_y_val_V_7_fu_190_reg[7] (\pixbuf_y_val_V_7_fu_190_reg[7]_1 ),
        .\pixbuf_y_val_V_7_fu_190_reg[7]_0 (\pixbuf_y_val_V_1_fu_178_reg[7]_0 ),
        .\pixbuf_y_val_V_load_reg_595_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44}),
        .\select_ln220_reg_1302_reg[0] (flow_control_loop_pipe_sequential_init_U_n_5),
        .\select_ln220_reg_1302_reg[0]_0 (\select_ln220_reg_1302_reg_n_5_[0] ),
        .\select_ln220_reg_1302_reg[0]_1 (\select_ln262_reg_1554_reg[0]_0 ),
        .tmp_5_reg_1314(tmp_5_reg_1314),
        .\tmp_5_reg_1314_reg[0] (flow_control_loop_pipe_sequential_init_U_n_86),
        .\tmp_5_reg_1314_reg[0]_0 (\tmp_5_reg_1314_reg[0]_0 ),
        .\x_fu_174_reg[10] ({x_2_fu_387_p2[10],flow_control_loop_pipe_sequential_init_U_n_54,x_2_fu_387_p2[8],flow_control_loop_pipe_sequential_init_U_n_56,x_2_fu_387_p2[6:0]}),
        .\x_fu_174_reg[10]_0 ({\x_fu_174_reg_n_5_[10] ,\x_fu_174_reg_n_5_[9] ,\x_fu_174_reg_n_5_[8] ,\x_fu_174_reg_n_5_[7] ,\x_fu_174_reg_n_5_[6] ,\x_fu_174_reg_n_5_[5] ,\x_fu_174_reg_n_5_[4] ,\x_fu_174_reg_n_5_[3] ,\x_fu_174_reg_n_5_[2] ,\x_fu_174_reg_n_5_[1] ,\x_fu_174_reg_n_5_[0] }),
        .\x_fu_174_reg[2] ({flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85}),
        .\x_fu_174_reg[9] ({flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67}));
  CARRY4 icmp_ln159_fu_381_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln159_fu_381_p2,icmp_ln159_fu_381_p2_carry_n_6,icmp_ln159_fu_381_p2_carry_n_7,icmp_ln159_fu_381_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln159_fu_381_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67}));
  FDRE \icmp_ln159_reg_1289_pp0_iter10_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter9_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter10_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter11_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter10_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter11_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter12_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter11_reg),
        .Q(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289),
        .Q(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .Q(\icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln159_reg_1289_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln159_reg_1289_pp0_iter4_reg_reg[0]_srl2 " *) 
  SRL16E \icmp_ln159_reg_1289_pp0_iter4_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(\icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ),
        .Q(\icmp_ln159_reg_1289_pp0_iter4_reg_reg[0]_srl2_n_5 ));
  FDRE \icmp_ln159_reg_1289_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln159_reg_1289_pp0_iter4_reg_reg[0]_srl2_n_5 ),
        .Q(icmp_ln159_reg_1289_pp0_iter5_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter6_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter5_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter6_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter6_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter7_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter8_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter7_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter8_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_pp0_iter9_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_reg_1289_pp0_iter8_reg),
        .Q(icmp_ln159_reg_1289_pp0_iter9_reg),
        .R(1'b0));
  FDRE \icmp_ln159_reg_1289_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln159_fu_381_p2),
        .Q(icmp_ln159_reg_1289),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln168_fu_403_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln168_fu_403_p2_carry_n_5,icmp_ln168_fu_403_p2_carry_n_6,icmp_ln168_fu_403_p2_carry_n_7,icmp_ln168_fu_403_p2_carry_n_8}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_45,flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48}),
        .O(NLW_icmp_ln168_fu_403_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_49,flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln168_fu_403_p2_carry__0
       (.CI(icmp_ln168_fu_403_p2_carry_n_5),
        .CO({NLW_icmp_ln168_fu_403_p2_carry__0_CO_UNCONNECTED[3:2],icmp_ln168_fu_403_p2,icmp_ln168_fu_403_p2_carry__0_n_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}),
        .O(NLW_icmp_ln168_fu_403_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_81,flow_control_loop_pipe_sequential_init_U_n_82}));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln168_reg_1298_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/icmp_ln168_reg_1298_pp0_iter11_reg_reg[0]_srl10 " *) 
  SRL16E \icmp_ln168_reg_1298_pp0_iter11_reg_reg[0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(icmp_ln168_reg_1298_pp0_iter1_reg),
        .Q(\icmp_ln168_reg_1298_pp0_iter11_reg_reg[0]_srl10_n_5 ));
  FDRE \icmp_ln168_reg_1298_pp0_iter12_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln168_reg_1298_pp0_iter11_reg_reg[0]_srl10_n_5 ),
        .Q(icmp_ln168_reg_1298_pp0_iter12_reg),
        .R(1'b0));
  FDRE \icmp_ln168_reg_1298_pp0_iter13_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln168_reg_1298_pp0_iter12_reg),
        .Q(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .R(1'b0));
  FDRE \icmp_ln168_reg_1298_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln168_reg_1298),
        .Q(icmp_ln168_reg_1298_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln168_reg_1298_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_88),
        .Q(icmp_ln168_reg_1298),
        .R(1'b0));
  FDRE \icmp_ln403_reg_1517_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln403_reg_15170),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U59_n_17),
        .Q(icmp_ln403_reg_1517),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \icmp_ln404_reg_1528[0]_i_1 
       (.I0(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I1(or_ln384_reg_1344_pp0_iter11_reg),
        .I2(icmp_ln159_reg_1289_pp0_iter11_reg),
        .O(icmp_ln403_reg_15170));
  FDRE \icmp_ln404_reg_1528_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln403_reg_15170),
        .D(mac_muladd_8ns_16s_26s_26_4_1_U60_n_14),
        .Q(icmp_ln404_reg_1528),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDF)) 
    internal_empty_n_i_3
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln159_reg_1289),
        .I2(icmp_ln168_reg_1298),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  LUT6 #(
    .INIT(64'h00000000AA8A0000)) 
    internal_full_n_i_3
       (.I0(Q[1]),
        .I1(outYUV_full_n),
        .I2(ap_enable_reg_pp0_iter14),
        .I3(\mOutPtr_reg[0] ),
        .I4(srcYUV_empty_n),
        .I5(ap_enable_reg_pp0_iter1_reg_0),
        .O(\ap_CS_fsm_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA6AAAAAA)) 
    \mOutPtr[4]_i_1 
       (.I0(shiftReg_ce_0),
        .I1(icmp_ln168_reg_1298),
        .I2(icmp_ln159_reg_1289),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(srcYUV_empty_n),
        .I5(internal_empty_n_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \mOutPtr[4]_i_3 
       (.I0(B_V_data_1_sel_wr01_out),
        .I1(\SRL_SIG_reg[15][0]_srl16_i_7_n_5 ),
        .I2(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter14),
        .O(\ap_CS_fsm_reg[3] ));
  LUT6 #(
    .INIT(64'h11111F11FFFFFFFF)) 
    \mOutPtr[4]_i_3__0 
       (.I0(srcYUV_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg_0),
        .I2(\mOutPtr_reg[0] ),
        .I3(ap_enable_reg_pp0_iter14),
        .I4(outYUV_full_n),
        .I5(Q[1]),
        .O(internal_empty_n_reg));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1 mac_muladd_8ns_16s_12ns_24_4_1_U53
       (.P({mac_muladd_8ns_16s_12ns_24_4_1_U53_n_5,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_6,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_7,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_8,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_9,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_10,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_11,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_12,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_13,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_14,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_15,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_16,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_17,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_18,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_19,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_20,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_21,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_22,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_23,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_24,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_25,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_26,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_27,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_28}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_0(p_reg_reg_2),
        .p_reg_reg_1(p_reg_reg_5),
        .p_reg_reg_2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .p_reg_reg_3(p_reg_reg_4),
        .select_ln220_reg_1302_pp0_iter2_reg(select_ln220_reg_1302_pp0_iter2_reg));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1_1 mac_muladd_8ns_16s_12ns_24_4_1_U54
       (.P({mac_muladd_8ns_16s_12ns_24_4_1_U54_n_5,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_6,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_7,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_8,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_9,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_10,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_11,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_12,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_13,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_14,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_15,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_16,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_17,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_18,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_19,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_20,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_21,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_22,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_23,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_24,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_25,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_26,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_27,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_28}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .p_reg_reg(p_reg_reg),
        .p_reg_reg_0(p_reg_reg_3),
        .p_reg_reg_1(p_reg_reg_7),
        .p_reg_reg_2(p_reg_reg_6),
        .p_reg_reg_3(\select_ln262_reg_1554_reg[0]_0 ),
        .select_ln220_reg_1302_pp0_iter2_reg(select_ln220_reg_1302_pp0_iter2_reg),
        .trunc_ln159_reg_1282_pp0_iter2_reg(trunc_ln159_reg_1282_pp0_iter2_reg),
        .\trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] (mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1 mac_muladd_8ns_16s_24s_25_4_1_U55
       (.B(B),
        .P({mac_muladd_8ns_16s_24s_25_4_1_U55_n_5,mac_muladd_8ns_16s_24s_25_4_1_U55_n_6,mac_muladd_8ns_16s_24s_25_4_1_U55_n_7,mac_muladd_8ns_16s_24s_25_4_1_U55_n_8,mac_muladd_8ns_16s_24s_25_4_1_U55_n_9,mac_muladd_8ns_16s_24s_25_4_1_U55_n_10,mac_muladd_8ns_16s_24s_25_4_1_U55_n_11,mac_muladd_8ns_16s_24s_25_4_1_U55_n_12,mac_muladd_8ns_16s_24s_25_4_1_U55_n_13,mac_muladd_8ns_16s_24s_25_4_1_U55_n_14,mac_muladd_8ns_16s_24s_25_4_1_U55_n_15,mac_muladd_8ns_16s_24s_25_4_1_U55_n_16,mac_muladd_8ns_16s_24s_25_4_1_U55_n_17,mac_muladd_8ns_16s_24s_25_4_1_U55_n_18,mac_muladd_8ns_16s_24s_25_4_1_U55_n_19,mac_muladd_8ns_16s_24s_25_4_1_U55_n_20,mac_muladd_8ns_16s_24s_25_4_1_U55_n_21,mac_muladd_8ns_16s_24s_25_4_1_U55_n_22,mac_muladd_8ns_16s_24s_25_4_1_U55_n_23,mac_muladd_8ns_16s_24s_25_4_1_U55_n_24,mac_muladd_8ns_16s_24s_25_4_1_U55_n_25,mac_muladd_8ns_16s_24s_25_4_1_U55_n_26,mac_muladd_8ns_16s_24s_25_4_1_U55_n_27,mac_muladd_8ns_16s_24s_25_4_1_U55_n_28,mac_muladd_8ns_16s_24s_25_4_1_U55_n_29}),
        .Q(select_ln250_7_reg_1375),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .filt_res0_5_reg_14190(filt_res0_5_reg_14190),
        .icmp_ln159_reg_1289_pp0_iter5_reg(icmp_ln159_reg_1289_pp0_iter5_reg),
        .or_ln384_reg_1344_pp0_iter5_reg(or_ln384_reg_1344_pp0_iter5_reg),
        .p_reg_reg({mac_muladd_8ns_16s_12ns_24_4_1_U53_n_5,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_6,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_7,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_8,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_9,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_10,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_11,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_12,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_13,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_14,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_15,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_16,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_17,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_18,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_19,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_20,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_21,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_22,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_23,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_24,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_25,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_26,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_27,mac_muladd_8ns_16s_12ns_24_4_1_U53_n_28}),
        .p_reg_reg_0(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1_2 mac_muladd_8ns_16s_24s_25_4_1_U56
       (.B(B),
        .P({mac_muladd_8ns_16s_24s_25_4_1_U56_n_5,mac_muladd_8ns_16s_24s_25_4_1_U56_n_6,mac_muladd_8ns_16s_24s_25_4_1_U56_n_7,mac_muladd_8ns_16s_24s_25_4_1_U56_n_8,mac_muladd_8ns_16s_24s_25_4_1_U56_n_9,mac_muladd_8ns_16s_24s_25_4_1_U56_n_10,mac_muladd_8ns_16s_24s_25_4_1_U56_n_11,mac_muladd_8ns_16s_24s_25_4_1_U56_n_12,mac_muladd_8ns_16s_24s_25_4_1_U56_n_13,mac_muladd_8ns_16s_24s_25_4_1_U56_n_14,mac_muladd_8ns_16s_24s_25_4_1_U56_n_15,mac_muladd_8ns_16s_24s_25_4_1_U56_n_16,mac_muladd_8ns_16s_24s_25_4_1_U56_n_17,mac_muladd_8ns_16s_24s_25_4_1_U56_n_18,mac_muladd_8ns_16s_24s_25_4_1_U56_n_19,mac_muladd_8ns_16s_24s_25_4_1_U56_n_20,mac_muladd_8ns_16s_24s_25_4_1_U56_n_21,mac_muladd_8ns_16s_24s_25_4_1_U56_n_22,mac_muladd_8ns_16s_24s_25_4_1_U56_n_23,mac_muladd_8ns_16s_24s_25_4_1_U56_n_24,mac_muladd_8ns_16s_24s_25_4_1_U56_n_25,mac_muladd_8ns_16s_24s_25_4_1_U56_n_26,mac_muladd_8ns_16s_24s_25_4_1_U56_n_27,mac_muladd_8ns_16s_24s_25_4_1_U56_n_28,mac_muladd_8ns_16s_24s_25_4_1_U56_n_29}),
        .Q(select_ln250_5_reg_1370),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_5_reg_14190(filt_res0_5_reg_14190),
        .p_reg_reg({mac_muladd_8ns_16s_12ns_24_4_1_U54_n_5,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_6,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_7,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_8,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_9,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_10,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_11,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_12,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_13,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_14,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_15,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_16,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_17,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_18,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_19,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_20,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_21,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_22,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_23,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_24,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_25,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_26,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_27,mac_muladd_8ns_16s_12ns_24_4_1_U54_n_28}));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1 mac_muladd_8ns_16s_25s_26_4_1_U57
       (.P({mac_muladd_8ns_16s_25s_26_4_1_U57_n_5,mac_muladd_8ns_16s_25s_26_4_1_U57_n_6,mac_muladd_8ns_16s_25s_26_4_1_U57_n_7,mac_muladd_8ns_16s_25s_26_4_1_U57_n_8,mac_muladd_8ns_16s_25s_26_4_1_U57_n_9,mac_muladd_8ns_16s_25s_26_4_1_U57_n_10,mac_muladd_8ns_16s_25s_26_4_1_U57_n_11,mac_muladd_8ns_16s_25s_26_4_1_U57_n_12,mac_muladd_8ns_16s_25s_26_4_1_U57_n_13,mac_muladd_8ns_16s_25s_26_4_1_U57_n_14,mac_muladd_8ns_16s_25s_26_4_1_U57_n_15,mac_muladd_8ns_16s_25s_26_4_1_U57_n_16,mac_muladd_8ns_16s_25s_26_4_1_U57_n_17,mac_muladd_8ns_16s_25s_26_4_1_U57_n_18,mac_muladd_8ns_16s_25s_26_4_1_U57_n_19,mac_muladd_8ns_16s_25s_26_4_1_U57_n_20,mac_muladd_8ns_16s_25s_26_4_1_U57_n_21,mac_muladd_8ns_16s_25s_26_4_1_U57_n_22,mac_muladd_8ns_16s_25s_26_4_1_U57_n_23,mac_muladd_8ns_16s_25s_26_4_1_U57_n_24,mac_muladd_8ns_16s_25s_26_4_1_U57_n_25,mac_muladd_8ns_16s_25s_26_4_1_U57_n_26,mac_muladd_8ns_16s_25s_26_4_1_U57_n_27,mac_muladd_8ns_16s_25s_26_4_1_U57_n_28,mac_muladd_8ns_16s_25s_26_4_1_U57_n_29,mac_muladd_8ns_16s_25s_26_4_1_U57_n_30}),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter8(ap_enable_reg_pp0_iter8),
        .filt_res0_6_reg_14550(filt_res0_6_reg_14550),
        .icmp_ln159_reg_1289_pp0_iter7_reg(icmp_ln159_reg_1289_pp0_iter7_reg),
        .or_ln384_reg_1344_pp0_iter7_reg(or_ln384_reg_1344_pp0_iter7_reg),
        .p_reg_reg(p_reg_reg_0),
        .p_reg_reg_0({mac_muladd_8ns_16s_24s_25_4_1_U55_n_5,mac_muladd_8ns_16s_24s_25_4_1_U55_n_6,mac_muladd_8ns_16s_24s_25_4_1_U55_n_7,mac_muladd_8ns_16s_24s_25_4_1_U55_n_8,mac_muladd_8ns_16s_24s_25_4_1_U55_n_9,mac_muladd_8ns_16s_24s_25_4_1_U55_n_10,mac_muladd_8ns_16s_24s_25_4_1_U55_n_11,mac_muladd_8ns_16s_24s_25_4_1_U55_n_12,mac_muladd_8ns_16s_24s_25_4_1_U55_n_13,mac_muladd_8ns_16s_24s_25_4_1_U55_n_14,mac_muladd_8ns_16s_24s_25_4_1_U55_n_15,mac_muladd_8ns_16s_24s_25_4_1_U55_n_16,mac_muladd_8ns_16s_24s_25_4_1_U55_n_17,mac_muladd_8ns_16s_24s_25_4_1_U55_n_18,mac_muladd_8ns_16s_24s_25_4_1_U55_n_19,mac_muladd_8ns_16s_24s_25_4_1_U55_n_20,mac_muladd_8ns_16s_24s_25_4_1_U55_n_21,mac_muladd_8ns_16s_24s_25_4_1_U55_n_22,mac_muladd_8ns_16s_24s_25_4_1_U55_n_23,mac_muladd_8ns_16s_24s_25_4_1_U55_n_24,mac_muladd_8ns_16s_24s_25_4_1_U55_n_25,mac_muladd_8ns_16s_24s_25_4_1_U55_n_26,mac_muladd_8ns_16s_24s_25_4_1_U55_n_27,mac_muladd_8ns_16s_24s_25_4_1_U55_n_28,mac_muladd_8ns_16s_24s_25_4_1_U55_n_29}),
        .p_reg_reg_1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1_3 mac_muladd_8ns_16s_25s_26_4_1_U58
       (.P({mac_muladd_8ns_16s_25s_26_4_1_U58_n_5,mac_muladd_8ns_16s_25s_26_4_1_U58_n_6,mac_muladd_8ns_16s_25s_26_4_1_U58_n_7,mac_muladd_8ns_16s_25s_26_4_1_U58_n_8,mac_muladd_8ns_16s_25s_26_4_1_U58_n_9,mac_muladd_8ns_16s_25s_26_4_1_U58_n_10,mac_muladd_8ns_16s_25s_26_4_1_U58_n_11,mac_muladd_8ns_16s_25s_26_4_1_U58_n_12,mac_muladd_8ns_16s_25s_26_4_1_U58_n_13,mac_muladd_8ns_16s_25s_26_4_1_U58_n_14,mac_muladd_8ns_16s_25s_26_4_1_U58_n_15,mac_muladd_8ns_16s_25s_26_4_1_U58_n_16,mac_muladd_8ns_16s_25s_26_4_1_U58_n_17,mac_muladd_8ns_16s_25s_26_4_1_U58_n_18,mac_muladd_8ns_16s_25s_26_4_1_U58_n_19,mac_muladd_8ns_16s_25s_26_4_1_U58_n_20,mac_muladd_8ns_16s_25s_26_4_1_U58_n_21,mac_muladd_8ns_16s_25s_26_4_1_U58_n_22,mac_muladd_8ns_16s_25s_26_4_1_U58_n_23,mac_muladd_8ns_16s_25s_26_4_1_U58_n_24,mac_muladd_8ns_16s_25s_26_4_1_U58_n_25,mac_muladd_8ns_16s_25s_26_4_1_U58_n_26,mac_muladd_8ns_16s_25s_26_4_1_U58_n_27,mac_muladd_8ns_16s_25s_26_4_1_U58_n_28,mac_muladd_8ns_16s_25s_26_4_1_U58_n_29,mac_muladd_8ns_16s_25s_26_4_1_U58_n_30}),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_6_reg_14550(filt_res0_6_reg_14550),
        .p_reg_reg(p_reg_reg_0),
        .p_reg_reg_0({mac_muladd_8ns_16s_24s_25_4_1_U56_n_5,mac_muladd_8ns_16s_24s_25_4_1_U56_n_6,mac_muladd_8ns_16s_24s_25_4_1_U56_n_7,mac_muladd_8ns_16s_24s_25_4_1_U56_n_8,mac_muladd_8ns_16s_24s_25_4_1_U56_n_9,mac_muladd_8ns_16s_24s_25_4_1_U56_n_10,mac_muladd_8ns_16s_24s_25_4_1_U56_n_11,mac_muladd_8ns_16s_24s_25_4_1_U56_n_12,mac_muladd_8ns_16s_24s_25_4_1_U56_n_13,mac_muladd_8ns_16s_24s_25_4_1_U56_n_14,mac_muladd_8ns_16s_24s_25_4_1_U56_n_15,mac_muladd_8ns_16s_24s_25_4_1_U56_n_16,mac_muladd_8ns_16s_24s_25_4_1_U56_n_17,mac_muladd_8ns_16s_24s_25_4_1_U56_n_18,mac_muladd_8ns_16s_24s_25_4_1_U56_n_19,mac_muladd_8ns_16s_24s_25_4_1_U56_n_20,mac_muladd_8ns_16s_24s_25_4_1_U56_n_21,mac_muladd_8ns_16s_24s_25_4_1_U56_n_22,mac_muladd_8ns_16s_24s_25_4_1_U56_n_23,mac_muladd_8ns_16s_24s_25_4_1_U56_n_24,mac_muladd_8ns_16s_24s_25_4_1_U56_n_25,mac_muladd_8ns_16s_24s_25_4_1_U56_n_26,mac_muladd_8ns_16s_24s_25_4_1_U56_n_27,mac_muladd_8ns_16s_24s_25_4_1_U56_n_28,mac_muladd_8ns_16s_24s_25_4_1_U56_n_29}));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1 mac_muladd_8ns_16s_26s_26_4_1_U59
       (.A(select_ln250_1_reg_1355_pp0_iter7_reg),
        .P({tmp_1_fu_816_p4,mac_muladd_8ns_16s_26s_26_4_1_U59_n_6,mac_muladd_8ns_16s_26s_26_4_1_U59_n_7,mac_muladd_8ns_16s_26s_26_4_1_U59_n_8,mac_muladd_8ns_16s_26s_26_4_1_U59_n_9,mac_muladd_8ns_16s_26s_26_4_1_U59_n_10,mac_muladd_8ns_16s_26s_26_4_1_U59_n_11,mac_muladd_8ns_16s_26s_26_4_1_U59_n_12,mac_muladd_8ns_16s_26s_26_4_1_U59_n_13}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter10(ap_enable_reg_pp0_iter10),
        .ap_enable_reg_pp0_iter14(ap_enable_reg_pp0_iter14),
        .filt_res0_7_reg_14910(filt_res0_7_reg_14910),
        .icmp_ln159_reg_1289(icmp_ln159_reg_1289),
        .icmp_ln159_reg_1289_pp0_iter9_reg(icmp_ln159_reg_1289_pp0_iter9_reg),
        .icmp_ln168_reg_1298(icmp_ln168_reg_1298),
        .internal_full_n_reg(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .or_ln384_reg_1344_pp0_iter9_reg(or_ln384_reg_1344_pp0_iter9_reg),
        .outYUV_full_n(outYUV_full_n),
        .p_reg_reg(mac_muladd_8ns_16s_26s_26_4_1_U59_n_17),
        .p_reg_reg_0(p_reg_reg_1),
        .p_reg_reg_1({mac_muladd_8ns_16s_25s_26_4_1_U57_n_5,mac_muladd_8ns_16s_25s_26_4_1_U57_n_6,mac_muladd_8ns_16s_25s_26_4_1_U57_n_7,mac_muladd_8ns_16s_25s_26_4_1_U57_n_8,mac_muladd_8ns_16s_25s_26_4_1_U57_n_9,mac_muladd_8ns_16s_25s_26_4_1_U57_n_10,mac_muladd_8ns_16s_25s_26_4_1_U57_n_11,mac_muladd_8ns_16s_25s_26_4_1_U57_n_12,mac_muladd_8ns_16s_25s_26_4_1_U57_n_13,mac_muladd_8ns_16s_25s_26_4_1_U57_n_14,mac_muladd_8ns_16s_25s_26_4_1_U57_n_15,mac_muladd_8ns_16s_25s_26_4_1_U57_n_16,mac_muladd_8ns_16s_25s_26_4_1_U57_n_17,mac_muladd_8ns_16s_25s_26_4_1_U57_n_18,mac_muladd_8ns_16s_25s_26_4_1_U57_n_19,mac_muladd_8ns_16s_25s_26_4_1_U57_n_20,mac_muladd_8ns_16s_25s_26_4_1_U57_n_21,mac_muladd_8ns_16s_25s_26_4_1_U57_n_22,mac_muladd_8ns_16s_25s_26_4_1_U57_n_23,mac_muladd_8ns_16s_25s_26_4_1_U57_n_24,mac_muladd_8ns_16s_25s_26_4_1_U57_n_25,mac_muladd_8ns_16s_25s_26_4_1_U57_n_26,mac_muladd_8ns_16s_25s_26_4_1_U57_n_27,mac_muladd_8ns_16s_25s_26_4_1_U57_n_28,mac_muladd_8ns_16s_25s_26_4_1_U57_n_29,mac_muladd_8ns_16s_25s_26_4_1_U57_n_30}),
        .p_reg_reg_2(\tmp_5_reg_1314_reg[0]_0 ),
        .p_reg_reg_3(\icmp_ln168_reg_1298_pp0_iter13_reg_reg[0]_0 ),
        .srcYUV_empty_n(srcYUV_empty_n),
        .tmp_5_reg_1314_pp0_iter13_reg(tmp_5_reg_1314_pp0_iter13_reg));
  bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1_4 mac_muladd_8ns_16s_26s_26_4_1_U60
       (.A(select_ln250_reg_1350_pp0_iter7_reg),
        .P({tmp_4_fu_838_p4,mac_muladd_8ns_16s_26s_26_4_1_U60_n_6,mac_muladd_8ns_16s_26s_26_4_1_U60_n_7,mac_muladd_8ns_16s_26s_26_4_1_U60_n_8,mac_muladd_8ns_16s_26s_26_4_1_U60_n_9,mac_muladd_8ns_16s_26s_26_4_1_U60_n_10,mac_muladd_8ns_16s_26s_26_4_1_U60_n_11,mac_muladd_8ns_16s_26s_26_4_1_U60_n_12,mac_muladd_8ns_16s_26s_26_4_1_U60_n_13}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .filt_res0_7_reg_14910(filt_res0_7_reg_14910),
        .p_reg_reg(mac_muladd_8ns_16s_26s_26_4_1_U60_n_14),
        .p_reg_reg_0(p_reg_reg_1),
        .p_reg_reg_1({mac_muladd_8ns_16s_25s_26_4_1_U58_n_5,mac_muladd_8ns_16s_25s_26_4_1_U58_n_6,mac_muladd_8ns_16s_25s_26_4_1_U58_n_7,mac_muladd_8ns_16s_25s_26_4_1_U58_n_8,mac_muladd_8ns_16s_25s_26_4_1_U58_n_9,mac_muladd_8ns_16s_25s_26_4_1_U58_n_10,mac_muladd_8ns_16s_25s_26_4_1_U58_n_11,mac_muladd_8ns_16s_25s_26_4_1_U58_n_12,mac_muladd_8ns_16s_25s_26_4_1_U58_n_13,mac_muladd_8ns_16s_25s_26_4_1_U58_n_14,mac_muladd_8ns_16s_25s_26_4_1_U58_n_15,mac_muladd_8ns_16s_25s_26_4_1_U58_n_16,mac_muladd_8ns_16s_25s_26_4_1_U58_n_17,mac_muladd_8ns_16s_25s_26_4_1_U58_n_18,mac_muladd_8ns_16s_25s_26_4_1_U58_n_19,mac_muladd_8ns_16s_25s_26_4_1_U58_n_20,mac_muladd_8ns_16s_25s_26_4_1_U58_n_21,mac_muladd_8ns_16s_25s_26_4_1_U58_n_22,mac_muladd_8ns_16s_25s_26_4_1_U58_n_23,mac_muladd_8ns_16s_25s_26_4_1_U58_n_24,mac_muladd_8ns_16s_25s_26_4_1_U58_n_25,mac_muladd_8ns_16s_25s_26_4_1_U58_n_26,mac_muladd_8ns_16s_25s_26_4_1_U58_n_27,mac_muladd_8ns_16s_25s_26_4_1_U58_n_28,mac_muladd_8ns_16s_25s_26_4_1_U58_n_29,mac_muladd_8ns_16s_25s_26_4_1_U58_n_30}));
  FDRE \odd_col_reg_1293_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(odd_col_reg_1293),
        .Q(odd_col_reg_1293_pp0_iter1_reg),
        .R(1'b0));
  FDRE \odd_col_reg_1293_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_89),
        .D(out_x_fu_393_p2_carry_n_12),
        .Q(odd_col_reg_1293),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \or_ln350_reg_1380[0]_i_1 
       (.I0(\cmp335_reg_1338_reg[0]_0 ),
        .I1(icmp_ln145_fu_293_p2),
        .O(p_0_in0_out));
  FDRE \or_ln350_reg_1380_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln350_reg_1380),
        .Q(or_ln350_reg_1380_pp0_iter4_reg),
        .R(1'b0));
  FDRE \or_ln350_reg_1380_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln350_reg_1380_pp0_iter4_reg),
        .Q(or_ln350_reg_1380_pp0_iter5_reg),
        .R(1'b0));
  FDRE \or_ln350_reg_1380_pp0_iter6_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln350_reg_1380_pp0_iter5_reg),
        .Q(or_ln350_reg_1380_pp0_iter6_reg),
        .R(1'b0));
  FDRE \or_ln350_reg_1380_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln350_reg_1380_pp0_iter6_reg),
        .Q(or_ln350_reg_1380_pp0_iter7_reg),
        .R(1'b0));
  FDRE \or_ln350_reg_1380_pp0_iter8_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln350_reg_1380_pp0_iter7_reg),
        .Q(or_ln350_reg_1380_pp0_iter8_reg),
        .R(1'b0));
  FDRE \or_ln350_reg_1380_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(p_0_in0_out),
        .Q(or_ln350_reg_1380),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAFAAA3)) 
    \or_ln384_reg_1344[0]_i_1 
       (.I0(or_ln384_reg_1344),
        .I1(odd_col_reg_1293_pp0_iter1_reg),
        .I2(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .I3(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I4(icmp_ln145_fu_293_p2),
        .O(\or_ln384_reg_1344[0]_i_1_n_5 ));
  FDRE \or_ln384_reg_1344_pp0_iter10_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter9_reg),
        .Q(or_ln384_reg_1344_pp0_iter10_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter11_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter10_reg),
        .Q(or_ln384_reg_1344_pp0_iter11_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter12_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter11_reg),
        .Q(or_ln384_reg_1344_pp0_iter12_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/or_ln384_reg_1344_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/or_ln384_reg_1344_pp0_iter4_reg_reg[0]_srl2 " *) 
  SRL16E \or_ln384_reg_1344_pp0_iter4_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(or_ln384_reg_1344),
        .Q(\or_ln384_reg_1344_pp0_iter4_reg_reg[0]_srl2_n_5 ));
  FDRE \or_ln384_reg_1344_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\or_ln384_reg_1344_pp0_iter4_reg_reg[0]_srl2_n_5 ),
        .Q(or_ln384_reg_1344_pp0_iter5_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter6_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter5_reg),
        .Q(or_ln384_reg_1344_pp0_iter6_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter6_reg),
        .Q(or_ln384_reg_1344_pp0_iter7_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter8_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter7_reg),
        .Q(or_ln384_reg_1344_pp0_iter8_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_pp0_iter9_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(or_ln384_reg_1344_pp0_iter8_reg),
        .Q(or_ln384_reg_1344_pp0_iter9_reg),
        .R(1'b0));
  FDRE \or_ln384_reg_1344_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_ln384_reg_1344[0]_i_1_n_5 ),
        .Q(or_ln384_reg_1344),
        .R(1'b0));
  CARRY4 out_x_fu_393_p2_carry
       (.CI(1'b0),
        .CO({out_x_fu_393_p2_carry_n_5,out_x_fu_393_p2_carry_n_6,out_x_fu_393_p2_carry_n_7,out_x_fu_393_p2_carry_n_8}),
        .CYINIT(1'b1),
        .DI({1'b1,flow_control_loop_pipe_sequential_init_U_n_83,flow_control_loop_pipe_sequential_init_U_n_84,flow_control_loop_pipe_sequential_init_U_n_85}),
        .O({NLW_out_x_fu_393_p2_carry_O_UNCONNECTED[3:1],out_x_fu_393_p2_carry_n_12}),
        .S({flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}));
  CARRY4 out_x_fu_393_p2_carry__0
       (.CI(out_x_fu_393_p2_carry_n_5),
        .CO({out_x_fu_393_p2_carry__0_n_5,out_x_fu_393_p2_carry__0_n_6,out_x_fu_393_p2_carry__0_n_7,out_x_fu_393_p2_carry__0_n_8}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_out_x_fu_393_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_72,flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75}));
  CARRY4 out_x_fu_393_p2_carry__1
       (.CI(out_x_fu_393_p2_carry__0_n_5),
        .CO({NLW_out_x_fu_393_p2_carry__1_CO_UNCONNECTED[3],out_x_fu_393_p2_carry__1_n_6,out_x_fu_393_p2_carry__1_n_7,out_x_fu_393_p2_carry__1_n_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({p_0_in,NLW_out_x_fu_393_p2_carry__1_O_UNCONNECTED[2:0]}),
        .S({1'b1,flow_control_loop_pipe_sequential_init_U_n_76,flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78}));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [0]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [1]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [2]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [3]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [4]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [5]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [6]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [6]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185443_lcssa489_fu_116[7]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_4[7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [7]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7] [7]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[0]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[1]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[2]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[3]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[4]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[5]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[6]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [6]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185445448_lcssa492_fu_120[7]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_5[7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_4[7]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_1 [7]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [0]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [1]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [2]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [3]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [4]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [5]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [6]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0185_1455_lcssa501_fu_132[7]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_2[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [7]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_0 [7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[0]_i_1 
       (.I0(p_reg_reg_2[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [0]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[1]_i_1 
       (.I0(p_reg_reg_2[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [1]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[2]_i_1 
       (.I0(p_reg_reg_2[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [2]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[3]_i_1 
       (.I0(p_reg_reg_2[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [3]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[4]_i_1 
       (.I0(p_reg_reg_2[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [4]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[5]_i_1 
       (.I0(p_reg_reg_2[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [5]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[6]_i_1 
       (.I0(p_reg_reg_2[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [6]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0185_2461_lcssa507_fu_140[7]_i_1 
       (.I0(p_reg_reg_2[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [7]),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108_reg[7]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \p_0_0_0_0_0193428_lcssa471_fu_96[7]_i_1 
       (.I0(ap_enable_reg_pp0_iter13),
        .I1(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I2(icmp_ln168_reg_1298_pp0_iter12_reg),
        .I3(Q[1]),
        .I4(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(ap_enable_reg_pp0_iter13_reg_0));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [0]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [1]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [2]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [3]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [4]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [5]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [6]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [6]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0449_lcssa495_fu_124[7]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_6[7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [7]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7] [7]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[0]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[1]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[2]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[3]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[4]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[5]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[6]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_1 
       (.I0(Q[1]),
        .I1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ),
        .O(\ap_CS_fsm_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_2 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(p_reg_reg_7[7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(p_reg_reg_6[7]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_1 [7]));
  LUT2 #(
    .INIT(4'hB)) 
    \p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3 
       (.I0(\icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ),
        .I1(ap_enable_reg_pp0_iter3),
        .O(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[0]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[0]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [0]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [0]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[1]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[1]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [1]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [1]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[2]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[2]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [2]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [2]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[3]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[3]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [3]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [3]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[4]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[4]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [4]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [4]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[5]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[5]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [5]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [5]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[6]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[6]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [6]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [6]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \p_0_0_0_0_0_1458_lcssa504_fu_136[7]_i_1 
       (.I0(\p_0_0_0_0_0451454_lcssa498_fu_128[7]_i_3_n_5 ),
        .I1(p_reg_reg_3[7]),
        .I2(select_ln220_reg_1302_pp0_iter2_reg),
        .I3(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [7]),
        .I4(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I5(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [7]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_0 [7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[0]_i_1 
       (.I0(p_reg_reg_3[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [0]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[1]_i_1 
       (.I0(p_reg_reg_3[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [1]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[2]_i_1 
       (.I0(p_reg_reg_3[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [2]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[3]_i_1 
       (.I0(p_reg_reg_3[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [3]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[4]_i_1 
       (.I0(p_reg_reg_3[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [4]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[5]_i_1 
       (.I0(p_reg_reg_3[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [5]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[6]_i_1 
       (.I0(p_reg_reg_3[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [6]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \p_0_0_0_0_0_2465_lcssa510_fu_144[7]_i_1 
       (.I0(p_reg_reg_3[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [7]),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112_reg[7]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[0]_i_1 
       (.I0(trunc_ln145_1_reg_1324[0]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[0]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[1]_i_1 
       (.I0(trunc_ln145_1_reg_1324[1]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[1]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[2]_i_1 
       (.I0(trunc_ln145_1_reg_1324[2]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[2]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[3]_i_1 
       (.I0(trunc_ln145_1_reg_1324[3]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[3]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[4]_i_1 
       (.I0(trunc_ln145_1_reg_1324[4]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[4]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[5]_i_1 
       (.I0(trunc_ln145_1_reg_1324[5]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[5]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[6]_i_1 
       (.I0(trunc_ln145_1_reg_1324[6]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[6]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[7]_i_1 
       (.I0(trunc_ln145_1_reg_1324[7]),
        .I1(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ),
        .I2(p_reg_reg_2[7]),
        .O(\trunc_ln145_1_reg_1324_reg[7]_1 [7]));
  LUT5 #(
    .INIT(32'h40004040)) 
    \p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2 
       (.I0(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .I1(icmp_ln168_reg_1298_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\select_ln262_reg_1554_reg[0]_0 ),
        .I4(trunc_ln159_reg_1282_pp0_iter1_reg),
        .O(\p_0_1_0_0_0437_lcssa483_fu_108[7]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[0]_i_1 
       (.I0(trunc_ln145_2_reg_1332[0]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[0]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[0]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[1]_i_1 
       (.I0(trunc_ln145_2_reg_1332[1]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[1]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[1]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[2]_i_1 
       (.I0(trunc_ln145_2_reg_1332[2]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[2]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[2]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[3]_i_1 
       (.I0(trunc_ln145_2_reg_1332[3]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[3]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[3]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[4]_i_1 
       (.I0(trunc_ln145_2_reg_1332[4]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[4]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[4]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [4]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[5]_i_1 
       (.I0(trunc_ln145_2_reg_1332[5]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[5]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[5]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [5]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[6]_i_1 
       (.I0(trunc_ln145_2_reg_1332[6]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[6]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[6]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .I1(icmp_ln168_reg_1298_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(Q[1]),
        .I4(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(\icmp_ln159_reg_1289_pp0_iter1_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_2 
       (.I0(trunc_ln145_2_reg_1332[7]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(trunc_ln145_1_reg_1324[7]),
        .I3(trunc_ln159_reg_1282_pp0_iter1_reg),
        .I4(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ),
        .I5(p_reg_reg_3[7]),
        .O(\trunc_ln145_2_reg_1332_reg[7]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(icmp_ln168_reg_1298_pp0_iter1_reg),
        .I2(\icmp_ln159_reg_1289_pp0_iter1_reg_reg_n_5_[0] ),
        .O(\p_0_1_0_0_0441_lcssa486_fu_112[7]_i_4_n_5 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pixbuf_y_val_V_11_reg_1544[7]_i_1 
       (.I0(ap_enable_reg_pp0_iter13),
        .I1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(pixbuf_y_val_V_10_reg_15390));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [0]),
        .Q(pixbuf_y_val_V_11_reg_1544[0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [1]),
        .Q(pixbuf_y_val_V_11_reg_1544[1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [2]),
        .Q(pixbuf_y_val_V_11_reg_1544[2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [3]),
        .Q(pixbuf_y_val_V_11_reg_1544[3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [4]),
        .Q(pixbuf_y_val_V_11_reg_1544[4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [5]),
        .Q(pixbuf_y_val_V_11_reg_1544[5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [6]),
        .Q(pixbuf_y_val_V_11_reg_1544[6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_11_reg_1544_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [7]),
        .Q(pixbuf_y_val_V_11_reg_1544[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pixbuf_y_val_V_1_fu_152[7]_i_1 
       (.I0(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter14),
        .O(\ap_CS_fsm_reg[3]_0 ));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_44),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_43),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_42),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_41),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_40),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_38),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_1_fu_178_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_1_fu_178),
        .D(flow_control_loop_pipe_sequential_init_U_n_37),
        .Q(\pixbuf_y_val_V_1_fu_178_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_19),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_18),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_14),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_5_fu_182_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_28),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_27),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_26),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_25),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_24),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_23),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_22),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_6_fu_186_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_21),
        .Q(\pixbuf_y_val_V_6_fu_186_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_36),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_35),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_34),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_33),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_32),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_30),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_7_fu_190_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_5_fu_182),
        .D(flow_control_loop_pipe_sequential_init_U_n_29),
        .Q(\pixbuf_y_val_V_7_fu_190_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[0] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [0]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[1] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [1]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[2] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [2]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[3] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [3]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[4] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [4]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[5] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [5]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[6] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [6]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \pixbuf_y_val_V_9_reg_1533_reg[7] 
       (.C(ap_clk),
        .CE(pixbuf_y_val_V_10_reg_15390),
        .D(\pixbuf_y_val_V_5_fu_182_reg[7]_0 [7]),
        .Q(\pixbuf_y_val_V_9_reg_1533_reg[7]_0 [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \pixbuf_y_val_V_fu_148[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I1(Q[1]),
        .I2(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(\icmp_ln159_reg_1289_pp0_iter12_reg_reg[0]_1 ));
  FDRE \select_ln220_reg_1302_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln220_reg_1302_reg_n_5_[0] ),
        .Q(select_ln220_reg_1302_pp0_iter1_reg),
        .R(1'b0));
  FDRE \select_ln220_reg_1302_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln220_reg_1302_pp0_iter1_reg),
        .Q(select_ln220_reg_1302_pp0_iter2_reg),
        .R(1'b0));
  FDRE \select_ln220_reg_1302_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(\select_ln220_reg_1302_reg_n_5_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[0]_i_1 
       (.I0(p_reg_reg_2[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [0]),
        .O(select_ln250_1_fu_633_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[1]_i_1 
       (.I0(p_reg_reg_2[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [1]),
        .O(select_ln250_1_fu_633_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[2]_i_1 
       (.I0(p_reg_reg_2[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [2]),
        .O(select_ln250_1_fu_633_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[3]_i_1 
       (.I0(p_reg_reg_2[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [3]),
        .O(select_ln250_1_fu_633_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[4]_i_1 
       (.I0(p_reg_reg_2[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [4]),
        .O(select_ln250_1_fu_633_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[5]_i_1 
       (.I0(p_reg_reg_2[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [5]),
        .O(select_ln250_1_fu_633_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[6]_i_1 
       (.I0(p_reg_reg_2[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [6]),
        .O(select_ln250_1_fu_633_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_1_reg_1355[7]_i_1 
       (.I0(p_reg_reg_2[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [7]),
        .O(select_ln250_1_fu_633_p3[7]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[0]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[0]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[0]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[1]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[1]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[1]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[2]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[2]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[2]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[3]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[3]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[3]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[4]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[4]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[4]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[5]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[5]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[5]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[6]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[6]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[6]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_1_reg_1355_pp0_iter6_reg_reg[7]_srl3 " *) 
  SRL16E \select_ln250_1_reg_1355_pp0_iter6_reg_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_1_reg_1355[7]),
        .Q(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[7]_srl3_n_5 ));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[0]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[1]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[2]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[3]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[4]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[5]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[6]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_pp0_iter7_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_1_reg_1355_pp0_iter6_reg_reg[7]_srl3_n_5 ),
        .Q(select_ln250_1_reg_1355_pp0_iter7_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[0]),
        .Q(select_ln250_1_reg_1355[0]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[1]),
        .Q(select_ln250_1_reg_1355[1]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[2]),
        .Q(select_ln250_1_reg_1355[2]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[3]),
        .Q(select_ln250_1_reg_1355[3]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[4]),
        .Q(select_ln250_1_reg_1355[4]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[5]),
        .Q(select_ln250_1_reg_1355[5]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[6]),
        .Q(select_ln250_1_reg_1355[6]),
        .R(1'b0));
  FDRE \select_ln250_1_reg_1355_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_1_fu_633_p3[7]),
        .Q(select_ln250_1_reg_1355[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[0]_i_1 
       (.I0(p_reg_reg_3[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [0]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [0]),
        .O(select_ln250_2_fu_640_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[1]_i_1 
       (.I0(p_reg_reg_3[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [1]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [1]),
        .O(select_ln250_2_fu_640_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[2]_i_1 
       (.I0(p_reg_reg_3[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [2]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [2]),
        .O(select_ln250_2_fu_640_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[3]_i_1 
       (.I0(p_reg_reg_3[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [3]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [3]),
        .O(select_ln250_2_fu_640_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[4]_i_1 
       (.I0(p_reg_reg_3[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [4]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [4]),
        .O(select_ln250_2_fu_640_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[5]_i_1 
       (.I0(p_reg_reg_3[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [5]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [5]),
        .O(select_ln250_2_fu_640_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[6]_i_1 
       (.I0(p_reg_reg_3[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [6]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [6]),
        .O(select_ln250_2_fu_640_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_2_reg_1360[7]_i_1 
       (.I0(p_reg_reg_3[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [7]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [7]),
        .O(select_ln250_2_fu_640_p3[7]));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[0]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[1]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[2]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[3]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[4]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[5]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[6]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter4_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360[7]),
        .Q(select_ln250_2_reg_1360_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[0]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[1]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[2]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[3]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[4]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[5]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[6]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_pp0_iter5_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_2_reg_1360_pp0_iter4_reg[7]),
        .Q(select_ln250_2_reg_1360_pp0_iter5_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[0]),
        .Q(select_ln250_2_reg_1360[0]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[1]),
        .Q(select_ln250_2_reg_1360[1]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[2]),
        .Q(select_ln250_2_reg_1360[2]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[3]),
        .Q(select_ln250_2_reg_1360[3]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[4]),
        .Q(select_ln250_2_reg_1360[4]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[5]),
        .Q(select_ln250_2_reg_1360[5]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[6]),
        .Q(select_ln250_2_reg_1360[6]),
        .R(1'b0));
  FDRE \select_ln250_2_reg_1360_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_2_fu_640_p3[7]),
        .Q(select_ln250_2_reg_1360[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[0]_i_1 
       (.I0(p_reg_reg_2[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [0]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [0]),
        .O(select_ln250_3_fu_647_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[1]_i_1 
       (.I0(p_reg_reg_2[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [1]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [1]),
        .O(select_ln250_3_fu_647_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[2]_i_1 
       (.I0(p_reg_reg_2[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [2]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [2]),
        .O(select_ln250_3_fu_647_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[3]_i_1 
       (.I0(p_reg_reg_2[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [3]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [3]),
        .O(select_ln250_3_fu_647_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[4]_i_1 
       (.I0(p_reg_reg_2[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [4]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [4]),
        .O(select_ln250_3_fu_647_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[5]_i_1 
       (.I0(p_reg_reg_2[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [5]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [5]),
        .O(select_ln250_3_fu_647_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[6]_i_1 
       (.I0(p_reg_reg_2[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [6]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [6]),
        .O(select_ln250_3_fu_647_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_3_reg_1365[7]_i_1 
       (.I0(p_reg_reg_2[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [7]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185_1455_lcssa501_fu_132_reg[7] [7]),
        .O(select_ln250_3_fu_647_p3[7]));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[0]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[1]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[2]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[3]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[4]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[5]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[6]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter4_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365[7]),
        .Q(select_ln250_3_reg_1365_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[0]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[1]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[2]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[3]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[4]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[5]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[6]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_pp0_iter5_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln250_3_reg_1365_pp0_iter4_reg[7]),
        .Q(select_ln250_3_reg_1365_pp0_iter5_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[0]),
        .Q(select_ln250_3_reg_1365[0]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[1]),
        .Q(select_ln250_3_reg_1365[1]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[2]),
        .Q(select_ln250_3_reg_1365[2]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[3]),
        .Q(select_ln250_3_reg_1365[3]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[4]),
        .Q(select_ln250_3_reg_1365[4]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[5]),
        .Q(select_ln250_3_reg_1365[5]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[6]),
        .Q(select_ln250_3_reg_1365[6]),
        .R(1'b0));
  FDRE \select_ln250_3_reg_1365_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_3_fu_647_p3[7]),
        .Q(select_ln250_3_reg_1365[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[0]_i_1 
       (.I0(p_reg_reg_3[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[0]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [0]),
        .O(select_ln250_5_fu_661_p3[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[1]_i_1 
       (.I0(p_reg_reg_3[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[1]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [1]),
        .O(select_ln250_5_fu_661_p3[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[2]_i_1 
       (.I0(p_reg_reg_3[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[2]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [2]),
        .O(select_ln250_5_fu_661_p3[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[3]_i_1 
       (.I0(p_reg_reg_3[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[3]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [3]),
        .O(select_ln250_5_fu_661_p3[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[4]_i_1 
       (.I0(p_reg_reg_3[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[4]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [4]),
        .O(select_ln250_5_fu_661_p3[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[5]_i_1 
       (.I0(p_reg_reg_3[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[5]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [5]),
        .O(select_ln250_5_fu_661_p3[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[6]_i_1 
       (.I0(p_reg_reg_3[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[6]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [6]),
        .O(select_ln250_5_fu_661_p3[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln250_5_reg_1370[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter2_reg_reg_n_5_[0] ),
        .I1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(or_ln350_reg_13800));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_5_reg_1370[7]_i_2 
       (.I0(p_reg_reg_3[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_6[7]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0449_lcssa495_fu_124_reg[7] [7]),
        .O(select_ln250_5_fu_661_p3[7]));
  FDRE \select_ln250_5_reg_1370_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[0]),
        .Q(select_ln250_5_reg_1370[0]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[1]),
        .Q(select_ln250_5_reg_1370[1]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[2]),
        .Q(select_ln250_5_reg_1370[2]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[3]),
        .Q(select_ln250_5_reg_1370[3]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[4]),
        .Q(select_ln250_5_reg_1370[4]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[5]),
        .Q(select_ln250_5_reg_1370[5]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[6]),
        .Q(select_ln250_5_reg_1370[6]),
        .R(1'b0));
  FDRE \select_ln250_5_reg_1370_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_5_fu_661_p3[7]),
        .Q(select_ln250_5_reg_1370[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[0]_i_1 
       (.I0(p_reg_reg_2[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[0]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [0]),
        .O(select_ln250_7_fu_675_p3[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[1]_i_1 
       (.I0(p_reg_reg_2[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[1]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [1]),
        .O(select_ln250_7_fu_675_p3[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[2]_i_1 
       (.I0(p_reg_reg_2[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[2]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [2]),
        .O(select_ln250_7_fu_675_p3[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[3]_i_1 
       (.I0(p_reg_reg_2[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[3]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [3]),
        .O(select_ln250_7_fu_675_p3[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[4]_i_1 
       (.I0(p_reg_reg_2[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[4]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [4]),
        .O(select_ln250_7_fu_675_p3[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[5]_i_1 
       (.I0(p_reg_reg_2[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[5]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [5]),
        .O(select_ln250_7_fu_675_p3[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[6]_i_1 
       (.I0(p_reg_reg_2[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[6]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [6]),
        .O(select_ln250_7_fu_675_p3[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \select_ln250_7_reg_1375[7]_i_1 
       (.I0(p_reg_reg_2[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(p_reg_reg_4[7]),
        .I3(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I4(\p_0_0_0_0_0185443_lcssa489_fu_116_reg[7] [7]),
        .O(select_ln250_7_fu_675_p3[7]));
  FDRE \select_ln250_7_reg_1375_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[0]),
        .Q(select_ln250_7_reg_1375[0]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[1]),
        .Q(select_ln250_7_reg_1375[1]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[2]),
        .Q(select_ln250_7_reg_1375[2]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[3]),
        .Q(select_ln250_7_reg_1375[3]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[4]),
        .Q(select_ln250_7_reg_1375[4]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[5]),
        .Q(select_ln250_7_reg_1375[5]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[6]),
        .Q(select_ln250_7_reg_1375[6]),
        .R(1'b0));
  FDRE \select_ln250_7_reg_1375_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_7_fu_675_p3[7]),
        .Q(select_ln250_7_reg_1375[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[0]_i_1 
       (.I0(p_reg_reg_3[0]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [0]),
        .O(select_ln250_fu_626_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[1]_i_1 
       (.I0(p_reg_reg_3[1]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [1]),
        .O(select_ln250_fu_626_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[2]_i_1 
       (.I0(p_reg_reg_3[2]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [2]),
        .O(select_ln250_fu_626_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[3]_i_1 
       (.I0(p_reg_reg_3[3]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [3]),
        .O(select_ln250_fu_626_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[4]_i_1 
       (.I0(p_reg_reg_3[4]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [4]),
        .O(select_ln250_fu_626_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[5]_i_1 
       (.I0(p_reg_reg_3[5]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [5]),
        .O(select_ln250_fu_626_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[6]_i_1 
       (.I0(p_reg_reg_3[6]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [6]),
        .O(select_ln250_fu_626_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \select_ln250_reg_1350[7]_i_1 
       (.I0(p_reg_reg_3[7]),
        .I1(select_ln220_reg_1302_pp0_iter2_reg),
        .I2(mac_muladd_8ns_16s_12ns_24_4_1_U54_n_29),
        .I3(\p_0_0_0_0_0_1458_lcssa504_fu_136_reg[7] [7]),
        .O(select_ln250_fu_626_p3[7]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[0]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[0]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[0]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[1]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[1]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[1]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[2]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[2]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[2]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[3]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[3]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[3]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[4]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[4]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[4]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[5]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[5]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[5]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[6]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[6]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[6]_srl3_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/select_ln250_reg_1350_pp0_iter6_reg_reg[7]_srl3 " *) 
  SRL16E \select_ln250_reg_1350_pp0_iter6_reg_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(select_ln250_reg_1350[7]),
        .Q(\select_ln250_reg_1350_pp0_iter6_reg_reg[7]_srl3_n_5 ));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[0]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[0]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[1]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[1]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[2]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[2]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[3]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[3]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[4]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[4]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[5]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[5]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[6]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[6]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_pp0_iter7_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\select_ln250_reg_1350_pp0_iter6_reg_reg[7]_srl3_n_5 ),
        .Q(select_ln250_reg_1350_pp0_iter7_reg[7]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[0] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[0]),
        .Q(select_ln250_reg_1350[0]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[1] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[1]),
        .Q(select_ln250_reg_1350[1]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[2] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[2]),
        .Q(select_ln250_reg_1350[2]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[3] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[3]),
        .Q(select_ln250_reg_1350[3]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[4] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[4]),
        .Q(select_ln250_reg_1350[4]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[5] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[5]),
        .Q(select_ln250_reg_1350[5]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[6] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[6]),
        .Q(select_ln250_reg_1350[6]),
        .R(1'b0));
  FDRE \select_ln250_reg_1350_reg[7] 
       (.C(ap_clk),
        .CE(or_ln350_reg_13800),
        .D(select_ln250_fu_626_p3[7]),
        .Q(select_ln250_reg_1350[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[0]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [0]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[12]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[0]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[1]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [1]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[13]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[1]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[2]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [2]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[14]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[2]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[3]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [3]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[15]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[3]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[4]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [4]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[16]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[4]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[5]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [5]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[17]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[5]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[6]_i_1 
       (.I0(\filt_res1_fu_88_reg[7] [6]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[18]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \select_ln262_reg_1554[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .I2(\select_ln262_reg_1554_reg[0]_0 ),
        .O(select_ln262_reg_1554_0));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln262_reg_1554[7]_i_2 
       (.I0(\filt_res1_fu_88_reg[7] [7]),
        .I1(icmp_ln404_reg_1528),
        .I2(filt_res1_reg_1506[19]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_3_reg_1522),
        .O(trunc_ln408_1_fu_990_p1[7]));
  FDRE \select_ln262_reg_1554_reg[0] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[0]),
        .Q(select_ln262_reg_1554[0]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[1] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[1]),
        .Q(select_ln262_reg_1554[1]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[2] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[2]),
        .Q(select_ln262_reg_1554[2]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[3] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[3]),
        .Q(select_ln262_reg_1554[3]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[4] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[4]),
        .Q(select_ln262_reg_1554[4]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[5] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[5]),
        .Q(select_ln262_reg_1554[5]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[6] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[6]),
        .Q(select_ln262_reg_1554[6]),
        .R(select_ln262_reg_1554_0));
  FDRE \select_ln262_reg_1554_reg[7] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(trunc_ln408_1_fu_990_p1[7]),
        .Q(select_ln262_reg_1554[7]),
        .R(select_ln262_reg_1554_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[0]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[0]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[0]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[0]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[0]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [0]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[12]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[0]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[1]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[1]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[1]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[1]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[1]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [1]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[13]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[1]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[2]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[2]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[2]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[2]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[2]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [2]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[14]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[2]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[3]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[3]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[3]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[3]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[3]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [3]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[15]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[3]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[4]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[4]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[4]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[4]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[4]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [4]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[16]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[4]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[5]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[5]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[5]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[5]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[5]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [5]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[17]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[5]_i_2_n_5 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[6]_i_1 
       (.I0(trunc_ln408_1_fu_990_p1[6]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[6]_i_2_n_5 ),
        .O(select_ln408_fu_994_p3[6]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[6]_i_2 
       (.I0(\filt_res0_fu_84_reg[7] [6]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[18]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[6]_i_2_n_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln408_reg_1549[7]_i_1 
       (.I0(\icmp_ln159_reg_1289_pp0_iter12_reg_reg_n_5_[0] ),
        .I1(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(select_ln262_reg_15540));
  LUT4 #(
    .INIT(16'hFB08)) 
    \select_ln408_reg_1549[7]_i_2 
       (.I0(trunc_ln408_1_fu_990_p1[7]),
        .I1(\select_ln262_reg_1554_reg[0]_0 ),
        .I2(cmp335_reg_1338_pp0_iter12_reg),
        .I3(\select_ln408_reg_1549[7]_i_3_n_5 ),
        .O(select_ln408_fu_994_p3[7]));
  LUT5 #(
    .INIT(32'h00AAFCAA)) 
    \select_ln408_reg_1549[7]_i_3 
       (.I0(\filt_res0_fu_84_reg[7] [7]),
        .I1(icmp_ln403_reg_1517),
        .I2(filt_res0_reg_1501[19]),
        .I3(or_ln384_reg_1344_pp0_iter12_reg),
        .I4(tmp_reg_1511),
        .O(\select_ln408_reg_1549[7]_i_3_n_5 ));
  FDRE \select_ln408_reg_1549_reg[0] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[0]),
        .Q(select_ln408_reg_1549[0]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[1] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[1]),
        .Q(select_ln408_reg_1549[1]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[2] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[2]),
        .Q(select_ln408_reg_1549[2]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[3] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[3]),
        .Q(select_ln408_reg_1549[3]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[4] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[4]),
        .Q(select_ln408_reg_1549[4]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[5] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[5]),
        .Q(select_ln408_reg_1549[5]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[6] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[6]),
        .Q(select_ln408_reg_1549[6]),
        .R(1'b0));
  FDRE \select_ln408_reg_1549_reg[7] 
       (.C(ap_clk),
        .CE(select_ln262_reg_15540),
        .D(select_ln408_fu_994_p3[7]),
        .Q(select_ln408_reg_1549[7]),
        .R(1'b0));
  FDRE \tmp_3_reg_1522_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln403_reg_15170),
        .D(tmp_4_fu_838_p4),
        .Q(tmp_3_reg_1522),
        .R(1'b0));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/tmp_5_reg_1314_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/tmp_5_reg_1314_pp0_iter12_reg_reg[0]_srl12 " *) 
  SRL16E \tmp_5_reg_1314_pp0_iter12_reg_reg[0]_srl12 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(tmp_5_reg_1314),
        .Q(\tmp_5_reg_1314_pp0_iter12_reg_reg[0]_srl12_n_5 ));
  FDRE \tmp_5_reg_1314_pp0_iter13_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_5_reg_1314_pp0_iter12_reg_reg[0]_srl12_n_5 ),
        .Q(tmp_5_reg_1314_pp0_iter13_reg),
        .R(1'b0));
  FDRE \tmp_5_reg_1314_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_86),
        .Q(tmp_5_reg_1314),
        .R(1'b0));
  FDRE \tmp_reg_1511_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln403_reg_15170),
        .D(tmp_1_fu_816_p4),
        .Q(tmp_reg_1511),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \trunc_ln145_1_reg_1324[7]_i_1 
       (.I0(icmp_ln159_reg_1289),
        .I1(icmp_ln168_reg_1298),
        .I2(mac_muladd_8ns_16s_26s_26_4_1_U59_n_16),
        .O(trunc_ln145_1_reg_13240));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[0]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[0]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [0]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[1]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[1]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[1]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [1]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[2]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[2]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[2]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [2]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[3]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[3]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[3]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [3]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[4]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[4]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[4]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [4]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[5]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[5]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[5]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [5]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[6]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[6]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[6]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [6]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[7]_srl11 " *) 
  SRL16E \trunc_ln145_1_reg_1324_pp0_iter12_reg_reg[7]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_1_reg_1324[7]),
        .Q(\trunc_ln145_1_reg_1324_reg[7]_0 [7]));
  FDRE \trunc_ln145_1_reg_1324_reg[0] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[8]),
        .Q(trunc_ln145_1_reg_1324[0]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[1] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[9]),
        .Q(trunc_ln145_1_reg_1324[1]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[2] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[10]),
        .Q(trunc_ln145_1_reg_1324[2]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[3] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[11]),
        .Q(trunc_ln145_1_reg_1324[3]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[4] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[12]),
        .Q(trunc_ln145_1_reg_1324[4]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[5] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[13]),
        .Q(trunc_ln145_1_reg_1324[5]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[6] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[14]),
        .Q(trunc_ln145_1_reg_1324[6]),
        .R(1'b0));
  FDRE \trunc_ln145_1_reg_1324_reg[7] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[15]),
        .Q(trunc_ln145_1_reg_1324[7]),
        .R(1'b0));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[0]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[0]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [0]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[1]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[1]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[1]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [1]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[2]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[2]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[2]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [2]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[3]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[3]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[3]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [3]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[4]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[4]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[4]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [4]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[5]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[5]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[5]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [5]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[6]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[6]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[6]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [6]));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[7]_srl11 " *) 
  SRL16E \trunc_ln145_2_reg_1332_pp0_iter12_reg_reg[7]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_2_reg_1332[7]),
        .Q(\trunc_ln145_2_reg_1332_reg[7]_0 [7]));
  FDRE \trunc_ln145_2_reg_1332_reg[0] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[16]),
        .Q(trunc_ln145_2_reg_1332[0]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[1] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[17]),
        .Q(trunc_ln145_2_reg_1332[1]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[2] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[18]),
        .Q(trunc_ln145_2_reg_1332[2]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[3] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[19]),
        .Q(trunc_ln145_2_reg_1332[3]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[4] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[20]),
        .Q(trunc_ln145_2_reg_1332[4]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[5] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[21]),
        .Q(trunc_ln145_2_reg_1332[5]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[6] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[22]),
        .Q(trunc_ln145_2_reg_1332[6]),
        .R(1'b0));
  FDRE \trunc_ln145_2_reg_1332_reg[7] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[23]),
        .Q(trunc_ln145_2_reg_1332[7]),
        .R(1'b0));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[0]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[0]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[0]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[1]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[1]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[1]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[1]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[2]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[2]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[2]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[2]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[3]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[3]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[3]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[3]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[4]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[4]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[4]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[4]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[5]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[5]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[5]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[5]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[6]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[6]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[6]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[6]_srl10_n_5 ));
  (* srl_bus_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg " *) 
  (* srl_name = "inst/\v_hcresampler_core_U0/grp_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2_fu_240/trunc_ln145_reg_1318_pp0_iter11_reg_reg[7]_srl10 " *) 
  SRL16E \trunc_ln145_reg_1318_pp0_iter11_reg_reg[7]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(trunc_ln145_reg_1318[7]),
        .Q(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[7]_srl10_n_5 ));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[0]_srl10_n_5 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[1]_srl10_n_5 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[2]_srl10_n_5 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[3]_srl10_n_5 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[4]_srl10_n_5 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[5]_srl10_n_5 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[6]_srl10_n_5 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_pp0_iter12_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\trunc_ln145_reg_1318_pp0_iter11_reg_reg[7]_srl10_n_5 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[0] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[0]),
        .Q(trunc_ln145_reg_1318[0]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[1] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[1]),
        .Q(trunc_ln145_reg_1318[1]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[2] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[2]),
        .Q(trunc_ln145_reg_1318[2]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[3] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[3]),
        .Q(trunc_ln145_reg_1318[3]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[4] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[4]),
        .Q(trunc_ln145_reg_1318[4]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[5] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[5]),
        .Q(trunc_ln145_reg_1318[5]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[6] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[6]),
        .Q(trunc_ln145_reg_1318[6]),
        .R(1'b0));
  FDRE \trunc_ln145_reg_1318_reg[7] 
       (.C(ap_clk),
        .CE(trunc_ln145_1_reg_13240),
        .D(out[7]),
        .Q(trunc_ln145_reg_1318[7]),
        .R(1'b0));
  FDRE \trunc_ln159_reg_1282_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(trunc_ln159_reg_1282),
        .Q(trunc_ln159_reg_1282_pp0_iter1_reg),
        .R(1'b0));
  FDRE \trunc_ln159_reg_1282_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(trunc_ln159_reg_1282_pp0_iter1_reg),
        .Q(trunc_ln159_reg_1282_pp0_iter2_reg),
        .R(1'b0));
  FDRE \trunc_ln159_reg_1282_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_sig_allocacmp_x_1),
        .Q(trunc_ln159_reg_1282),
        .R(1'b0));
  FDRE \x_fu_174_reg[0] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[0]),
        .Q(\x_fu_174_reg_n_5_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[10] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[10]),
        .Q(\x_fu_174_reg_n_5_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[1] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[1]),
        .Q(\x_fu_174_reg_n_5_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[2] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[2]),
        .Q(\x_fu_174_reg_n_5_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[3] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[3]),
        .Q(\x_fu_174_reg_n_5_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[4] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[4]),
        .Q(\x_fu_174_reg_n_5_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[5] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[5]),
        .Q(\x_fu_174_reg_n_5_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[6] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[6]),
        .Q(\x_fu_174_reg_n_5_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[7] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(flow_control_loop_pipe_sequential_init_U_n_56),
        .Q(\x_fu_174_reg_n_5_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[8] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(x_2_fu_387_p2[8]),
        .Q(\x_fu_174_reg_n_5_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
  FDRE \x_fu_174_reg[9] 
       (.C(ap_clk),
        .CE(x_fu_174),
        .D(flow_control_loop_pipe_sequential_init_U_n_54),
        .Q(\x_fu_174_reg_n_5_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_10));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
