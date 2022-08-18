library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity kontrolle is
  port (
    clk_i : in    std_logic;
    rst_i : in    std_logic;

    data_i        : in    std_logic_vector(7 downto 0);
    data_valid_i  : in    std_logic;
    width_logic_i : in    std_logic_vector(9 downto 0);
    data_o        : out   std_logic_vector(71 downto 0);
    out_valid_o   : out   std_logic;
    intr_o        : out   std_logic
  );
end entity kontrolle;

architecture rtl of kontrolle is

  component linebuffer is
    port (
      clk_i        : in    std_logic;
      rst_i        : in    std_logic;
      width_i      : in    unsigned(9 downto 0);
      data_i       : in    std_logic_vector(7 downto 0);
      data_valid_i : in    std_logic;
      rd_en_i      : std_logic;
      data_o       : out   std_logic_vector(23 downto 0)
    );
  end component;

  ---counter,wr_counter: how many datas have been written in
  -- rd_counter:Nr of current byte
  signal wr_linepixel_counter_r : unsigned (9 downto 0);
  signal rd_counter_r           : unsigned(9 downto 0);
  signal stor_pixel_count_r     : unsigned(11 downto 0); -- storage of pixels
  ---line Nr.
  signal nr_wrline_r : unsigned(1 downto 0);
  signal nr_rdline_r : unsigned(1 downto 0);
  ---flag and enable
  signal rd_en_mux       : std_logic_vector(3 downto 0);
  signal wr_valid_line_r : std_logic_vector(3 downto 0);
  signal rd_en_r         : std_logic;

  -- intern signal
  signal data0_intern : std_logic_vector(23 downto 0);
  signal data1_intern : std_logic_vector(23 downto 0);
  signal data2_intern : std_logic_vector(23 downto 0);
  signal data3_intern : std_logic_vector(23 downto 0);
  -- FSM

  type rd_state is (IDLE, RD_OUT);

  signal state     : rd_state;
  signal state_nxt : rd_state;
  signal width_i   : unsigned(9 downto 0);

