#8.7 side length for 15um pixel pitch
set pitch 15
set height 5
set gring_width 2 

set e_to_gring_length 4.6 


drc off
grid 1um 1um
#tech unlock glass
proc gen_hex {pix_pitch pix_height {origin_x 0} {origin_y 0} {layer m5}} {
	
	set p1_x [expr $origin_x]
	set p1_y [expr $origin_y + $pix_height]
	
	set p2_x [expr $p1_x + $pix_pitch/2]
	set p2_y [expr $p1_y + $pix_pitch/2]

	set p3_x [expr $p2_x + $pix_pitch/2]
	set p3_y [expr $p1_y]

	set p4_x [expr $p3_x]
	set p4_y [expr $origin_y]

	set p5_x [expr $p2_x]
	set p5_y [expr $origin_y - $pix_pitch/2]

	polygon $layer $origin_x $origin_y $p1_x $p1_y $p2_x $p2_y $p3_x $p3_y $p4_x $p4_y $p5_x $p5_y

}

proc hex_shell {pitch height width origin_x origin_y} {
	gen_hex $pitch $height $origin_x $origin_y
	
	set inner_pitch [expr $pitch - 2 * $width ]

	gen_hex $inner_pitch $height [expr $origin_x+$width] $origin_y via4
	select
	erase via4
}

hex_shell $pitch $height $gring_width 0 0

#set electrode_l [expr $pix_side_length - $e_to_gring_length]

#gen_hex [expr $electrode_l] [expr $e_to_gring_length] 0

#set glass_l [expr $pix_side_length - $e_to_gring_length-1]
#gen_hex [expr $glass_l] [expr $e_to_gring_length+1] 0 glass

#gen_hex $pitch $height 
