set clock_constraint { \
    name clk \
    module v_vscaler \
    port ap_clk \
    period 5.625 \
    uncertainty 1.51875 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module v_vscaler \
            instance CTRL_s_axi_U/int_HeightIn \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module v_vscaler \
            instance CTRL_s_axi_U/int_Width \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

set one_path { \
    name conx_path_2 \
    type single_source \
    source { \
            module v_vscaler \
            instance CTRL_s_axi_U/int_HeightOut \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_2

set one_path { \
    name conx_path_3 \
    type single_source \
    source { \
            module v_vscaler \
            instance CTRL_s_axi_U/int_LineRate \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_3

set one_path { \
    name conx_path_4 \
    type single_source \
    source { \
            module v_vscaler \
            instance CTRL_s_axi_U/int_ColorMode \
            bitWidth 8 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_4

