-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun Sep  4 11:27:56 2022
-- Host        : benchmarker-HP-ZBook-Fury-15-G7-Mobile-Workstation running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.gen/sources_1/bd/design_1/ip/design_1_sobel_v1_0_0_0/design_1_sobel_v1_0_0_0_stub.vhdl
-- Design      : design_1_sobel_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_sobel_v1_0_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC;
    s_data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_data_valid_i : in STD_LOGIC;
    s_data_ready_o : out STD_LOGIC;
    m_data_valid_o : out STD_LOGIC;
    m_data_ready_i : in STD_LOGIC;
    m_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    intr_o : out STD_LOGIC;
    width : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_line_counter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_counter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    stor_counter : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );

end design_1_sobel_v1_0_0_0;

architecture stub of design_1_sobel_v1_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_n_i,s_data_i[31:0],s_data_valid_i,s_data_ready_o,m_data_valid_o,m_data_ready_i,m_data_o[31:0],intr_o,width[9:0],wr_line_counter[9:0],rd_counter[9:0],stor_counter[11:0],s_axi_lite_aclk,s_axi_lite_aresetn,s_axi_lite_awaddr[3:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[3:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sobel_v1_0,Vivado 2022.1";
begin
end;
