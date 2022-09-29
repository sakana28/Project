library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sobel_top is
  port (
    clk_i          : in    std_logic;
    rst_n_i        : in    std_logic;
    width_i        : in    std_logic_vector(9 downto 0);
    s_data_i       : in    std_logic_vector(31 downto 0);
    s_data_valid_i : in    std_logic; -- from DMA mm2s
    s_data_ready_o : out   std_logic; -- to DMA mm2s, connect with NOT programmable full
    m_data_valid_o : out   std_logic; -- to DMA s2mm
    m_data_ready_i : in    std_logic; -- from DMA s2mm,connect with output FIFO M_AXIS
    m_data_o       : out   std_logic_vector(31 downto 0);
    intr_o         : out   std_logic;
    
      --for debug
    wr_line_counter :out std_logic_vector (9 downto 0);
    rd_counter :out std_logic_vector (9 downto 0);
    stor_counter :out std_logic_vector (11 downto 0)
  );
end entity sobel_top;

architecture rtl of sobel_top is

  component kontrolle is
    port (
      clk_i : in    std_logic;
      rst_i : in    std_logic;

      data_i        : in    std_logic_vector(7 downto 0);
      data_valid_i  : in    std_logic;
      width_logic_i : in    std_logic_vector(9 downto 0);
      data_o        : out   std_logic_vector(71 downto 0);
      out_valid_o   : out   std_logic;
      intr_o        : out   std_logic;
      
        --for debug
    wr_line_counter :out std_logic_vector (9 downto 0);
    rd_counter :out std_logic_vector (9 downto 0);
    stor_counter :out std_logic_vector (11 downto 0)
    );
  end component;

  component fifo_generator_0 is
    port (
      wr_rst_busy    : out   std_logic;
      rd_rst_busy    : out   std_logic;
      s_aclk         : in    std_logic;
      s_aresetn      : in    std_logic;
      s_axis_tvalid  : in    std_logic;
      s_axis_tready  : out   std_logic;
      s_axis_tdata   : in    std_logic_vector(7 downto 0);
      m_axis_tvalid  : out   std_logic;
      m_axis_tready  : in    std_logic;
      m_axis_tdata   : out   std_logic_vector(7 downto 0);
      axis_prog_full : out   std_logic
    );
  end component;

  component faltung is
    port (
      clk_i              : in    std_logic;
      data_i             : in    std_logic_vector(71 downto 0);
      data_valid_i       : in    std_logic;
      sobel_data_o       : out   std_logic_vector(7 downto 0);
      sobel_data_valid_o : out   std_logic
    );
  end component;

  component rgbtogray is
    port (
      clk_i            : in    std_logic;
      rgbdata_i        : in    std_logic_vector(31 downto 0);
      data_valid_i     : in    std_logic;
      graydata_o       : out   std_logic_vector(7 downto 0);
      graydata_valid_o : out   std_logic
    );
  end component;

  signal sobel_res_data    : std_logic_vector(7 downto 0);
  signal sobel_res_valid   : std_logic;
  signal rst_i             : std_logic;
  signal graydata          : std_logic_vector(7 downto 0);
  signal graydata_valid    : std_logic;
  signal sobel_input_data  : std_logic_vector(71 downto 0);
  signal sobel_input_valid : std_logic;
  signal sobel_out_8       : std_logic_vector(7 downto 0);
  signal axis_prog_full_intern :std_logic;
  signal rgb2gray_data_valid :std_logic;

begin

  rst_i                  <= not rst_n_i;
  m_data_o (7 downto 0)  <= sobel_out_8;
  m_data_o(15 downto 8)  <= sobel_out_8;
  m_data_o(23 downto 16) <= sobel_out_8;
  m_data_o(31 downto 24) <= (others => '0');
  s_data_ready_o    <= not axis_prog_full_intern;

  ins_outputbuffer : component fifo_generator_0
    port map (
      wr_rst_busy    => open,
      rd_rst_busy    => open,
      s_aclk         => clk_i,
      s_aresetn      => rst_n_i,
      s_axis_tvalid  => sobel_res_valid,
      s_axis_tready  => open,
      s_axis_tdata   => sobel_res_data,
      m_axis_tvalid  => m_data_valid_o,
      m_axis_tready  => m_data_ready_i,
      m_axis_tdata   => sobel_out_8,
      axis_prog_full => axis_prog_full_intern
    );

  rgbtogray_inst : component rgbtogray
    port map (
      clk_i            => clk_i,
      rgbdata_i        => s_data_i,
      data_valid_i     => rgb2gray_data_valid,
      graydata_o       => graydata,
      graydata_valid_o => graydata_valid
    );
rgb2gray_data_valid <= s_data_valid_i and (not axis_prog_full_intern);
  kontrolle_inst : component kontrolle
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      data_i        => graydata,
      data_valid_i  => graydata_valid,
      width_logic_i => width_i,
      data_o        => sobel_input_data,
      out_valid_o   => sobel_input_valid,
      intr_o        => intr_o,
        --for debug
    wr_line_counter  =>wr_line_counter,
    rd_counter  =>rd_counter,
    stor_counter  =>stor_counter 
    );

  faltung_inst : component faltung
    port map (
      clk_i              => clk_i,
      data_i             => sobel_input_data,
      data_valid_i       => sobel_input_valid,
      sobel_data_o       => sobel_res_data,
      sobel_data_valid_o => sobel_res_valid
    );

end architecture rtl;
