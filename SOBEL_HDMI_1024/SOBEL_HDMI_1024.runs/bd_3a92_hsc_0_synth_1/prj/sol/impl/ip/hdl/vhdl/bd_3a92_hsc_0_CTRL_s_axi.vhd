-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bd_3a92_hsc_0_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 15;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    Height                :out  STD_LOGIC_VECTOR(15 downto 0);
    WidthIn               :out  STD_LOGIC_VECTOR(15 downto 0);
    WidthOut              :out  STD_LOGIC_VECTOR(15 downto 0);
    ColorMode             :out  STD_LOGIC_VECTOR(7 downto 0);
    PixelRate             :out  STD_LOGIC_VECTOR(31 downto 0);
    ColorModeOut          :out  STD_LOGIC_VECTOR(7 downto 0);
    hfltCoeff_address0    :in   STD_LOGIC_VECTOR(8 downto 0);
    hfltCoeff_ce0         :in   STD_LOGIC;
    hfltCoeff_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    phasesH_address0      :in   STD_LOGIC_VECTOR(10 downto 0);
    phasesH_ce0           :in   STD_LOGIC;
    phasesH_q0            :out  STD_LOGIC_VECTOR(8 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity bd_3a92_hsc_0_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- 0x0000 : Control signals
--          bit 0  - ap_start (Read/Write/COH)
--          bit 1  - ap_done (Read/COR)
--          bit 2  - ap_idle (Read)
--          bit 3  - ap_ready (Read/COR)
--          bit 7  - auto_restart (Read/Write)
--          bit 9  - interrupt (Read)
--          others - reserved
-- 0x0004 : Global Interrupt Enable Register
--          bit 0  - Global Interrupt Enable (Read/Write)
--          others - reserved
-- 0x0008 : IP Interrupt Enable Register (Read/Write)
--          bit 0 - enable ap_done interrupt (Read/Write)
--          bit 1 - enable ap_ready interrupt (Read/Write)
--          others - reserved
-- 0x000c : IP Interrupt Status Register (Read/COR)
--          bit 0 - ap_done (Read/COR)
--          bit 1 - ap_ready (Read/COR)
--          others - reserved
-- 0x0010 : Data signal of Height
--          bit 15~0 - Height[15:0] (Read/Write)
--          others   - reserved
-- 0x0014 : reserved
-- 0x0018 : Data signal of WidthIn
--          bit 15~0 - WidthIn[15:0] (Read/Write)
--          others   - reserved
-- 0x001c : reserved
-- 0x0020 : Data signal of WidthOut
--          bit 15~0 - WidthOut[15:0] (Read/Write)
--          others   - reserved
-- 0x0024 : reserved
-- 0x0028 : Data signal of ColorMode
--          bit 7~0 - ColorMode[7:0] (Read/Write)
--          others  - reserved
-- 0x002c : reserved
-- 0x0030 : Data signal of PixelRate
--          bit 31~0 - PixelRate[31:0] (Read/Write)
-- 0x0034 : reserved
-- 0x0038 : Data signal of ColorModeOut
--          bit 7~0 - ColorModeOut[7:0] (Read/Write)
--          others  - reserved
-- 0x003c : reserved
-- 0x0800 ~
-- 0x0bff : Memory 'hfltCoeff' (384 * 16b)
--          Word n : bit [15: 0] - hfltCoeff[2n]
--                   bit [31:16] - hfltCoeff[2n+1]
-- 0x4000 ~
-- 0x4fff : Memory 'phasesH' (1920 * 9b)
--          Word n : bit [ 8: 0] - phasesH[2n]
--                   bit [24:16] - phasesH[2n+1]
--                   others      - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of bd_3a92_hsc_0_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL             : INTEGER := 16#0000#;
    constant ADDR_GIE                 : INTEGER := 16#0004#;
    constant ADDR_IER                 : INTEGER := 16#0008#;
    constant ADDR_ISR                 : INTEGER := 16#000c#;
    constant ADDR_HEIGHT_DATA_0       : INTEGER := 16#0010#;
    constant ADDR_HEIGHT_CTRL         : INTEGER := 16#0014#;
    constant ADDR_WIDTHIN_DATA_0      : INTEGER := 16#0018#;
    constant ADDR_WIDTHIN_CTRL        : INTEGER := 16#001c#;
    constant ADDR_WIDTHOUT_DATA_0     : INTEGER := 16#0020#;
    constant ADDR_WIDTHOUT_CTRL       : INTEGER := 16#0024#;
    constant ADDR_COLORMODE_DATA_0    : INTEGER := 16#0028#;
    constant ADDR_COLORMODE_CTRL      : INTEGER := 16#002c#;
    constant ADDR_PIXELRATE_DATA_0    : INTEGER := 16#0030#;
    constant ADDR_PIXELRATE_CTRL      : INTEGER := 16#0034#;
    constant ADDR_COLORMODEOUT_DATA_0 : INTEGER := 16#0038#;
    constant ADDR_COLORMODEOUT_CTRL   : INTEGER := 16#003c#;
    constant ADDR_HFLTCOEFF_BASE      : INTEGER := 16#0800#;
    constant ADDR_HFLTCOEFF_HIGH      : INTEGER := 16#0bff#;
    constant ADDR_PHASESH_BASE        : INTEGER := 16#4000#;
    constant ADDR_PHASESH_HIGH        : INTEGER := 16#4fff#;
    constant ADDR_BITS         : INTEGER := 15;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_Height          : UNSIGNED(15 downto 0) := (others => '0');
    signal int_WidthIn         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_WidthOut        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_ColorMode       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_PixelRate       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ColorModeOut    : UNSIGNED(7 downto 0) := (others => '0');
    -- memory signals
    signal int_hfltCoeff_address0 : UNSIGNED(7 downto 0);
    signal int_hfltCoeff_ce0   : STD_LOGIC;
    signal int_hfltCoeff_q0    : UNSIGNED(31 downto 0);
    signal int_hfltCoeff_address1 : UNSIGNED(7 downto 0);
    signal int_hfltCoeff_ce1   : STD_LOGIC;
    signal int_hfltCoeff_we1   : STD_LOGIC;
    signal int_hfltCoeff_be1   : UNSIGNED(3 downto 0);
    signal int_hfltCoeff_d1    : UNSIGNED(31 downto 0);
    signal int_hfltCoeff_q1    : UNSIGNED(31 downto 0);
    signal int_hfltCoeff_read  : STD_LOGIC;
    signal int_hfltCoeff_write : STD_LOGIC;
    signal int_hfltCoeff_shift0 : UNSIGNED(0 downto 0);
    signal int_phasesH_address0 : UNSIGNED(9 downto 0);
    signal int_phasesH_ce0     : STD_LOGIC;
    signal int_phasesH_q0      : UNSIGNED(31 downto 0);
    signal int_phasesH_address1 : UNSIGNED(9 downto 0);
    signal int_phasesH_ce1     : STD_LOGIC;
    signal int_phasesH_we1     : STD_LOGIC;
    signal int_phasesH_be1     : UNSIGNED(3 downto 0);
    signal int_phasesH_d1      : UNSIGNED(31 downto 0);
    signal int_phasesH_q1      : UNSIGNED(31 downto 0);
    signal int_phasesH_read    : STD_LOGIC;
    signal int_phasesH_write   : STD_LOGIC;
    signal int_phasesH_shift0  : UNSIGNED(0 downto 0);

    component bd_3a92_hsc_0_CTRL_s_axi_ram is
        generic (
            MEM_STYLE : STRING :="auto";
            MEM_TYPE  : STRING :="S2P";
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component bd_3a92_hsc_0_CTRL_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_hfltCoeff
int_hfltCoeff : bd_3a92_hsc_0_CTRL_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 192,
     AWIDTH    => log2(192))
port map (
     clk0      => ACLK,
     address0  => int_hfltCoeff_address0,
     ce0       => int_hfltCoeff_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_hfltCoeff_q0,
     clk1      => ACLK,
     address1  => int_hfltCoeff_address1,
     ce1       => int_hfltCoeff_ce1,
     we1       => int_hfltCoeff_be1,
     d1        => int_hfltCoeff_d1,
     q1        => int_hfltCoeff_q1);
-- int_phasesH
int_phasesH : bd_3a92_hsc_0_CTRL_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 960,
     AWIDTH    => log2(960))
