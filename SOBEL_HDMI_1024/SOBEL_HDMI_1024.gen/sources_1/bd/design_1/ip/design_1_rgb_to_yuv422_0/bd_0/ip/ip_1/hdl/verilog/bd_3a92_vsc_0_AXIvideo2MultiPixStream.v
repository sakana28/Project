// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_vsc_0_AXIvideo2MultiPixStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        SrcYUV_din,
        SrcYUV_num_data_valid,
        SrcYUV_fifo_cap,
        SrcYUV_full_n,
        SrcYUV_write,
        Height_dout,
        Height_num_data_valid,
        Height_fifo_cap,
        Height_empty_n,
        Height_read,
        WidthIn_dout,
        WidthIn_num_data_valid,
        WidthIn_fifo_cap,
        WidthIn_empty_n,
        WidthIn_read,
        ColorMode_dout,
        ColorMode_num_data_valid,
        ColorMode_fifo_cap,
        ColorMode_empty_n,
        ColorMode_read,
        HwReg_HeightIn_c_din,
        HwReg_HeightIn_c_num_data_valid,
        HwReg_HeightIn_c_fifo_cap,
        HwReg_HeightIn_c_full_n,
        HwReg_HeightIn_c_write,
        HwReg_Width_c13_din,
        HwReg_Width_c13_num_data_valid,
        HwReg_Width_c13_fifo_cap,
        HwReg_Width_c13_full_n,
        HwReg_Width_c13_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [2:0] s_axis_video_TKEEP;
