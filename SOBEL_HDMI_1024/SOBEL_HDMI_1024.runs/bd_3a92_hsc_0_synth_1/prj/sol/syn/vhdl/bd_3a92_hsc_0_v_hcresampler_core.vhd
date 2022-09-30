-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bd_3a92_hsc_0_v_hcresampler_core is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    stream_in_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    stream_in_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_in_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_in_empty_n : IN STD_LOGIC;
    stream_in_read : OUT STD_LOGIC;
    Height : IN STD_LOGIC_VECTOR (15 downto 0);
    WidthIn : IN STD_LOGIC_VECTOR (15 downto 0);
    p_read : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_upsampled_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    stream_upsampled_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_upsampled_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_upsampled_full_n : IN STD_LOGIC;
    stream_upsampled_write : OUT STD_LOGIC );
end;


architecture behav of bd_3a92_hsc_0_v_hcresampler_core is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000101";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal loopWidth_fu_197_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal loopWidth_reg_386 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln1597_fu_203_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln1597_reg_391 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal select_ln1632_fu_207_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln1632_reg_401 : STD_LOGIC_VECTOR (2 downto 0);
    signal cmp361000_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp361000_reg_406 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_4_fu_231_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal y_4_reg_413 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal pixbuf_y_val_V_16_load_reg_418 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln1634_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal pixbuf_y_val_V_17_load_reg_423 : STD_LOGIC_VECTOR (7 downto 0);
    signal pixbuf_y_val_V_18_load_reg_428 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_idle : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_ready : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_in_read : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_din : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_write : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o_ap_vld : STD_LOGIC;
    signal grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal pixbuf_y_val_V_18_fu_126 : STD_LOGIC_VECTOR (7 downto 0);
    signal pixbuf_y_val_V_17_fu_122 : STD_LOGIC_VECTOR (7 downto 0);
    signal pixbuf_y_val_V_16_fu_118 : STD_LOGIC_VECTOR (7 downto 0);
    signal pixbuf_y_val_V_15_fu_114 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_0_0_0_0_21061_lcssa1087_fu_106 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_0_0_0_0511_21058_lcssa1084_fu_102 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_lcssa10571081_fu_98 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_lcssa10561078_fu_94 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_lcssa10541072_fu_90 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_lcssa1066_fu_86 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_1_0_0_01021_lcssa1046_fu_82 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_1_0_0_01017_lcssa1043_fu_78 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_2_0_0_01013_lcssa1037_fu_70 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_1_0_0_01011_lcssa1034_fu_66 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_0_0_0_0_05191009_lcssa1031_fu_62 : STD_LOGIC_VECTOR (7 downto 0);
    signal y_fu_58 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal p_0_0_0_0_05191015_lcssa1040_fu_74 : STD_LOGIC_VECTOR (7 downto 0);
    signal pixbuf_y_val_V_fu_110 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1632_2_fu_190_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln1634_fu_222_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component bd_3a92_hsc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        stream_in_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        stream_in_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_in_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_in_empty_n : IN STD_LOGIC;
        stream_in_read : OUT STD_LOGIC;
        stream_upsampled_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        stream_upsampled_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_upsampled_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_upsampled_full_n : IN STD_LOGIC;
        stream_upsampled_write : OUT STD_LOGIC;
        pixbuf_y_val_V_19 : IN STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_18 : IN STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_17 : IN STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_05191015_lcssa1040 : IN STD_LOGIC_VECTOR (7 downto 0);
        loopWidth : IN STD_LOGIC_VECTOR (14 downto 0);
        select_ln1632 : IN STD_LOGIC_VECTOR (2 downto 0);
        WidthIn_load : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read : IN STD_LOGIC_VECTOR (0 downto 0);
        pixbuf_y_val_V_24_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_24_out_ap_vld : OUT STD_LOGIC;
        pixbuf_y_val_V_23_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_23_out_ap_vld : OUT STD_LOGIC;
        pixbuf_y_val_V_22_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_22_out_ap_vld : OUT STD_LOGIC;
        pixbuf_y_val_V_21_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_21_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_21_out_o_ap_vld : OUT STD_LOGIC;
        pixbuf_y_val_V_20_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        pixbuf_y_val_V_20_out_ap_vld : OUT STD_LOGIC;
        p_0_0_0_0_0_21063_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_0_21063_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_0_21063_out_o_ap_vld : OUT STD_LOGIC;
        p_0_0_0_0_0511_21060_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_0511_21060_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_0511_21060_out_o_ap_vld : OUT STD_LOGIC;
        p_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_out_o_ap_vld : OUT STD_LOGIC;
        p_out1_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_out1_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_out1_o_ap_vld : OUT STD_LOGIC;
        p_out2_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_out2_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_out2_o_ap_vld : OUT STD_LOGIC;
        p_out3_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_out3_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_out3_o_ap_vld : OUT STD_LOGIC;
        p_0_1_0_0_01024_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01024_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01024_out_o_ap_vld : OUT STD_LOGIC;
        p_0_1_0_0_01020_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01020_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01020_out_o_ap_vld : OUT STD_LOGIC;
        p_0_2_0_0_01014_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_2_0_0_01014_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_2_0_0_01014_out_o_ap_vld : OUT STD_LOGIC;
        p_0_1_0_0_01012_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01012_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_1_0_0_01012_out_o_ap_vld : OUT STD_LOGIC;
        p_0_0_0_0_05191010_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_05191010_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_0_0_0_0_05191010_out_o_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152 : component bd_3a92_hsc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start,
        ap_done => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done,
        ap_idle => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_idle,
        ap_ready => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_ready,
        stream_in_dout => stream_in_dout,
        stream_in_num_data_valid => ap_const_lv5_0,
        stream_in_fifo_cap => ap_const_lv5_0,
        stream_in_empty_n => stream_in_empty_n,
        stream_in_read => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_in_read,
        stream_upsampled_din => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_din,
        stream_upsampled_num_data_valid => ap_const_lv5_0,
        stream_upsampled_fifo_cap => ap_const_lv5_0,
        stream_upsampled_full_n => stream_upsampled_full_n,
        stream_upsampled_write => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_write,
        pixbuf_y_val_V_19 => pixbuf_y_val_V_18_load_reg_428,
        pixbuf_y_val_V_18 => pixbuf_y_val_V_17_load_reg_423,
        pixbuf_y_val_V_17 => pixbuf_y_val_V_16_load_reg_418,
        pixbuf_y_val_V => pixbuf_y_val_V_fu_110,
        p_0_0_0_0_05191015_lcssa1040 => p_0_0_0_0_05191015_lcssa1040_fu_74,
        loopWidth => trunc_ln1597_reg_391,
        select_ln1632 => select_ln1632_reg_401,
        WidthIn_load => WidthIn,
        p_read => p_read,
        pixbuf_y_val_V_24_out => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out,
        pixbuf_y_val_V_24_out_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out_ap_vld,
        pixbuf_y_val_V_23_out => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out,
        pixbuf_y_val_V_23_out_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out_ap_vld,
        pixbuf_y_val_V_22_out => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out,
        pixbuf_y_val_V_22_out_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out_ap_vld,
        pixbuf_y_val_V_21_out_i => pixbuf_y_val_V_15_fu_114,
        pixbuf_y_val_V_21_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o,
        pixbuf_y_val_V_21_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o_ap_vld,
        pixbuf_y_val_V_20_out => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out,
        pixbuf_y_val_V_20_out_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out_ap_vld,
        p_0_0_0_0_0_21063_out_i => p_0_0_0_0_0_21061_lcssa1087_fu_106,
        p_0_0_0_0_0_21063_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o,
        p_0_0_0_0_0_21063_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o_ap_vld,
        p_0_0_0_0_0511_21060_out_i => p_0_0_0_0_0511_21058_lcssa1084_fu_102,
        p_0_0_0_0_0511_21060_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o,
        p_0_0_0_0_0511_21060_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o_ap_vld,
        p_out_i => p_lcssa10571081_fu_98,
        p_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o,
        p_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o_ap_vld,
        p_out1_i => p_lcssa10561078_fu_94,
        p_out1_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o,
        p_out1_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o_ap_vld,
        p_out2_i => p_lcssa10541072_fu_90,
        p_out2_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o,
        p_out2_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o_ap_vld,
        p_out3_i => p_lcssa1066_fu_86,
        p_out3_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o,
        p_out3_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o_ap_vld,
        p_0_1_0_0_01024_out_i => p_0_1_0_0_01021_lcssa1046_fu_82,
        p_0_1_0_0_01024_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o,
        p_0_1_0_0_01024_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o_ap_vld,
        p_0_1_0_0_01020_out_i => p_0_1_0_0_01017_lcssa1043_fu_78,
        p_0_1_0_0_01020_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o,
        p_0_1_0_0_01020_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o_ap_vld,
        p_0_2_0_0_01014_out_i => p_0_2_0_0_01013_lcssa1037_fu_70,
        p_0_2_0_0_01014_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o,
        p_0_2_0_0_01014_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o_ap_vld,
        p_0_1_0_0_01012_out_i => p_0_1_0_0_01011_lcssa1034_fu_66,
        p_0_1_0_0_01012_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o,
        p_0_1_0_0_01012_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o_ap_vld,
        p_0_0_0_0_05191010_out_i => p_0_0_0_0_05191009_lcssa1031_fu_62,
        p_0_0_0_0_05191010_out_o => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o,
        p_0_0_0_0_05191010_out_o_ap_vld => grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln1634_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_ready = ap_const_logic_1)) then 
                    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    y_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                y_fu_58 <= ap_const_lv15_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                y_fu_58 <= y_4_reg_413;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                cmp361000_reg_406 <= cmp361000_fu_214_p2;
                    select_ln1632_reg_401(0) <= select_ln1632_fu_207_p3(0);    select_ln1632_reg_401(2) <= select_ln1632_fu_207_p3(2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                loopWidth_reg_386 <= loopWidth_fu_197_p2;
                trunc_ln1597_reg_391 <= trunc_ln1597_fu_203_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o_ap_vld = ap_const_logic_1))) then
                p_0_0_0_0_0511_21058_lcssa1084_fu_102 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0511_21060_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o_ap_vld = ap_const_logic_1))) then
                p_0_0_0_0_05191009_lcssa1031_fu_62 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_05191010_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp361000_reg_406 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                p_0_0_0_0_05191015_lcssa1040_fu_74 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out;
                pixbuf_y_val_V_fu_110 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_20_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o_ap_vld = ap_const_logic_1))) then
                p_0_0_0_0_0_21061_lcssa1087_fu_106 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_0_0_0_0_21063_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o_ap_vld = ap_const_logic_1))) then
                p_0_1_0_0_01011_lcssa1034_fu_66 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01012_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o_ap_vld = ap_const_logic_1))) then
                p_0_1_0_0_01017_lcssa1043_fu_78 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01020_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o_ap_vld = ap_const_logic_1))) then
                p_0_1_0_0_01021_lcssa1046_fu_82 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_1_0_0_01024_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o_ap_vld = ap_const_logic_1))) then
                p_0_2_0_0_01013_lcssa1037_fu_70 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_0_2_0_0_01014_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o_ap_vld = ap_const_logic_1))) then
                p_lcssa10541072_fu_90 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out2_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o_ap_vld = ap_const_logic_1))) then
                p_lcssa10561078_fu_94 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out1_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o_ap_vld = ap_const_logic_1))) then
                p_lcssa10571081_fu_98 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o_ap_vld = ap_const_logic_1))) then
                p_lcssa1066_fu_86 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_p_out3_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o_ap_vld = ap_const_logic_1))) then
                pixbuf_y_val_V_15_fu_114 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_21_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out_ap_vld = ap_const_logic_1))) then
                pixbuf_y_val_V_16_fu_118 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_22_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1634_fu_226_p2 = ap_const_lv1_1) and (cmp361000_reg_406 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                pixbuf_y_val_V_16_load_reg_418 <= pixbuf_y_val_V_16_fu_118;
                pixbuf_y_val_V_17_load_reg_423 <= pixbuf_y_val_V_17_fu_122;
                pixbuf_y_val_V_18_load_reg_428 <= pixbuf_y_val_V_18_fu_126;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out_ap_vld = ap_const_logic_1))) then
                pixbuf_y_val_V_17_fu_122 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_23_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out_ap_vld = ap_const_logic_1))) then
                pixbuf_y_val_V_18_fu_126 <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_pixbuf_y_val_V_24_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                y_4_reg_413 <= y_4_fu_231_p2;
            end if;
        end if;
    end process;
    select_ln1632_reg_401(1) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, cmp361000_reg_406, ap_CS_fsm_state4, icmp_ln1634_fu_226_p2, grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln1634_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln1634_fu_226_p2 = ap_const_lv1_1) and (cmp361000_reg_406 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done)
    begin
        if ((grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state7_blk <= ap_const_logic_0;

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4, icmp_ln1634_fu_226_p2)
    begin
        if (((icmp_ln1634_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4, icmp_ln1634_fu_226_p2)
    begin
        if (((icmp_ln1634_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cmp361000_fu_214_p2 <= "1" when (signed(loopWidth_reg_386) > signed(ap_const_lv16_0)) else "0";
    grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_ap_start_reg;
    icmp_ln1634_fu_226_p2 <= "1" when (signed(zext_ln1634_fu_222_p1) < signed(Height)) else "0";
    loopWidth_fu_197_p2 <= std_logic_vector(unsigned(WidthIn) + unsigned(select_ln1632_2_fu_190_p3));
    select_ln1632_2_fu_190_p3 <= 
        ap_const_lv16_0 when (p_read(0) = '1') else 
        ap_const_lv16_5;
    select_ln1632_fu_207_p3 <= 
        ap_const_lv3_0 when (p_read(0) = '1') else 
        ap_const_lv3_5;

    stream_in_read_assign_proc : process(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_in_read, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            stream_in_read <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_in_read;
        else 
            stream_in_read <= ap_const_logic_0;
        end if; 
    end process;

    stream_upsampled_din <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_din;

    stream_upsampled_write_assign_proc : process(grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_write, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            stream_upsampled_write <= grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_152_stream_upsampled_write;
        else 
            stream_upsampled_write <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln1597_fu_203_p1 <= loopWidth_fu_197_p2(15 - 1 downto 0);
    y_4_fu_231_p2 <= std_logic_vector(unsigned(y_fu_58) + unsigned(ap_const_lv15_1));
    zext_ln1634_fu_222_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_fu_58),16));
end behav;