begin

  width_i     <= unsigned(width_logic_i);
  out_valid_o <= rd_en_r;
  -- counter
  storage_count : process (clk_i, rst_i) is  -- considering effect of zero padding
  begin

    stor_pixel_count_r <= stor_pixel_count_r;

    if (rst_i = '1') then
      stor_pixel_count_r <= (others => '0');
    elsif (clk_i'event and clk_i = '1') then
      if ((data_valid_i = '1') and (rd_en_r = '0')) then
        stor_pixel_count_r <= stor_pixel_count_r + 1;
      elsif ((data_valid_i = '0') and (rd_en_r = '1')) then
        stor_pixel_count_r <= stor_pixel_count_r - 1;
      end if;
    end if;

  end process storage_count;

  rdline_count : process (clk_i, rst_i) is
  begin

    rd_counter_r <= rd_counter_r;

    if (rst_i = '1') then
      rd_counter_r <= (others => '0');
    elsif (clk_i'event and clk_i = '1') then
      if (rd_counter_r >= width_i - 3) then
        rd_counter_r <= (others => '0');
      elsif (rd_en_r = '1') then
        rd_counter_r <= rd_counter_r + 1;
      end if;
    end if;

  end process rdline_count;

  wrline_count : process (clk_i, rst_i) is
  begin

    wr_linepixel_counter_r <= wr_linepixel_counter_r;

    if (rst_i = '1') then
      wr_linepixel_counter_r <= (others => '0');
    elsif (clk_i'event and clk_i = '1') then
      if (data_valid_i = '1') then
        if (wr_linepixel_counter_r >= width_i - 1) then
          wr_linepixel_counter_r <= (others => '0');
        else
          wr_linepixel_counter_r <= wr_linepixel_counter_r + 1;
        end if;
      end if;
    end if;

  end process wrline_count;

  -- flags and enable generator
  current_wr : process (clk_i, rst_i) is
  begin

    nr_wrline_r <= nr_wrline_r;

    if (rst_i = '1') then
      nr_wrline_r <= "00";
    elsif (clk_i'event and clk_i = '1') then
      if (data_valid_i = '1') then
        if (wr_linepixel_counter_r >= width_i - 1) then
          nr_wrline_r <= nr_wrline_r + 1;
        end if;
      end if;
    end if;

  end process current_wr;

  current_rd : process (clk_i, rst_i) is
  begin

    nr_rdline_r <= nr_rdline_r;

    if (rst_i = '1') then
      nr_rdline_r <= "00";
    elsif (clk_i'event and clk_i = '1') then
        if (rd_counter_r >= width_i - 3) then
          nr_rdline_r <= nr_rdline_r + 1;
      end if;
    end if;

  end process current_rd;

  mux_rd : process (nr_rdline_r, rd_en_r) is
  begin

    case nr_rdline_r is

      when "00" =>

        rd_en_mux(0) <= rd_en_r;
        rd_en_mux(1) <= rd_en_r;
        rd_en_mux(2) <= rd_en_r;
        rd_en_mux(3) <= '0';

      when "01" =>

        rd_en_mux(0) <= '0';
        rd_en_mux(1) <= rd_en_r;
        rd_en_mux(2) <= rd_en_r;
        rd_en_mux(3) <= rd_en_r;

      when "10" =>

        rd_en_mux(0) <= rd_en_r;
        rd_en_mux(1) <= '0';
        rd_en_mux(2) <= rd_en_r;
        rd_en_mux(3) <= rd_en_r;

      when "11" =>

        rd_en_mux(0) <= rd_en_r;
        rd_en_mux(1) <= rd_en_r;
        rd_en_mux(2) <= '0';
        rd_en_mux(3) <= rd_en_r;

      when others =>

    end case;

  end process mux_rd;

  mux_rd_output : process (nr_rdline_r, data0_intern, data1_intern, data2_intern, data3_intern) is
  begin

    case nr_rdline_r is

      when "00" =>

        data_o <= data2_intern & data1_intern & data0_intern;

      when "01" =>

        data_o <= data3_intern & data2_intern & data1_intern;

      when "10" =>

        data_o <= data0_intern & data3_intern & data2_intern;

      when "11" =>

        data_o <= data1_intern & data0_intern & data3_intern;

      when others =>

    end case;

  end process mux_rd_output;

  wr_line_valid_1to4 : process (data_valid_i, nr_wrline_r) is
  begin

    wr_valid_line_r                          <= (others => '0');
    wr_valid_line_r(to_integer(nr_wrline_r)) <= data_valid_i;

  end process wr_line_valid_1to4;

  -- FSM
  fsm_ff : process (clk_i, rst_i) is
  begin

    if (rst_i = '1') then
      state <= IDLE;
    elsif (clk_i'event and clk_i = '1') then
      state <= state_nxt;
    end if;

  end process fsm_ff;

  fsm_transfer : process (rd_counter_r, width_i, stor_pixel_count_r, state) is
  begin

    state_nxt <= state;

    case state is

      when IDLE =>

        if (stor_pixel_count_r >= 3 * width_i + 2) then
          state_nxt <= RD_OUT;
        end if;

      when RD_OUT =>

        if (rd_counter_r >= width_i - 3) then
          state_nxt <= IDLE;
        end if;

    end case;

  end process fsm_transfer;

  fsm_output : process (rd_counter_r, width_i, state) is
  begin

    rd_en_r <= '0';
    intr_o  <= '0';

    case state is

      when IDLE =>

        intr_o  <= '0';
        rd_en_r <= '0';

      when RD_OUT =>

        rd_en_r <= '1';

        if (rd_counter_r >= width_i - 3) then
          intr_o  <= '1';
        end if;

    end case;

  end process fsm_output;

  line0 : component linebuffer
    port map (
      clk_i        => clk_i,
      rst_i        => rst_i,
      width_i      => width_i,
      data_i       => data_i,
      data_valid_i => wr_valid_line_r(0),
      rd_en_i      => rd_en_mux(0),
      data_o       => data0_intern
    );

  line1 : component linebuffer
    port map (
      clk_i        => clk_i,
      rst_i        => rst_i,
      width_i      => width_i,
      data_i       => data_i,
      data_valid_i => wr_valid_line_r(1),
      rd_en_i      => rd_en_mux(1),
      data_o       => data1_intern
    );

  line2 : component linebuffer
    port map (
      clk_i        => clk_i,
      rst_i        => rst_i,
      width_i      => width_i,
      data_i       => data_i,
      data_valid_i => wr_valid_line_r(2),
      rd_en_i      => rd_en_mux(2),
      data_o       => data2_intern
    );

  line3 : component linebuffer
    port map (
      clk_i        => clk_i,
      rst_i        => rst_i,
      width_i      => width_i,
      data_i       => data_i,
      data_valid_i => wr_valid_line_r(3),
      rd_en_i      => rd_en_mux(3),
      data_o       => data3_intern
    );

end architecture rtl;
