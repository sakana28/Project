// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bd_3a92_vsc_0_v_vscaler,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=5.625000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.132000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=19,HLS_SYN_DSP=0,HLS_SYN_FF=5203,HLS_SYN_LUT=4553,HLS_VERSION=2022_1}" *)

module bd_3a92_vsc_0_v_vscaler (
        s_axi_CTRL_AWVALID,
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
        m_axis_video_TREADY
);

parameter    C_S_AXI_CTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_ADDR_WIDTH = 12;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_CTRL_AWVALID;
output   s_axi_CTRL_AWREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_AWADDR;
input   s_axi_CTRL_WVALID;
output   s_axi_CTRL_WREADY;
input  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_WDATA;
input  [C_S_AXI_CTRL_WSTRB_WIDTH - 1:0] s_axi_CTRL_WSTRB;
input   s_axi_CTRL_ARVALID;
output   s_axi_CTRL_ARREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_ARADDR;
output   s_axi_CTRL_RVALID;
input   s_axi_CTRL_RREADY;
output  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_RDATA;
output  [1:0] s_axi_CTRL_RRESP;
output   s_axi_CTRL_BVALID;
input   s_axi_CTRL_BREADY;
output  [1:0] s_axi_CTRL_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [23:0] s_axis_video_TDATA;
input  [2:0] s_axis_video_TKEEP;
input  [2:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [23:0] m_axis_video_TDATA;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;

 reg    ap_rst_n_inv;
wire   [15:0] HeightIn;
wire   [15:0] Width;
wire   [15:0] HeightOut;
wire   [31:0] LineRate;
wire   [7:0] ColorMode;
wire   [15:0] vfltCoeff_q0;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    Block_entry4_proc_U0_ap_start;
wire    Block_entry4_proc_U0_start_full_n;
wire    Block_entry4_proc_U0_ap_done;
wire    Block_entry4_proc_U0_ap_continue;
wire    Block_entry4_proc_U0_ap_idle;
wire    Block_entry4_proc_U0_ap_ready;
wire    Block_entry4_proc_U0_start_out;
wire    Block_entry4_proc_U0_start_write;
wire   [7:0] Block_entry4_proc_U0_HwReg_ColorMode_din;
wire    Block_entry4_proc_U0_HwReg_ColorMode_write;
wire   [31:0] Block_entry4_proc_U0_HwReg_LineRate_din;
wire    Block_entry4_proc_U0_HwReg_LineRate_write;
wire   [7:0] Block_entry4_proc_U0_ColorMode_vcr_din;
wire    Block_entry4_proc_U0_ColorMode_vcr_write;
wire   [10:0] Block_entry4_proc_U0_HwReg_HeightIn_c12_din;
wire    Block_entry4_proc_U0_HwReg_HeightIn_c12_write;
wire   [10:0] Block_entry4_proc_U0_HwReg_Width_c14_din;
wire    Block_entry4_proc_U0_HwReg_Width_c14_write;
wire   [10:0] Block_entry4_proc_U0_HwReg_HeightOut_c15_din;
wire    Block_entry4_proc_U0_HwReg_HeightOut_c15_write;
wire    AXIvideo2MultiPixStream_U0_ap_start;
wire    AXIvideo2MultiPixStream_U0_ap_done;
wire    AXIvideo2MultiPixStream_U0_ap_continue;
wire    AXIvideo2MultiPixStream_U0_ap_idle;
wire    AXIvideo2MultiPixStream_U0_ap_ready;
wire    AXIvideo2MultiPixStream_U0_s_axis_video_TREADY;
wire   [23:0] AXIvideo2MultiPixStream_U0_SrcYUV_din;
wire    AXIvideo2MultiPixStream_U0_SrcYUV_write;
wire    AXIvideo2MultiPixStream_U0_Height_read;
wire    AXIvideo2MultiPixStream_U0_WidthIn_read;
wire    AXIvideo2MultiPixStream_U0_ColorMode_read;
wire   [10:0] AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_din;
wire    AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_write;
wire   [10:0] AXIvideo2MultiPixStream_U0_HwReg_Width_c13_din;
wire    AXIvideo2MultiPixStream_U0_HwReg_Width_c13_write;
wire    vscale_core_polyphase_U0_ap_start;
wire    vscale_core_polyphase_U0_ap_done;
wire    vscale_core_polyphase_U0_ap_continue;
wire    vscale_core_polyphase_U0_ap_idle;
wire    vscale_core_polyphase_U0_ap_ready;
wire    vscale_core_polyphase_U0_SrcYUV_read;
wire    vscale_core_polyphase_U0_HeightIn_read;
wire    vscale_core_polyphase_U0_Width_read;
wire    vscale_core_polyphase_U0_HeightOut_read;
wire    vscale_core_polyphase_U0_LineRate_read;
wire   [8:0] vscale_core_polyphase_U0_vfltCoeff_address0;
wire    vscale_core_polyphase_U0_vfltCoeff_ce0;
wire   [23:0] vscale_core_polyphase_U0_OutYUV_din;
wire    vscale_core_polyphase_U0_OutYUV_write;
wire   [10:0] vscale_core_polyphase_U0_HwReg_Width_c_din;
wire    vscale_core_polyphase_U0_HwReg_Width_c_write;
wire   [10:0] vscale_core_polyphase_U0_HwReg_HeightOut_c_din;
wire    vscale_core_polyphase_U0_HwReg_HeightOut_c_write;
wire    MultiPixStream2AXIvideo_U0_ap_start;
wire    MultiPixStream2AXIvideo_U0_ap_done;
wire    MultiPixStream2AXIvideo_U0_ap_continue;
wire    MultiPixStream2AXIvideo_U0_ap_idle;
wire    MultiPixStream2AXIvideo_U0_ap_ready;
wire    MultiPixStream2AXIvideo_U0_OutYUV_read;
wire   [23:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;
wire    MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;
wire   [2:0] MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;
wire   [2:0] MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TID;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;
wire    MultiPixStream2AXIvideo_U0_Height_read;
wire    MultiPixStream2AXIvideo_U0_Width_read;
wire    MultiPixStream2AXIvideo_U0_ColorMode_read;
wire    HwReg_ColorMode_channel_full_n;
wire   [7:0] HwReg_ColorMode_channel_dout;
wire   [1:0] HwReg_ColorMode_channel_num_data_valid;
wire   [1:0] HwReg_ColorMode_channel_fifo_cap;
wire    HwReg_ColorMode_channel_empty_n;
wire    HwReg_LineRate_channel_full_n;
wire   [31:0] HwReg_LineRate_channel_dout;
wire   [1:0] HwReg_LineRate_channel_num_data_valid;
wire   [1:0] HwReg_LineRate_channel_fifo_cap;
wire    HwReg_LineRate_channel_empty_n;
wire    ColorMode_vcr_channel_full_n;
wire   [7:0] ColorMode_vcr_channel_dout;
wire   [1:0] ColorMode_vcr_channel_num_data_valid;
wire   [1:0] ColorMode_vcr_channel_fifo_cap;
wire    ColorMode_vcr_channel_empty_n;
wire    HwReg_HeightIn_c12_channel_full_n;
wire   [10:0] HwReg_HeightIn_c12_channel_dout;
wire   [1:0] HwReg_HeightIn_c12_channel_num_data_valid;
wire   [1:0] HwReg_HeightIn_c12_channel_fifo_cap;
wire    HwReg_HeightIn_c12_channel_empty_n;
wire    HwReg_Width_c14_channel_full_n;
wire   [10:0] HwReg_Width_c14_channel_dout;
wire   [1:0] HwReg_Width_c14_channel_num_data_valid;
wire   [1:0] HwReg_Width_c14_channel_fifo_cap;
wire    HwReg_Width_c14_channel_empty_n;
wire    HwReg_HeightOut_c15_channel_full_n;
wire   [10:0] HwReg_HeightOut_c15_channel_dout;
wire   [1:0] HwReg_HeightOut_c15_channel_num_data_valid;
wire   [1:0] HwReg_HeightOut_c15_channel_fifo_cap;
wire    HwReg_HeightOut_c15_channel_empty_n;
wire    SrcYUV_full_n;
wire   [23:0] SrcYUV_dout;
wire   [4:0] SrcYUV_num_data_valid;
wire   [4:0] SrcYUV_fifo_cap;
wire    SrcYUV_empty_n;
wire    HwReg_HeightIn_c_full_n;
wire   [10:0] HwReg_HeightIn_c_dout;
wire   [1:0] HwReg_HeightIn_c_num_data_valid;
wire   [1:0] HwReg_HeightIn_c_fifo_cap;
wire    HwReg_HeightIn_c_empty_n;
wire    HwReg_Width_c13_full_n;
wire   [10:0] HwReg_Width_c13_dout;
wire   [1:0] HwReg_Width_c13_num_data_valid;
wire   [1:0] HwReg_Width_c13_fifo_cap;
wire    HwReg_Width_c13_empty_n;
wire    OutYUV_full_n;
wire   [23:0] OutYUV_dout;
wire   [4:0] OutYUV_num_data_valid;
wire   [4:0] OutYUV_fifo_cap;
wire    OutYUV_empty_n;
wire    HwReg_Width_c_full_n;
wire   [10:0] HwReg_Width_c_dout;
wire   [1:0] HwReg_Width_c_num_data_valid;
wire   [1:0] HwReg_Width_c_fifo_cap;
wire    HwReg_Width_c_empty_n;
wire    HwReg_HeightOut_c_full_n;
wire   [10:0] HwReg_HeightOut_c_dout;
wire   [1:0] HwReg_HeightOut_c_num_data_valid;
wire   [1:0] HwReg_HeightOut_c_fifo_cap;
wire    HwReg_HeightOut_c_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_Block_entry4_proc_U0_ap_ready;
wire    ap_sync_Block_entry4_proc_U0_ap_ready;
reg    ap_sync_reg_vscale_core_polyphase_U0_ap_ready;
wire    ap_sync_vscale_core_polyphase_U0_ap_ready;
wire   [0:0] start_for_AXIvideo2MultiPixStream_U0_din;
wire    start_for_AXIvideo2MultiPixStream_U0_full_n;
wire   [0:0] start_for_AXIvideo2MultiPixStream_U0_dout;
wire    start_for_AXIvideo2MultiPixStream_U0_empty_n;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_din;
wire    start_for_MultiPixStream2AXIvideo_U0_full_n;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_dout;
wire    start_for_MultiPixStream2AXIvideo_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_Block_entry4_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_vscale_core_polyphase_U0_ap_ready = 1'b0;
end

bd_3a92_vsc_0_CTRL_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
CTRL_s_axi_U(
    .AWVALID(s_axi_CTRL_AWVALID),
    .AWREADY(s_axi_CTRL_AWREADY),
    .AWADDR(s_axi_CTRL_AWADDR),
    .WVALID(s_axi_CTRL_WVALID),
    .WREADY(s_axi_CTRL_WREADY),
    .WDATA(s_axi_CTRL_WDATA),
    .WSTRB(s_axi_CTRL_WSTRB),
    .ARVALID(s_axi_CTRL_ARVALID),
    .ARREADY(s_axi_CTRL_ARREADY),
    .ARADDR(s_axi_CTRL_ARADDR),
    .RVALID(s_axi_CTRL_RVALID),
    .RREADY(s_axi_CTRL_RREADY),
    .RDATA(s_axi_CTRL_RDATA),
    .RRESP(s_axi_CTRL_RRESP),
    .BVALID(s_axi_CTRL_BVALID),
    .BREADY(s_axi_CTRL_BREADY),
    .BRESP(s_axi_CTRL_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .HeightIn(HeightIn),
    .Width(Width),
    .HeightOut(HeightOut),
    .LineRate(LineRate),
    .ColorMode(ColorMode),
    .vfltCoeff_address0(vscale_core_polyphase_U0_vfltCoeff_address0),
    .vfltCoeff_ce0(vscale_core_polyphase_U0_vfltCoeff_ce0),
    .vfltCoeff_q0(vfltCoeff_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

bd_3a92_vsc_0_Block_entry4_proc Block_entry4_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_entry4_proc_U0_ap_start),
    .start_full_n(Block_entry4_proc_U0_start_full_n),
    .ap_done(Block_entry4_proc_U0_ap_done),
    .ap_continue(Block_entry4_proc_U0_ap_continue),
    .ap_idle(Block_entry4_proc_U0_ap_idle),
    .ap_ready(Block_entry4_proc_U0_ap_ready),
    .start_out(Block_entry4_proc_U0_start_out),
    .start_write(Block_entry4_proc_U0_start_write),
    .ColorMode(ColorMode),
    .HwReg_ColorMode_din(Block_entry4_proc_U0_HwReg_ColorMode_din),
    .HwReg_ColorMode_num_data_valid(HwReg_ColorMode_channel_num_data_valid),
    .HwReg_ColorMode_fifo_cap(HwReg_ColorMode_channel_fifo_cap),
    .HwReg_ColorMode_full_n(HwReg_ColorMode_channel_full_n),
    .HwReg_ColorMode_write(Block_entry4_proc_U0_HwReg_ColorMode_write),
    .HeightIn(HeightIn),
    .HeightOut(HeightOut),
    .LineRate(LineRate),
    .HwReg_LineRate_din(Block_entry4_proc_U0_HwReg_LineRate_din),
    .HwReg_LineRate_num_data_valid(HwReg_LineRate_channel_num_data_valid),
    .HwReg_LineRate_fifo_cap(HwReg_LineRate_channel_fifo_cap),
    .HwReg_LineRate_full_n(HwReg_LineRate_channel_full_n),
    .HwReg_LineRate_write(Block_entry4_proc_U0_HwReg_LineRate_write),
    .Width(Width),
    .ColorMode_vcr_din(Block_entry4_proc_U0_ColorMode_vcr_din),
    .ColorMode_vcr_num_data_valid(ColorMode_vcr_channel_num_data_valid),
    .ColorMode_vcr_fifo_cap(ColorMode_vcr_channel_fifo_cap),
    .ColorMode_vcr_full_n(ColorMode_vcr_channel_full_n),
    .ColorMode_vcr_write(Block_entry4_proc_U0_ColorMode_vcr_write),
    .HwReg_HeightIn_c12_din(Block_entry4_proc_U0_HwReg_HeightIn_c12_din),
    .HwReg_HeightIn_c12_num_data_valid(HwReg_HeightIn_c12_channel_num_data_valid),
    .HwReg_HeightIn_c12_fifo_cap(HwReg_HeightIn_c12_channel_fifo_cap),
    .HwReg_HeightIn_c12_full_n(HwReg_HeightIn_c12_channel_full_n),
    .HwReg_HeightIn_c12_write(Block_entry4_proc_U0_HwReg_HeightIn_c12_write),
    .HwReg_Width_c14_din(Block_entry4_proc_U0_HwReg_Width_c14_din),
    .HwReg_Width_c14_num_data_valid(HwReg_Width_c14_channel_num_data_valid),
    .HwReg_Width_c14_fifo_cap(HwReg_Width_c14_channel_fifo_cap),
    .HwReg_Width_c14_full_n(HwReg_Width_c14_channel_full_n),
    .HwReg_Width_c14_write(Block_entry4_proc_U0_HwReg_Width_c14_write),
    .HwReg_HeightOut_c15_din(Block_entry4_proc_U0_HwReg_HeightOut_c15_din),
    .HwReg_HeightOut_c15_num_data_valid(HwReg_HeightOut_c15_channel_num_data_valid),
    .HwReg_HeightOut_c15_fifo_cap(HwReg_HeightOut_c15_channel_fifo_cap),
    .HwReg_HeightOut_c15_full_n(HwReg_HeightOut_c15_channel_full_n),
    .HwReg_HeightOut_c15_write(Block_entry4_proc_U0_HwReg_HeightOut_c15_write)
);

bd_3a92_vsc_0_AXIvideo2MultiPixStream AXIvideo2MultiPixStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2MultiPixStream_U0_ap_start),
    .ap_done(AXIvideo2MultiPixStream_U0_ap_done),
    .ap_continue(AXIvideo2MultiPixStream_U0_ap_continue),
    .ap_idle(AXIvideo2MultiPixStream_U0_ap_idle),
    .ap_ready(AXIvideo2MultiPixStream_U0_ap_ready),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .s_axis_video_TREADY(AXIvideo2MultiPixStream_U0_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .SrcYUV_din(AXIvideo2MultiPixStream_U0_SrcYUV_din),
    .SrcYUV_num_data_valid(SrcYUV_num_data_valid),
    .SrcYUV_fifo_cap(SrcYUV_fifo_cap),
    .SrcYUV_full_n(SrcYUV_full_n),
    .SrcYUV_write(AXIvideo2MultiPixStream_U0_SrcYUV_write),
    .Height_dout(HwReg_HeightIn_c12_channel_dout),
    .Height_num_data_valid(HwReg_HeightIn_c12_channel_num_data_valid),
    .Height_fifo_cap(HwReg_HeightIn_c12_channel_fifo_cap),
    .Height_empty_n(HwReg_HeightIn_c12_channel_empty_n),
    .Height_read(AXIvideo2MultiPixStream_U0_Height_read),
    .WidthIn_dout(HwReg_Width_c14_channel_dout),
    .WidthIn_num_data_valid(HwReg_Width_c14_channel_num_data_valid),
    .WidthIn_fifo_cap(HwReg_Width_c14_channel_fifo_cap),
    .WidthIn_empty_n(HwReg_Width_c14_channel_empty_n),
    .WidthIn_read(AXIvideo2MultiPixStream_U0_WidthIn_read),
    .ColorMode_dout(HwReg_ColorMode_channel_dout),
    .ColorMode_num_data_valid(HwReg_ColorMode_channel_num_data_valid),
    .ColorMode_fifo_cap(HwReg_ColorMode_channel_fifo_cap),
    .ColorMode_empty_n(HwReg_ColorMode_channel_empty_n),
    .ColorMode_read(AXIvideo2MultiPixStream_U0_ColorMode_read),
    .HwReg_HeightIn_c_din(AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_din),
    .HwReg_HeightIn_c_num_data_valid(HwReg_HeightIn_c_num_data_valid),
    .HwReg_HeightIn_c_fifo_cap(HwReg_HeightIn_c_fifo_cap),
    .HwReg_HeightIn_c_full_n(HwReg_HeightIn_c_full_n),
    .HwReg_HeightIn_c_write(AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_write),
    .HwReg_Width_c13_din(AXIvideo2MultiPixStream_U0_HwReg_Width_c13_din),
    .HwReg_Width_c13_num_data_valid(HwReg_Width_c13_num_data_valid),
    .HwReg_Width_c13_fifo_cap(HwReg_Width_c13_fifo_cap),
    .HwReg_Width_c13_full_n(HwReg_Width_c13_full_n),
    .HwReg_Width_c13_write(AXIvideo2MultiPixStream_U0_HwReg_Width_c13_write)
);

bd_3a92_vsc_0_vscale_core_polyphase vscale_core_polyphase_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(vscale_core_polyphase_U0_ap_start),
    .ap_done(vscale_core_polyphase_U0_ap_done),
    .ap_continue(vscale_core_polyphase_U0_ap_continue),
    .ap_idle(vscale_core_polyphase_U0_ap_idle),
    .ap_ready(vscale_core_polyphase_U0_ap_ready),
    .SrcYUV_dout(SrcYUV_dout),
    .SrcYUV_num_data_valid(SrcYUV_num_data_valid),
    .SrcYUV_fifo_cap(SrcYUV_fifo_cap),
    .SrcYUV_empty_n(SrcYUV_empty_n),
    .SrcYUV_read(vscale_core_polyphase_U0_SrcYUV_read),
    .HeightIn_dout(HwReg_HeightIn_c_dout),
    .HeightIn_num_data_valid(HwReg_HeightIn_c_num_data_valid),
    .HeightIn_fifo_cap(HwReg_HeightIn_c_fifo_cap),
    .HeightIn_empty_n(HwReg_HeightIn_c_empty_n),
    .HeightIn_read(vscale_core_polyphase_U0_HeightIn_read),
    .Width_dout(HwReg_Width_c13_dout),
    .Width_num_data_valid(HwReg_Width_c13_num_data_valid),
    .Width_fifo_cap(HwReg_Width_c13_fifo_cap),
    .Width_empty_n(HwReg_Width_c13_empty_n),
    .Width_read(vscale_core_polyphase_U0_Width_read),
    .HeightOut_dout(HwReg_HeightOut_c15_channel_dout),
    .HeightOut_num_data_valid(HwReg_HeightOut_c15_channel_num_data_valid),
    .HeightOut_fifo_cap(HwReg_HeightOut_c15_channel_fifo_cap),
    .HeightOut_empty_n(HwReg_HeightOut_c15_channel_empty_n),
    .HeightOut_read(vscale_core_polyphase_U0_HeightOut_read),
    .LineRate_dout(HwReg_LineRate_channel_dout),
    .LineRate_num_data_valid(HwReg_LineRate_channel_num_data_valid),
    .LineRate_fifo_cap(HwReg_LineRate_channel_fifo_cap),
    .LineRate_empty_n(HwReg_LineRate_channel_empty_n),
    .LineRate_read(vscale_core_polyphase_U0_LineRate_read),
    .vfltCoeff_address0(vscale_core_polyphase_U0_vfltCoeff_address0),
    .vfltCoeff_ce0(vscale_core_polyphase_U0_vfltCoeff_ce0),
    .vfltCoeff_q0(vfltCoeff_q0),
    .OutYUV_din(vscale_core_polyphase_U0_OutYUV_din),
    .OutYUV_num_data_valid(OutYUV_num_data_valid),
    .OutYUV_fifo_cap(OutYUV_fifo_cap),
    .OutYUV_full_n(OutYUV_full_n),
    .OutYUV_write(vscale_core_polyphase_U0_OutYUV_write),
    .HwReg_Width_c_din(vscale_core_polyphase_U0_HwReg_Width_c_din),
    .HwReg_Width_c_num_data_valid(HwReg_Width_c_num_data_valid),
    .HwReg_Width_c_fifo_cap(HwReg_Width_c_fifo_cap),
    .HwReg_Width_c_full_n(HwReg_Width_c_full_n),
    .HwReg_Width_c_write(vscale_core_polyphase_U0_HwReg_Width_c_write),
    .HwReg_HeightOut_c_din(vscale_core_polyphase_U0_HwReg_HeightOut_c_din),
    .HwReg_HeightOut_c_num_data_valid(HwReg_HeightOut_c_num_data_valid),
    .HwReg_HeightOut_c_fifo_cap(HwReg_HeightOut_c_fifo_cap),
    .HwReg_HeightOut_c_full_n(HwReg_HeightOut_c_full_n),
    .HwReg_HeightOut_c_write(vscale_core_polyphase_U0_HwReg_HeightOut_c_write)
);

bd_3a92_vsc_0_MultiPixStream2AXIvideo MultiPixStream2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(MultiPixStream2AXIvideo_U0_ap_start),
    .ap_done(MultiPixStream2AXIvideo_U0_ap_done),
    .ap_continue(MultiPixStream2AXIvideo_U0_ap_continue),
    .ap_idle(MultiPixStream2AXIvideo_U0_ap_idle),
    .ap_ready(MultiPixStream2AXIvideo_U0_ap_ready),
    .OutYUV_dout(OutYUV_dout),
    .OutYUV_num_data_valid(OutYUV_num_data_valid),
    .OutYUV_fifo_cap(OutYUV_fifo_cap),
    .OutYUV_empty_n(OutYUV_empty_n),
    .OutYUV_read(MultiPixStream2AXIvideo_U0_OutYUV_read),
    .m_axis_video_TDATA(MultiPixStream2AXIvideo_U0_m_axis_video_TDATA),
    .m_axis_video_TVALID(MultiPixStream2AXIvideo_U0_m_axis_video_TVALID),
    .m_axis_video_TREADY(m_axis_video_TREADY),
    .m_axis_video_TKEEP(MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB),
    .m_axis_video_TUSER(MultiPixStream2AXIvideo_U0_m_axis_video_TUSER),
    .m_axis_video_TLAST(MultiPixStream2AXIvideo_U0_m_axis_video_TLAST),
    .m_axis_video_TID(MultiPixStream2AXIvideo_U0_m_axis_video_TID),
    .m_axis_video_TDEST(MultiPixStream2AXIvideo_U0_m_axis_video_TDEST),
    .Height_dout(HwReg_HeightOut_c_dout),
    .Height_num_data_valid(HwReg_HeightOut_c_num_data_valid),
    .Height_fifo_cap(HwReg_HeightOut_c_fifo_cap),
    .Height_empty_n(HwReg_HeightOut_c_empty_n),
    .Height_read(MultiPixStream2AXIvideo_U0_Height_read),
    .Width_dout(HwReg_Width_c_dout),
    .Width_num_data_valid(HwReg_Width_c_num_data_valid),
    .Width_fifo_cap(HwReg_Width_c_fifo_cap),
    .Width_empty_n(HwReg_Width_c_empty_n),
    .Width_read(MultiPixStream2AXIvideo_U0_Width_read),
    .ColorMode_dout(ColorMode_vcr_channel_dout),
    .ColorMode_num_data_valid(ColorMode_vcr_channel_num_data_valid),
    .ColorMode_fifo_cap(ColorMode_vcr_channel_fifo_cap),
    .ColorMode_empty_n(ColorMode_vcr_channel_empty_n),
    .ColorMode_read(MultiPixStream2AXIvideo_U0_ColorMode_read)
);

