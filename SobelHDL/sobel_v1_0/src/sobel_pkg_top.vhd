library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sobel_v1_0 is
  generic (
    -- Users to add parameters here

    -- User parameters ends
    -- Do not modify the parameters beyond this line

    -- Parameters of Axi Slave Bus Interface S_AXI_Lite
    c_s_axi_lite_data_width : integer := 32;
    c_s_axi_lite_addr_width : integer := 4
  );
  port (
    -- Users to add ports here
    clk_i          : in    std_logic;
    rst_n_i        : in    std_logic;

    s_data_i       : in    std_logic_vector(31 downto 0);
    s_data_valid_i : in    std_logic; -- from DMA mm2s
    s_data_ready_o : out   std_logic; -- to DMA mm2s, connect with programmable full
    m_data_valid_o : out   std_logic; -- to DMA s2mm
    m_data_ready_i : in    std_logic; -- from DMA s2mm,connect with output FIFO M_AXIS
    m_data_o       : out   std_logic_vector(31 downto 0);
    intr_o         : out   std_logic;
    width          : out std_logic_vector(9 downto 0);
         --for debug
    wr_line_counter :out std_logic_vector (9 downto 0);
    rd_counter :out std_logic_vector (9 downto 0);
    stor_counter :out std_logic_vector (11 downto 0);
    -- User ports ends
    -- Do not modify the ports beyond this line

    -- Ports of Axi Slave Bus Interface S_AXI_Lite
    s_axi_lite_aclk    : in    std_logic;
    s_axi_lite_aresetn : in    std_logic;
    s_axi_lite_awaddr  : in    std_logic_vector(c_s_axi_lite_addr_width - 1 downto 0);
    s_axi_lite_awprot  : in    std_logic_vector(2 downto 0);
    s_axi_lite_awvalid : in    std_logic;
    s_axi_lite_awready : out   std_logic;
    s_axi_lite_wdata   : in    std_logic_vector(c_s_axi_lite_data_width - 1 downto 0);
    s_axi_lite_wstrb   : in    std_logic_vector((c_s_axi_lite_data_width / 8) - 1 downto 0);
    s_axi_lite_wvalid  : in    std_logic;
    s_axi_lite_wready  : out   std_logic;
    s_axi_lite_bresp   : out   std_logic_vector(1 downto 0);
    s_axi_lite_bvalid  : out   std_logic;
    s_axi_lite_bready  : in    std_logic;
    s_axi_lite_araddr  : in    std_logic_vector(c_s_axi_lite_addr_width - 1 downto 0);
    s_axi_lite_arprot  : in    std_logic_vector(2 downto 0);
    s_axi_lite_arvalid : in    std_logic;
    s_axi_lite_arready : out   std_logic;
    s_axi_lite_rdata   : out   std_logic_vector(c_s_axi_lite_data_width - 1 downto 0);
    s_axi_lite_rresp   : out   std_logic_vector(1 downto 0);
    s_axi_lite_rvalid  : out   std_logic;
    s_axi_lite_rready  : in    std_logic
  );
end entity sobel_v1_0;

