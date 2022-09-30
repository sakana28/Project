// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_csc_0_v_hcresampler_core_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        stream_csc_dout,
        stream_csc_num_data_valid,
        stream_csc_fifo_cap,
        stream_csc_empty_n,
        stream_csc_read,
        HwReg_height_dout,
        HwReg_height_num_data_valid,
        HwReg_height_fifo_cap,
        HwReg_height_empty_n,
        HwReg_height_read,
        HwReg_width_dout,
        HwReg_width_num_data_valid,
        HwReg_width_fifo_cap,
        HwReg_width_empty_n,
        HwReg_width_read,
        p_read,
        stream_out_hresampled_din,
        stream_out_hresampled_num_data_valid,
        stream_out_hresampled_fifo_cap,
        stream_out_hresampled_full_n,
        stream_out_hresampled_write,
        HwReg_width_c_din,
        HwReg_width_c_num_data_valid,
        HwReg_width_c_fifo_cap,
        HwReg_width_c_full_n,
        HwReg_width_c_write,
        HwReg_height_c_din,
        HwReg_height_c_num_data_valid,
        HwReg_height_c_fifo_cap,
        HwReg_height_c_full_n,
        HwReg_height_c_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] stream_csc_dout;
input  [4:0] stream_csc_num_data_valid;
input  [4:0] stream_csc_fifo_cap;
input   stream_csc_empty_n;
output   stream_csc_read;
input  [10:0] HwReg_height_dout;
input  [1:0] HwReg_height_num_data_valid;
input  [1:0] HwReg_height_fifo_cap;
input   HwReg_height_empty_n;
output   HwReg_height_read;
input  [10:0] HwReg_width_dout;
input  [1:0] HwReg_width_num_data_valid;
input  [1:0] HwReg_width_fifo_cap;
input   HwReg_width_empty_n;
output   HwReg_width_read;
input  [0:0] p_read;
output  [23:0] stream_out_hresampled_din;
input  [4:0] stream_out_hresampled_num_data_valid;
input  [4:0] stream_out_hresampled_fifo_cap;
input   stream_out_hresampled_full_n;
output   stream_out_hresampled_write;
output  [10:0] HwReg_width_c_din;
input  [1:0] HwReg_width_c_num_data_valid;
input  [1:0] HwReg_width_c_fifo_cap;
input   HwReg_width_c_full_n;
output   HwReg_width_c_write;
output  [10:0] HwReg_height_c_din;
input  [1:0] HwReg_height_c_num_data_valid;
input  [1:0] HwReg_height_c_fifo_cap;
input   HwReg_height_c_full_n;
output   HwReg_height_c_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_csc_read;
reg HwReg_height_read;
reg HwReg_width_read;
reg stream_out_hresampled_write;
reg HwReg_width_c_write;
reg HwReg_height_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    HwReg_height_blk_n;
reg    HwReg_width_blk_n;
reg    HwReg_width_c_blk_n;
reg    HwReg_height_c_blk_n;
reg   [10:0] loopHeight_reg_424;
reg   [10:0] HwReg_width_read_reg_429;
wire   [1:0] select_ln685_fu_226_p3;
reg   [1:0] select_ln685_reg_435;
wire    ap_CS_fsm_state2;
wire   [11:0] loopWidth_fu_243_p2;
reg   [11:0] loopWidth_reg_440;
wire   [0:0] not_read15_fu_249_p2;
reg   [0:0] not_read15_reg_445;
wire   [0:0] cmp361011_i_fu_254_p2;
reg   [0:0] cmp361011_i_reg_450;
wire   [10:0] y_2_fu_268_p2;
reg   [10:0] y_2_reg_457;
wire    ap_CS_fsm_state3;
reg   [7:0] pixbuf_y_val_V_2_load_reg_462;
wire   [0:0] icmp_ln722_fu_263_p2;
reg   [7:0] pixbuf_y_val_V_3_load_reg_467;
reg   [7:0] pixbuf_y_val_V_4_load_reg_472;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_done;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_idle;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_ready;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_csc_read;
wire   [23:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_din;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_write;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o_ap_vld;
wire   [7:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o_ap_vld;
wire   [63:0] grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o;
wire    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o_ap_vld;
reg    grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [7:0] pixbuf_y_val_V_4_fu_144;
reg   [7:0] pixbuf_y_val_V_3_fu_140;
reg   [7:0] pixbuf_y_val_V_2_fu_136;
reg   [7:0] pixbuf_y_val_V_1_fu_132;
reg   [7:0] p_0_0_0_0_0_21073_lcssa1099_i_fu_124;
reg   [7:0] p_0_0_0_0_0516_21070_lcssa1096_i_fu_120;
reg   [7:0] p_lcssa10691093_i_fu_116;
reg   [7:0] p_lcssa10681090_i_fu_112;
reg   [7:0] p_lcssa10661084_i_fu_108;
reg   [7:0] p_lcssa1078_i_fu_104;
reg   [7:0] p_0_1_0_0_01032_lcssa1058_i_fu_100;
reg   [7:0] p_0_1_0_0_01028_lcssa1055_i_fu_96;
reg   [7:0] p_0_2_0_0_01024_lcssa1049_i_fu_88;
reg   [7:0] p_0_1_0_0_01022_lcssa1046_i_fu_84;
reg   [7:0] p_0_0_0_0_05241020_lcssa1043_i_fu_80;
reg   [63:0] filt_res1_fu_76;
reg   [10:0] y_1_fu_72;
wire    ap_CS_fsm_state6;
reg    ap_block_state1;
reg   [7:0] p_0_0_0_0_05241026_lcssa1052_i_fu_92;
reg   [7:0] pixbuf_y_val_V_fu_128;
wire   [11:0] select_ln720_fu_233_p3;
wire   [11:0] zext_ln720_fu_240_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg = 1'b0;
end

bd_3a92_csc_0_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2 grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start),
    .ap_done(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_done),
    .ap_idle(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_idle),
    .ap_ready(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_ready),
    .stream_csc_dout(stream_csc_dout),
    .stream_csc_num_data_valid(5'd0),
    .stream_csc_fifo_cap(5'd0),
    .stream_csc_empty_n(stream_csc_empty_n),
    .stream_csc_read(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_csc_read),
    .stream_out_hresampled_din(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_din),
    .stream_out_hresampled_num_data_valid(5'd0),
    .stream_out_hresampled_fifo_cap(5'd0),
    .stream_out_hresampled_full_n(stream_out_hresampled_full_n),
    .stream_out_hresampled_write(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_write),
    .pixbuf_y_val_V_4(pixbuf_y_val_V_4_load_reg_472),
    .pixbuf_y_val_V_3(pixbuf_y_val_V_3_load_reg_467),
    .pixbuf_y_val_V_2(pixbuf_y_val_V_2_load_reg_462),
    .pixbuf_y_val_V(pixbuf_y_val_V_fu_128),
    .p_0_0_0_0_05241026_lcssa1052_i(p_0_0_0_0_05241026_lcssa1052_i_fu_92),
    .loopWidth(loopWidth_reg_440),
    .conv2772_cast_cast_i_cast_cast(not_read15_reg_445),
    .select_ln685(select_ln685_reg_435),
    .zext_ln720(HwReg_width_read_reg_429),
    .p_read(p_read),
    .pixbuf_y_val_V_9_out(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out),
    .pixbuf_y_val_V_9_out_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out_ap_vld),
    .pixbuf_y_val_V_8_out(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out),
    .pixbuf_y_val_V_8_out_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out_ap_vld),
    .pixbuf_y_val_V_7_out(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out),
    .pixbuf_y_val_V_7_out_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out_ap_vld),
    .pixbuf_y_val_V_6_out_i(pixbuf_y_val_V_1_fu_132),
    .pixbuf_y_val_V_6_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o),
    .pixbuf_y_val_V_6_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o_ap_vld),
    .pixbuf_y_val_V_5_out(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out),
    .pixbuf_y_val_V_5_out_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out_ap_vld),
    .p_0_0_0_0_0_21075_i_out_i(p_0_0_0_0_0_21073_lcssa1099_i_fu_124),
    .p_0_0_0_0_0_21075_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o),
    .p_0_0_0_0_0_21075_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o_ap_vld),
    .p_0_0_0_0_0516_21072_i_out_i(p_0_0_0_0_0516_21070_lcssa1096_i_fu_120),
    .p_0_0_0_0_0516_21072_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o),
    .p_0_0_0_0_0516_21072_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o_ap_vld),
    .p_out_i(p_lcssa10691093_i_fu_116),
    .p_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o),
    .p_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o_ap_vld),
    .p_out1_i(p_lcssa10681090_i_fu_112),
    .p_out1_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o),
    .p_out1_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o_ap_vld),
    .p_out2_i(p_lcssa10661084_i_fu_108),
    .p_out2_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o),
    .p_out2_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o_ap_vld),
    .p_out3_i(p_lcssa1078_i_fu_104),
    .p_out3_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o),
    .p_out3_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o_ap_vld),
    .p_0_1_0_0_01035_i_out_i(p_0_1_0_0_01032_lcssa1058_i_fu_100),
    .p_0_1_0_0_01035_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o),
    .p_0_1_0_0_01035_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o_ap_vld),
    .p_0_1_0_0_01031_i_out_i(p_0_1_0_0_01028_lcssa1055_i_fu_96),
    .p_0_1_0_0_01031_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o),
    .p_0_1_0_0_01031_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o_ap_vld),
    .p_0_2_0_0_01025_i_out_i(p_0_2_0_0_01024_lcssa1049_i_fu_88),
    .p_0_2_0_0_01025_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o),
    .p_0_2_0_0_01025_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o_ap_vld),
    .p_0_1_0_0_01023_i_out_i(p_0_1_0_0_01022_lcssa1046_i_fu_84),
    .p_0_1_0_0_01023_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o),
    .p_0_1_0_0_01023_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o_ap_vld),
    .p_0_0_0_0_05241021_i_out_i(p_0_0_0_0_05241020_lcssa1043_i_fu_80),
    .p_0_0_0_0_05241021_i_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o),
    .p_0_0_0_0_05241021_i_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o_ap_vld),
    .filt_res1_1_out_i(filt_res1_fu_76),
    .filt_res1_1_out_o(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o),
    .filt_res1_1_out_o_ap_vld(grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o_ap_vld)
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
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg <= 1'b1;
        end else if ((grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_ready == 1'b1)) begin
            grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_1_fu_72 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        y_1_fu_72 <= y_2_reg_457;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        HwReg_width_read_reg_429 <= HwReg_width_dout;
        loopHeight_reg_424 <= HwReg_height_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp361011_i_reg_450 <= cmp361011_i_fu_254_p2;
        loopWidth_reg_440 <= loopWidth_fu_243_p2;
        not_read15_reg_445 <= not_read15_fu_249_p2;
        select_ln685_reg_435[1] <= select_ln685_fu_226_p3[1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o_ap_vld == 1'b1))) begin
        filt_res1_fu_76 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_filt_res1_1_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o_ap_vld == 1'b1))) begin
        p_0_0_0_0_0516_21070_lcssa1096_i_fu_120 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0516_21072_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o_ap_vld == 1'b1))) begin
        p_0_0_0_0_05241020_lcssa1043_i_fu_80 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_05241021_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp361011_i_reg_450 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        p_0_0_0_0_05241026_lcssa1052_i_fu_92 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out;
        pixbuf_y_val_V_fu_128 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_5_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o_ap_vld == 1'b1))) begin
        p_0_0_0_0_0_21073_lcssa1099_i_fu_124 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_0_0_0_0_21075_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o_ap_vld == 1'b1))) begin
        p_0_1_0_0_01022_lcssa1046_i_fu_84 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01023_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o_ap_vld == 1'b1))) begin
        p_0_1_0_0_01028_lcssa1055_i_fu_96 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01031_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o_ap_vld == 1'b1))) begin
        p_0_1_0_0_01032_lcssa1058_i_fu_100 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_1_0_0_01035_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o_ap_vld == 1'b1))) begin
        p_0_2_0_0_01024_lcssa1049_i_fu_88 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_0_2_0_0_01025_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o_ap_vld == 1'b1))) begin
        p_lcssa10661084_i_fu_108 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out2_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o_ap_vld == 1'b1))) begin
        p_lcssa10681090_i_fu_112 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out1_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o_ap_vld == 1'b1))) begin
        p_lcssa10691093_i_fu_116 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o_ap_vld == 1'b1))) begin
        p_lcssa1078_i_fu_104 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_p_out3_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o_ap_vld == 1'b1))) begin
        pixbuf_y_val_V_1_fu_132 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_6_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out_ap_vld == 1'b1))) begin
        pixbuf_y_val_V_2_fu_136 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_7_out;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp361011_i_reg_450 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd0))) begin
        pixbuf_y_val_V_2_load_reg_462 <= pixbuf_y_val_V_2_fu_136;
        pixbuf_y_val_V_3_load_reg_467 <= pixbuf_y_val_V_3_fu_140;
        pixbuf_y_val_V_4_load_reg_472 <= pixbuf_y_val_V_4_fu_144;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out_ap_vld == 1'b1))) begin
        pixbuf_y_val_V_3_fu_140 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_8_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out_ap_vld == 1'b1))) begin
        pixbuf_y_val_V_4_fu_144 <= grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_pixbuf_y_val_V_9_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y_2_reg_457 <= y_2_fu_268_p2;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_height_blk_n = HwReg_height_empty_n;
    end else begin
        HwReg_height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_height_c_blk_n = HwReg_height_c_full_n;
    end else begin
        HwReg_height_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_height_c_write = 1'b1;
    end else begin
        HwReg_height_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_height_read = 1'b1;
    end else begin
        HwReg_height_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_width_blk_n = HwReg_width_empty_n;
    end else begin
        HwReg_width_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_width_c_blk_n = HwReg_width_c_full_n;
    end else begin
        HwReg_width_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_width_c_write = 1'b1;
    end else begin
        HwReg_width_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_width_read = 1'b1;
    end else begin
        HwReg_width_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        stream_csc_read = grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_csc_read;
    end else begin
        stream_csc_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        stream_out_hresampled_write = grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_write;
    end else begin
        stream_out_hresampled_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((cmp361011_i_reg_450 == 1'd1) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln722_fu_263_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign HwReg_height_c_din = HwReg_height_dout;

assign HwReg_width_c_din = HwReg_width_dout;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((1'b0 == HwReg_height_c_full_n) | (1'b0 == HwReg_width_c_full_n) | (1'b0 == HwReg_width_empty_n) | (1'b0 == HwReg_height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign cmp361011_i_fu_254_p2 = ((loopWidth_fu_243_p2 == 12'd0) ? 1'b1 : 1'b0);

assign grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start = grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_ap_start_reg;

assign icmp_ln722_fu_263_p2 = ((y_1_fu_72 == loopHeight_reg_424) ? 1'b1 : 1'b0);

assign loopWidth_fu_243_p2 = (select_ln720_fu_233_p3 + zext_ln720_fu_240_p1);

assign not_read15_fu_249_p2 = (p_read ^ 1'd1);

assign select_ln685_fu_226_p3 = ((p_read[0:0] == 1'b1) ? 2'd0 : 2'd2);

assign select_ln720_fu_233_p3 = ((p_read[0:0] == 1'b1) ? 12'd0 : 12'd2);

assign stream_out_hresampled_din = grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2_fu_186_stream_out_hresampled_din;

assign y_2_fu_268_p2 = (y_1_fu_72 + 11'd1);

assign zext_ln720_fu_240_p1 = HwReg_width_read_reg_429;

always @ (posedge ap_clk) begin
    select_ln685_reg_435[0] <= 1'b0;
end

endmodule //bd_3a92_csc_0_v_hcresampler_core_1
