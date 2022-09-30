
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [13:0] inst_idle_sigs;
wire [6:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[3] = ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_entry1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_entry1_proc_U0.ap_done & ~Block_entry1_proc_U0.ap_continue);
assign inst_idle_sigs[1] = Block_entry12_proc_U0.ap_idle;
assign inst_block_sigs[1] = (Block_entry12_proc_U0.ap_done & ~Block_entry12_proc_U0.ap_continue);
assign inst_idle_sigs[2] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[2] = (AXIvideo2MultiPixStream_U0.ap_done & ~AXIvideo2MultiPixStream_U0.ap_continue) | ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164.stream_in_blk_n;
assign inst_idle_sigs[3] = v_hcresampler_core_U0.ap_idle;
assign inst_block_sigs[3] = (v_hcresampler_core_U0.ap_done & ~v_hcresampler_core_U0.ap_continue) | ~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152.stream_in_blk_n | ~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152.stream_upsampled_blk_n;
assign inst_idle_sigs[4] = hscale_core_polyphase_U0.ap_idle;
assign inst_block_sigs[4] = (hscale_core_polyphase_U0.ap_done & ~hscale_core_polyphase_U0.ap_continue) | ~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.stream_upsampled_blk_n | ~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_220.stream_scaled_blk_n;
assign inst_idle_sigs[5] = v_hcresampler_core_1_U0.ap_idle;
assign inst_block_sigs[5] = (v_hcresampler_core_1_U0.ap_done & ~v_hcresampler_core_1_U0.ap_continue) | ~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.stream_scaled_blk_n | ~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_166.stream_out_422_blk_n;
assign inst_idle_sigs[6] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[6] = (MultiPixStream2AXIvideo_U0.ap_done & ~MultiPixStream2AXIvideo_U0.ap_continue) | ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.stream_out_422_blk_n;

assign inst_idle_sigs[7] = 1'b0;
assign inst_idle_sigs[8] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[9] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_144.ap_idle;
assign inst_idle_sigs[10] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_164.ap_idle;
assign inst_idle_sigs[11] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_194.ap_idle;
assign inst_idle_sigs[12] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[13] = MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140.ap_idle;

bd_3a92_hsc_0_hls_deadlock_idx0_monitor bd_3a92_hsc_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
