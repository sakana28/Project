set SynModuleInfo {
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME bd_3a92_hcr_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init RTLNAME bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bd_3a92_hcr_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME bd_3a92_hcr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME bd_3a92_hcr_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME bd_3a92_hcr_0_regslice_both RTLNAME bd_3a92_hcr_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME bd_3a92_hcr_0_regslice_both_U}
    }
  }
  {SRCNAME v_hcresampler_core_Pipeline_VITIS_LOOP_159_2 MODELNAME v_hcresampler_core_Pipeline_VITIS_LOOP_159_2 RTLNAME bd_3a92_hcr_0_v_hcresampler_core_Pipeline_VITIS_LOOP_159_2
    SUBMODULES {
      {MODELNAME bd_3a92_hcr_0_mux_432_8_1_1 RTLNAME bd_3a92_hcr_0_mux_432_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1 RTLNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_12ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1 RTLNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1 RTLNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_25s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1 RTLNAME bd_3a92_hcr_0_mac_muladd_8ns_16s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core MODELNAME v_hcresampler_core RTLNAME bd_3a92_hcr_0_v_hcresampler_core}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2 RTLNAME bd_3a92_hcr_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_548_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME bd_3a92_hcr_0_MultiPixStream2AXIvideo}
  {SRCNAME v_hcresampler MODELNAME v_hcresampler RTLNAME bd_3a92_hcr_0_v_hcresampler IS_TOP 1
    SUBMODULES {
      {MODELNAME bd_3a92_hcr_0_fifo_w24_d16_S RTLNAME bd_3a92_hcr_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hcr_0_start_for_v_hcresampler_core_U0 RTLNAME bd_3a92_hcr_0_start_for_v_hcresampler_core_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hcr_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME bd_3a92_hcr_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_hcr_0_CTRL_s_axi RTLNAME bd_3a92_hcr_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
