set SynModuleInfo {
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME bd_3a92_hsc_0_Block_entry1_proc}
  {SRCNAME Block_entry12_proc MODELNAME Block_entry12_proc RTLNAME bd_3a92_hsc_0_Block_entry12_proc}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME bd_3a92_hsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_flow_control_loop_pipe_sequential_init RTLNAME bd_3a92_hsc_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bd_3a92_hsc_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME bd_3a92_hsc_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME bd_3a92_hsc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME bd_3a92_hsc_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_regslice_both RTLNAME bd_3a92_hsc_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME bd_3a92_hsc_0_regslice_both_U}
    }
  }
  {SRCNAME v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2 MODELNAME v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2 RTLNAME bd_3a92_hsc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2}
  {SRCNAME v_hcresampler_core MODELNAME v_hcresampler_core RTLNAME bd_3a92_hsc_0_v_hcresampler_core}
  {SRCNAME hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap MODELNAME hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap RTLNAME bd_3a92_hsc_0_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap}
  {SRCNAME {reg<ap_uint<9> >} MODELNAME reg_ap_uint_9_s RTLNAME bd_3a92_hsc_0_reg_ap_uint_9_s}
  {SRCNAME hscale_polyphase MODELNAME hscale_polyphase RTLNAME bd_3a92_hsc_0_hscale_polyphase
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_mux_53_8_1_1 RTLNAME bd_3a92_hsc_0_mux_53_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mux_43_8_1_1 RTLNAME bd_3a92_hsc_0_mux_43_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mux_33_8_1_1 RTLNAME bd_3a92_hsc_0_mux_33_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_12ns_24_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_12ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_24s_25_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_25s_26_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_25s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_26s_26_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_26s_27_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_27s_27_4_1 RTLNAME bd_3a92_hsc_0_mac_muladd_8ns_16s_27s_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hscale_core_polyphase_Pipeline_loop_width MODELNAME hscale_core_polyphase_Pipeline_loop_width RTLNAME bd_3a92_hsc_0_hscale_core_polyphase_Pipeline_loop_width}
  {SRCNAME hscale_core_polyphase MODELNAME hscale_core_polyphase RTLNAME bd_3a92_hsc_0_hscale_core_polyphase
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_hscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W RTLNAME bd_3a92_hsc_0_hscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core.1_Pipeline_VITIS_LOOP_1636_2 MODELNAME v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2 RTLNAME bd_3a92_hsc_0_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_mux_432_8_1_1 RTLNAME bd_3a92_hsc_0_mux_432_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core.1 MODELNAME v_hcresampler_core_1 RTLNAME bd_3a92_hsc_0_v_hcresampler_core_1}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1 RTLNAME bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_mapComp_ROM_AUTO_1R RTLNAME bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_mapComp_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3 RTLNAME bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_mux_35_8_1_1 RTLNAME bd_3a92_hsc_0_mux_35_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME bd_3a92_hsc_0_MultiPixStream2AXIvideo}
  {SRCNAME v_hscaler MODELNAME v_hscaler RTLNAME bd_3a92_hsc_0_v_hscaler IS_TOP 1
    SUBMODULES {
      {MODELNAME bd_3a92_hsc_0_fifo_w1_d2_S RTLNAME bd_3a92_hsc_0_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hsc_0_fifo_w1_d4_S RTLNAME bd_3a92_hsc_0_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hsc_0_fifo_w24_d16_S RTLNAME bd_3a92_hsc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hsc_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME bd_3a92_hsc_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hsc_0_CTRL_s_axi RTLNAME bd_3a92_hsc_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}