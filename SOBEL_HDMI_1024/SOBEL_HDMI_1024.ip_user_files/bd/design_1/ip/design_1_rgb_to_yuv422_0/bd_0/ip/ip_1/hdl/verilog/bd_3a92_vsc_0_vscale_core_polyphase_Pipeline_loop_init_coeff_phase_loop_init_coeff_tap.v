// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        FiltCoeff_address0,
        FiltCoeff_ce0,
        FiltCoeff_we0,
        FiltCoeff_d0,
        vfltCoeff_address0,
        vfltCoeff_ce0,
        vfltCoeff_q0,
        FiltCoeff_1_address0,
        FiltCoeff_1_ce0,
        FiltCoeff_1_we0,
        FiltCoeff_1_d0,
        FiltCoeff_2_address0,
        FiltCoeff_2_ce0,
        FiltCoeff_2_we0,
        FiltCoeff_2_d0,
        FiltCoeff_3_address0,
        FiltCoeff_3_ce0,
        FiltCoeff_3_we0,
        FiltCoeff_3_d0,
        FiltCoeff_4_address0,
        FiltCoeff_4_ce0,
        FiltCoeff_4_we0,
        FiltCoeff_4_d0,
        FiltCoeff_5_address0,
        FiltCoeff_5_ce0,
        FiltCoeff_5_we0,
        FiltCoeff_5_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] FiltCoeff_address0;
output   FiltCoeff_ce0;
output   FiltCoeff_we0;
output  [15:0] FiltCoeff_d0;
output  [8:0] vfltCoeff_address0;
output   vfltCoeff_ce0;
input  [15:0] vfltCoeff_q0;
output  [5:0] FiltCoeff_1_address0;
output   FiltCoeff_1_ce0;
output   FiltCoeff_1_we0;
output  [15:0] FiltCoeff_1_d0;
output  [5:0] FiltCoeff_2_address0;
output   FiltCoeff_2_ce0;
output   FiltCoeff_2_we0;
output  [15:0] FiltCoeff_2_d0;
output  [5:0] FiltCoeff_3_address0;
output   FiltCoeff_3_ce0;
output   FiltCoeff_3_we0;
output  [15:0] FiltCoeff_3_d0;
output  [5:0] FiltCoeff_4_address0;
output   FiltCoeff_4_ce0;
output   FiltCoeff_4_we0;
output  [15:0] FiltCoeff_4_d0;
output  [5:0] FiltCoeff_5_address0;
output   FiltCoeff_5_ce0;
output   FiltCoeff_5_we0;
output  [15:0] FiltCoeff_5_d0;

reg ap_idle;
reg FiltCoeff_ce0;
reg FiltCoeff_we0;
reg vfltCoeff_ce0;
reg FiltCoeff_1_ce0;
reg FiltCoeff_1_we0;
reg FiltCoeff_2_ce0;
reg FiltCoeff_2_we0;
reg FiltCoeff_3_ce0;
reg FiltCoeff_3_we0;
reg FiltCoeff_4_ce0;
reg FiltCoeff_4_we0;
reg FiltCoeff_5_ce0;
reg FiltCoeff_5_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln204_fu_203_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] select_ln204_fu_233_p3;
reg   [2:0] select_ln204_reg_343;
reg   [2:0] select_ln204_reg_343_pp0_iter1_reg;
reg   [2:0] select_ln204_reg_343_pp0_iter2_reg;
reg   [2:0] select_ln204_reg_343_pp0_iter3_reg;
wire   [6:0] select_ln204_1_fu_241_p3;
reg   [6:0] select_ln204_1_reg_348;
reg   [6:0] select_ln204_1_reg_348_pp0_iter1_reg;
reg   [6:0] select_ln204_1_reg_348_pp0_iter2_reg;
reg   [6:0] select_ln204_1_reg_348_pp0_iter3_reg;
wire   [5:0] trunc_ln204_fu_249_p1;
reg   [5:0] trunc_ln204_reg_355;
wire   [2:0] add_ln207_fu_253_p2;
reg   [2:0] add_ln207_reg_360;
wire   [8:0] add_ln209_fu_291_p2;
reg   [8:0] add_ln209_reg_365;
reg   [15:0] vfltCoeff_load_reg_375;
wire   [63:0] zext_ln209_2_fu_305_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln204_fu_309_p1;
reg   [2:0] j_fu_82;
reg   [2:0] ap_sig_allocacmp_j_load;
wire    ap_loop_init;
reg   [6:0] i_fu_86;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten_fu_90;
wire   [8:0] add_ln204_1_fu_209_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln207_fu_227_p2;
wire   [6:0] add_ln204_fu_221_p2;
wire   [7:0] tmp_1_fu_271_p3;
wire   [8:0] tmp_fu_264_p3;
wire   [8:0] zext_ln209_fu_278_p1;
wire   [8:0] sub_ln209_fu_282_p2;
wire   [8:0] zext_ln209_1_fu_288_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
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

bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_86 <= select_ln204_1_reg_348;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln204_fu_203_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_90 <= add_ln204_1_fu_209_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_90 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln207_reg_360;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln204_fu_203_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln207_reg_360 <= add_ln207_fu_253_p2;
        select_ln204_1_reg_348 <= select_ln204_1_fu_241_p3;
        select_ln204_reg_343 <= select_ln204_fu_233_p3;
        trunc_ln204_reg_355 <= trunc_ln204_fu_249_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln209_reg_365 <= add_ln209_fu_291_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln204_1_reg_348_pp0_iter1_reg <= select_ln204_1_reg_348;
        select_ln204_reg_343_pp0_iter1_reg <= select_ln204_reg_343;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        select_ln204_1_reg_348_pp0_iter2_reg <= select_ln204_1_reg_348_pp0_iter1_reg;
        select_ln204_1_reg_348_pp0_iter3_reg <= select_ln204_1_reg_348_pp0_iter2_reg;
        select_ln204_reg_343_pp0_iter2_reg <= select_ln204_reg_343_pp0_iter1_reg;
        select_ln204_reg_343_pp0_iter3_reg <= select_ln204_reg_343_pp0_iter2_reg;
        vfltCoeff_load_reg_375 <= vfltCoeff_q0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_1_ce0 = 1'b1;
    end else begin
        FiltCoeff_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (select_ln204_reg_343_pp0_iter3_reg == 3'd1))) begin
        FiltCoeff_1_we0 = 1'b1;
    end else begin
        FiltCoeff_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_2_ce0 = 1'b1;
    end else begin
        FiltCoeff_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (select_ln204_reg_343_pp0_iter3_reg == 3'd2))) begin
        FiltCoeff_2_we0 = 1'b1;
    end else begin
        FiltCoeff_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_3_ce0 = 1'b1;
    end else begin
        FiltCoeff_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (select_ln204_reg_343_pp0_iter3_reg == 3'd3))) begin
        FiltCoeff_3_we0 = 1'b1;
    end else begin
        FiltCoeff_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_4_ce0 = 1'b1;
    end else begin
        FiltCoeff_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (select_ln204_reg_343_pp0_iter3_reg == 3'd4))) begin
        FiltCoeff_4_we0 = 1'b1;
    end else begin
        FiltCoeff_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_5_ce0 = 1'b1;
    end else begin
        FiltCoeff_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & ((select_ln204_reg_343_pp0_iter3_reg == 3'd5) | ((select_ln204_reg_343_pp0_iter3_reg == 3'd6) | (select_ln204_reg_343_pp0_iter3_reg == 3'd7))))) begin
        FiltCoeff_5_we0 = 1'b1;
    end else begin
        FiltCoeff_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        FiltCoeff_ce0 = 1'b1;
    end else begin
        FiltCoeff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (select_ln204_reg_343_pp0_iter3_reg == 3'd0))) begin
        FiltCoeff_we0 = 1'b1;
    end else begin
        FiltCoeff_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln204_fu_203_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_i_load = 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_i_load = select_ln204_1_reg_348;
        end else begin
            ap_sig_allocacmp_i_load = i_fu_86;
        end
    end else begin
        ap_sig_allocacmp_i_load = i_fu_86;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_j_load = 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_j_load = add_ln207_reg_360;
        end else begin
            ap_sig_allocacmp_j_load = j_fu_82;
        end
    end else begin
        ap_sig_allocacmp_j_load = j_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        vfltCoeff_ce0 = 1'b1;
    end else begin
        vfltCoeff_ce0 = 1'b0;
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

assign FiltCoeff_1_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_1_d0 = vfltCoeff_load_reg_375;

assign FiltCoeff_2_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_2_d0 = vfltCoeff_load_reg_375;

assign FiltCoeff_3_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_3_d0 = vfltCoeff_load_reg_375;

assign FiltCoeff_4_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_4_d0 = vfltCoeff_load_reg_375;

assign FiltCoeff_5_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_5_d0 = vfltCoeff_load_reg_375;

assign FiltCoeff_address0 = zext_ln204_fu_309_p1;

assign FiltCoeff_d0 = vfltCoeff_load_reg_375;

assign add_ln204_1_fu_209_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln204_fu_221_p2 = (ap_sig_allocacmp_i_load + 7'd1);

assign add_ln207_fu_253_p2 = (select_ln204_fu_233_p3 + 3'd1);

assign add_ln209_fu_291_p2 = (sub_ln209_fu_282_p2 + zext_ln209_1_fu_288_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln204_fu_203_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd384) ? 1'b1 : 1'b0);

assign icmp_ln207_fu_227_p2 = ((ap_sig_allocacmp_j_load == 3'd6) ? 1'b1 : 1'b0);

assign select_ln204_1_fu_241_p3 = ((icmp_ln207_fu_227_p2[0:0] == 1'b1) ? add_ln204_fu_221_p2 : ap_sig_allocacmp_i_load);

assign select_ln204_fu_233_p3 = ((icmp_ln207_fu_227_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_j_load);

assign sub_ln209_fu_282_p2 = (tmp_fu_264_p3 - zext_ln209_fu_278_p1);

assign tmp_1_fu_271_p3 = {{select_ln204_1_reg_348}, {1'd0}};

assign tmp_fu_264_p3 = {{trunc_ln204_reg_355}, {3'd0}};

assign trunc_ln204_fu_249_p1 = select_ln204_1_fu_241_p3[5:0];

assign vfltCoeff_address0 = zext_ln209_2_fu_305_p1;

assign zext_ln204_fu_309_p1 = select_ln204_1_reg_348_pp0_iter3_reg;

assign zext_ln209_1_fu_288_p1 = select_ln204_reg_343;

assign zext_ln209_2_fu_305_p1 = add_ln209_reg_365;

assign zext_ln209_fu_278_p1 = tmp_1_fu_271_p3;

endmodule //bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap