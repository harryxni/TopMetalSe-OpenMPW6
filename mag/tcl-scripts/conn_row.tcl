grid 1um 1um
proc place_cont {x y} {
	box position $x $y
	box size 26 0.3 
	box position $x $y 
	paint m2
	box size 0.5 5
	box position [expr $x + 25] [expr $y -5]
	paint m2
}

for {set i 19} {$i<37} {incr i} {
	goto [format "shift_register_0/ROW_SEL\[%d]" $i]
	box size 26 0.3 
	paint m2
	move s 11.5um
	move e 25um
	box size 0.5 11.5 
	paint m2


}
grid 0.05um 0.05um