bd_3a92_vsc_0_fifo_w8_d2_S HwReg_ColorMode_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_HwReg_ColorMode_din),
    .if_full_n(HwReg_ColorMode_channel_full_n),
    .if_write(Block_entry4_proc_U0_HwReg_ColorMode_write),
    .if_dout(HwReg_ColorMode_channel_dout),
    .if_num_data_valid(HwReg_ColorMode_channel_num_data_valid),
    .if_fifo_cap(HwReg_ColorMode_channel_fifo_cap),
    .if_empty_n(HwReg_ColorMode_channel_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_ColorMode_read)
);

bd_3a92_vsc_0_fifo_w32_d2_S HwReg_LineRate_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_HwReg_LineRate_din),
    .if_full_n(HwReg_LineRate_channel_full_n),
    .if_write(Block_entry4_proc_U0_HwReg_LineRate_write),
    .if_dout(HwReg_LineRate_channel_dout),
    .if_num_data_valid(HwReg_LineRate_channel_num_data_valid),
    .if_fifo_cap(HwReg_LineRate_channel_fifo_cap),
    .if_empty_n(HwReg_LineRate_channel_empty_n),
    .if_read(vscale_core_polyphase_U0_LineRate_read)
);

bd_3a92_vsc_0_fifo_w8_d2_S ColorMode_vcr_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_ColorMode_vcr_din),
    .if_full_n(ColorMode_vcr_channel_full_n),
    .if_write(Block_entry4_proc_U0_ColorMode_vcr_write),
    .if_dout(ColorMode_vcr_channel_dout),
    .if_num_data_valid(ColorMode_vcr_channel_num_data_valid),
    .if_fifo_cap(ColorMode_vcr_channel_fifo_cap),
    .if_empty_n(ColorMode_vcr_channel_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_ColorMode_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_HeightIn_c12_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_HwReg_HeightIn_c12_din),
    .if_full_n(HwReg_HeightIn_c12_channel_full_n),
    .if_write(Block_entry4_proc_U0_HwReg_HeightIn_c12_write),
    .if_dout(HwReg_HeightIn_c12_channel_dout),
    .if_num_data_valid(HwReg_HeightIn_c12_channel_num_data_valid),
    .if_fifo_cap(HwReg_HeightIn_c12_channel_fifo_cap),
    .if_empty_n(HwReg_HeightIn_c12_channel_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_Height_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_Width_c14_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_HwReg_Width_c14_din),
    .if_full_n(HwReg_Width_c14_channel_full_n),
    .if_write(Block_entry4_proc_U0_HwReg_Width_c14_write),
    .if_dout(HwReg_Width_c14_channel_dout),
    .if_num_data_valid(HwReg_Width_c14_channel_num_data_valid),
    .if_fifo_cap(HwReg_Width_c14_channel_fifo_cap),
    .if_empty_n(HwReg_Width_c14_channel_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_WidthIn_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_HeightOut_c15_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry4_proc_U0_HwReg_HeightOut_c15_din),
    .if_full_n(HwReg_HeightOut_c15_channel_full_n),
    .if_write(Block_entry4_proc_U0_HwReg_HeightOut_c15_write),
    .if_dout(HwReg_HeightOut_c15_channel_dout),
    .if_num_data_valid(HwReg_HeightOut_c15_channel_num_data_valid),
    .if_fifo_cap(HwReg_HeightOut_c15_channel_fifo_cap),
    .if_empty_n(HwReg_HeightOut_c15_channel_empty_n),
    .if_read(vscale_core_polyphase_U0_HeightOut_read)
);

