`timescale 1 ns / 1 ps

module bd_3a92_vsc_0_hls_deadlock_idx0_monitor ( // for module bd_3a92_vsc_0_v_vscaler_inst
    input wire clock,
    input wire reset,
    input wire [3:0] axis_block_sigs,
    input wire [10:0] inst_idle_sigs,
    input wire [3:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx1_block;
wire idx5_block;
wire [3:0] process_idle_vec;
wire [3:0] process_chan_block_vec;
wire [3:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign idx5_block = axis_block_sigs[-1];
assign process_axis_block_vec[0] = 1'b0;
assign process_idle_vec[0] = inst_idle_sigs[0];
assign process_chan_block_vec[0] = inst_block_sigs[0];
assign process_axis_block_vec[1] = idx1_block & (1'b0 | axis_block_sigs[-1] | axis_block_sigs[-1] | axis_block_sigs[-1]);
assign process_idle_vec[1] = inst_idle_sigs[1];
assign process_chan_block_vec[1] = inst_block_sigs[1];
assign process_axis_block_vec[2] = 1'b0;
assign process_idle_vec[2] = inst_idle_sigs[2];
assign process_chan_block_vec[2] = inst_block_sigs[2];
assign process_axis_block_vec[3] = idx5_block & (1'b0 | axis_block_sigs[-1]);
assign process_idle_vec[3] = inst_idle_sigs[3];
assign process_chan_block_vec[3] = inst_block_sigs[3];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 bd_3a92_vsc_0_hls_deadlock_idx1_monitor bd_3a92_vsc_0_hls_deadlock_idx1_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx1_block)
);

endmodule
