// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_csc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        stream_in_dout,
        stream_in_num_data_valid,
        stream_in_fifo_cap,
        stream_in_empty_n,
        stream_in_read,
        stream_in_hresampled_din,
        stream_in_hresampled_num_data_valid,
        stream_in_hresampled_fifo_cap,
        stream_in_hresampled_full_n,
        stream_in_hresampled_write,
        pixbuf_y_val_V_19,
        pixbuf_y_val_V_18,
        pixbuf_y_val_V_17,
        pixbuf_y_val_V,
        p_0_0_0_0_05241026_lcssa1052_i,
        loopWidth,
        select_ln685,
        zext_ln720,
        p_read,
        pixbuf_y_val_V_24_out,
        pixbuf_y_val_V_24_out_ap_vld,
        pixbuf_y_val_V_23_out,
        pixbuf_y_val_V_23_out_ap_vld,
        pixbuf_y_val_V_22_out,
        pixbuf_y_val_V_22_out_ap_vld,
        pixbuf_y_val_V_21_out_i,
        pixbuf_y_val_V_21_out_o,
        pixbuf_y_val_V_21_out_o_ap_vld,
        pixbuf_y_val_V_20_out,
        pixbuf_y_val_V_20_out_ap_vld,
        p_0_0_0_0_0_21075_i_out_i,
        p_0_0_0_0_0_21075_i_out_o,
        p_0_0_0_0_0_21075_i_out_o_ap_vld,
        p_0_0_0_0_0516_21072_i_out_i,
        p_0_0_0_0_0516_21072_i_out_o,
        p_0_0_0_0_0516_21072_i_out_o_ap_vld,
        p_out_i,
        p_out_o,
        p_out_o_ap_vld,
        p_out1_i,
        p_out1_o,
        p_out1_o_ap_vld,
        p_out2_i,
        p_out2_o,
        p_out2_o_ap_vld,
        p_out3_i,
        p_out3_o,
        p_out3_o_ap_vld,
        p_0_1_0_0_01035_i_out_i,
        p_0_1_0_0_01035_i_out_o,
        p_0_1_0_0_01035_i_out_o_ap_vld,
        p_0_1_0_0_01031_i_out_i,
        p_0_1_0_0_01031_i_out_o,
        p_0_1_0_0_01031_i_out_o_ap_vld,
        p_0_2_0_0_01025_i_out_i,
        p_0_2_0_0_01025_i_out_o,
        p_0_2_0_0_01025_i_out_o_ap_vld,
        p_0_1_0_0_01023_i_out_i,
        p_0_1_0_0_01023_i_out_o,
        p_0_1_0_0_01023_i_out_o_ap_vld,
        p_0_0_0_0_05241021_i_out_i,
        p_0_0_0_0_05241021_i_out_o,
        p_0_0_0_0_05241021_i_out_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] stream_in_dout;
