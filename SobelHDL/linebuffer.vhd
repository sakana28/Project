library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity linebuffer is
  port (
    clk_i        : in    std_logic;
    rst_i        : in    std_logic;
    width_i      : in    unsigned(9 downto 0);
    data_i       : in    std_logic_vector(7 downto 0);
    data_valid_i : in    std_logic;
    rd_en_i      : std_logic;
    data_o       : out   std_logic_vector(23 downto 0)
  );
end entity linebuffer;

architecture rtl of linebuffer is

  type buffer_type is array (511 downto 0) of std_logic_vector(7 downto 0);

  signal line_r  : buffer_type;
  signal wrptr_r : unsigned(8 downto 0);
  signal rdptr_r : unsigned(8 downto 0);
  

begin

  process (clk_i, rst_i) is
  begin

    wrptr_r <= wrptr_r;

    if (rst_i = '1') then
      wrptr_r <= ((others => '0'));
    elsif (clk_i'event and clk_i = '1') then
      if (data_valid_i = '1') then
        if (wrptr_r >= width_i-1) then
          wrptr_r <= ((others => '0'));
        else
          wrptr_r <= wrptr_r + 1;
        end if;
      end if;
    end if;

  end process;

  process (clk_i, rst_i) is
  begin

    rdptr_r <= rdptr_r;

    if (rst_i = '1') then
      rdptr_r <= ((others => '0'));
    elsif (clk_i'event and clk_i = '1') then
      if (rd_en_i = '1') then
        if (rdptr_r >= width_i - 3) then -- configure width as width with zero padding z.b pic_width=512 width_i = 514
          rdptr_r <= ((others => '0'));
        else
          rdptr_r <= rdptr_r + 1;
        end if;
      end if;
    end if;

  end process;

  process (clk_i) is
  begin

    if (clk_i'event and clk_i = '1') then
      if (data_valid_i = '1') then
        line_r(to_integer(wrptr_r)) <= data_i;
      end if;
    end if;

  end process;

  -- Attention: Zero Padding in SW
  data_o <= line_r(to_integer(rdptr_r)) & line_r(to_integer(rdptr_r) + 1) & line_r(to_integer(rdptr_r) + 2);

end architecture rtl;
