library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity tb_rgb2gray is
end entity;

architecture rtl of tb_rgb2gray is
  component rgbtogray is
    port (
      clk_i : in std_logic;
      rgbdata_i : in std_logic_vector(31 downto 0);
      data_valid_i : in std_logic;
      graydata_o : out std_logic_vector(7 downto 0);
      graydata_valid_o : out std_logic
    );
  end component;
  constant HALF_CLK : time := 5 ns;

  signal clk : std_logic;
  signal data_tb : std_logic_vector(31 downto 0);
  signal data_valid_tb : std_logic;
  signal gray_res_tb : std_logic_vector (7 downto 0);
  signal gray_res_valid_tb : std_logic;
  type std_file is file of bit_vector(3 downto 0);
  type std_output_file is file of bit_vector;
  type char_file is file of character;

begin
  ins_rgbtogray : rgbtogray
  port map(
    clk_i => clk,
    rgbdata_i => data_tb,
    data_valid_i => data_valid_tb,
    graydata_o => gray_res_tb,
    graydata_valid_o => gray_res_valid_tb
  );

  clk_gen : process
  begin
    clk <= '1';
    wait for HALF_CLK;
    clk <= '0';
    wait for HALF_CLK;
  end process;

  file_read : process
    file read_file : std_file;
    variable next_vector : bit_vector (3 downto 0);
    variable filestatus_rd : file_open_status;
    variable actual_len : natural;
  begin

    file_open(filestatus_rd, read_file, "/home/benchmarker/FPGAProject/SobelHDL/rgb32stimu.txt", read_mode);
    assert filestatus_rd = OPEN_OK
    report "fail to open stimu"
      severity FAILURE;
    while not endfile(read_file) loop
      wait until rising_edge(clk);
      read(read_file, next_vector, actual_len);
      data_tb <=
        conv_std_logic_vector(bit'pos(next_vector(0)), 8) &
        conv_std_logic_vector(bit'pos(next_vector(1)), 8) &
        conv_std_logic_vector(bit'pos(next_vector(2)), 8) &
        conv_std_logic_vector(bit'pos(next_vector(3)), 8);
    end loop;
    file_close(read_file);

    wait;
  end process;

  gen_valid : process
  begin
    data_valid_tb <= '0';
    wait for 10ns;
    data_valid_tb <= '1';
    wait for 20000 * HALF_CLK;
    data_valid_tb <= '0';
    wait;
  end process;

  file_write : process
    file result_file : char_file;
    variable next_vector : character;
    variable filestatus_wr : file_open_status;
    variable varstd_output : std_logic_vector (7 downto 0);
    variable output_vector : bit_vector(7 downto 0);
  begin
    file_open(filestatus_wr, result_file, "/home/benchmarker/FPGAProject/SobelHDL/sim_res_gray.txt", write_mode);
    assert filestatus_wr = OPEN_OK
    report "fail to open target"
      severity FAILURE;
    wait until gray_res_valid_tb = '1';
    while gray_res_valid_tb = '1' loop
      wait until rising_edge(clk);
      varstd_output := gray_res_tb;
      next_vector := character'val(conv_integer(varstd_output));
      write(result_file, next_vector);
    end loop;

    file_close(result_file);
    wait;
  end process;
end architecture;