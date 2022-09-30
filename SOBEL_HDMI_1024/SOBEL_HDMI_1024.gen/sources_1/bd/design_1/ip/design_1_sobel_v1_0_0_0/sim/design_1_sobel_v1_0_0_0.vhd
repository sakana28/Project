-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:sobel_v1_0:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_sobel_v1_0_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_n_i : IN STD_LOGIC;
    s_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_data_valid_i : IN STD_LOGIC;
    s_data_ready_o : OUT STD_LOGIC;
    m_data_valid_o : OUT STD_LOGIC;
    m_data_ready_i : IN STD_LOGIC;
    m_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    intr_o : OUT STD_LOGIC;
    width : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    wr_line_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rd_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    stor_counter : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_lite_aclk : IN STD_LOGIC;
    s_axi_lite_aresetn : IN STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rready : IN STD_LOGIC
  );
END design_1_sobel_v1_0_0_0;

ARCHITECTURE design_1_sobel_v1_0_0_0_arch OF design_1_sobel_v1_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_sobel_v1_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT sobel_v1_0 IS
    GENERIC (
      c_s_axi_lite_data_width : INTEGER;
      c_s_axi_lite_addr_width : INTEGER
    );
    PORT (
      clk_i : IN STD_LOGIC;
      rst_n_i : IN STD_LOGIC;
      s_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_data_valid_i : IN STD_LOGIC;
      s_data_ready_o : OUT STD_LOGIC;
      m_data_valid_o : OUT STD_LOGIC;
      m_data_ready_i : IN STD_LOGIC;
      m_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      intr_o : OUT STD_LOGIC;
      width : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      wr_line_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      rd_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      stor_counter : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi_lite_aclk : IN STD_LOGIC;
      s_axi_lite_aresetn : IN STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rready : IN STD_LOGIC
    );
  END COMPONENT sobel_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_i: SIGNAL IS "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_i: SIGNAL IS "xilinx.com:signal:clock:1.0 axis_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF intr_o: SIGNAL IS "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF intr_o: SIGNAL IS "xilinx.com:signal:interrupt:1.0 intr INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF m_data_o: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_data_ready_i: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_data_valid_o: SIGNAL IS "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_data_valid_o: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n_i: SIGNAL IS "XIL_INTERFACENAME axis_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n_i: SIGNAL IS "xilinx.com:signal:reset:1.0 axis_rstn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THRE" & 
"ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_data_i: SIGNAL IS "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_data_i: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_data_ready_o: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_data_valid_i: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
BEGIN
  U0 : sobel_v1_0
    GENERIC MAP (
      c_s_axi_lite_data_width => 32,
      c_s_axi_lite_addr_width => 4
    )
    PORT MAP (
      clk_i => clk_i,
      rst_n_i => rst_n_i,
      s_data_i => s_data_i,
      s_data_valid_i => s_data_valid_i,
      s_data_ready_o => s_data_ready_o,
      m_data_valid_o => m_data_valid_o,
      m_data_ready_i => m_data_ready_i,
      m_data_o => m_data_o,
      intr_o => intr_o,
      width => width,
      wr_line_counter => wr_line_counter,
      rd_counter => rd_counter,
      stor_counter => stor_counter,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_awprot => s_axi_lite_awprot,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_wstrb => s_axi_lite_wstrb,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_arprot => s_axi_lite_arprot,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rready => s_axi_lite_rready
    );
END design_1_sobel_v1_0_0_0_arch;
