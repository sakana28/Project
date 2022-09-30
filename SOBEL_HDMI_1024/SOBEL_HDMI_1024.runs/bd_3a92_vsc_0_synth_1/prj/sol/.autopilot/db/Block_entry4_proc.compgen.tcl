# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name ColorMode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ColorMode \
    op interface \
    ports { ColorMode { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name HwReg_ColorMode \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_ColorMode \
    op interface \
    ports { HwReg_ColorMode_din { O 8 vector } HwReg_ColorMode_num_data_valid { I 2 vector } HwReg_ColorMode_fifo_cap { I 2 vector } HwReg_ColorMode_full_n { I 1 bit } HwReg_ColorMode_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name HeightIn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HeightIn \
    op interface \
    ports { HeightIn { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name HeightOut \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HeightOut \
    op interface \
    ports { HeightOut { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name LineRate \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_LineRate \
    op interface \
    ports { LineRate { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name HwReg_LineRate \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_LineRate \
    op interface \
    ports { HwReg_LineRate_din { O 32 vector } HwReg_LineRate_num_data_valid { I 2 vector } HwReg_LineRate_fifo_cap { I 2 vector } HwReg_LineRate_full_n { I 1 bit } HwReg_LineRate_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name Width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Width \
    op interface \
    ports { Width { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name ColorMode_vcr \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ColorMode_vcr \
    op interface \
    ports { ColorMode_vcr_din { O 8 vector } ColorMode_vcr_num_data_valid { I 2 vector } ColorMode_vcr_fifo_cap { I 2 vector } ColorMode_vcr_full_n { I 1 bit } ColorMode_vcr_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name HwReg_HeightIn_c12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_HeightIn_c12 \
    op interface \
    ports { HwReg_HeightIn_c12_din { O 11 vector } HwReg_HeightIn_c12_num_data_valid { I 2 vector } HwReg_HeightIn_c12_fifo_cap { I 2 vector } HwReg_HeightIn_c12_full_n { I 1 bit } HwReg_HeightIn_c12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name HwReg_Width_c14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_Width_c14 \
    op interface \
    ports { HwReg_Width_c14_din { O 11 vector } HwReg_Width_c14_num_data_valid { I 2 vector } HwReg_Width_c14_fifo_cap { I 2 vector } HwReg_Width_c14_full_n { I 1 bit } HwReg_Width_c14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name HwReg_HeightOut_c15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_HeightOut_c15 \
    op interface \
    ports { HwReg_HeightOut_c15_din { O 11 vector } HwReg_HeightOut_c15_num_data_valid { I 2 vector } HwReg_HeightOut_c15_fifo_cap { I 2 vector } HwReg_HeightOut_c15_full_n { I 1 bit } HwReg_HeightOut_c15_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


