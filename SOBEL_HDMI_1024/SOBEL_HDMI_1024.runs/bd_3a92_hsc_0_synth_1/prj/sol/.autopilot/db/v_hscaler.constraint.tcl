set clock_constraint { \
    name clk \
    module v_hscaler \
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
            module v_hscaler \
            instance CTRL_s_axi_U/int_Height \
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
            module v_hscaler \
            instance CTRL_s_axi_U/int_WidthIn \
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
            module v_hscaler \
            instance CTRL_s_axi_U/int_WidthOut \
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
            module v_hscaler \
            instance CTRL_s_axi_U/int_PixelRate \
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
            module v_hscaler \
            instance CTRL_s_axi_U/int_ColorModeOut \
            bitWidth 8 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_4