bd_3a92_vsc_0_fifo_w24_d16_S SrcYUV_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2MultiPixStream_U0_SrcYUV_din),
    .if_full_n(SrcYUV_full_n),
    .if_write(AXIvideo2MultiPixStream_U0_SrcYUV_write),
    .if_dout(SrcYUV_dout),
    .if_num_data_valid(SrcYUV_num_data_valid),
    .if_fifo_cap(SrcYUV_fifo_cap),
    .if_empty_n(SrcYUV_empty_n),
    .if_read(vscale_core_polyphase_U0_SrcYUV_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_HeightIn_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_din),
    .if_full_n(HwReg_HeightIn_c_full_n),
    .if_write(AXIvideo2MultiPixStream_U0_HwReg_HeightIn_c_write),
    .if_dout(HwReg_HeightIn_c_dout),
    .if_num_data_valid(HwReg_HeightIn_c_num_data_valid),
    .if_fifo_cap(HwReg_HeightIn_c_fifo_cap),
    .if_empty_n(HwReg_HeightIn_c_empty_n),
    .if_read(vscale_core_polyphase_U0_HeightIn_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_Width_c13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2MultiPixStream_U0_HwReg_Width_c13_din),
    .if_full_n(HwReg_Width_c13_full_n),
    .if_write(AXIvideo2MultiPixStream_U0_HwReg_Width_c13_write),
    .if_dout(HwReg_Width_c13_dout),
    .if_num_data_valid(HwReg_Width_c13_num_data_valid),
    .if_fifo_cap(HwReg_Width_c13_fifo_cap),
    .if_empty_n(HwReg_Width_c13_empty_n),
    .if_read(vscale_core_polyphase_U0_Width_read)
);

