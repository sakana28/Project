set SynModuleInfo {
  {SRCNAME Block_entry3_proc MODELNAME Block_entry3_proc RTLNAME bd_3a92_csc_0_Block_entry3_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME bd_3a92_csc_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME bd_3a92_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME bd_3a92_csc_0_flow_control_loop_pipe_sequential_init RTLNAME bd_3a92_csc_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bd_3a92_csc_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME bd_3a92_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME bd_3a92_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME bd_3a92_csc_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME bd_3a92_csc_0_regslice_both RTLNAME bd_3a92_csc_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME bd_3a92_csc_0_regslice_both_U}
    }
  }
  {SRCNAME v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 MODELNAME v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 RTLNAME bd_3a92_csc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2}
  {SRCNAME v_hcresampler_core MODELNAME v_hcresampler_core RTLNAME bd_3a92_csc_0_v_hcresampler_core}
  {SRCNAME v_csc_core_Pipeline_VITIS_LOOP_91_2 MODELNAME v_csc_core_Pipeline_VITIS_LOOP_91_2 RTLNAME bd_3a92_csc_0_v_csc_core_Pipeline_VITIS_LOOP_91_2
    SUBMODULES {
      {MODELNAME bd_3a92_csc_0_mac_muladd_16s_8ns_12ns_24_4_1 RTLNAME bd_3a92_csc_0_mac_muladd_16s_8ns_12ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_csc_0_mul_mul_16s_8ns_24_4_1 RTLNAME bd_3a92_csc_0_mul_mul_16s_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1 RTLNAME bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_csc_core MODELNAME v_csc_core RTLNAME bd_3a92_csc_0_v_csc_core}
  {SRCNAME v_hcresampler_core.1_Pipeline_VITIS_LOOP_724_2 MODELNAME v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2 RTLNAME bd_3a92_csc_0_v_hcresampler_core_1_Pipeline_VITIS_LOOP_724_2
    SUBMODULES {
      {MODELNAME bd_3a92_csc_0_mux_432_8_1_1 RTLNAME bd_3a92_csc_0_mux_432_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core.1 MODELNAME v_hcresampler_core_1 RTLNAME bd_3a92_csc_0_v_hcresampler_core_1}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 RTLNAME bd_3a92_csc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME bd_3a92_csc_0_MultiPixStream2AXIvideo}
  {SRCNAME v_csc MODELNAME v_csc RTLNAME bd_3a92_csc_0_v_csc IS_TOP 1
    SUBMODULES {
      {MODELNAME bd_3a92_csc_0_fifo_w8_d2_S RTLNAME bd_3a92_csc_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w8_d6_S RTLNAME bd_3a92_csc_0_fifo_w8_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w16_d4_S RTLNAME bd_3a92_csc_0_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w10_d4_S RTLNAME bd_3a92_csc_0_fifo_w10_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w8_d4_S RTLNAME bd_3a92_csc_0_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w1_d3_S RTLNAME bd_3a92_csc_0_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w1_d5_S RTLNAME bd_3a92_csc_0_fifo_w1_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w11_d2_S RTLNAME bd_3a92_csc_0_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_fifo_w24_d16_S RTLNAME bd_3a92_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME bd_3a92_csc_0_CTRL_s_axi RTLNAME bd_3a92_csc_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
