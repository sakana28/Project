// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_switch:1.1
// IP Revision: 26

(* X_CORE_INFO = "axis_switch_v1_1_26_axis_switch,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "bd_3a92_xbar_0,axis_switch_v1_1_26_axis_switch,{}" *)
(* CORE_GENERATION_INFO = "bd_3a92_xbar_0,axis_switch_v1_1_26_axis_switch,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=26,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,C_FAMILY=zynq,C_NUM_SI_SLOTS=10,C_LOG_SI_SLOTS=4,C_NUM_MI_SLOTS=10,C_AXIS_TDATA_WIDTH=24,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=4,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000011111111,C_ARB_ON_MAX_XFERS=1,C_ARB_ON_NUM_CYCLES=0,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=1,C_ARB_ALGO\
RITHM=0,C_OUTPUT_REG=0,C_DECODER_REG=1,C_M_AXIS_CONNECTIVITY_ARRAY=0b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111,C_M_AXIS_BASETDEST_ARRAY=0b1001100001110110010101000011001000010000,C_M_AXIS_HIGHTDEST_ARRAY=0b1001100001110110010101000011001000010000,C_ROUTING_MODE=1,C_S_AXI_CTRL_ADDR_WIDTH=7,C_S_AXI_CTRL_DATA_WIDTH=32,C_COMMON_CLOCK=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_3a92_xbar_0 (
  aclk,
  aresetn,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tstrb,
  s_axis_tkeep,
  s_axis_tlast,
  s_axis_tid,
  s_axis_tdest,
  s_axis_tuser,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tstrb,
  m_axis_tkeep,
  m_axis_tlast,
  m_axis_tid,
  m_axis_tdest,
  m_axis_tuser,
  s_axi_ctrl_aclk,
  s_axi_ctrl_aresetn,
  s_axi_ctrl_awvalid,
  s_axi_ctrl_awready,
  s_axi_ctrl_awaddr,
  s_axi_ctrl_wvalid,
  s_axi_ctrl_wready,
  s_axi_ctrl_wdata,
  s_axi_ctrl_bvalid,
  s_axi_ctrl_bready,
  s_axi_ctrl_bresp,
  s_axi_ctrl_arvalid,
  s_axi_ctrl_arready,
  s_axi_ctrl_araddr,
  s_axi_ctrl_rvalid,
  s_axi_ctrl_rready,
  s_axi_ctrl_rdata,
  s_axi_ctrl_rresp
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 177777771, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TVALID [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TVALID [0:0] [7:7], xilinx.com:interface:axis:1.\
0 S08_AXIS TVALID [0:0] [8:8], xilinx.com:interface:axis:1.0 S09_AXIS TVALID [0:0] [9:9]" *)
input wire [9 : 0] s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TREADY [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TREADY [0:0] [7:7], xilinx.com:interface:axis:1.\
0 S08_AXIS TREADY [0:0] [8:8], xilinx.com:interface:axis:1.0 S09_AXIS TREADY [0:0] [9:9]" *)
output wire [9 : 0] s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [23:0] [23:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [23:0] [47:24], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [23:0] [71:48], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [23:0] [95:72], xilinx.com:interface:axis:1.0 S04_AXIS TDATA [23:0] [119:96], xilinx.com:interface:axis:1.0 S05_AXIS TDATA [23:0] [143:120], xilinx.com:interface:axis:1.0 S06_AXIS TDATA [23:0] [167:144], xilinx.com:interface:axis:1.0 S07_AXIS TDATA [23:0] [191:168], xilinx\
.com:interface:axis:1.0 S08_AXIS TDATA [23:0] [215:192], xilinx.com:interface:axis:1.0 S09_AXIS TDATA [23:0] [239:216]" *)
input wire [239 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB [2:0] [2:0], xilinx.com:interface:axis:1.0 S01_AXIS TSTRB [2:0] [5:3], xilinx.com:interface:axis:1.0 S02_AXIS TSTRB [2:0] [8:6], xilinx.com:interface:axis:1.0 S03_AXIS TSTRB [2:0] [11:9], xilinx.com:interface:axis:1.0 S04_AXIS TSTRB [2:0] [14:12], xilinx.com:interface:axis:1.0 S05_AXIS TSTRB [2:0] [17:15], xilinx.com:interface:axis:1.0 S06_AXIS TSTRB [2:0] [20:18], xilinx.com:interface:axis:1.0 S07_AXIS TSTRB [2:0] [23:21], xilinx.com:interface:axis:1\
.0 S08_AXIS TSTRB [2:0] [26:24], xilinx.com:interface:axis:1.0 S09_AXIS TSTRB [2:0] [29:27]" *)
input wire [29 : 0] s_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [2:0] [2:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [2:0] [5:3], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [2:0] [8:6], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [2:0] [11:9], xilinx.com:interface:axis:1.0 S04_AXIS TKEEP [2:0] [14:12], xilinx.com:interface:axis:1.0 S05_AXIS TKEEP [2:0] [17:15], xilinx.com:interface:axis:1.0 S06_AXIS TKEEP [2:0] [20:18], xilinx.com:interface:axis:1.0 S07_AXIS TKEEP [2:0] [23:21], xilinx.com:interface:axis:1\
.0 S08_AXIS TKEEP [2:0] [26:24], xilinx.com:interface:axis:1.0 S09_AXIS TKEEP [2:0] [29:27]" *)
input wire [29 : 0] s_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TLAST [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TLAST [0:0] [7:7], xilinx.com:interface:axis:1.0 S08_AX\
IS TLAST [0:0] [8:8], xilinx.com:interface:axis:1.0 S09_AXIS TLAST [0:0] [9:9]" *)
input wire [9 : 0] s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TID [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TID [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TID [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TID [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TID [0:0] [7:7], xilinx.com:interface:axis:1.0 S08_AXIS TID [0:0] [8:\
8], xilinx.com:interface:axis:1.0 S09_AXIS TID [0:0] [9:9]" *)
input wire [9 : 0] s_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [3:0] [7:4], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [3:0] [11:8], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [3:0] [15:12], xilinx.com:interface:axis:1.0 S04_AXIS TDEST [3:0] [19:16], xilinx.com:interface:axis:1.0 S05_AXIS TDEST [3:0] [23:20], xilinx.com:interface:axis:1.0 S06_AXIS TDEST [3:0] [27:24], xilinx.com:interface:axis:1.0 S07_AXIS TDEST [3:0] [31:28], xilinx.com:interface:axis\
:1.0 S08_AXIS TDEST [3:0] [35:32], xilinx.com:interface:axis:1.0 S09_AXIS TDEST [3:0] [39:36]" *)
input wire [39 : 0] s_axis_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_\
METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S02_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_s\
ystem7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S04_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S05_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CL\
K_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S06_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S07_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FR\
EQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S08_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S09_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1\
, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TUSER [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TUSER [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TUSER [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TUSER [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TUSER [0:0] [7:7], xilinx.com:interface:axis:1.0 S08_AX\
IS TUSER [0:0] [8:8], xilinx.com:interface:axis:1.0 S09_AXIS TUSER [0:0] [9:9]" *)
input wire [9 : 0] s_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TVALID [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TVALID [0:0] [7:7], xilinx.com:interface:axis:1.\
0 M08_AXIS TVALID [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TVALID [0:0] [9:9]" *)
output wire [9 : 0] m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TREADY [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TREADY [0:0] [7:7], xilinx.com:interface:axis:1.\
0 M08_AXIS TREADY [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TREADY [0:0] [9:9]" *)
input wire [9 : 0] m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [23:0] [23:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [23:0] [47:24], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [23:0] [71:48], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [23:0] [95:72], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [23:0] [119:96], xilinx.com:interface:axis:1.0 M05_AXIS TDATA [23:0] [143:120], xilinx.com:interface:axis:1.0 M06_AXIS TDATA [23:0] [167:144], xilinx.com:interface:axis:1.0 M07_AXIS TDATA [23:0] [191:168], xilinx\
.com:interface:axis:1.0 M08_AXIS TDATA [23:0] [215:192], xilinx.com:interface:axis:1.0 M09_AXIS TDATA [23:0] [239:216]" *)
output wire [239 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB [2:0] [2:0], xilinx.com:interface:axis:1.0 M01_AXIS TSTRB [2:0] [5:3], xilinx.com:interface:axis:1.0 M02_AXIS TSTRB [2:0] [8:6], xilinx.com:interface:axis:1.0 M03_AXIS TSTRB [2:0] [11:9], xilinx.com:interface:axis:1.0 M04_AXIS TSTRB [2:0] [14:12], xilinx.com:interface:axis:1.0 M05_AXIS TSTRB [2:0] [17:15], xilinx.com:interface:axis:1.0 M06_AXIS TSTRB [2:0] [20:18], xilinx.com:interface:axis:1.0 M07_AXIS TSTRB [2:0] [23:21], xilinx.com:interface:axis:1\
.0 M08_AXIS TSTRB [2:0] [26:24], xilinx.com:interface:axis:1.0 M09_AXIS TSTRB [2:0] [29:27]" *)
output wire [29 : 0] m_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [2:0] [2:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [2:0] [5:3], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [2:0] [8:6], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [2:0] [11:9], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [2:0] [14:12], xilinx.com:interface:axis:1.0 M05_AXIS TKEEP [2:0] [17:15], xilinx.com:interface:axis:1.0 M06_AXIS TKEEP [2:0] [20:18], xilinx.com:interface:axis:1.0 M07_AXIS TKEEP [2:0] [23:21], xilinx.com:interface:axis:1\
.0 M08_AXIS TKEEP [2:0] [26:24], xilinx.com:interface:axis:1.0 M09_AXIS TKEEP [2:0] [29:27]" *)
output wire [29 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TLAST [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TLAST [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AX\
IS TLAST [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TLAST [0:0] [9:9]" *)
output wire [9 : 0] m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TID [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TID [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TID [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TID [0:0] [8:\
8], xilinx.com:interface:axis:1.0 M09_AXIS TID [0:0] [9:9]" *)
output wire [9 : 0] m_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [3:0] [11:8], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [3:0] [15:12], xilinx.com:interface:axis:1.0 M04_AXIS TDEST [3:0] [19:16], xilinx.com:interface:axis:1.0 M05_AXIS TDEST [3:0] [23:20], xilinx.com:interface:axis:1.0 M06_AXIS TDEST [3:0] [27:24], xilinx.com:interface:axis:1.0 M07_AXIS TDEST [3:0] [31:28], xilinx.com:interface:axis\
:1.0 M08_AXIS TDEST [3:0] [35:32], xilinx.com:interface:axis:1.0 M09_AXIS TDEST [3:0] [39:36]" *)
output wire [39 : 0] m_axis_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_\
METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_s\
ystem7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M04_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M05_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CL\
K_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M06_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M07_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FR\
EQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M08_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M09_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1\
, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 177777771, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TUSER [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TUSER [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TUSER [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TUSER [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TUSER [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AX\
IS TUSER [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TUSER [0:0] [9:9]" *)
output wire [9 : 0] m_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *)
input wire s_axi_ctrl_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *)
input wire s_axi_ctrl_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *)
input wire s_axi_ctrl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *)
output wire s_axi_ctrl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *)
input wire [6 : 0] s_axi_ctrl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *)
input wire s_axi_ctrl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *)
output wire s_axi_ctrl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *)
input wire [31 : 0] s_axi_ctrl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *)
output wire s_axi_ctrl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *)
input wire s_axi_ctrl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *)
output wire [1 : 0] s_axi_ctrl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *)
input wire s_axi_ctrl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *)
output wire s_axi_ctrl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *)
input wire [6 : 0] s_axi_ctrl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *)
output wire s_axi_ctrl_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *)
input wire s_axi_ctrl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *)
output wire [31 : 0] s_axi_ctrl_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *)
output wire [1 : 0] s_axi_ctrl_rresp;

  axis_switch_v1_1_26_axis_switch #(
    .C_FAMILY("zynq"),
    .C_NUM_SI_SLOTS(10),
    .C_LOG_SI_SLOTS(4),
    .C_NUM_MI_SLOTS(10),
    .C_AXIS_TDATA_WIDTH(24),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(4),
    .C_AXIS_TUSER_WIDTH(1),
    .C_AXIS_SIGNAL_SET(32'B00000000000000000000000011111111),
    .C_ARB_ON_MAX_XFERS(1),
    .C_ARB_ON_NUM_CYCLES(0),
    .C_ARB_ON_TLAST(0),
    .C_INCLUDE_ARBITER(1),
    .C_ARB_ALGORITHM(0),
    .C_OUTPUT_REG(0),
    .C_DECODER_REG(1),
    .C_M_AXIS_CONNECTIVITY_ARRAY(100'B1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111),
    .C_M_AXIS_BASETDEST_ARRAY(40'B1001100001110110010101000011001000010000),
    .C_M_AXIS_HIGHTDEST_ARRAY(40'B1001100001110110010101000011001000010000),
    .C_ROUTING_MODE(1),
    .C_S_AXI_CTRL_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_COMMON_CLOCK(0)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .aclken(1'H1),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tstrb(s_axis_tstrb),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tid(s_axis_tid),
    .s_axis_tdest(s_axis_tdest),
    .s_axis_tuser(s_axis_tuser),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(m_axis_tstrb),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tid(m_axis_tid),
    .m_axis_tdest(m_axis_tdest),
    .m_axis_tuser(m_axis_tuser),
    .arb_req(),
    .arb_done(),
    .arb_gnt(100'H0000000000000000000000000),
    .arb_sel(40'H0000000000),
    .arb_last(),
    .arb_id(),
    .arb_dest(),
    .arb_user(),
    .s_req_suppress(10'H000),
    .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
    .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
    .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
    .s_axi_ctrl_awready(s_axi_ctrl_awready),
    .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
    .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
    .s_axi_ctrl_wready(s_axi_ctrl_wready),
    .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
    .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
    .s_axi_ctrl_bready(s_axi_ctrl_bready),
    .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
    .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
    .s_axi_ctrl_arready(s_axi_ctrl_arready),
    .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
    .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
    .s_axi_ctrl_rready(s_axi_ctrl_rready),
    .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
    .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
    .s_decode_err()
  );
endmodule