bd_3a92_vsc_0_fifo_w24_d16_S OutYUV_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(vscale_core_polyphase_U0_OutYUV_din),
    .if_full_n(OutYUV_full_n),
    .if_write(vscale_core_polyphase_U0_OutYUV_write),
    .if_dout(OutYUV_dout),
    .if_num_data_valid(OutYUV_num_data_valid),
    .if_fifo_cap(OutYUV_fifo_cap),
    .if_empty_n(OutYUV_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_OutYUV_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_Width_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(vscale_core_polyphase_U0_HwReg_Width_c_din),
    .if_full_n(HwReg_Width_c_full_n),
    .if_write(vscale_core_polyphase_U0_HwReg_Width_c_write),
    .if_dout(HwReg_Width_c_dout),
    .if_num_data_valid(HwReg_Width_c_num_data_valid),
    .if_fifo_cap(HwReg_Width_c_fifo_cap),
    .if_empty_n(HwReg_Width_c_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_Width_read)
);

bd_3a92_vsc_0_fifo_w11_d2_S HwReg_HeightOut_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(vscale_core_polyphase_U0_HwReg_HeightOut_c_din),
    .if_full_n(HwReg_HeightOut_c_full_n),
    .if_write(vscale_core_polyphase_U0_HwReg_HeightOut_c_write),
    .if_dout(HwReg_HeightOut_c_dout),
    .if_num_data_valid(HwReg_HeightOut_c_num_data_valid),
    .if_fifo_cap(HwReg_HeightOut_c_fifo_cap),
    .if_empty_n(HwReg_HeightOut_c_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_Height_read)
);

