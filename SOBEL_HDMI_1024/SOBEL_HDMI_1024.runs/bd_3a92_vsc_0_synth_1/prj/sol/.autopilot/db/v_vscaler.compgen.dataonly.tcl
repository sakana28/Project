# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
HeightIn { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
Width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
HeightOut { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
LineRate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
ColorMode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
vfltCoeff { 
	dir I
	width 16
	depth 384
	mode ap_memory
	offset 2048
	offset_end 3071
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


