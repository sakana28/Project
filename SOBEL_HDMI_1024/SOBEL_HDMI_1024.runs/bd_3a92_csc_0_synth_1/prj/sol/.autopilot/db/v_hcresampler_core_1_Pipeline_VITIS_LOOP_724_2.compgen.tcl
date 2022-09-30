# This script segment is generated automatically by AutoPilot

set id 211
set name bd_3a92_csc_0_mux_432_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 32
set din4_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name pixbuf_y_val_V_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_4 \
    op interface \
    ports { pixbuf_y_val_V_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name pixbuf_y_val_V_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_3 \
    op interface \
    ports { pixbuf_y_val_V_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name pixbuf_y_val_V_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_2 \
    op interface \
    ports { pixbuf_y_val_V_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name pixbuf_y_val_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V \
    op interface \
    ports { pixbuf_y_val_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_0_0_0_0_05241026_lcssa1052_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_05241026_lcssa1052_i \
    op interface \
    ports { p_0_0_0_0_05241026_lcssa1052_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name conv2772_cast_cast_i_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2772_cast_cast_i_cast_cast \
    op interface \
    ports { conv2772_cast_cast_i_cast_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name select_ln685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln685 \
    op interface \
    ports { select_ln685 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name zext_ln720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln720 \
    op interface \
    ports { zext_ln720 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name stream_csc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_csc \
    op interface \
    ports { stream_csc_dout { I 24 vector } stream_csc_num_data_valid { I 5 vector } stream_csc_fifo_cap { I 5 vector } stream_csc_empty_n { I 1 bit } stream_csc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name stream_out_hresampled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_hresampled \
    op interface \
    ports { stream_out_hresampled_din { O 24 vector } stream_out_hresampled_num_data_valid { I 5 vector } stream_out_hresampled_fifo_cap { I 5 vector } stream_out_hresampled_full_n { I 1 bit } stream_out_hresampled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name pixbuf_y_val_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_9_out \
    op interface \
    ports { pixbuf_y_val_V_9_out { O 8 vector } pixbuf_y_val_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name pixbuf_y_val_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_8_out \
    op interface \
    ports { pixbuf_y_val_V_8_out { O 8 vector } pixbuf_y_val_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name pixbuf_y_val_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_7_out \
    op interface \
    ports { pixbuf_y_val_V_7_out { O 8 vector } pixbuf_y_val_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name pixbuf_y_val_V_6_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_6_out \
    op interface \
    ports { pixbuf_y_val_V_6_out_i { I 8 vector } pixbuf_y_val_V_6_out_o { O 8 vector } pixbuf_y_val_V_6_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name pixbuf_y_val_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_val_V_5_out \
    op interface \
    ports { pixbuf_y_val_V_5_out { O 8 vector } pixbuf_y_val_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_0_0_0_0_0_21075_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_21075_i_out \
    op interface \
    ports { p_0_0_0_0_0_21075_i_out_i { I 8 vector } p_0_0_0_0_0_21075_i_out_o { O 8 vector } p_0_0_0_0_0_21075_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_0_0_0_0_0516_21072_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0516_21072_i_out \
    op interface \
    ports { p_0_0_0_0_0516_21072_i_out_i { I 8 vector } p_0_0_0_0_0516_21072_i_out_o { O 8 vector } p_0_0_0_0_0516_21072_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out_i { I 8 vector } p_out_o { O 8 vector } p_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_out1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1_i { I 8 vector } p_out1_o { O 8 vector } p_out1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_out2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out2 \
    op interface \
    ports { p_out2_i { I 8 vector } p_out2_o { O 8 vector } p_out2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_out3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out3 \
    op interface \
    ports { p_out3_i { I 8 vector } p_out3_o { O 8 vector } p_out3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_0_1_0_0_01035_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_01035_i_out \
    op interface \
    ports { p_0_1_0_0_01035_i_out_i { I 8 vector } p_0_1_0_0_01035_i_out_o { O 8 vector } p_0_1_0_0_01035_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_0_1_0_0_01031_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_01031_i_out \
    op interface \
    ports { p_0_1_0_0_01031_i_out_i { I 8 vector } p_0_1_0_0_01031_i_out_o { O 8 vector } p_0_1_0_0_01031_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_0_2_0_0_01025_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_01025_i_out \
    op interface \
    ports { p_0_2_0_0_01025_i_out_i { I 8 vector } p_0_2_0_0_01025_i_out_o { O 8 vector } p_0_2_0_0_01025_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_0_1_0_0_01023_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_01023_i_out \
    op interface \
    ports { p_0_1_0_0_01023_i_out_i { I 8 vector } p_0_1_0_0_01023_i_out_o { O 8 vector } p_0_1_0_0_01023_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_0_0_0_0_05241021_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_05241021_i_out \
    op interface \
    ports { p_0_0_0_0_05241021_i_out_i { I 8 vector } p_0_0_0_0_05241021_i_out_o { O 8 vector } p_0_0_0_0_05241021_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name filt_res1_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_filt_res1_1_out \
    op interface \
    ports { filt_res1_1_out_i { I 64 vector } filt_res1_1_out_o { O 64 vector } filt_res1_1_out_o_ap_vld { O 1 bit } } \
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
set InstName bd_3a92_csc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_3a92_csc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_3a92_csc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


