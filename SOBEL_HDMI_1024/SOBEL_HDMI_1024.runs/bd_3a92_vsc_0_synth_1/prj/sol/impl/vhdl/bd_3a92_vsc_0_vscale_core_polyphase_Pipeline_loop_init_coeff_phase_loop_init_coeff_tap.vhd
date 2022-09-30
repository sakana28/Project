-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    FiltCoeff_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_ce0 : OUT STD_LOGIC;
    FiltCoeff_we0 : OUT STD_LOGIC;
    FiltCoeff_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    vfltCoeff_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    vfltCoeff_ce0 : OUT STD_LOGIC;
    vfltCoeff_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    FiltCoeff_1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_1_ce0 : OUT STD_LOGIC;
    FiltCoeff_1_we0 : OUT STD_LOGIC;
    FiltCoeff_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    FiltCoeff_2_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_2_ce0 : OUT STD_LOGIC;
    FiltCoeff_2_we0 : OUT STD_LOGIC;
    FiltCoeff_2_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    FiltCoeff_3_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_3_ce0 : OUT STD_LOGIC;
    FiltCoeff_3_we0 : OUT STD_LOGIC;
    FiltCoeff_3_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    FiltCoeff_4_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_4_ce0 : OUT STD_LOGIC;
    FiltCoeff_4_we0 : OUT STD_LOGIC;
    FiltCoeff_4_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    FiltCoeff_5_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    FiltCoeff_5_ce0 : OUT STD_LOGIC;
    FiltCoeff_5_we0 : OUT STD_LOGIC;
    FiltCoeff_5_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of bd_3a92_vsc_0_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_180 : STD_LOGIC_VECTOR (8 downto 0) := "110000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln204_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln204_fu_233_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln204_reg_343 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln204_reg_343_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln204_reg_343_pp0_iter2_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln204_reg_343_pp0_iter3_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln204_1_fu_241_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln204_1_reg_348 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln204_1_reg_348_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln204_1_reg_348_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln204_1_reg_348_pp0_iter3_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln204_fu_249_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln204_reg_355 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln207_fu_253_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln207_reg_360 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln209_fu_291_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln209_reg_365 : STD_LOGIC_VECTOR (8 downto 0);
    signal vfltCoeff_load_reg_375 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln209_2_fu_305_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln204_fu_309_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_82 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_86 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten_fu_90 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln204_1_fu_209_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln207_fu_227_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln204_fu_221_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_1_fu_271_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_264_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln209_fu_278_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln209_fu_282_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln209_1_fu_288_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component bd_3a92_vsc_0_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    i_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_86 <= ap_const_lv7_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    i_fu_86 <= select_ln204_1_reg_348;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln204_fu_203_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_90 <= add_ln204_1_fu_209_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_90 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_82 <= ap_const_lv3_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    j_fu_82 <= add_ln207_reg_360;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln204_fu_203_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln207_reg_360 <= add_ln207_fu_253_p2;
                select_ln204_1_reg_348 <= select_ln204_1_fu_241_p3;
                select_ln204_reg_343 <= select_ln204_fu_233_p3;
                trunc_ln204_reg_355 <= trunc_ln204_fu_249_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln209_reg_365 <= add_ln209_fu_291_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                select_ln204_1_reg_348_pp0_iter1_reg <= select_ln204_1_reg_348;
                select_ln204_reg_343_pp0_iter1_reg <= select_ln204_reg_343;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                select_ln204_1_reg_348_pp0_iter2_reg <= select_ln204_1_reg_348_pp0_iter1_reg;
                select_ln204_1_reg_348_pp0_iter3_reg <= select_ln204_1_reg_348_pp0_iter2_reg;
                select_ln204_reg_343_pp0_iter2_reg <= select_ln204_reg_343_pp0_iter1_reg;
                select_ln204_reg_343_pp0_iter3_reg <= select_ln204_reg_343_pp0_iter2_reg;
                vfltCoeff_load_reg_375 <= vfltCoeff_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    FiltCoeff_1_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_1_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_1_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_1_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_1))) then 
            FiltCoeff_1_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_2_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_2_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_2_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_2_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_2))) then 
            FiltCoeff_2_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_3_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_3_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_3_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_3_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_3))) then 
            FiltCoeff_3_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_4_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_4_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_4_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_4_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_4_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_4))) then 
            FiltCoeff_4_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_5_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_5_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_5_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_5_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_5_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and ((select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_5) or ((select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_6) or (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_7))))) then 
            FiltCoeff_5_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_address0 <= zext_ln204_fu_309_p1(6 - 1 downto 0);

    FiltCoeff_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            FiltCoeff_ce0 <= ap_const_logic_1;
        else 
            FiltCoeff_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    FiltCoeff_d0 <= vfltCoeff_load_reg_375;

    FiltCoeff_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001, select_ln204_reg_343_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (select_ln204_reg_343_pp0_iter3_reg = ap_const_lv3_0))) then 
            FiltCoeff_we0 <= ap_const_logic_1;
        else 
            FiltCoeff_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln204_1_fu_209_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv9_1));
    add_ln204_fu_221_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv7_1));
    add_ln207_fu_253_p2 <= std_logic_vector(unsigned(select_ln204_fu_233_p3) + unsigned(ap_const_lv3_1));
    add_ln209_fu_291_p2 <= std_logic_vector(unsigned(sub_ln209_fu_282_p2) + unsigned(zext_ln209_1_fu_288_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln204_fu_203_p2)
    begin
        if (((icmp_ln204_fu_203_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, select_ln204_1_reg_348, ap_block_pp0_stage0, ap_loop_init, i_fu_86)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_sig_allocacmp_i_load <= ap_const_lv7_0;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                ap_sig_allocacmp_i_load <= select_ln204_1_reg_348;
            else 
                ap_sig_allocacmp_i_load <= i_fu_86;
            end if;
        else 
            ap_sig_allocacmp_i_load <= i_fu_86;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_90)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_90;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, add_ln207_reg_360, ap_block_pp0_stage0, j_fu_82, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_sig_allocacmp_j_load <= ap_const_lv3_0;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                ap_sig_allocacmp_j_load <= add_ln207_reg_360;
            else 
                ap_sig_allocacmp_j_load <= j_fu_82;
            end if;
        else 
            ap_sig_allocacmp_j_load <= j_fu_82;
        end if; 
    end process;

    icmp_ln204_fu_203_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv9_180) else "0";
    icmp_ln207_fu_227_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv3_6) else "0";
    select_ln204_1_fu_241_p3 <= 
        add_ln204_fu_221_p2 when (icmp_ln207_fu_227_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln204_fu_233_p3 <= 
        ap_const_lv3_0 when (icmp_ln207_fu_227_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    sub_ln209_fu_282_p2 <= std_logic_vector(unsigned(tmp_fu_264_p3) - unsigned(zext_ln209_fu_278_p1));
    tmp_1_fu_271_p3 <= (select_ln204_1_reg_348 & ap_const_lv1_0);
    tmp_fu_264_p3 <= (trunc_ln204_reg_355 & ap_const_lv3_0);
    trunc_ln204_fu_249_p1 <= select_ln204_1_fu_241_p3(6 - 1 downto 0);
    vfltCoeff_address0 <= zext_ln209_2_fu_305_p1(9 - 1 downto 0);

    vfltCoeff_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            vfltCoeff_ce0 <= ap_const_logic_1;
        else 
            vfltCoeff_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln204_fu_309_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln204_1_reg_348_pp0_iter3_reg),64));
    zext_ln209_1_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln204_reg_343),9));
    zext_ln209_2_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln209_reg_365),64));
    zext_ln209_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_271_p3),9));
end behav;
