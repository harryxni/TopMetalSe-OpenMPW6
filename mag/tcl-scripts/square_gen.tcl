grid 1um 1um
tech unlock glass
proc gen_square {l origin_x origin_y {layer m5}} {
	set sin60 0.866 
	set cos60 0.5

	set sin30 0.5
	set cos30 0.866



	set p1_x [expr  $origin_x]
	set p1_y [expr $l + $origin_y]
	

	set p2_x [expr $p1_x + $l]
	set p2_y [expr $p1_y]

	set p3_x [expr $p2_x  ]
	set p3_y [expr $origin_y]


	polygon $layer $origin_x $origin_y $p1_x $p1_y $p2_x $p2_y $p3_x $p3_y 

}

proc square_shell {l w origin_x origin_y} {
	gen_square $l $origin_x $origin_y
	
	set inner_o_x [expr $origin_x+$w]
	set inner_o_y [expr $origin_y+$w]

	set inner_l [expr $l - 2*$w]
	gen_square $inner_l $inner_o_x $inner_o_y via4
	select
	erase via4
}
set pix_side_length 15 
set gring_width 1.6

set e_to_gring_length 3.2
set origin_x 50
set origin_y 50

square_shell $pix_side_length $gring_width $origin_x 50

set electrode_l [expr $pix_side_length - 2*$e_to_gring_length]

gen_square [expr $electrode_l] [expr $e_to_gring_length + $origin_x] [expr $e_to_gring_length + $origin_y]

set glass_l [expr $electrode_l-2]
gen_square [expr $glass_l] [expr $e_to_gring_length+1 + $origin_x] [expr $e_to_gring_length+1+$origin_y] glass

