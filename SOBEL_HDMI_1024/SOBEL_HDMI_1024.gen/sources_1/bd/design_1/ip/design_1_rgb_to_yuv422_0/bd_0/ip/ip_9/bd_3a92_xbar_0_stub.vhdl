-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 29 12:26:33 2022
-- Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_rgb_to_yuv422_0/bd_0/ip/ip_9/bd_3a92_xbar_0_stub.vhdl
-- Design      : bd_3a92_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_3a92_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 239 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end bd_3a92_xbar_0;

architecture stub of bd_3a92_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid[9:0],s_axis_tready[9:0],s_axis_tdata[239:0],s_axis_tstrb[29:0],s_axis_tkeep[29:0],s_axis_tlast[9:0],s_axis_tid[9:0],s_axis_tdest[39:0],s_axis_tuser[9:0],m_axis_tvalid[9:0],m_axis_tready[9:0],m_axis_tdata[239:0],m_axis_tstrb[29:0],m_axis_tkeep[29:0],m_axis_tlast[9:0],m_axis_tid[9:0],m_axis_tdest[39:0],m_axis_tuser[9:0],s_axi_ctrl_aclk,s_axi_ctrl_aresetn,s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_awaddr[6:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_wdata[31:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_araddr[6:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_switch_v1_1_26_axis_switch,Vivado 2022.1";
begin
end;
