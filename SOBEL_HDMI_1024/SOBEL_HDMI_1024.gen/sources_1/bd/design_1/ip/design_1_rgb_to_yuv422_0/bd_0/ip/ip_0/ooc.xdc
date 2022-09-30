# aclk {FREQ_HZ 100000000 CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0 PHASE 0.0} aclk1 {FREQ_HZ 177777771 CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1 PHASE 0.0} aclk2 {FREQ_HZ 100000000 CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0 PHASE 0.0} aclk3 {FREQ_HZ 100000000 CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0 PHASE 0.0} aclk4 {FREQ_HZ 100000000 CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0 PHASE 0.0}
# Clock Domain: design_1_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: design_1_processing_system7_0_0_FCLK_CLK1
create_clock -name aclk1 -period 5.625 [get_ports aclk1]
# Generated clocks
create_generated_clock -name aclk2 -source [get_ports aclk] -divide_by 1 [get_ports aclk2]
create_generated_clock -name aclk3 -source [get_ports aclk] -divide_by 1 [get_ports aclk3]
create_generated_clock -name aclk4 -source [get_ports aclk] -divide_by 1 [get_ports aclk4]
