library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity kontrolle_tb is
end entity kontrolle_tb;

architecture bench of kontrolle_tb is

  component kontrolle is
    port (
      clk_i         : in    std_logic;
      rst_i         : in    std_logic;
      data_i        : in    std_logic_vector(7 downto 0);
      data_valid_i  : in    std_logic;
      width_logic_i : in    std_logic_vector(9 downto 0);
      data_o        : out   std_logic_vector(71 downto 0);
      out_valid_o   : out   std_logic;
      intr_o        : out   std_logic
    );
  end component;

  -- Clock period
  constant clk_period : time := 10 ns;
  -- constant width_const : integer := 20;

  -- Generics

  -- Ports
  signal clk_i        : std_logic;
  signal rst_i        : std_logic;
  signal data_i       : std_logic_vector(7 downto 0);
  signal data_valid_i : std_logic;
  signal width_i      : std_logic_vector(9 downto 0);
  signal data_o       : std_logic_vector(71 downto 0);
  signal out_valid_o  : std_logic;
  signal intr_o       : std_logic;

begin

  kontrolle_inst : component kontrolle
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      data_i        => data_i,
      data_valid_i  => data_valid_i,
      width_logic_i => width_i,
      data_o        => data_o,
      out_valid_o   => out_valid_o,
      intr_o        => intr_o
    );

  clk_process : process is
  begin

    clk_i <= '1';
    wait for clk_period / 2;
    clk_i <= '0';
    wait for clk_period / 2;

  end process clk_process;

  signal_gen : process is
  begin

    rst_i   <= '1';
    width_i <= std_logic_vector(to_unsigned(7, 10));
    wait for 1 ns;
    rst_i   <= '0';
    wait;

  end process signal_gen;

  data_gen : process is
  begin

    wait for 12 ns;

    data_valid_i <= '1';

    for i in 0 to 99 loop

      data_i <= std_logic_vector(to_unsigned(i, 8));
      wait for clk_period;

    end loop;

    data_valid_i <= '0';

  end process data_gen;

end architecture bench;
