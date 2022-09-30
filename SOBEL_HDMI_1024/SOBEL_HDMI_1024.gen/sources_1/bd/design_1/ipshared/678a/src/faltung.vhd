library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity faltung is
  port (
    clk_i              : in    std_logic;
    data_i             : in    std_logic_vector(71 downto 0);
    data_valid_i       : in    std_logic;
    sobel_data_o       : out   std_logic_vector(7 downto 0);
    sobel_data_valid_o : out   std_logic
  );
end entity faltung;

architecture rtl of faltung is

  type kernel_type is array (8 downto 0) of signed(3 downto 0);

  type data_type is array (8 downto 0) of unsigned(7 downto 0);

  type multires_type is array (8 downto 0) of signed(12 downto 0);

  signal kernelh_r : kernel_type;
  signal kernelv_r : kernel_type;

  signal multiresh_r     : multires_type;
  signal multiresh_r_nxt : multires_type;

  signal multiresv_r     : multires_type;
  signal multiresv_r_nxt : multires_type;

  signal sumresh_r     : signed (13 downto 0);
  signal sumresh_r_nxt : signed (13 downto 0);

  signal sumresv_r     : signed (13 downto 0);
  signal sumresv_r_nxt : signed (13 downto 0);

  signal quadresh_r     : signed (27 downto 0);
  signal quadresh_r_nxt : signed (27 downto 0);

  signal quadresv_r     : signed (27 downto 0);
  signal quadresv_r_nxt : signed (27 downto 0);

  signal checkres : signed (27 downto 0);
  signal checkres_nxt : signed (27 downto 0);

  --   Pipelined valid signal
  signal multi_valid_r     : std_logic;
  signal multi_valid_r_nxt : std_logic;

  signal sum_valid_r     : std_logic;
  signal sum_valid_r_nxt : std_logic;

  signal quad_valid_r     : std_logic;
  signal quad_valid_r_nxt : std_logic;
  
  signal checkres_valid_r     : std_logic;
  signal checkres_valid_r_nxt : std_logic;

begin

  kernelh_r(0) <= to_signed(1, 4);
  kernelh_r(1) <= to_signed(0, 4);
  kernelh_r(2) <= to_signed(-1, 4);
  kernelh_r(3) <= to_signed(2, 4);
  kernelh_r(4) <= to_signed(0, 4);
  kernelh_r(5) <= to_signed(-2, 4);
  kernelh_r(6) <= to_signed(1, 4);
  kernelh_r(7) <= to_signed(0, 4);
  kernelh_r(8) <= to_signed(-1, 4);

  kernelv_r(0) <= to_signed(1, 4);
  kernelv_r(1) <= to_signed(2, 4);
  kernelv_r(2) <= to_signed(1, 4);
  kernelv_r(3) <= to_signed(0, 4);
  kernelv_r(4) <= to_signed(0, 4);
  kernelv_r(5) <= to_signed(0, 4);
  kernelv_r(6) <= to_signed(-1, 4);
  kernelv_r(7) <= to_signed(-2, 4);
  kernelv_r(8) <= to_signed(-1, 4);

  process (clk_i) is
  begin

    if (clk_i'event and clk_i = '1') then
      multiresh_r <= multiresh_r_nxt;
      multiresv_r <= multiresv_r_nxt;
      sumresh_r   <= sumresh_r_nxt;
      sumresv_r   <= sumresv_r_nxt;
      quadresh_r  <= quadresh_r_nxt;
      quadresv_r  <= quadresv_r_nxt;
      checkres    <=checkres_nxt;

      multi_valid_r <= multi_valid_r_nxt;
      sum_valid_r   <= sum_valid_r_nxt;
      quad_valid_r  <= quad_valid_r_nxt;
      checkres_valid_r <= checkres_valid_r_nxt;
    end if;

  end process;

  multi_valid_r_nxt  <= data_valid_i;
  sum_valid_r_nxt    <= multi_valid_r;
  quad_valid_r_nxt   <= sum_valid_r;
  checkres_valid_r_nxt<= quad_valid_r;
  sobel_data_valid_o <= checkres_valid_r;

  process (kernelh_r, kernelv_r, data_i) is
  begin

    for i in 0 to 8 loop

      multiresh_r_nxt(i) <= kernelh_r (i) * signed('0' & data_i(i * 8 + 7 downto i * 8));
      multiresv_r_nxt(i) <= kernelv_r (i) * signed('0' & data_i(i * 8 + 7 downto i * 8));

    end loop;

  end process;

  sumresh_r_nxt  <= resize(multiresh_r(0), 14) + resize(multiresh_r(1), 14) + resize(multiresh_r(2), 14) + resize(multiresh_r(3), 14) + resize(multiresh_r(4), 14) + resize(multiresh_r(5), 14) + resize(multiresh_r(6), 14) + resize(multiresh_r(7), 14) + resize(multiresh_r(8), 14);
  sumresv_r_nxt  <= resize(multiresv_r(0), 14) + resize(multiresv_r(1), 14) + resize(multiresv_r(2), 14) + resize(multiresv_r(3), 14) + resize(multiresv_r(4), 14) + resize(multiresv_r(5), 14) + resize(multiresv_r(6), 14) + resize(multiresv_r(7), 14) + resize(multiresv_r(8), 14);
  quadresh_r_nxt <= sumresh_r * sumresh_r;
  quadresv_r_nxt <= sumresv_r * sumresv_r;
  checkres_nxt       <= quadresh_r + quadresv_r;

  process (checkres) is
  begin

    if (checkres > 4000) then
      sobel_data_o <= (others => '1');
    else
      sobel_data_o <= (others => '0');
    end if;

  end process;

end architecture rtl;
