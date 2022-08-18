library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity tb_kontrolle_file is
end entity;

architecture rtl of tb_kontrolle_file is



    component kontrolle
    port (
    clk_i : in std_logic;
    rst_i : in std_logic;
    data_i : in std_logic_vector(7 downto 0);
    data_valid_i : in std_logic;
    width_logic_i : in std_logic_vector(9 downto 0);
    data_o : out std_logic_vector(71 downto 0);
    out_valid_o : out std_logic;
    intr_o : out std_logic
  );
end component;

  constant HALF_CLK : time := 5 ns;
  constant width_const : integer := 102;
  constant height_const : integer := 102;

  signal clk : std_logic;
  signal rst :std_logic;
  signal data_tb : std_logic_vector(7 downto 0);
  signal data_kontrolle_out :std_logic_vector(71 downto 0);
  signal data_valid_kontrolle_out: std_logic ;
  signal data_valid_tb : std_logic;
  signal sobel_res_tb : std_logic_vector (7 downto 0);
  signal sobel_res_valid_tb : std_logic;
  signal intr_tb :std_logic;
  type std_file is file of bit_vector(3 downto 0);
  type std_output_file is file of bit_vector;
  type char_file is file of character;

begin
    
    kontrolle_inst : kontrolle
    port map (
      clk_i => clk,
      rst_i => rst,
      data_i => data_tb,
      data_valid_i => data_valid_tb,
      width_logic_i => conv_std_logic_vector(width_const,10), --102
      data_o => data_kontrolle_out, 
      out_valid_o => data_valid_kontrolle_out,
      intr_o => intr_tb
    );
  


   rst_gen:process 
   begin
    rst <='1' ;
    wait for 1 ns;
    rst <='0' ;
    wait;
   end process;

  clk_gen : process
  begin
    clk <= '1';
    wait for HALF_CLK;
    clk <= '0';
    wait for HALF_CLK;
  end process;

  file_read : process
    file read_file : std_file;
    variable next_vector : bit_vector (0 downto 0);
    variable filestatus_rd : file_open_status;
    variable actual_len : natural;
    variable data_count :integer;
  begin
    data_valid_tb <= '0';
    file_open(filestatus_rd, read_file, "/home/benchmarker/FPGAProject/SobelHDL/tb/stimu_gray_zero_table.txt", read_mode); 
    assert filestatus_rd = OPEN_OK
    report "fail to open stimu"
      severity FAILURE;
    data_count := 00;
    data_valid_tb <= '0';
    wait for 10 ns;
    for i in 0 to height_const -1 loop
        wait until rising_edge(clk);
        wait for 2 ns;
       data_valid_tb <= '1';

        for i in 0 to width_const-1 loop 
            data_valid_tb <= '1';
            read(read_file, next_vector, actual_len);
            data_tb <= conv_std_logic_vector(bit'pos(next_vector(0)), 8);
            data_count := data_count+1;
            wait for 10 ns;
        end loop; 
       data_valid_tb <= '0';

        wait for 2000 ns;
      end loop;
    file_close(read_file);
    wait;
  end process;


  file_write : process
    file result_file : char_file;
    variable next_vector : character;
    variable filestatus_wr : file_open_status;
    variable varstd_output : std_logic_vector (7 downto 0);
    variable output_vector : bit_vector(7 downto 0);
    variable data_count :integer;
  begin
    file_open(filestatus_wr, result_file, "/home/benchmarker/FPGAProject/SobelHDL/syssim_table_out.txt", write_mode);
    data_count := 0;
    assert filestatus_wr = OPEN_OK
    report "fail to open target"
      severity FAILURE;
    while data_count < (width_const-2)*(width_const-2) loop
      wait until rising_edge(clk) and data_valid_kontrolle_out = '1';
      varstd_output := sobel_res_tb;
      next_vector := character'val(conv_integer(varstd_output));
      write(result_file, next_vector);
      data_count := data_count+1;
    end loop;



    file_close(result_file);
    wait;
  end process;
end architecture;