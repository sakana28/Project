// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1__HH__
#define __bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1__HH__
#include "bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2 bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U;

    SC_CTOR(bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1):  bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U ("bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U") {
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.clk(clk);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.rst(reset);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.ce(ce);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.in0(din0);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.in1(din1);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.in2(din2);
        bd_3a92_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
