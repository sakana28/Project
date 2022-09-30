# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
Height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
WidthIn { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
WidthOut { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ColorMode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
PixelRate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
ColorModeOut { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
hfltCoeff { 
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
phasesH { 
	dir I
	width 9
	depth 1920
	mode ap_memory
	offset 16384
	offset_end 20479
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