input  [2:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [23:0] SrcYUV_din;
input  [4:0] SrcYUV_num_data_valid;
input  [4:0] SrcYUV_fifo_cap;
input   SrcYUV_full_n;
output   SrcYUV_write;
input  [10:0] Height_dout;
input  [1:0] Height_num_data_valid;
input  [1:0] Height_fifo_cap;
input   Height_empty_n;
output   Height_read;
input  [10:0] WidthIn_dout;
input  [1:0] WidthIn_num_data_valid;
input  [1:0] WidthIn_fifo_cap;
input   WidthIn_empty_n;
output   WidthIn_read;
input  [7:0] ColorMode_dout;
input  [1:0] ColorMode_num_data_valid;
input  [1:0] ColorMode_fifo_cap;
input   ColorMode_empty_n;
output   ColorMode_read;
output  [10:0] HwReg_HeightIn_c_din;
input  [1:0] HwReg_HeightIn_c_num_data_valid;
input  [1:0] HwReg_HeightIn_c_fifo_cap;
input   HwReg_HeightIn_c_full_n;
output   HwReg_HeightIn_c_write;
output  [10:0] HwReg_Width_c13_din;
input  [1:0] HwReg_Width_c13_num_data_valid;
input  [1:0] HwReg_Width_c13_fifo_cap;
input   HwReg_Width_c13_full_n;
output   HwReg_Width_c13_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg SrcYUV_write;
reg Height_read;
reg WidthIn_read;
reg ColorMode_read;
reg HwReg_HeightIn_c_write;
reg HwReg_Width_c13_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    Height_blk_n;
reg    WidthIn_blk_n;
reg    ColorMode_blk_n;
wire    ap_CS_fsm_state4;
reg    HwReg_HeightIn_c_blk_n;
reg    HwReg_Width_c13_blk_n;
reg   [10:0] WidthIn_read_reg_398;
reg   [10:0] Height_read_reg_403;
wire   [10:0] grp_reg_unsigned_short_s_fu_282_ap_return;
reg   [10:0] rows_reg_408;
wire   [10:0] grp_reg_unsigned_short_s_fu_287_ap_return;
reg   [10:0] cols_reg_413;
wire   [0:0] cmp8748_fu_295_p2;
reg   [0:0] cmp8748_reg_421;
wire   [0:0] icmp_ln797_fu_301_p2;
reg   [0:0] icmp_ln797_reg_425;
wire   [0:0] icmp_ln797_1_fu_307_p2;
reg   [0:0] icmp_ln797_1_reg_430;
wire   [0:0] icmp_ln767_fu_316_p2;
reg   [0:0] icmp_ln767_reg_435;
wire    ap_CS_fsm_state5;
wire   [10:0] i_4_fu_321_p2;
reg   [10:0] i_4_reg_439;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_s_axis_video_TREADY;
wire   [23:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_last_V_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_last_V_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_ready;
wire   [23:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_din;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_write;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_s_axis_video_TREADY;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out_ap_vld;
wire   [23:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_axi_data_V_15_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_axi_data_V_15_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_s_axis_video_TREADY;
wire   [23:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out_ap_vld;
reg   [0:0] axi_last_V_2_reg_154;
wire    ap_CS_fsm_state11;
reg   [23:0] axi_data_2_lcssa_reg_164;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state6;
reg   [0:0] axi_last_2_lcssa_reg_174;
reg   [0:0] eol_0_lcssa_reg_185;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [23:0] axi_data_V_14_fu_96;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [0:0] axi_last_V_4_loc_fu_104;
reg   [10:0] i_fu_92;
reg    ap_block_state1;
reg   [0:0] sof_fu_100;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    regslice_both_s_axis_video_V_data_V_U_apdone_blk;
wire   [23:0] s_axis_video_TDATA_int_regslice;
wire    s_axis_video_TVALID_int_regslice;
reg    s_axis_video_TREADY_int_regslice;
wire    regslice_both_s_axis_video_V_data_V_U_ack_in;
wire    regslice_both_s_axis_video_V_keep_V_U_apdone_blk;
wire   [2:0] s_axis_video_TKEEP_int_regslice;
wire    regslice_both_s_axis_video_V_keep_V_U_vld_out;
wire    regslice_both_s_axis_video_V_keep_V_U_ack_in;
wire    regslice_both_s_axis_video_V_strb_V_U_apdone_blk;
wire   [2:0] s_axis_video_TSTRB_int_regslice;
wire    regslice_both_s_axis_video_V_strb_V_U_vld_out;
wire    regslice_both_s_axis_video_V_strb_V_U_ack_in;
wire    regslice_both_s_axis_video_V_user_V_U_apdone_blk;
wire   [0:0] s_axis_video_TUSER_int_regslice;
wire    regslice_both_s_axis_video_V_user_V_U_vld_out;
wire    regslice_both_s_axis_video_V_user_V_U_ack_in;
wire    regslice_both_s_axis_video_V_last_V_U_apdone_blk;
wire   [0:0] s_axis_video_TLAST_int_regslice;
wire    regslice_both_s_axis_video_V_last_V_U_vld_out;
wire    regslice_both_s_axis_video_V_last_V_U_ack_in;
wire    regslice_both_s_axis_video_V_id_V_U_apdone_blk;
wire   [0:0] s_axis_video_TID_int_regslice;
wire    regslice_both_s_axis_video_V_id_V_U_vld_out;
wire    regslice_both_s_axis_video_V_id_V_U_ack_in;
wire    regslice_both_s_axis_video_V_dest_V_U_apdone_blk;
wire   [0:0] s_axis_video_TDEST_int_regslice;
wire    regslice_both_s_axis_video_V_dest_V_U_vld_out;
wire    regslice_both_s_axis_video_V_dest_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg = 1'b0;
end

bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID_int_regslice),
    .s_axis_video_TDATA(s_axis_video_TDATA_int_regslice),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP_int_regslice),
    .s_axis_video_TSTRB(s_axis_video_TSTRB_int_regslice),
    .s_axis_video_TUSER(s_axis_video_TUSER_int_regslice),
    .s_axis_video_TLAST(s_axis_video_TLAST_int_regslice),
    .s_axis_video_TID(s_axis_video_TID_int_regslice),
    .s_axis_video_TDEST(s_axis_video_TDEST_int_regslice),
    .axi_data_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out),
    .axi_data_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out_ap_vld),
    .axi_last_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_last_V_out),
    .axi_last_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_last_V_out_ap_vld)
);

bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_width grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID_int_regslice),
    .SrcYUV_din(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_din),
    .SrcYUV_num_data_valid(5'd0),
    .SrcYUV_fifo_cap(5'd0),
    .SrcYUV_full_n(SrcYUV_full_n),
    .SrcYUV_write(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_write),
    .sof_5(sof_fu_100),
    .axi_last_V_2(axi_last_V_2_reg_154),
    .axi_data_V_14(axi_data_V_14_fu_96),
    .cols(cols_reg_413),
    .icmp_ln797(icmp_ln797_reg_425),
    .icmp_ln797_1(icmp_ln797_1_reg_430),
    .s_axis_video_TDATA(s_axis_video_TDATA_int_regslice),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP_int_regslice),
    .s_axis_video_TSTRB(s_axis_video_TSTRB_int_regslice),
    .s_axis_video_TUSER(s_axis_video_TUSER_int_regslice),
    .s_axis_video_TLAST(s_axis_video_TLAST_int_regslice),
    .s_axis_video_TID(s_axis_video_TID_int_regslice),
    .s_axis_video_TDEST(s_axis_video_TDEST_int_regslice),
    .eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out),
    .eol_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out_ap_vld),
    .axi_data_V_15_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_axi_data_V_15_out),
    .axi_data_V_15_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_axi_data_V_15_out_ap_vld)
);

bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID_int_regslice),
    .axi_data_2_lcssa(axi_data_2_lcssa_reg_164),
    .axi_last_2_lcssa(axi_last_2_lcssa_reg_174),
    .eol_0_lcssa(eol_0_lcssa_reg_185),
    .s_axis_video_TDATA(s_axis_video_TDATA_int_regslice),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP_int_regslice),
    .s_axis_video_TSTRB(s_axis_video_TSTRB_int_regslice),
    .s_axis_video_TUSER(s_axis_video_TUSER_int_regslice),
    .s_axis_video_TLAST(s_axis_video_TLAST_int_regslice),
    .s_axis_video_TID(s_axis_video_TID_int_regslice),
    .s_axis_video_TDEST(s_axis_video_TDEST_int_regslice),
    .axi_data_V_16_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out),
    .axi_data_V_16_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out_ap_vld),
    .axi_last_V_4_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out),
    .axi_last_V_4_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out_ap_vld)
);

bd_3a92_vsc_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_282(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(Height_read_reg_403),
    .ap_return(grp_reg_unsigned_short_s_fu_282_ap_return)
);

bd_3a92_vsc_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_287(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(WidthIn_read_reg_398),
    .ap_return(grp_reg_unsigned_short_s_fu_287_ap_return)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 24 ))
regslice_both_s_axis_video_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TDATA),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_data_V_U_ack_in),
    .data_out(s_axis_video_TDATA_int_regslice),
    .vld_out(s_axis_video_TVALID_int_regslice),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_data_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_s_axis_video_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TKEEP),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_keep_V_U_ack_in),
    .data_out(s_axis_video_TKEEP_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_keep_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_keep_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_s_axis_video_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TSTRB),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_strb_V_U_ack_in),
    .data_out(s_axis_video_TSTRB_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_strb_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_strb_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TUSER),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_user_V_U_ack_in),
    .data_out(s_axis_video_TUSER_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_user_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_user_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TLAST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_last_V_U_ack_in),
    .data_out(s_axis_video_TLAST_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_last_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_last_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TID),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_id_V_U_ack_in),
    .data_out(s_axis_video_TID_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_id_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_id_V_U_apdone_blk)
);

