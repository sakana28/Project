// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_ltr_0_MultiPixStream2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        outYUV_dout,
        outYUV_num_data_valid,
        outYUV_fifo_cap,
        outYUV_empty_n,
        outYUV_read,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        height,
        width,
        video_format
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
input  [23:0] outYUV_dout;
input  [4:0] outYUV_num_data_valid;
input  [4:0] outYUV_fifo_cap;
input   outYUV_empty_n;
output   outYUV_read;
output  [23:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [15:0] height;
input  [15:0] width;
input  [15:0] video_format;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg outYUV_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] grp_reg_unsigned_short_s_fu_124_ap_return;
reg   [10:0] rows_reg_207;
wire    ap_CS_fsm_state2;
wire   [10:0] grp_reg_unsigned_short_s_fu_134_ap_return;
reg   [10:0] cols_reg_212;
wire   [11:0] sub_fu_154_p2;
reg   [11:0] sub_reg_217;
wire   [0:0] cmp17234_fu_160_p2;
reg   [0:0] cmp17234_reg_227;
wire   [10:0] i_2_fu_174_p2;
reg   [10:0] i_2_reg_234;
wire    ap_CS_fsm_state3;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_done;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_idle;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_ready;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_outYUV_read;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TREADY;
wire   [23:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDATA;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID;
wire   [2:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TKEEP;
wire   [2:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TSTRB;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TUSER;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TLAST;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TID;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDEST;
wire   [10:0] grp_reg_unsigned_short_s_fu_124_d;
wire   [10:0] grp_reg_unsigned_short_s_fu_134_d;
reg    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [10:0] i_fu_70;
reg    ap_block_state5_on_subcall_done;
reg    ap_block_state1;
reg   [0:0] sof_fu_74;
wire   [11:0] zext_ln344_fu_150_p1;
wire   [0:0] icmp_ln378_fu_169_p2;
wire    ap_CS_fsm_state6;
wire    regslice_both_m_axis_video_V_data_V_U_apdone_blk;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    m_axis_video_TVALID_int_regslice;
wire    m_axis_video_TREADY_int_regslice;
wire    regslice_both_m_axis_video_V_data_V_U_vld_out;
wire    regslice_both_m_axis_video_V_keep_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_keep_V_U_vld_out;
wire    regslice_both_m_axis_video_V_strb_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_strb_V_U_vld_out;
wire    regslice_both_m_axis_video_V_user_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_user_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_user_V_U_vld_out;
wire    regslice_both_m_axis_video_V_last_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_last_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_last_V_U_vld_out;
wire    regslice_both_m_axis_video_V_id_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_id_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_id_V_U_vld_out;
wire    regslice_both_m_axis_video_V_dest_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg = 1'b0;
end

bd_3a92_ltr_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start),
    .ap_done(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_done),
    .ap_idle(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_idle),
    .ap_ready(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_ready),
    .outYUV_dout(outYUV_dout),
    .outYUV_num_data_valid(5'd0),
    .outYUV_fifo_cap(5'd0),
    .outYUV_empty_n(outYUV_empty_n),
    .outYUV_read(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_outYUV_read),
    .m_axis_video_TREADY(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TREADY),
    .sof(sof_fu_74),
    .cols(cols_reg_212),
    .m_axis_video_TDATA(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDATA),
    .m_axis_video_TVALID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .m_axis_video_TKEEP(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TSTRB),
    .m_axis_video_TUSER(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TUSER),
    .m_axis_video_TLAST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TLAST),
    .m_axis_video_TID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TID),
    .m_axis_video_TDEST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDEST),
    .video_format_load(video_format),
    .sub(sub_reg_217)
);

bd_3a92_ltr_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_124(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(grp_reg_unsigned_short_s_fu_124_d),
    .ap_return(grp_reg_unsigned_short_s_fu_124_ap_return)
);

bd_3a92_ltr_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_134(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(grp_reg_unsigned_short_s_fu_134_d),
    .ap_return(grp_reg_unsigned_short_s_fu_134_ap_return)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 24 ))
regslice_both_m_axis_video_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDATA),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(m_axis_video_TREADY_int_regslice),
    .data_out(m_axis_video_TDATA),
    .vld_out(regslice_both_m_axis_video_V_data_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_data_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_m_axis_video_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TKEEP),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_video_TKEEP),
    .vld_out(regslice_both_m_axis_video_V_keep_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_keep_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_m_axis_video_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TSTRB),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy),
    .data_out(m_axis_video_TSTRB),
    .vld_out(regslice_both_m_axis_video_V_strb_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_strb_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TUSER),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_user_V_U_ack_in_dummy),
    .data_out(m_axis_video_TUSER),
    .vld_out(regslice_both_m_axis_video_V_user_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_user_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TLAST),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_video_TLAST),
    .vld_out(regslice_both_m_axis_video_V_last_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_last_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TID),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_id_V_U_ack_in_dummy),
    .data_out(m_axis_video_TID),
    .vld_out(regslice_both_m_axis_video_V_id_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_id_V_U_apdone_blk)
);

bd_3a92_ltr_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TDEST),
    .vld_in(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID),
    .ack_in(regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy),
    .data_out(m_axis_video_TDEST),
    .vld_out(regslice_both_m_axis_video_V_dest_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_dest_V_U_apdone_blk)
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
        end else if (((1'b1 == ap_CS_fsm_state6) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_ready == 1'b1)) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_70 <= 11'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        i_fu_70 <= i_2_reg_234;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        sof_fu_74 <= 1'd1;
    end else if (((cmp17234_reg_227 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        sof_fu_74 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp17234_reg_227 <= cmp17234_fu_160_p2;
        cols_reg_212 <= grp_reg_unsigned_short_s_fu_134_ap_return;
        rows_reg_207 <= grp_reg_unsigned_short_s_fu_124_ap_return;
        sub_reg_217 <= sub_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_2_reg_234 <= i_2_fu_174_p2;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((cmp17234_reg_227 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        outYUV_read = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_outYUV_read;
    end else begin
        outYUV_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((cmp17234_reg_227 == 1'd1) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln378_fu_169_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((cmp17234_reg_227 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln378_fu_169_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state5_on_subcall_done = ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_done == 1'b0) & (cmp17234_reg_227 == 1'd0));
end

assign cmp17234_fu_160_p2 = ((grp_reg_unsigned_short_s_fu_134_ap_return == 11'd0) ? 1'b1 : 1'b0);

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_ap_start_reg;

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TREADY = (m_axis_video_TREADY_int_regslice & ap_CS_fsm_state5);

assign grp_reg_unsigned_short_s_fu_124_d = height[10:0];

assign grp_reg_unsigned_short_s_fu_134_d = width[10:0];

assign i_2_fu_174_p2 = (i_fu_70 + 11'd1);

assign icmp_ln378_fu_169_p2 = ((i_fu_70 == rows_reg_207) ? 1'b1 : 1'b0);

assign m_axis_video_TVALID = regslice_both_m_axis_video_V_data_V_U_vld_out;

assign m_axis_video_TVALID_int_regslice = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_380_2_fu_96_m_axis_video_TVALID;

assign sub_fu_154_p2 = ($signed(zext_ln344_fu_150_p1) + $signed(12'd4095));

assign zext_ln344_fu_150_p1 = grp_reg_unsigned_short_s_fu_134_ap_return;

endmodule //bd_3a92_ltr_0_MultiPixStream2AXIvideo