input  [4:0] stream_in_num_data_valid;
input  [4:0] stream_in_fifo_cap;
input   stream_in_empty_n;
output   stream_in_read;
output  [23:0] stream_in_hresampled_din;
input  [4:0] stream_in_hresampled_num_data_valid;
input  [4:0] stream_in_hresampled_fifo_cap;
input   stream_in_hresampled_full_n;
output   stream_in_hresampled_write;
input  [7:0] pixbuf_y_val_V_19;
input  [7:0] pixbuf_y_val_V_18;
input  [7:0] pixbuf_y_val_V_17;
input  [7:0] pixbuf_y_val_V;
input  [7:0] p_0_0_0_0_05241026_lcssa1052_i;
input  [11:0] loopWidth;
input  [2:0] select_ln685;
input  [10:0] zext_ln720;
input  [0:0] p_read;
output  [7:0] pixbuf_y_val_V_24_out;
output   pixbuf_y_val_V_24_out_ap_vld;
output  [7:0] pixbuf_y_val_V_23_out;
output   pixbuf_y_val_V_23_out_ap_vld;
output  [7:0] pixbuf_y_val_V_22_out;
output   pixbuf_y_val_V_22_out_ap_vld;
input  [7:0] pixbuf_y_val_V_21_out_i;
output  [7:0] pixbuf_y_val_V_21_out_o;
output   pixbuf_y_val_V_21_out_o_ap_vld;
output  [7:0] pixbuf_y_val_V_20_out;
output   pixbuf_y_val_V_20_out_ap_vld;
input  [7:0] p_0_0_0_0_0_21075_i_out_i;
output  [7:0] p_0_0_0_0_0_21075_i_out_o;
output   p_0_0_0_0_0_21075_i_out_o_ap_vld;
input  [7:0] p_0_0_0_0_0516_21072_i_out_i;
output  [7:0] p_0_0_0_0_0516_21072_i_out_o;
output   p_0_0_0_0_0516_21072_i_out_o_ap_vld;
input  [7:0] p_out_i;
output  [7:0] p_out_o;
output   p_out_o_ap_vld;
input  [7:0] p_out1_i;
output  [7:0] p_out1_o;
output   p_out1_o_ap_vld;
input  [7:0] p_out2_i;
output  [7:0] p_out2_o;
output   p_out2_o_ap_vld;
input  [7:0] p_out3_i;
output  [7:0] p_out3_o;
output   p_out3_o_ap_vld;
input  [7:0] p_0_1_0_0_01035_i_out_i;
output  [7:0] p_0_1_0_0_01035_i_out_o;
output   p_0_1_0_0_01035_i_out_o_ap_vld;
input  [7:0] p_0_1_0_0_01031_i_out_i;
output  [7:0] p_0_1_0_0_01031_i_out_o;
output   p_0_1_0_0_01031_i_out_o_ap_vld;
input  [7:0] p_0_2_0_0_01025_i_out_i;
output  [7:0] p_0_2_0_0_01025_i_out_o;
output   p_0_2_0_0_01025_i_out_o_ap_vld;
input  [7:0] p_0_1_0_0_01023_i_out_i;
output  [7:0] p_0_1_0_0_01023_i_out_o;
output   p_0_1_0_0_01023_i_out_o_ap_vld;
input  [7:0] p_0_0_0_0_05241021_i_out_i;
output  [7:0] p_0_0_0_0_05241021_i_out_o;
output   p_0_0_0_0_05241021_i_out_o_ap_vld;

