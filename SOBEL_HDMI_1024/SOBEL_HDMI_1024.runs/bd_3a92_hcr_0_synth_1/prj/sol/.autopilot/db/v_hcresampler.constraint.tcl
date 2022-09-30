set clock_constraint { \
    name clk \
    module v_hcresampler \
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
            module v_hcresampler \
            instance CTRL_s_axi_U/int_width \
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
            module v_hcresampler \
            instance CTRL_s_axi_U/int_height \
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
            module v_hcresampler \
            instance CTRL_s_axi_U/int_input_video_format \
            bitWidth 8 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_2

set one_path { \
    name conx_path_3 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_output_video_format \
            bitWidth 8 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_3

set one_path { \
    name conx_path_4 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_0_0 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_4

set one_path { \
    name conx_path_5 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_0_1 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_5

set one_path { \
    name conx_path_6 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_0_2 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_6

set one_path { \
    name conx_path_7 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_0_3 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_7

set one_path { \
    name conx_path_8 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_1_0 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_8

set one_path { \
    name conx_path_9 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_1_1 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_9

set one_path { \
    name conx_path_10 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_1_2 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_10

set one_path { \
    name conx_path_11 \
    type single_source \
    source { \
            module v_hcresampler \
            instance CTRL_s_axi_U/int_coefs_1_3 \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_11

