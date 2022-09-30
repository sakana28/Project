--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Sun Sep  4 11:26:43 2022
--Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    hdmio_io_clk : out STD_LOGIC;
    hdmio_io_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmio_io_de : out STD_LOGIC;
    hdmio_io_hsync : out STD_LOGIC;
    hdmio_io_spdif : out STD_LOGIC;
    hdmio_io_vsync : out STD_LOGIC;
    zed_hdmi_iic_scl_io : inout STD_LOGIC;
    zed_hdmi_iic_sda_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    hdmio_io_clk : out STD_LOGIC;
    hdmio_io_vsync : out STD_LOGIC;
    hdmio_io_hsync : out STD_LOGIC;
    hdmio_io_de : out STD_LOGIC;
    hdmio_io_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmio_io_spdif : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    zed_hdmi_iic_scl_i : in STD_LOGIC;
    zed_hdmi_iic_scl_o : out STD_LOGIC;
    zed_hdmi_iic_scl_t : out STD_LOGIC;
    zed_hdmi_iic_sda_i : in STD_LOGIC;
    zed_hdmi_iic_sda_o : out STD_LOGIC;
    zed_hdmi_iic_sda_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal zed_hdmi_iic_scl_i : STD_LOGIC;
  signal zed_hdmi_iic_scl_o : STD_LOGIC;
  signal zed_hdmi_iic_scl_t : STD_LOGIC;
  signal zed_hdmi_iic_sda_i : STD_LOGIC;
  signal zed_hdmi_iic_sda_o : STD_LOGIC;
  signal zed_hdmi_iic_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      hdmio_io_clk => hdmio_io_clk,
      hdmio_io_data(15 downto 0) => hdmio_io_data(15 downto 0),
      hdmio_io_de => hdmio_io_de,
      hdmio_io_hsync => hdmio_io_hsync,
      hdmio_io_spdif => hdmio_io_spdif,
      hdmio_io_vsync => hdmio_io_vsync,
      zed_hdmi_iic_scl_i => zed_hdmi_iic_scl_i,
      zed_hdmi_iic_scl_o => zed_hdmi_iic_scl_o,
      zed_hdmi_iic_scl_t => zed_hdmi_iic_scl_t,
      zed_hdmi_iic_sda_i => zed_hdmi_iic_sda_i,
      zed_hdmi_iic_sda_o => zed_hdmi_iic_sda_o,
      zed_hdmi_iic_sda_t => zed_hdmi_iic_sda_t
    );
zed_hdmi_iic_scl_iobuf: component IOBUF
     port map (
      I => zed_hdmi_iic_scl_o,
      IO => zed_hdmi_iic_scl_io,
      O => zed_hdmi_iic_scl_i,
      T => zed_hdmi_iic_scl_t
    );
zed_hdmi_iic_sda_iobuf: component IOBUF
     port map (
      I => zed_hdmi_iic_sda_o,
      IO => zed_hdmi_iic_sda_io,
      O => zed_hdmi_iic_sda_i,
      T => zed_hdmi_iic_sda_t
    );
end STRUCTURE;
