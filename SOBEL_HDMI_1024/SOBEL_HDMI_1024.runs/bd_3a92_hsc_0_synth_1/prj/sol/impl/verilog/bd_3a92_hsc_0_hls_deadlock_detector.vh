
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [3:0] in_chan_dep_vld_vec_0;
    wire [27:0] in_chan_dep_data_vec_0;
    wire [3:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [6:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [6:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [6:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [6:0] dep_chan_data_3_0;
    wire token_3_0;
    wire dep_chan_vld_4_0;
    wire [6:0] dep_chan_data_4_0;
    wire token_4_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [3:0] in_chan_dep_vld_vec_1;
    wire [27:0] in_chan_dep_data_vec_1;
    wire [3:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [6:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [6:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [6:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_4_1;
    wire [6:0] dep_chan_data_4_1;
    wire token_4_1;
    wire dep_chan_vld_5_1;
    wire [6:0] dep_chan_data_5_1;
    wire token_5_1;
    wire [3:0] proc_2_data_FIFO_blk;
    wire [3:0] proc_2_data_PIPO_blk;
    wire [3:0] proc_2_start_FIFO_blk;
    wire [3:0] proc_2_TLF_FIFO_blk;
    wire [3:0] proc_2_input_sync_blk;
    wire [3:0] proc_2_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_2;
    reg [3:0] proc_dep_vld_vec_2_reg;
    wire [3:0] in_chan_dep_vld_vec_2;
    wire [27:0] in_chan_dep_data_vec_2;
    wire [3:0] token_in_vec_2;
    wire [3:0] out_chan_dep_vld_vec_2;
    wire [6:0] out_chan_dep_data_2;
    wire [3:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [6:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [6:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [6:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [6:0] dep_chan_data_4_2;
    wire token_4_2;
    wire [2:0] proc_3_data_FIFO_blk;
    wire [2:0] proc_3_data_PIPO_blk;
    wire [2:0] proc_3_start_FIFO_blk;
    wire [2:0] proc_3_TLF_FIFO_blk;
    wire [2:0] proc_3_input_sync_blk;
    wire [2:0] proc_3_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_3;
    reg [2:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [13:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [2:0] out_chan_dep_vld_vec_3;
    wire [6:0] out_chan_dep_data_3;
    wire [2:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [6:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [6:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [4:0] proc_4_data_FIFO_blk;
    wire [4:0] proc_4_data_PIPO_blk;
    wire [4:0] proc_4_start_FIFO_blk;
    wire [4:0] proc_4_TLF_FIFO_blk;
    wire [4:0] proc_4_input_sync_blk;
    wire [4:0] proc_4_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_4;
    reg [4:0] proc_dep_vld_vec_4_reg;
    wire [4:0] in_chan_dep_vld_vec_4;
    wire [34:0] in_chan_dep_data_vec_4;
    wire [4:0] token_in_vec_4;
    wire [4:0] out_chan_dep_vld_vec_4;
    wire [6:0] out_chan_dep_data_4;
    wire [4:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_0_4;
    wire [6:0] dep_chan_data_0_4;
    wire token_0_4;
    wire dep_chan_vld_1_4;
    wire [6:0] dep_chan_data_1_4;
    wire token_1_4;
    wire dep_chan_vld_2_4;
    wire [6:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_3_4;
    wire [6:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_5_4;
    wire [6:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [1:0] in_chan_dep_vld_vec_5;
    wire [13:0] in_chan_dep_data_vec_5;
    wire [1:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [6:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [6:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [6:0] dep_chan_data_6_5;
    wire token_6_5;
    wire [0:0] proc_6_data_FIFO_blk;
    wire [0:0] proc_6_data_PIPO_blk;
    wire [0:0] proc_6_start_FIFO_blk;
    wire [0:0] proc_6_TLF_FIFO_blk;
    wire [0:0] proc_6_input_sync_blk;
    wire [0:0] proc_6_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_6;
    reg [0:0] proc_dep_vld_vec_6_reg;
    wire [0:0] in_chan_dep_vld_vec_6;
    wire [6:0] in_chan_dep_data_vec_6;
    wire [0:0] token_in_vec_6;
    wire [0:0] out_chan_dep_vld_vec_6;
    wire [6:0] out_chan_dep_data_6;
    wire [0:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [6:0] dep_chan_data_5_6;
    wire token_5_6;
    wire [6:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [6:0] origin;

    reg ap_done_reg_0;// for module v_hcresampler_core_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= v_hcresampler_core_U0.ap_done & ~v_hcresampler_core_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module v_hcresampler_core_1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= v_hcresampler_core_1_U0.ap_done & ~v_hcresampler_core_1_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process v_hcresampler_core_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (v_hcresampler_core_1_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process v_hcresampler_core_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (v_hcresampler_core_1_U0.ap_done == 1'b1 && v_hcresampler_core_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

    // Process: Block_entry1_proc_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 0, 4, 3) bd_3a92_hsc_0_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0;
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (ap_sync_Block_entry1_proc_U0_ap_ready & Block_entry1_proc_U0.ap_idle & ~ap_sync_Block_entry12_proc_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_Block_entry1_proc_U0_ap_ready & Block_entry1_proc_U0.ap_idle & ~ap_sync_AXIvideo2MultiPixStream_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (ap_sync_Block_entry1_proc_U0_ap_ready & Block_entry1_proc_U0.ap_idle & ~ap_sync_hscale_core_polyphase_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[6 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[13 : 7] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[20 : 14] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_4_0;
    assign in_chan_dep_data_vec_0[27 : 21] = dep_chan_data_4_0;
    assign token_in_vec_0[3] = token_4_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];
    assign dep_chan_vld_0_4 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_4 = out_chan_dep_data_0;
    assign token_0_4 = token_out_vec_0[2];

    // Process: Block_entry12_proc_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 1, 4, 3) bd_3a92_hsc_0_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (ap_sync_Block_entry12_proc_U0_ap_ready & Block_entry12_proc_U0.ap_idle & ~ap_sync_Block_entry1_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (ap_sync_Block_entry12_proc_U0_ap_ready & Block_entry12_proc_U0.ap_idle & ~ap_sync_AXIvideo2MultiPixStream_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0 | (ap_sync_Block_entry12_proc_U0_ap_ready & Block_entry12_proc_U0.ap_idle & ~ap_sync_hscale_core_polyphase_U0_ap_ready);
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[6 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[13 : 7] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_4_1;
    assign in_chan_dep_data_vec_1[20 : 14] = dep_chan_data_4_1;
    assign token_in_vec_1[2] = token_4_1;
    assign in_chan_dep_vld_vec_1[3] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[27 : 21] = dep_chan_data_5_1;
    assign token_in_vec_1[3] = token_5_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[1];
    assign dep_chan_vld_1_4 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_4 = out_chan_dep_data_1;
    assign token_1_4 = token_out_vec_1[2];

    // Process: AXIvideo2MultiPixStream_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 2, 4, 4) bd_3a92_hsc_0_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164.stream_in_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0 | (ap_sync_AXIvideo2MultiPixStream_U0_ap_ready & AXIvideo2MultiPixStream_U0.ap_idle & ~ap_sync_Block_entry1_proc_U0_ap_ready);
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (ap_sync_AXIvideo2MultiPixStream_U0_ap_ready & AXIvideo2MultiPixStream_U0.ap_idle & ~ap_sync_Block_entry12_proc_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    assign proc_2_data_FIFO_blk[3] = 1'b0;
    assign proc_2_data_PIPO_blk[3] = 1'b0;
    assign proc_2_start_FIFO_blk[3] = 1'b0;
    assign proc_2_TLF_FIFO_blk[3] = 1'b0;
    assign proc_2_input_sync_blk[3] = 1'b0 | (ap_sync_AXIvideo2MultiPixStream_U0_ap_ready & AXIvideo2MultiPixStream_U0.ap_idle & ~ap_sync_hscale_core_polyphase_U0_ap_ready);
    assign proc_2_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (proc_2_data_FIFO_blk[3] | proc_2_data_PIPO_blk[3] | proc_2_start_FIFO_blk[3] | proc_2_TLF_FIFO_blk[3] | proc_2_input_sync_blk[3] | proc_2_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[6 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[13 : 7] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[20 : 14] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[27 : 21] = dep_chan_data_4_2;
    assign token_in_vec_2[3] = token_4_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[1];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[2];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[3];

    // Process: v_hcresampler_core_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 3, 2, 3) bd_3a92_hsc_0_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152.stream_in_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0 | (~bPassThruHcr1_channel_U.if_empty_n & v_hcresampler_core_U0.ap_idle & ~bPassThruHcr1_channel_U.if_write);
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0 | (~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152.stream_upsampled_blk_n);
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0;
    assign proc_3_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[6 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[13 : 7] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[1];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[2];

    // Process: hscale_core_polyphase_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 4, 5, 5) bd_3a92_hsc_0_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.stream_upsampled_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.stream_scaled_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0;
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0 | (ap_sync_hscale_core_polyphase_U0_ap_ready & hscale_core_polyphase_U0.ap_idle & ~ap_sync_Block_entry1_proc_U0_ap_ready);
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    assign proc_4_data_FIFO_blk[3] = 1'b0;
    assign proc_4_data_PIPO_blk[3] = 1'b0;
    assign proc_4_start_FIFO_blk[3] = 1'b0;
    assign proc_4_TLF_FIFO_blk[3] = 1'b0;
    assign proc_4_input_sync_blk[3] = 1'b0 | (ap_sync_hscale_core_polyphase_U0_ap_ready & hscale_core_polyphase_U0.ap_idle & ~ap_sync_Block_entry12_proc_U0_ap_ready);
    assign proc_4_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_4[3] = dl_detect_out ? proc_dep_vld_vec_4_reg[3] : (proc_4_data_FIFO_blk[3] | proc_4_data_PIPO_blk[3] | proc_4_start_FIFO_blk[3] | proc_4_TLF_FIFO_blk[3] | proc_4_input_sync_blk[3] | proc_4_output_sync_blk[3]);
    assign proc_4_data_FIFO_blk[4] = 1'b0;
    assign proc_4_data_PIPO_blk[4] = 1'b0;
    assign proc_4_start_FIFO_blk[4] = 1'b0;
    assign proc_4_TLF_FIFO_blk[4] = 1'b0;
    assign proc_4_input_sync_blk[4] = 1'b0 | (ap_sync_hscale_core_polyphase_U0_ap_ready & hscale_core_polyphase_U0.ap_idle & ~ap_sync_AXIvideo2MultiPixStream_U0_ap_ready);
    assign proc_4_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_4[4] = dl_detect_out ? proc_dep_vld_vec_4_reg[4] : (proc_4_data_FIFO_blk[4] | proc_4_data_PIPO_blk[4] | proc_4_start_FIFO_blk[4] | proc_4_TLF_FIFO_blk[4] | proc_4_input_sync_blk[4] | proc_4_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_0_4;
    assign in_chan_dep_data_vec_4[6 : 0] = dep_chan_data_0_4;
    assign token_in_vec_4[0] = token_0_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_1_4;
    assign in_chan_dep_data_vec_4[13 : 7] = dep_chan_data_1_4;
    assign token_in_vec_4[1] = token_1_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[20 : 14] = dep_chan_data_2_4;
    assign token_in_vec_4[2] = token_2_4;
    assign in_chan_dep_vld_vec_4[3] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[27 : 21] = dep_chan_data_3_4;
    assign token_in_vec_4[3] = token_3_4;
    assign in_chan_dep_vld_vec_4[4] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[34 : 28] = dep_chan_data_5_4;
    assign token_in_vec_4[4] = token_5_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[1];
    assign dep_chan_vld_4_0 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_0 = out_chan_dep_data_4;
    assign token_4_0 = token_out_vec_4[2];
    assign dep_chan_vld_4_1 = out_chan_dep_vld_vec_4[3];
    assign dep_chan_data_4_1 = out_chan_dep_data_4;
    assign token_4_1 = token_out_vec_4[3];
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[4];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[4];

    // Process: v_hcresampler_core_1_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 5, 2, 3) bd_3a92_hsc_0_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.stream_scaled_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0;
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0 | (~bPassThruHcr2_U.if_empty_n & v_hcresampler_core_1_U0.ap_idle & ~bPassThruHcr2_U.if_write);
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.stream_out_422_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0 | (~start_for_MultiPixStream2AXIvideo_U0_U.if_full_n & v_hcresampler_core_1_U0.ap_start & ~v_hcresampler_core_1_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_MultiPixStream2AXIvideo_U0_U.if_read);
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[6 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[13 : 7] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];

    // Process: MultiPixStream2AXIvideo_U0
    bd_3a92_hsc_0_hls_deadlock_detect_unit #(7, 6, 1, 1) bd_3a92_hsc_0_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.stream_out_422_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~start_for_MultiPixStream2AXIvideo_U0_U.if_empty_n & MultiPixStream2AXIvideo_U0.ap_idle & ~start_for_MultiPixStream2AXIvideo_U0_U.if_write);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[6 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];


`include "bd_3a92_hsc_0_hls_deadlock_report_unit.vh"
