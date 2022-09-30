library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity rgbtogray is
  port (
    clk_i : in std_logic;
    rgbdata_i : in std_logic_vector(31 downto 0);
    data_valid_i : in std_logic;
    graydata_o : out std_logic_vector(7 downto 0);
    graydata_valid_o : out std_logic
  );
end rgbtogray;

architecture rtl of rgbtogray is
  signal red_r : unsigned(7 downto 0);
  signal blue_r : unsigned(7 downto 0);
  signal green_r : unsigned(7 downto 0);
  signal gray_nxt_r : unsigned(7 downto 0);
  signal gray_valid_nxt_r : std_logic;
begin

  red_r <= unsigned(rgbdata_i (23 downto 16));
  blue_r <= unsigned(rgbdata_i(15 downto 8));
  green_r <= unsigned(rgbdata_i(7 downto 0));
  gray_nxt_r <= (red_r srl 2) + (red_r srl 5) + (green_r srl 1) + (green_r srl 4) + (blue_r srl 4) + (blue_r srl 5);
  gray_valid_nxt_r <=data_valid_i;
  process (clk_i)
  begin
    if rising_edge(clk_i) then
        graydata_valid_o <= gray_valid_nxt_r;
        graydata_o <= std_logic_vector(gray_nxt_r);
    end if;
  end process;

end architecture;