reg ap_idle;
reg stream_in_read;
reg[23:0] stream_in_hresampled_din;
reg stream_in_hresampled_write;
reg pixbuf_y_val_V_24_out_ap_vld;
reg pixbuf_y_val_V_23_out_ap_vld;
reg pixbuf_y_val_V_22_out_ap_vld;
reg[7:0] pixbuf_y_val_V_21_out_o;
reg pixbuf_y_val_V_21_out_o_ap_vld;
reg pixbuf_y_val_V_20_out_ap_vld;
reg[7:0] p_0_0_0_0_0_21075_i_out_o;
reg p_0_0_0_0_0_21075_i_out_o_ap_vld;
reg[7:0] p_0_0_0_0_0516_21072_i_out_o;
reg p_0_0_0_0_0516_21072_i_out_o_ap_vld;
reg[7:0] p_out_o;
reg p_out_o_ap_vld;
reg[7:0] p_out1_o;
reg p_out1_o_ap_vld;
reg[7:0] p_out2_o;
reg p_out2_o_ap_vld;
reg[7:0] p_out3_o;
reg p_out3_o_ap_vld;
reg[7:0] p_0_1_0_0_01035_i_out_o;
reg p_0_1_0_0_01035_i_out_o_ap_vld;
reg[7:0] p_0_1_0_0_01031_i_out_o;
reg p_0_1_0_0_01031_i_out_o_ap_vld;
reg[7:0] p_0_2_0_0_01025_i_out_o;
reg p_0_2_0_0_01025_i_out_o_ap_vld;
reg[7:0] p_0_1_0_0_01023_i_out_o;
reg p_0_1_0_0_01023_i_out_o_ap_vld;
reg[7:0] p_0_0_0_0_05241021_i_out_o;
reg p_0_0_0_0_05241021_i_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln724_reg_768;
reg   [0:0] icmp_ln732_reg_778;
reg    ap_predicate_op54_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln724_reg_768_pp0_iter1_reg;
reg   [0:0] tmp_reg_792;
reg   [0:0] tmp_reg_792_pp0_iter1_reg;
reg    ap_predicate_op96_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg   [0:0] tmp_reg_792_pp0_iter3_reg;
reg    ap_predicate_op125_write_state5;
reg    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln724_fu_267_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    stream_in_blk_n;
wire    ap_block_pp0_stage0;
reg    stream_in_hresampled_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln724_fu_263_p1;
reg   [0:0] trunc_ln724_reg_756;
reg   [0:0] trunc_ln724_reg_756_pp0_iter1_reg;
reg   [0:0] icmp_ln724_reg_768_pp0_iter2_reg;
wire   [0:0] odd_col_fu_285_p1;
reg   [0:0] odd_col_reg_772;
reg   [0:0] odd_col_reg_772_pp0_iter1_reg;
reg   [0:0] odd_col_reg_772_pp0_iter2_reg;
reg   [0:0] odd_col_reg_772_pp0_iter3_reg;
wire   [0:0] icmp_ln732_fu_289_p2;
wire   [0:0] cmp150_i_fu_295_p2;
reg   [0:0] cmp150_i_reg_782;
reg   [0:0] cmp150_i_reg_782_pp0_iter1_reg;
reg   [0:0] tmp_reg_792_pp0_iter2_reg;
reg   [7:0] pixbuf_y_val_V_6_reg_796;
reg   [7:0] pixbuf_y_val_V_7_reg_802;
reg   [7:0] pixbuf_y_val_V_8_reg_807;
wire   [7:0] lhs_1_fu_495_p3;
reg   [7:0] lhs_1_reg_812;
wire   [7:0] lhs_fu_502_p3;
reg   [7:0] lhs_reg_817;
wire   [7:0] rhs_1_fu_509_p3;
reg   [7:0] rhs_1_reg_822;
reg   [7:0] rhs_1_reg_822_pp0_iter3_reg;
wire   [7:0] rhs_fu_516_p3;
reg   [7:0] rhs_reg_828;
reg   [7:0] rhs_reg_828_pp0_iter3_reg;
reg   [7:0] trunc_ln2_reg_834;
reg   [7:0] trunc_ln232_1_reg_839;
reg   [7:0] pixbuf_y_val_V_21_out_load_reg_844;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [7:0] select_ln814_fu_481_p3;
wire   [7:0] select_ln814_1_fu_488_p3;
wire   [7:0] select_ln746_fu_346_p3;
wire   [7:0] select_ln746_1_fu_353_p3;
wire   [7:0] trunc_ln145_5_fu_326_p4;
wire   [7:0] trunc_ln145_fu_322_p1;
reg   [11:0] x_fu_120;
wire   [11:0] x_2_fu_273_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_x_1;
reg   [7:0] pixbuf_y_val_V_1_fu_124;
reg   [7:0] pixbuf_y_val_V_2_fu_128;
reg   [7:0] pixbuf_y_val_V_3_fu_132;
reg   [7:0] pixbuf_y_val_V_4_fu_136;
reg   [7:0] pixbuf_y_val_V_5_fu_140;
wire   [23:0] p_0_fu_535_p4;
reg    ap_block_pp0_stage0_01001;
wire   [23:0] p_s_fu_680_p4;
wire   [12:0] zext_ln724_fu_259_p1;
wire   [12:0] select_ln685_cast_fu_222_p1;
wire   [12:0] out_x_fu_279_p2;
wire   [11:0] zext_ln720_cast_fu_218_p1;
wire   [7:0] select_ln792_fu_439_p3;
wire   [7:0] select_ln792_1_fu_446_p3;
wire   [7:0] select_ln792_2_fu_453_p3;
wire   [7:0] select_ln792_3_fu_460_p3;
wire   [7:0] select_ln792_4_fu_467_p3;
wire   [7:0] select_ln792_5_fu_474_p3;
wire   [8:0] zext_ln232_1_fu_608_p1;
wire   [8:0] add_ln1541_fu_611_p2;
wire   [8:0] zext_ln232_fu_605_p1;
wire   [8:0] ret_V_fu_617_p2;
wire   [8:0] zext_ln232_3_fu_636_p1;
wire   [8:0] add_ln1541_2_fu_639_p2;
wire   [8:0] zext_ln232_2_fu_633_p1;
wire   [8:0] ret_V_1_fu_645_p2;
wire   [7:0] select_ln688_fu_670_p3;
wire   [7:0] select_ln688_1_fu_675_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_590;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

