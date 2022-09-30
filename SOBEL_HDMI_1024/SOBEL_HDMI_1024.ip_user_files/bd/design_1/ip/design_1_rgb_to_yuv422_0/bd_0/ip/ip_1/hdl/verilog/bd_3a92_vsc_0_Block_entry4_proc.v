// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_3a92_vsc_0_Block_entry4_proc (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        ColorMode,
        HwReg_ColorMode_din,
        HwReg_ColorMode_num_data_valid,
        HwReg_ColorMode_fifo_cap,
        HwReg_ColorMode_full_n,
        HwReg_ColorMode_write,
        HeightIn,
        HeightOut,
        LineRate,
        HwReg_LineRate_din,
        HwReg_LineRate_num_data_valid,
        HwReg_LineRate_fifo_cap,
        HwReg_LineRate_full_n,
        HwReg_LineRate_write,
        Width,
        ColorMode_vcr_din,
        ColorMode_vcr_num_data_valid,
        ColorMode_vcr_fifo_cap,
        ColorMode_vcr_full_n,
        ColorMode_vcr_write,
        HwReg_HeightIn_c12_din,
        HwReg_HeightIn_c12_num_data_valid,
        HwReg_HeightIn_c12_fifo_cap,
        HwReg_HeightIn_c12_full_n,
        HwReg_HeightIn_c12_write,
        HwReg_Width_c14_din,
        HwReg_Width_c14_num_data_valid,
        HwReg_Width_c14_fifo_cap,
        HwReg_Width_c14_full_n,
        HwReg_Width_c14_write,
        HwReg_HeightOut_c15_din,
        HwReg_HeightOut_c15_num_data_valid,
        HwReg_HeightOut_c15_fifo_cap,
        HwReg_HeightOut_c15_full_n,
        HwReg_HeightOut_c15_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] ColorMode;
output  [7:0] HwReg_ColorMode_din;
input  [1:0] HwReg_ColorMode_num_data_valid;
input  [1:0] HwReg_ColorMode_fifo_cap;
input   HwReg_ColorMode_full_n;
output   HwReg_ColorMode_write;
input  [15:0] HeightIn;
input  [15:0] HeightOut;
input  [31:0] LineRate;
output  [31:0] HwReg_LineRate_din;
input  [1:0] HwReg_LineRate_num_data_valid;
input  [1:0] HwReg_LineRate_fifo_cap;
input   HwReg_LineRate_full_n;
output   HwReg_LineRate_write;
input  [15:0] Width;
output  [7:0] ColorMode_vcr_din;
input  [1:0] ColorMode_vcr_num_data_valid;
input  [1:0] ColorMode_vcr_fifo_cap;
input   ColorMode_vcr_full_n;
output   ColorMode_vcr_write;
output  [10:0] HwReg_HeightIn_c12_din;
input  [1:0] HwReg_HeightIn_c12_num_data_valid;
input  [1:0] HwReg_HeightIn_c12_fifo_cap;
input   HwReg_HeightIn_c12_full_n;
output   HwReg_HeightIn_c12_write;
output  [10:0] HwReg_Width_c14_din;
input  [1:0] HwReg_Width_c14_num_data_valid;
input  [1:0] HwReg_Width_c14_fifo_cap;
input   HwReg_Width_c14_full_n;
output   HwReg_Width_c14_write;
output  [10:0] HwReg_HeightOut_c15_din;
input  [1:0] HwReg_HeightOut_c15_num_data_valid;
input  [1:0] HwReg_HeightOut_c15_fifo_cap;
input   HwReg_HeightOut_c15_full_n;
output   HwReg_HeightOut_c15_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg HwReg_ColorMode_write;
reg HwReg_LineRate_write;
reg ColorMode_vcr_write;
reg HwReg_HeightIn_c12_write;
reg HwReg_Width_c14_write;
reg HwReg_HeightOut_c15_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    HwReg_ColorMode_blk_n;
wire    ap_CS_fsm_state2;
reg    HwReg_LineRate_blk_n;
reg    ColorMode_vcr_blk_n;
reg    HwReg_HeightIn_c12_blk_n;
reg    HwReg_Width_c14_blk_n;
reg    HwReg_HeightOut_c15_blk_n;
wire   [0:0] icmp_ln100_fu_129_p2;
reg    ap_block_state1;
reg    ap_block_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

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
        end else if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ColorMode_vcr_blk_n = ColorMode_vcr_full_n;
    end else begin
        ColorMode_vcr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        ColorMode_vcr_write = 1'b1;
    end else begin
        ColorMode_vcr_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        HwReg_ColorMode_blk_n = HwReg_ColorMode_full_n;
    end else begin
        HwReg_ColorMode_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        HwReg_ColorMode_write = 1'b1;
    end else begin
        HwReg_ColorMode_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        HwReg_HeightIn_c12_blk_n = HwReg_HeightIn_c12_full_n;
    end else begin
        HwReg_HeightIn_c12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        HwReg_HeightIn_c12_write = 1'b1;
    end else begin
        HwReg_HeightIn_c12_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        HwReg_HeightOut_c15_blk_n = HwReg_HeightOut_c15_full_n;
    end else begin
        HwReg_HeightOut_c15_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        HwReg_HeightOut_c15_write = 1'b1;
    end else begin
        HwReg_HeightOut_c15_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        HwReg_LineRate_blk_n = HwReg_LineRate_full_n;
    end else begin
        HwReg_LineRate_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        HwReg_LineRate_write = 1'b1;
    end else begin
        HwReg_LineRate_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        HwReg_Width_c14_blk_n = HwReg_Width_c14_full_n;
    end else begin
        HwReg_Width_c14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        HwReg_Width_c14_write = 1'b1;
    end else begin
        HwReg_Width_c14_write = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ColorMode_vcr_din = ((icmp_ln100_fu_129_p2[0:0] == 1'b1) ? 8'd2 : ColorMode);

assign HwReg_ColorMode_din = ColorMode;

assign HwReg_HeightIn_c12_din = HeightIn[10:0];

assign HwReg_HeightOut_c15_din = HeightOut[10:0];

assign HwReg_LineRate_din = LineRate;

assign HwReg_Width_c14_din = Width[10:0];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((1'b0 == HwReg_HeightOut_c15_full_n) | (1'b0 == HwReg_Width_c14_full_n) | (1'b0 == HwReg_HeightIn_c12_full_n) | (1'b0 == ColorMode_vcr_full_n) | (1'b0 == HwReg_LineRate_full_n) | (1'b0 == HwReg_ColorMode_full_n));
end

assign ap_ready = internal_ap_ready;

assign icmp_ln100_fu_129_p2 = ((ColorMode == 8'd3) ? 1'b1 : 1'b0);

assign start_out = real_start;

endmodule //bd_3a92_vsc_0_Block_entry4_proc
