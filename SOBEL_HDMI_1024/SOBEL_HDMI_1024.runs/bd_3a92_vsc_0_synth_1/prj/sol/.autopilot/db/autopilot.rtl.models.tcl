set SynModuleInfo {
  {SRCNAME Block_entry4_proc MODELNAME Block_entry4_proc RTLNAME bd_3a92_vsc_0_Block_entry4_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME bd_3a92_vsc_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init RTLNAME bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME bd_3a92_vsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME bd_3a92_vsc_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME bd_3a92_vsc_0_regslice_both RTLNAME bd_3a92_vsc_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME bd_3a92_vsc_0_regslice_both_U}
    }
  }
  {SRCNAME vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap MODELNAME vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap RTLNAME bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap}
  {SRCNAME vscale_core_polyphase_Pipeline_loop_width_for_procpix MODELNAME vscale_core_polyphase_Pipeline_loop_width_for_procpix RTLNAME bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_width_for_procpix
    SUBMODULES {
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_12ns_24_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_12ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_24s_25_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_25s_26_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_25s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_26s_26_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_26s_27_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_27s_27_4_1 RTLNAME bd_3a92_vsc_0_mac_muladd_16s_8ns_27s_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vscale_core_polyphase MODELNAME vscale_core_polyphase RTLNAME bd_3a92_vsc_0_vscale_core_polyphase
    SUBMODULES {
      {MODELNAME bd_3a92_vsc_0_vscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W RTLNAME bd_3a92_vsc_0_vscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_vsc_0_vscale_core_polyphase_LineBuf_val_V_RAM_AUTO_1R1W RTLNAME bd_3a92_vsc_0_vscale_core_polyphase_LineBuf_val_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2 RTLNAME bd_3a92_vsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_895_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME bd_3a92_vsc_0_MultiPixStream2AXIvideo}
  {SRCNAME v_vscaler MODELNAME v_vscaler RTLNAME bd_3a92_vsc_0_v_vscaler IS_TOP 1
    SUBMODULES {
      {MODELNAME bd_3a92_vsc_0_fifo_w8_d2_S RTLNAME bd_3a92_vsc_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_fifo_w32_d2_S RTLNAME bd_3a92_vsc_0_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_fifo_w11_d2_S RTLNAME bd_3a92_vsc_0_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_fifo_w24_d16_S RTLNAME bd_3a92_vsc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_start_for_AXIvideo2MultiPixStream_U0 RTLNAME bd_3a92_vsc_0_start_for_AXIvideo2MultiPixStream_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME bd_3a92_vsc_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_vsc_0_CTRL_s_axi RTLNAME bd_3a92_vsc_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
