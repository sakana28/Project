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
video_format { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
col_start { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
col_end { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
row_start { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
row_end { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
Y_R_value { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
Cb_G_value { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
Cr_B_value { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


