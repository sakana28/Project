
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [10:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[3] = ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2_fu_104.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_entry4_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_entry4_proc_U0.ap_done & ~Block_entry4_proc_U0.ap_continue) | ~Block_entry4_proc_U0.HwReg_ColorMode_blk_n | ~Block_entry4_proc_U0.HwReg_LineRate_blk_n | ~Block_entry4_proc_U0.ColorMode_vcr_blk_n | ~Block_entry4_proc_U0.HwReg_HeightIn_c12_blk_n | ~Block_entry4_proc_U0.HwReg_Width_c14_blk_n | ~Block_entry4_proc_U0.HwReg_HeightOut_c15_blk_n;
assign inst_idle_sigs[1] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[1] = (AXIvideo2MultiPixStream_U0.ap_done & ~AXIvideo2MultiPixStream_U0.ap_continue) | ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217.SrcYUV_blk_n | ~AXIvideo2MultiPixStream_U0.Height_blk_n | ~AXIvideo2MultiPixStream_U0.WidthIn_blk_n | ~AXIvideo2MultiPixStream_U0.ColorMode_blk_n | ~AXIvideo2MultiPixStream_U0.HwReg_HeightIn_c_blk_n | ~AXIvideo2MultiPixStream_U0.HwReg_Width_c13_blk_n;
assign inst_idle_sigs[2] = vscale_core_polyphase_U0.ap_idle;
assign inst_block_sigs[2] = (vscale_core_polyphase_U0.ap_done & ~vscale_core_polyphase_U0.ap_continue) | ~vscale_core_polyphase_U0.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.SrcYUV_blk_n | ~vscale_core_polyphase_U0.HeightIn_blk_n | ~vscale_core_polyphase_U0.Width_blk_n | ~vscale_core_polyphase_U0.HeightOut_blk_n | ~vscale_core_polyphase_U0.LineRate_blk_n | ~vscale_core_polyphase_U0.grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247.OutYUV_blk_n | ~vscale_core_polyphase_U0.HwReg_Width_c_blk_n | ~vscale_core_polyphase_U0.HwReg_HeightOut_c_blk_n;
assign inst_idle_sigs[3] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (MultiPixStream2AXIvideo_U0.ap_done & ~MultiPixStream2AXIvideo_U0.ap_continue) | ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2_fu_104.OutYUV_blk_n | ~MultiPixStream2AXIvideo_U0.Height_blk_n | ~MultiPixStream2AXIvideo_U0.Width_blk_n | ~MultiPixStream2AXIvideo_U0.ColorMode_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[6] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_197.ap_idle;
assign inst_idle_sigs[7] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_217.ap_idle;
assign inst_idle_sigs[8] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_246.ap_idle;
assign inst_idle_sigs[9] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[10] = MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2_fu_104.ap_idle;

bd_3a92_vsc_0_hls_deadlock_idx0_monitor bd_3a92_vsc_0_hls_deadlock_idx0_monitor_U (
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