bd_3a92_vsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TDEST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_dest_V_U_ack_in),
    .data_out(s_axis_video_TDEST_int_regslice),
    .vld_out(regslice_both_s_axis_video_V_dest_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_video_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd0) & (cmp8748_reg_421 == 1'd0))) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd0) & (cmp8748_reg_421 == 1'd1))) begin
        axi_data_2_lcssa_reg_164 <= axi_data_V_14_fu_96;
    end else if (((1'b1 == ap_CS_fsm_state8) & (cmp8748_reg_421 == 1'd0))) begin
        axi_data_2_lcssa_reg_164 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_axi_data_V_15_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out_ap_vld == 1'b1))) begin
        axi_data_V_14_fu_96 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_data_V_16_out;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out_ap_vld == 1'b1))) begin
        axi_data_V_14_fu_96 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_data_V_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd0) & (cmp8748_reg_421 == 1'd1))) begin
        axi_last_2_lcssa_reg_174 <= axi_last_V_2_reg_154;
    end else if (((1'b1 == ap_CS_fsm_state8) & (cmp8748_reg_421 == 1'd0))) begin
        axi_last_2_lcssa_reg_174 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        axi_last_V_2_reg_154 <= axi_last_V_4_loc_fu_104;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ColorMode_empty_n))) begin
        axi_last_V_2_reg_154 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_axi_last_V_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd0) & (cmp8748_reg_421 == 1'd1))) begin
        eol_0_lcssa_reg_185 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (cmp8748_reg_421 == 1'd0))) begin
        eol_0_lcssa_reg_185 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_eol_out;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_92 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        i_fu_92 <= i_4_reg_439;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        sof_fu_100 <= 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state8) & (cmp8748_reg_421 == 1'd0))) begin
        sof_fu_100 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        Height_read_reg_403 <= Height_dout;
        WidthIn_read_reg_398 <= WidthIn_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out_ap_vld == 1'b1))) begin
        axi_last_V_4_loc_fu_104 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_axi_last_V_4_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cmp8748_reg_421 <= cmp8748_fu_295_p2;
        cols_reg_413 <= grp_reg_unsigned_short_s_fu_287_ap_return;
        icmp_ln797_1_reg_430 <= icmp_ln797_1_fu_307_p2;
        icmp_ln797_reg_425 <= icmp_ln797_fu_301_p2;
        rows_reg_408 <= grp_reg_unsigned_short_s_fu_282_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_4_reg_439 <= i_4_fu_321_p2;
        icmp_ln767_reg_435 <= icmp_ln767_fu_316_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ColorMode_blk_n = ColorMode_empty_n;
    end else begin
        ColorMode_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ColorMode_empty_n))) begin
        ColorMode_read = 1'b1;
    end else begin
        ColorMode_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        Height_blk_n = Height_empty_n;
    end else begin
        Height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        Height_read = 1'b1;
    end else begin
        Height_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_HeightIn_c_blk_n = HwReg_HeightIn_c_full_n;
    end else begin
        HwReg_HeightIn_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_HeightIn_c_write = 1'b1;
    end else begin
        HwReg_HeightIn_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_Width_c13_blk_n = HwReg_Width_c13_full_n;
    end else begin
        HwReg_Width_c13_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_Width_c13_write = 1'b1;
    end else begin
        HwReg_Width_c13_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        SrcYUV_write = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_write;
    end else begin
        SrcYUV_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        WidthIn_blk_n = WidthIn_empty_n;
    end else begin
        WidthIn_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        WidthIn_read = 1'b1;
    end else begin
        WidthIn_read = 1'b0;
    end
end

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

assign ap_ST_fsm_state11_blk = 1'b0;

always @ (*) begin
    if (((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ColorMode_empty_n)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_axis_video_TREADY_int_regslice = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        s_axis_video_TREADY_int_regslice = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_axis_video_TREADY_int_regslice = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_s_axis_video_TREADY;
    end else begin
        s_axis_video_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ColorMode_empty_n))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln767_reg_435 == 1'd0) & (cmp8748_reg_421 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign HwReg_HeightIn_c_din = Height_dout;

assign HwReg_Width_c13_din = WidthIn_dout;

assign SrcYUV_din = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_SrcYUV_din;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((1'b0 == HwReg_Width_c13_full_n) | (1'b0 == HwReg_HeightIn_c_full_n) | (1'b0 == WidthIn_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign cmp8748_fu_295_p2 = ((grp_reg_unsigned_short_s_fu_287_ap_return == 11'd0) ? 1'b1 : 1'b0);

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217_ap_start_reg;

assign i_4_fu_321_p2 = (i_fu_92 + 11'd1);

assign icmp_ln767_fu_316_p2 = ((i_fu_92 == rows_reg_408) ? 1'b1 : 1'b0);

assign icmp_ln797_1_fu_307_p2 = ((ColorMode_dout == 8'd1) ? 1'b1 : 1'b0);

assign icmp_ln797_fu_301_p2 = ((ColorMode_dout == 8'd0) ? 1'b1 : 1'b0);

assign s_axis_video_TREADY = regslice_both_s_axis_video_V_data_V_U_ack_in;

endmodule //bd_3a92_vsc_0_AXIvideo2MultiPixStream
