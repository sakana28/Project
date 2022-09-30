-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bd_3a92_hsc_0_MultiPixStream2AXIvideo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    stream_out_422_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    stream_out_422_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_out_422_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_out_422_empty_n : IN STD_LOGIC;
    stream_out_422_read : OUT STD_LOGIC;
    m_axis_video_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    m_axis_video_TVALID : OUT STD_LOGIC;
    m_axis_video_TREADY : IN STD_LOGIC;
    m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axis_video_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    Height : IN STD_LOGIC_VECTOR (15 downto 0);
    WidthOut : IN STD_LOGIC_VECTOR (15 downto 0);
    ColorModeOut : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of bd_3a92_hsc_0_MultiPixStream2AXIvideo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal trunc_ln1485_fu_194_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal trunc_ln1486_fu_198_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_idle : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_ready : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_sub_ln1538 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_2_out : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_2_out_ap_vld : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_1_out : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_1_out_ap_vld : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_out : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_out_ap_vld : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_idle : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_ready : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_stream_out_422_read : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TREADY : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_sub : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDATA : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID : STD_LOGIC;
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TKEEP : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TSTRB : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal sof_reg_116 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_1_fu_82 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_2_fu_225_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln1542_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal empty_fu_167_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_2_fu_175_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln1538_fu_171_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal regslice_both_m_axis_video_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal m_axis_video_TVALID_int_regslice : STD_LOGIC;
    signal m_axis_video_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_m_axis_video_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sub_ln1538 : IN STD_LOGIC_VECTOR (3 downto 0);
        map_V_2_out : OUT STD_LOGIC_VECTOR (4 downto 0);
        map_V_2_out_ap_vld : OUT STD_LOGIC;
        map_V_1_out : OUT STD_LOGIC_VECTOR (4 downto 0);
        map_V_1_out_ap_vld : OUT STD_LOGIC;
        map_V_out : OUT STD_LOGIC_VECTOR (4 downto 0);
        map_V_out_ap_vld : OUT STD_LOGIC );
    end component;


    component bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        stream_out_422_dout : IN STD_LOGIC_VECTOR (23 downto 0);
        stream_out_422_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_out_422_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        stream_out_422_empty_n : IN STD_LOGIC;
        stream_out_422_read : OUT STD_LOGIC;
        m_axis_video_TREADY : IN STD_LOGIC;
        sof : IN STD_LOGIC_VECTOR (0 downto 0);
        trunc_ln5 : IN STD_LOGIC_VECTOR (10 downto 0);
        sub : IN STD_LOGIC_VECTOR (10 downto 0);
        map_V_2_reload : IN STD_LOGIC_VECTOR (4 downto 0);
        map_V_1_reload : IN STD_LOGIC_VECTOR (4 downto 0);
        map_V_reload : IN STD_LOGIC_VECTOR (4 downto 0);
        m_axis_video_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        m_axis_video_TVALID : OUT STD_LOGIC;
        m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axis_video_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axis_video_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axis_video_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axis_video_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component bd_3a92_hsc_0_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130 : component bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start,
        ap_done => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done,
        ap_idle => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_idle,
        ap_ready => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_ready,
        sub_ln1538 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_sub_ln1538,
        map_V_2_out => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_2_out,
        map_V_2_out_ap_vld => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_2_out_ap_vld,
        map_V_1_out => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_1_out,
        map_V_1_out_ap_vld => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_1_out_ap_vld,
        map_V_out => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_out,
        map_V_out_ap_vld => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_out_ap_vld);

    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140 : component bd_3a92_hsc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start,
        ap_done => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done,
        ap_idle => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_idle,
        ap_ready => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_ready,
        stream_out_422_dout => stream_out_422_dout,
        stream_out_422_num_data_valid => ap_const_lv5_0,
        stream_out_422_fifo_cap => ap_const_lv5_0,
        stream_out_422_empty_n => stream_out_422_empty_n,
        stream_out_422_read => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_stream_out_422_read,
        m_axis_video_TREADY => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TREADY,
        sof => sof_reg_116,
        trunc_ln5 => trunc_ln1486_fu_198_p1,
        sub => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_sub,
        map_V_2_reload => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_2_out,
        map_V_1_reload => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_1_out,
        map_V_reload => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_map_V_out,
        m_axis_video_TDATA => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDATA,
        m_axis_video_TVALID => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        m_axis_video_TKEEP => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TKEEP,
        m_axis_video_TSTRB => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TSTRB,
        m_axis_video_TUSER => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TUSER,
        m_axis_video_TLAST => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TLAST,
        m_axis_video_TID => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TID,
        m_axis_video_TDEST => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDEST);

    regslice_both_m_axis_video_V_data_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 24)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDATA,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => m_axis_video_TREADY_int_regslice,
        data_out => m_axis_video_TDATA,
        vld_out => regslice_both_m_axis_video_V_data_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_data_V_U_apdone_blk);

    regslice_both_m_axis_video_V_keep_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 3)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TKEEP,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy,
        data_out => m_axis_video_TKEEP,
        vld_out => regslice_both_m_axis_video_V_keep_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_keep_V_U_apdone_blk);

    regslice_both_m_axis_video_V_strb_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 3)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TSTRB,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy,
        data_out => m_axis_video_TSTRB,
        vld_out => regslice_both_m_axis_video_V_strb_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_strb_V_U_apdone_blk);

    regslice_both_m_axis_video_V_user_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TUSER,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_user_V_U_ack_in_dummy,
        data_out => m_axis_video_TUSER,
        vld_out => regslice_both_m_axis_video_V_user_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_user_V_U_apdone_blk);

    regslice_both_m_axis_video_V_last_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TLAST,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_last_V_U_ack_in_dummy,
        data_out => m_axis_video_TLAST,
        vld_out => regslice_both_m_axis_video_V_last_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_last_V_U_apdone_blk);

    regslice_both_m_axis_video_V_id_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TID,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_id_V_U_ack_in_dummy,
        data_out => m_axis_video_TID,
        vld_out => regslice_both_m_axis_video_V_id_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_id_V_U_apdone_blk);

    regslice_both_m_axis_video_V_dest_V_U : component bd_3a92_hsc_0_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TDEST,
        vld_in => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID,
        ack_in => regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy,
        data_out => m_axis_video_TDEST,
        vld_out => regslice_both_m_axis_video_V_dest_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_dest_V_U_apdone_blk);





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
                elsif (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_ready = ap_const_logic_1)) then 
                    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_ready = ap_const_logic_1)) then 
                    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_1_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_1_fu_82 <= ap_const_lv11_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln1542_fu_220_p2 = ap_const_lv1_0))) then 
                i_1_fu_82 <= i_2_fu_225_p2;
            end if; 
        end if;
    end process;

    sof_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                sof_reg_116 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                sof_reg_116 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done, grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done, ap_CS_fsm_state7, ap_CS_fsm_state3, ap_CS_fsm_state5, icmp_ln1542_fu_220_p2, ap_CS_fsm_state8, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
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
                if (((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln1542_fu_220_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done)
    begin
        if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;

    ap_ST_fsm_state7_blk_assign_proc : process(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done)
    begin
        if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state8_blk_assign_proc : process(regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        if ((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state8_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state8_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state8, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state8, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_167_p1 <= ColorModeOut(2 - 1 downto 0);
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_ap_start_reg;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1536_1_fu_130_sub_ln1538 <= std_logic_vector(unsigned(tmp_2_fu_175_p3) - unsigned(trunc_ln1538_fu_171_p1));
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_ap_start_reg;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TREADY <= (m_axis_video_TREADY_int_regslice and ap_CS_fsm_state7);
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_sub <= std_logic_vector(unsigned(trunc_ln1486_fu_198_p1) + unsigned(ap_const_lv11_7FF));
    i_2_fu_225_p2 <= std_logic_vector(unsigned(i_1_fu_82) + unsigned(ap_const_lv11_1));
    icmp_ln1542_fu_220_p2 <= "1" when (i_1_fu_82 = trunc_ln1485_fu_194_p1) else "0";
    m_axis_video_TVALID <= regslice_both_m_axis_video_V_data_V_U_vld_out;
    m_axis_video_TVALID_int_regslice <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_m_axis_video_TVALID;

    stream_out_422_read_assign_proc : process(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_stream_out_422_read, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            stream_out_422_read <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_140_stream_out_422_read;
        else 
            stream_out_422_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_175_p3 <= (empty_fu_167_p1 & ap_const_lv2_0);
    trunc_ln1485_fu_194_p1 <= Height(11 - 1 downto 0);
    trunc_ln1486_fu_198_p1 <= WidthOut(11 - 1 downto 0);
    trunc_ln1538_fu_171_p1 <= ColorModeOut(4 - 1 downto 0);
end behav;