bd_3a92_csc_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_val_V_1_fu_124 <= pixbuf_y_val_V;
        end else if (((icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            pixbuf_y_val_V_1_fu_124 <= pixbuf_y_val_V_2_fu_128;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pixbuf_y_val_V_2_fu_128 <= p_0_0_0_0_05241026_lcssa1052_i;
        end else if ((1'b1 == ap_condition_590)) begin
            pixbuf_y_val_V_2_fu_128 <= trunc_ln145_fu_322_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_val_V_3_fu_132 <= pixbuf_y_val_V_17;
        end else if (((icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            pixbuf_y_val_V_3_fu_132 <= pixbuf_y_val_V_4_fu_136;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_val_V_4_fu_136 <= pixbuf_y_val_V_18;
        end else if (((icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            pixbuf_y_val_V_4_fu_136 <= pixbuf_y_val_V_5_fu_140;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_val_V_5_fu_140 <= pixbuf_y_val_V_19;
        end else if (((icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            pixbuf_y_val_V_5_fu_140 <= pixbuf_y_val_V_1_fu_124;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln724_fu_267_p2 == 1'd0))) begin
            x_fu_120 <= x_2_fu_273_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_120 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp150_i_reg_782_pp0_iter1_reg <= cmp150_i_reg_782;
        icmp_ln724_reg_768 <= icmp_ln724_fu_267_p2;
        icmp_ln724_reg_768_pp0_iter1_reg <= icmp_ln724_reg_768;
        odd_col_reg_772_pp0_iter1_reg <= odd_col_reg_772;
        tmp_reg_792_pp0_iter1_reg <= tmp_reg_792;
        trunc_ln724_reg_756 <= trunc_ln724_fu_263_p1;
        trunc_ln724_reg_756_pp0_iter1_reg <= trunc_ln724_reg_756;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln724_reg_768_pp0_iter2_reg <= icmp_ln724_reg_768_pp0_iter1_reg;
        odd_col_reg_772_pp0_iter2_reg <= odd_col_reg_772_pp0_iter1_reg;
        odd_col_reg_772_pp0_iter3_reg <= odd_col_reg_772_pp0_iter2_reg;
        rhs_1_reg_822_pp0_iter3_reg <= rhs_1_reg_822;
        rhs_reg_828_pp0_iter3_reg <= rhs_reg_828;
        tmp_reg_792_pp0_iter2_reg <= tmp_reg_792_pp0_iter1_reg;
        tmp_reg_792_pp0_iter3_reg <= tmp_reg_792_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln724_fu_267_p2 == 1'd0))) begin
        cmp150_i_reg_782 <= cmp150_i_fu_295_p2;
        icmp_ln732_reg_778 <= icmp_ln732_fu_289_p2;
        odd_col_reg_772 <= odd_col_fu_285_p1;
        tmp_reg_792 <= out_x_fu_279_p2[32'd12];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0))) begin
        lhs_1_reg_812 <= lhs_1_fu_495_p3;
        lhs_reg_817 <= lhs_fu_502_p3;
        rhs_1_reg_822 <= rhs_1_fu_509_p3;
        rhs_reg_828 <= rhs_fu_516_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (p_read == 1'd0) & (tmp_reg_792_pp0_iter2_reg == 1'd0))) begin
        pixbuf_y_val_V_21_out_load_reg_844 <= pixbuf_y_val_V_21_out_i;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pixbuf_y_val_V_6_reg_796 <= pixbuf_y_val_V_3_fu_132;
        pixbuf_y_val_V_7_reg_802 <= pixbuf_y_val_V_4_fu_136;
        pixbuf_y_val_V_8_reg_807 <= pixbuf_y_val_V_5_fu_140;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (odd_col_reg_772_pp0_iter2_reg == 1'd1))) begin
        trunc_ln232_1_reg_839 <= {{ret_V_1_fu_645_p2[8:1]}};
        trunc_ln2_reg_834 <= {{ret_V_fu_617_p2[8:1]}};
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln724_fu_267_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x_1 = 12'd0;
    end else begin
        ap_sig_allocacmp_x_1 = x_fu_120;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_0_0_0_0_0516_21072_i_out_o = select_ln814_1_fu_488_p3;
    end else begin
        p_0_0_0_0_0516_21072_i_out_o = p_0_0_0_0_0516_21072_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_0_0_0_0_0516_21072_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_0_0_0_0516_21072_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0_0_0_05241021_i_out_o = trunc_ln145_fu_322_p1;
    end else begin
        p_0_0_0_0_05241021_i_out_o = p_0_0_0_0_05241021_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0_0_0_05241021_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_0_0_0_05241021_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_0_0_0_0_0_21075_i_out_o = select_ln814_fu_481_p3;
    end else begin
        p_0_0_0_0_0_21075_i_out_o = p_0_0_0_0_0_21075_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_0_0_0_0_0_21075_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_0_0_0_0_21075_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01023_i_out_o = {{stream_in_dout[15:8]}};
    end else begin
        p_0_1_0_0_01023_i_out_o = p_0_1_0_0_01023_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01023_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_1_0_0_01023_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01031_i_out_o = select_ln746_1_fu_353_p3;
    end else begin
        p_0_1_0_0_01031_i_out_o = p_0_1_0_0_01031_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01031_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_1_0_0_01031_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01035_i_out_o = select_ln746_fu_346_p3;
    end else begin
        p_0_1_0_0_01035_i_out_o = p_0_1_0_0_01035_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_1_0_0_01035_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_1_0_0_01035_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_2_0_0_01025_i_out_o = {{stream_in_dout[23:16]}};
    end else begin
        p_0_2_0_0_01025_i_out_o = p_0_2_0_0_01025_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_2_0_0_01025_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_2_0_0_01025_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out1_o = lhs_fu_502_p3;
    end else begin
        p_out1_o = p_out1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out1_o_ap_vld = 1'b1;
    end else begin
        p_out1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out2_o = rhs_1_fu_509_p3;
    end else begin
        p_out2_o = p_out2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out2_o_ap_vld = 1'b1;
    end else begin
        p_out2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out3_o = rhs_fu_516_p3;
    end else begin
        p_out3_o = p_out3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out3_o_ap_vld = 1'b1;
    end else begin
        p_out3_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out_o = lhs_1_fu_495_p3;
    end else begin
        p_out_o = p_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_out_o_ap_vld = 1'b1;
    end else begin
        p_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter2_reg == 1'd1))) begin
        pixbuf_y_val_V_20_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_val_V_20_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        pixbuf_y_val_V_21_out_o = pixbuf_y_val_V_6_reg_796;
    end else begin
        pixbuf_y_val_V_21_out_o = pixbuf_y_val_V_21_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        pixbuf_y_val_V_21_out_o_ap_vld = 1'b1;
    end else begin
        pixbuf_y_val_V_21_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter2_reg == 1'd1))) begin
        pixbuf_y_val_V_22_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_val_V_22_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter2_reg == 1'd1))) begin
        pixbuf_y_val_V_23_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_val_V_23_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln724_reg_768_pp0_iter2_reg == 1'd1))) begin
        pixbuf_y_val_V_24_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_val_V_24_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op54_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_in_blk_n = stream_in_empty_n;
    end else begin
        stream_in_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op125_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op96_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        stream_in_hresampled_blk_n = stream_in_hresampled_full_n;
    end else begin
        stream_in_hresampled_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0_01001)) begin
        if (((ap_predicate_op125_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
            stream_in_hresampled_din = p_s_fu_680_p4;
        end else if (((ap_predicate_op96_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            stream_in_hresampled_din = p_0_fu_535_p4;
        end else begin
            stream_in_hresampled_din = 'bx;
        end
    end else begin
        stream_in_hresampled_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op125_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op96_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        stream_in_hresampled_write = 1'b1;
    end else begin
        stream_in_hresampled_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op54_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_in_read = 1'b1;
    end else begin
        stream_in_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1541_2_fu_639_p2 = (zext_ln232_3_fu_636_p1 + 9'd1);

assign add_ln1541_fu_611_p2 = (zext_ln232_1_fu_608_p1 + 9'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_predicate_op125_write_state5 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_predicate_op96_write_state3 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op54_read_state2 == 1'b1) & (stream_in_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_predicate_op125_write_state5 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_predicate_op96_write_state3 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op54_read_state2 == 1'b1) & (stream_in_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_predicate_op125_write_state5 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_predicate_op96_write_state3 == 1'b1) & (stream_in_hresampled_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op54_read_state2 == 1'b1) & (stream_in_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op54_read_state2 == 1'b1) & (stream_in_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((ap_predicate_op96_write_state3 == 1'b1) & (stream_in_hresampled_full_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((ap_predicate_op125_write_state5 == 1'b1) & (stream_in_hresampled_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_590 = ((icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op125_write_state5 = ((tmp_reg_792_pp0_iter3_reg == 1'd0) & (p_read == 1'd0));
end

always @ (*) begin
    ap_predicate_op54_read_state2 = ((icmp_ln732_reg_778 == 1'd1) & (icmp_ln724_reg_768 == 1'd0));
end

always @ (*) begin
    ap_predicate_op96_write_state3 = ((p_read == 1'd1) & (tmp_reg_792_pp0_iter1_reg == 1'd0) & (icmp_ln724_reg_768_pp0_iter1_reg == 1'd0));
end

assign cmp150_i_fu_295_p2 = ((ap_sig_allocacmp_x_1 == 12'd1) ? 1'b1 : 1'b0);

assign icmp_ln724_fu_267_p2 = ((ap_sig_allocacmp_x_1 == loopWidth) ? 1'b1 : 1'b0);

assign icmp_ln732_fu_289_p2 = ((ap_sig_allocacmp_x_1 < zext_ln720_cast_fu_218_p1) ? 1'b1 : 1'b0);

assign lhs_1_fu_495_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01035_i_out_i : select_ln792_2_fu_453_p3);

assign lhs_fu_502_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01031_i_out_i : select_ln792_3_fu_460_p3);

assign odd_col_fu_285_p1 = out_x_fu_279_p2[0:0];

assign out_x_fu_279_p2 = (zext_ln724_fu_259_p1 - select_ln685_cast_fu_222_p1);

assign p_0_fu_535_p4 = {{{p_0_2_0_0_01025_i_out_i}, {p_0_1_0_0_01023_i_out_i}}, {p_0_0_0_0_05241021_i_out_i}};

assign p_s_fu_680_p4 = {{{select_ln688_fu_670_p3}, {select_ln688_1_fu_675_p3}}, {pixbuf_y_val_V_21_out_load_reg_844}};

assign pixbuf_y_val_V_20_out = pixbuf_y_val_V_1_fu_124;

assign pixbuf_y_val_V_22_out = pixbuf_y_val_V_6_reg_796;

assign pixbuf_y_val_V_23_out = pixbuf_y_val_V_7_reg_802;

assign pixbuf_y_val_V_24_out = pixbuf_y_val_V_8_reg_807;

assign ret_V_1_fu_645_p2 = (add_ln1541_2_fu_639_p2 + zext_ln232_2_fu_633_p1);

assign ret_V_fu_617_p2 = (add_ln1541_fu_611_p2 + zext_ln232_fu_605_p1);

assign rhs_1_fu_509_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01035_i_out_i : select_ln792_4_fu_467_p3);

assign rhs_fu_516_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01031_i_out_i : select_ln792_5_fu_474_p3);

assign select_ln685_cast_fu_222_p1 = select_ln685;

assign select_ln688_1_fu_675_p3 = ((odd_col_reg_772_pp0_iter3_reg[0:0] == 1'b1) ? trunc_ln2_reg_834 : rhs_reg_828_pp0_iter3_reg);

assign select_ln688_fu_670_p3 = ((odd_col_reg_772_pp0_iter3_reg[0:0] == 1'b1) ? trunc_ln232_1_reg_839 : rhs_1_reg_822_pp0_iter3_reg);

assign select_ln746_1_fu_353_p3 = ((trunc_ln724_reg_756[0:0] == 1'b1) ? p_0_1_0_0_01031_i_out_i : trunc_ln145_5_fu_326_p4);

assign select_ln746_fu_346_p3 = ((trunc_ln724_reg_756[0:0] == 1'b1) ? trunc_ln145_5_fu_326_p4 : p_0_1_0_0_01035_i_out_i);

assign select_ln792_1_fu_446_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01031_i_out_i : p_0_0_0_0_0516_21072_i_out_i);

assign select_ln792_2_fu_453_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_0_0_0_0_0_21075_i_out_i : p_out_i);

assign select_ln792_3_fu_460_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_0_0_0_0_0516_21072_i_out_i : p_out1_i);

assign select_ln792_4_fu_467_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_out_i : p_out2_i);

assign select_ln792_5_fu_474_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_out1_i : p_out3_i);

assign select_ln792_fu_439_p3 = ((trunc_ln724_reg_756_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01035_i_out_i : p_0_0_0_0_0_21075_i_out_i);

assign select_ln814_1_fu_488_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01031_i_out_i : select_ln792_1_fu_446_p3);

assign select_ln814_fu_481_p3 = ((cmp150_i_reg_782_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_01035_i_out_i : select_ln792_fu_439_p3);

assign trunc_ln145_5_fu_326_p4 = {{stream_in_dout[15:8]}};

assign trunc_ln145_fu_322_p1 = stream_in_dout[7:0];

assign trunc_ln724_fu_263_p1 = ap_sig_allocacmp_x_1[0:0];

assign x_2_fu_273_p2 = (ap_sig_allocacmp_x_1 + 12'd1);

assign zext_ln232_1_fu_608_p1 = rhs_reg_828;

assign zext_ln232_2_fu_633_p1 = lhs_1_reg_812;

assign zext_ln232_3_fu_636_p1 = rhs_1_reg_822;

assign zext_ln232_fu_605_p1 = lhs_reg_817;

assign zext_ln720_cast_fu_218_p1 = zext_ln720;

assign zext_ln724_fu_259_p1 = ap_sig_allocacmp_x_1;

endmodule //bd_3a92_csc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2