bd_3a92_vsc_0_start_for_AXIvideo2MultiPixStream_U0 start_for_AXIvideo2MultiPixStream_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AXIvideo2MultiPixStream_U0_din),
    .if_full_n(start_for_AXIvideo2MultiPixStream_U0_full_n),
    .if_write(Block_entry4_proc_U0_start_write),
    .if_dout(start_for_AXIvideo2MultiPixStream_U0_dout),
    .if_empty_n(start_for_AXIvideo2MultiPixStream_U0_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_ap_ready)
);

bd_3a92_vsc_0_start_for_MultiPixStream2AXIvideo_U0 start_for_MultiPixStream2AXIvideo_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_MultiPixStream2AXIvideo_U0_din),
    .if_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
    .if_write(Block_entry4_proc_U0_start_write),
    .if_dout(start_for_MultiPixStream2AXIvideo_U0_dout),
    .if_empty_n(start_for_MultiPixStream2AXIvideo_U0_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_entry4_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_entry4_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_entry4_proc_U0_ap_ready <= ap_sync_Block_entry4_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_vscale_core_polyphase_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_vscale_core_polyphase_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_vscale_core_polyphase_U0_ap_ready <= ap_sync_vscale_core_polyphase_U0_ap_ready;
        end
    end
end

assign AXIvideo2MultiPixStream_U0_ap_continue = 1'b1;

assign AXIvideo2MultiPixStream_U0_ap_start = start_for_AXIvideo2MultiPixStream_U0_empty_n;

assign Block_entry4_proc_U0_ap_continue = 1'b1;

assign Block_entry4_proc_U0_ap_start = ((ap_sync_reg_Block_entry4_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_entry4_proc_U0_start_full_n = (start_for_MultiPixStream2AXIvideo_U0_full_n & start_for_AXIvideo2MultiPixStream_U0_full_n);

assign MultiPixStream2AXIvideo_U0_ap_continue = 1'b1;

assign MultiPixStream2AXIvideo_U0_ap_start = start_for_MultiPixStream2AXIvideo_U0_empty_n;

assign ap_done = MultiPixStream2AXIvideo_U0_ap_done;

assign ap_idle = (vscale_core_polyphase_U0_ap_idle & MultiPixStream2AXIvideo_U0_ap_idle & Block_entry4_proc_U0_ap_idle & AXIvideo2MultiPixStream_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Block_entry4_proc_U0_ap_ready = (ap_sync_reg_Block_entry4_proc_U0_ap_ready | Block_entry4_proc_U0_ap_ready);

assign ap_sync_ready = (ap_sync_vscale_core_polyphase_U0_ap_ready & ap_sync_Block_entry4_proc_U0_ap_ready);

assign ap_sync_vscale_core_polyphase_U0_ap_ready = (vscale_core_polyphase_U0_ap_ready | ap_sync_reg_vscale_core_polyphase_U0_ap_ready);

assign m_axis_video_TDATA = MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;

assign m_axis_video_TDEST = MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;

assign m_axis_video_TID = MultiPixStream2AXIvideo_U0_m_axis_video_TID;

assign m_axis_video_TKEEP = MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;

assign m_axis_video_TLAST = MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;

assign m_axis_video_TSTRB = MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;

assign m_axis_video_TUSER = MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;

assign m_axis_video_TVALID = MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;

assign s_axis_video_TREADY = AXIvideo2MultiPixStream_U0_s_axis_video_TREADY;

assign start_for_AXIvideo2MultiPixStream_U0_din = 1'b1;

assign start_for_MultiPixStream2AXIvideo_U0_din = 1'b1;

assign vscale_core_polyphase_U0_ap_continue = 1'b1;

assign vscale_core_polyphase_U0_ap_start = ((ap_sync_reg_vscale_core_polyphase_U0_ap_ready ^ 1'b1) & ap_start);

endmodule //bd_3a92_vsc_0_v_vscaler
