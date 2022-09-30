# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name phasesH \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phasesH \
    op interface \
    ports { phasesH_address0 { O 11 vector } phasesH_ce0 { O 1 bit } phasesH_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phasesH'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name FiltCoeff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff \
    op interface \
    ports { FiltCoeff_address0 { O 6 vector } FiltCoeff_ce0 { O 1 bit } FiltCoeff_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name FiltCoeff_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff_1 \
    op interface \
    ports { FiltCoeff_1_address0 { O 6 vector } FiltCoeff_1_ce0 { O 1 bit } FiltCoeff_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name FiltCoeff_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff_2 \
    op interface \
    ports { FiltCoeff_2_address0 { O 6 vector } FiltCoeff_2_ce0 { O 1 bit } FiltCoeff_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name FiltCoeff_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff_3 \
    op interface \
    ports { FiltCoeff_3_address0 { O 6 vector } FiltCoeff_3_ce0 { O 1 bit } FiltCoeff_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name FiltCoeff_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff_4 \
    op interface \
    ports { FiltCoeff_4_address0 { O 6 vector } FiltCoeff_4_ce0 { O 1 bit } FiltCoeff_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name FiltCoeff_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename FiltCoeff_5 \
    op interface \
    ports { FiltCoeff_5_address0 { O 6 vector } FiltCoeff_5_ce0 { O 1 bit } FiltCoeff_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'FiltCoeff_5'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name add_ln637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln637 \
    op interface \
    ports { add_ln637 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name zext_ln224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln224 \
    op interface \
    ports { zext_ln224 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name stream_upsampled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_upsampled \
    op interface \
    ports { stream_upsampled_dout { I 24 vector } stream_upsampled_num_data_valid { I 5 vector } stream_upsampled_fifo_cap { I 5 vector } stream_upsampled_empty_n { I 1 bit } stream_upsampled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name LoopSize \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_LoopSize \
    op interface \
    ports { LoopSize { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name stream_scaled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_scaled \
    op interface \
    ports { stream_scaled_din { O 24 vector } stream_scaled_num_data_valid { I 5 vector } stream_scaled_fifo_cap { I 5 vector } stream_scaled_full_n { I 1 bit } stream_scaled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name PixArray_val_V_5_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_5_out \
    op interface \
    ports { PixArray_val_V_5_out_i { I 8 vector } PixArray_val_V_5_out_o { O 8 vector } PixArray_val_V_5_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name PixArray_val_V_4_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_4_out \
    op interface \
    ports { PixArray_val_V_4_out_i { I 8 vector } PixArray_val_V_4_out_o { O 8 vector } PixArray_val_V_4_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name PixArray_val_V_3_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_3_out \
    op interface \
    ports { PixArray_val_V_3_out_i { I 8 vector } PixArray_val_V_3_out_o { O 8 vector } PixArray_val_V_3_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name PixArray_val_V_20_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_20_1_out \
    op interface \
    ports { PixArray_val_V_20_1_out_i { I 8 vector } PixArray_val_V_20_1_out_o { O 8 vector } PixArray_val_V_20_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name PixArray_val_V_19_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_19_1_out \
    op interface \
    ports { PixArray_val_V_19_1_out_i { I 8 vector } PixArray_val_V_19_1_out_o { O 8 vector } PixArray_val_V_19_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name PixArray_val_V_18_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_18_1_out \
    op interface \
    ports { PixArray_val_V_18_1_out_i { I 8 vector } PixArray_val_V_18_1_out_o { O 8 vector } PixArray_val_V_18_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name PixArray_val_V_17_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_17_1_out \
    op interface \
    ports { PixArray_val_V_17_1_out_i { I 8 vector } PixArray_val_V_17_1_out_o { O 8 vector } PixArray_val_V_17_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name PixArray_val_V_16_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_16_1_out \
    op interface \
    ports { PixArray_val_V_16_1_out_i { I 8 vector } PixArray_val_V_16_1_out_o { O 8 vector } PixArray_val_V_16_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name PixArray_val_V_15_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_15_1_out \
    op interface \
    ports { PixArray_val_V_15_1_out_i { I 8 vector } PixArray_val_V_15_1_out_o { O 8 vector } PixArray_val_V_15_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name PixArray_val_V_14_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_14_1_out \
    op interface \
    ports { PixArray_val_V_14_1_out_i { I 8 vector } PixArray_val_V_14_1_out_o { O 8 vector } PixArray_val_V_14_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name PixArray_val_V_13_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_13_1_out \
    op interface \
    ports { PixArray_val_V_13_1_out_i { I 8 vector } PixArray_val_V_13_1_out_o { O 8 vector } PixArray_val_V_13_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name PixArray_val_V_12_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_12_1_out \
    op interface \
    ports { PixArray_val_V_12_1_out_i { I 8 vector } PixArray_val_V_12_1_out_o { O 8 vector } PixArray_val_V_12_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name PixArray_val_V_11_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_11_1_out \
    op interface \
    ports { PixArray_val_V_11_1_out_i { I 8 vector } PixArray_val_V_11_1_out_o { O 8 vector } PixArray_val_V_11_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name PixArray_val_V_10_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_10_1_out \
    op interface \
    ports { PixArray_val_V_10_1_out_i { I 8 vector } PixArray_val_V_10_1_out_o { O 8 vector } PixArray_val_V_10_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name PixArray_val_V_9_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_9_1_out \
    op interface \
    ports { PixArray_val_V_9_1_out_i { I 8 vector } PixArray_val_V_9_1_out_o { O 8 vector } PixArray_val_V_9_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name PixArray_val_V_8_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_8_1_out \
    op interface \
    ports { PixArray_val_V_8_1_out_i { I 8 vector } PixArray_val_V_8_1_out_o { O 8 vector } PixArray_val_V_8_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name PixArray_val_V_7_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_7_1_out \
    op interface \
    ports { PixArray_val_V_7_1_out_i { I 8 vector } PixArray_val_V_7_1_out_o { O 8 vector } PixArray_val_V_7_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name PixArray_val_V_6_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_6_1_out \
    op interface \
    ports { PixArray_val_V_6_1_out_i { I 8 vector } PixArray_val_V_6_1_out_o { O 8 vector } PixArray_val_V_6_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name PixArray_val_V_5_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_5_1_out \
    op interface \
    ports { PixArray_val_V_5_1_out_i { I 8 vector } PixArray_val_V_5_1_out_o { O 8 vector } PixArray_val_V_5_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name PixArray_val_V_4_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_4_1_out \
    op interface \
    ports { PixArray_val_V_4_1_out_i { I 8 vector } PixArray_val_V_4_1_out_o { O 8 vector } PixArray_val_V_4_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name PixArray_val_V_3_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_PixArray_val_V_3_1_out \
    op interface \
    ports { PixArray_val_V_3_1_out_i { I 8 vector } PixArray_val_V_3_1_out_o { O 8 vector } PixArray_val_V_3_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName bd_3a92_hsc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_3a92_hsc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_3a92_hsc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