architecture arch_imp of sobel_v1_0 is

  -- component declaration
  component sobel_v1_0_s_axi_lite is
    generic (
      c_s_axi_data_width : integer  := 32;
      c_s_axi_addr_width : integer  := 4
    );
    port (
      s_axi_aclk    : in    std_logic;
      s_axi_aresetn : in    std_logic;
      s_axi_awaddr  : in    std_logic_vector(c_s_axi_addr_width - 1 downto 0);
      s_axi_awprot  : in    std_logic_vector(2 downto 0);
      s_axi_awvalid : in    std_logic;
      s_axi_awready : out   std_logic;
      s_axi_wdata   : in    std_logic_vector(c_s_axi_data_width - 1 downto 0);
      s_axi_wstrb   : in    std_logic_vector((c_s_axi_data_width / 8) - 1 downto 0);
      s_axi_wvalid  : in    std_logic;
      s_axi_wready  : out   std_logic;
      s_axi_bresp   : out   std_logic_vector(1 downto 0);
      s_axi_bvalid  : out   std_logic;
      s_axi_bready  : in    std_logic;
      s_axi_araddr  : in    std_logic_vector(c_s_axi_addr_width - 1 downto 0);
      s_axi_arprot  : in    std_logic_vector(2 downto 0);
      s_axi_arvalid : in    std_logic;
      s_axi_arready : out   std_logic;
      s_axi_rdata   : out   std_logic_vector(c_s_axi_data_width - 1 downto 0);
      s_axi_rresp   : out   std_logic_vector(1 downto 0);
      s_axi_rvalid  : out   std_logic;
      s_axi_rready  : in    std_logic;
      width         : out   std_logic_vector(9 downto 0)
    );
  end component sobel_v1_0_s_axi_lite;

  component sobel_top
    port (
    clk_i : in std_logic;
    rst_n_i : in std_logic;
    width_i : in std_logic_vector(9 downto 0);
    s_data_i : in std_logic_vector(31 downto 0);
    s_data_valid_i : in std_logic;
    s_data_ready_o : out std_logic;
    m_data_valid_o : out std_logic;
    m_data_ready_i : in std_logic;
    m_data_o : out std_logic_vector(31 downto 0);
    intr_o : out std_logic;
         --for debug
    wr_line_counter :out std_logic_vector (9 downto 0);
    rd_counter :out std_logic_vector (9 downto 0);
    stor_counter :out std_logic_vector (11 downto 0)
  );
end component;


  signal width_intern : std_logic_vector(9 downto 0);

begin

  -- Instantiation of Axi Bus Interface S_AXI_Lite
  sobel_v1_0_s_axi_lite_inst : component sobel_v1_0_s_axi_lite
    generic map (
      c_s_axi_data_width => c_s_axi_lite_data_width,
      c_s_axi_addr_width => c_s_axi_lite_addr_width
    )
    port map (
      s_axi_aclk    => s_axi_lite_aclk,
      s_axi_aresetn => s_axi_lite_aresetn,
      s_axi_awaddr  => s_axi_lite_awaddr,
      s_axi_awprot  => s_axi_lite_awprot,
      s_axi_awvalid => s_axi_lite_awvalid,
      s_axi_awready => s_axi_lite_awready,
      s_axi_wdata   => s_axi_lite_wdata,
      s_axi_wstrb   => s_axi_lite_wstrb,
      s_axi_wvalid  => s_axi_lite_wvalid,
      s_axi_wready  => s_axi_lite_wready,
      s_axi_bresp   => s_axi_lite_bresp,
      s_axi_bvalid  => s_axi_lite_bvalid,
      s_axi_bready  => s_axi_lite_bready,
      s_axi_araddr  => s_axi_lite_araddr,
      s_axi_arprot  => s_axi_lite_arprot,
      s_axi_arvalid => s_axi_lite_arvalid,
      s_axi_arready => s_axi_lite_arready,
      s_axi_rdata   => s_axi_lite_rdata,
      s_axi_rresp   => s_axi_lite_rresp,
      s_axi_rvalid  => s_axi_lite_rvalid,
      s_axi_rready  => s_axi_lite_rready,
      width => width_intern
    );

-- Add user logic here
sobel_top_inst : sobel_top
  port map (
    clk_i => clk_i,
    rst_n_i => rst_n_i,
    width_i => width_intern,
    s_data_i => s_data_i,
    s_data_valid_i => s_data_valid_i,
    s_data_ready_o => s_data_ready_o,
    m_data_valid_o => m_data_valid_o,
    m_data_ready_i => m_data_ready_i,
    m_data_o => m_data_o,
    intr_o => intr_o,
         --for debug
    wr_line_counter =>wr_line_counter,
    rd_counter =>rd_counter ,
    stor_counter =>stor_counter
  );
width <= width_intern;
-- User logic ends

end architecture arch_imp;
