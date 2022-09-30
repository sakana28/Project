# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
input_video_format { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
output_video_format { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
coefs_0_0 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
coefs_0_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
coefs_0_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
coefs_0_3 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
coefs_1_0 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
coefs_1_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
coefs_1_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
coefs_1_3 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