port map (
     clk0      => ACLK,
     address0  => int_phasesH_address0,
     ce0       => int_phasesH_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_phasesH_q0,
     clk1      => ACLK,
     address1  => int_phasesH_address1,
     ce1       => int_phasesH_ce1,
     we1       => int_phasesH_be1,
     d1        => int_phasesH_d1,
     q1        => int_phasesH_q1);


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata and ar_hs = '0' else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, w_hs, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (w_hs = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_hfltCoeff_read = '0') and (int_phasesH_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_HEIGHT_DATA_0 =>
                        rdata_data <= RESIZE(int_Height(15 downto 0), 32);
                    when ADDR_WIDTHIN_DATA_0 =>
                        rdata_data <= RESIZE(int_WidthIn(15 downto 0), 32);
                    when ADDR_WIDTHOUT_DATA_0 =>
                        rdata_data <= RESIZE(int_WidthOut(15 downto 0), 32);
                    when ADDR_COLORMODE_DATA_0 =>
                        rdata_data <= RESIZE(int_ColorMode(7 downto 0), 32);
                    when ADDR_PIXELRATE_DATA_0 =>
                        rdata_data <= RESIZE(int_PixelRate(31 downto 0), 32);
                    when ADDR_COLORMODEOUT_DATA_0 =>
                        rdata_data <= RESIZE(int_ColorModeOut(7 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                elsif (int_hfltCoeff_read = '1') then
                    rdata_data <= int_hfltCoeff_q1;
                elsif (int_phasesH_read = '1') then
                    rdata_data <= int_phasesH_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    Height               <= STD_LOGIC_VECTOR(int_Height);
    WidthIn              <= STD_LOGIC_VECTOR(int_WidthIn);
    WidthOut             <= STD_LOGIC_VECTOR(int_WidthOut);
    ColorMode            <= STD_LOGIC_VECTOR(int_ColorMode);
    PixelRate            <= STD_LOGIC_VECTOR(int_PixelRate);
    ColorModeOut         <= STD_LOGIC_VECTOR(int_ColorModeOut);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_ISR) then
                    int_isr(0) <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_ISR) then
                    int_isr(1) <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_HEIGHT_DATA_0) then
                    int_Height(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_Height(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTHIN_DATA_0) then
                    int_WidthIn(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_WidthIn(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTHOUT_DATA_0) then
                    int_WidthOut(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_WidthOut(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_COLORMODE_DATA_0) then
                    int_ColorMode(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ColorMode(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PIXELRATE_DATA_0) then
                    int_PixelRate(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_PixelRate(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_COLORMODEOUT_DATA_0) then
                    int_ColorModeOut(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ColorModeOut(7 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- hfltCoeff
    int_hfltCoeff_address0 <= SHIFT_RIGHT(UNSIGNED(hfltCoeff_address0), 1)(7 downto 0);
    int_hfltCoeff_ce0    <= hfltCoeff_ce0;
    hfltCoeff_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_hfltCoeff_q0, TO_INTEGER(int_hfltCoeff_shift0) * 16)(15 downto 0));
    int_hfltCoeff_address1 <= raddr(9 downto 2) when ar_hs = '1' else waddr(9 downto 2);
    int_hfltCoeff_ce1    <= '1' when ar_hs = '1' or (int_hfltCoeff_write = '1' and WVALID  = '1') else '0';
    int_hfltCoeff_we1    <= '1' when int_hfltCoeff_write = '1' and w_hs = '1' else '0';
    int_hfltCoeff_be1    <= UNSIGNED(WSTRB) when int_hfltCoeff_we1 = '1' else (others=>'0');
    int_hfltCoeff_d1     <= UNSIGNED(WDATA);
    -- phasesH
    int_phasesH_address0 <= SHIFT_RIGHT(UNSIGNED(phasesH_address0), 1)(9 downto 0);
    int_phasesH_ce0      <= phasesH_ce0;
    phasesH_q0           <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_phasesH_q0, TO_INTEGER(int_phasesH_shift0) * 16)(8 downto 0));
    int_phasesH_address1 <= raddr(11 downto 2) when ar_hs = '1' else waddr(11 downto 2);
    int_phasesH_ce1      <= '1' when ar_hs = '1' or (int_phasesH_write = '1' and WVALID  = '1') else '0';
    int_phasesH_we1      <= '1' when int_phasesH_write = '1' and w_hs = '1' else '0';
    int_phasesH_be1      <= UNSIGNED(WSTRB) when int_phasesH_we1 = '1' else (others=>'0');
    int_phasesH_d1       <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_hfltCoeff_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_HFLTCOEFF_BASE and raddr <= ADDR_HFLTCOEFF_HIGH) then
                    int_hfltCoeff_read <= '1';
                else
                    int_hfltCoeff_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_hfltCoeff_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_HFLTCOEFF_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_HFLTCOEFF_HIGH) then
                    int_hfltCoeff_write <= '1';
                elsif (w_hs = '1') then
                    int_hfltCoeff_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_hfltCoeff_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (hfltCoeff_ce0 = '1') then
                    int_hfltCoeff_shift0 <= UNSIGNED(hfltCoeff_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_phasesH_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_PHASESH_BASE and raddr <= ADDR_PHASESH_HIGH) then
                    int_phasesH_read <= '1';
                else
                    int_phasesH_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_phasesH_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_PHASESH_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_PHASESH_HIGH) then
                    int_phasesH_write <= '1';
                elsif (w_hs = '1') then
                    int_phasesH_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_phasesH_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (phasesH_ce0 = '1') then
                    int_phasesH_shift0 <= UNSIGNED(phasesH_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity bd_3a92_hsc_0_CTRL_s_axi_ram is
    generic (
        MEM_STYLE : STRING :="auto";
        MEM_TYPE  : STRING :="S2P";
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity bd_3a92_hsc_0_CTRL_s_axi_ram;

architecture behave of bd_3a92_hsc_0_CTRL_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
    attribute ram_style: string;
    attribute ram_style of mem: variable is MEM_STYLE;
    constant BYTE_WIDTH :INTEGER := 8;

    function port_type_gen( MEM_TYPE: STRING; MEM_STYLE: STRING; PORT_NAME: STRING) return STRING is
    begin
        if (MEM_TYPE = "S2P") and (PORT_NAME = "PORT0") then
            return "WO";
        elsif((MEM_TYPE = "S2P") and (PORT_NAME = "PORT1")) or ((MEM_TYPE = "2P") and (PORT_NAME = "PORT0")) then
            return "RO";
        elsif (MEM_STYLE = "hls_ultra") then
            return "RWNC";
        else
            return "RWRF";
        end if;
    end port_type_gen;
    constant PORT0 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT0");
    constant PORT1 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT1");

    function or_reduce( V: UNSIGNED) return std_logic is
    variable result: std_logic;
    begin
        for i in V'range loop
            if i = V'left then
                result := V(i);
            else
                result := result OR V(i);
            end if;
            exit when result = '1';
        end loop;
        return result;
    end or_reduce;

begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
        if (address0 > DEPTH-1) then
            address0_tmp <= (others => '0');
        else
            address0_tmp <= address0;
        end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
        if (address1 > DEPTH-1) then
            address1_tmp <= (others => '0');
        else
            address1_tmp <= address1;
        end if;
    --synthesis translate_on
    end process;

    --read port 0
    read_p0_rf : if (PORT0 = "RO" or PORT0 = "RWRF") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    q0 <= mem(to_integer(address0_tmp));
                end if;
            end if;
        end process;
    end generate read_p0_rf;

    read_p0_nc : if (PORT0 = "RWNC") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    if (we0 = (we0'range => '0')) then
                        q0 <= mem(to_integer(address0_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p0_nc;

    --read port 1
    read_p1_rf : if (PORT1 = "RO" or PORT1 = "RWRF") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    q1 <= mem(to_integer(address1_tmp));
                end if;
            end if;
        end process;
    end generate read_p1_rf;

    read_p1_nc : if (PORT1 = "RWNC") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    if (we1 = (we1'range => '0')) then
                        q1 <= mem(to_integer(address1_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p1_nc;

    --write port 0
    write_p0 : if (PORT0 /= "RO") generate
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we0(i) = '1') then
                        mem(to_integer(address0_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d0((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p0;

    --write port 1
    write_p1 : if (PORT1 /= "RO") generate
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we1(i) = '1') then
                        mem(to_integer(address1_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d1((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p1;

end architecture behave;


