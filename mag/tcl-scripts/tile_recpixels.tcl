grid 1um 1um
set num_pix 50 
set pix_x 2
set pix_y 3
proc place_pixel {x y num} {
	box position $x $y
	getcell pixel 
	box size 1 1
	box position [expr $x + 6] [expr $y + 6]
	paint m5
	label [format "PIX%d_IN" $num]
	port make
}
proc place_coltran {j pix_width pix_length num_pixels} {
	
	box size 11.2 0.7
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 1]
	paint m4
	
	box size 11 0.5
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 0.9]
	paint via3 
	
	box size 11.2 0.7
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 1]
	paint m3
	
	box size 11 0.5
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 0.9]
	paint via2 


	box size 11.2 0.7
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 1]
	paint m2
	

	box size 8 0.85
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 1.5]
	paint m1
	
	box size 7.8 0.35
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 1]
	paint via1
	
	box size 7.8 0.3
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 1.45]
	paint mcon 

	box size 8 0.5
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 2]
	paint ndiff

	box size 8 0.75
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 1.9]
	paint li

	box size 7.8 0.3
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 1.9]
	paint ndc

	box size 8 2
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 4]
	paint nfetlvt 

	box size 8.3 2
	box position [expr $j * $pix_width + 2.55] [expr -1* [expr $num_pixels - 1] *$pix_length - 4]
	paint poly 

	box size 8 0.4 
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 4.4]
	paint ndiff 

	box size 8 1
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 5]
	paint li 


	box size 7.8 0.2
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 4.35]
	paint ndc

	box size 16 1
	box position [expr $j * $pix_width + 2.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 5.5]
	paint m1 
	paint m2
	if {$j == [expr $num_pixels-1]} {
		box size 0 0
		box position [expr $j * $pix_width + 14.7] [expr -1* [expr $num_pixels - 1] *$pix_length - 5.5]
		label ARRAY_OUT
		port make
	}
	box size 15.9 0.8
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 5.4]
	paint via1	
	
	box size 7.8 0.3
	box position [expr $j * $pix_width + 2.8] [expr -1* [expr $num_pixels - 1] *$pix_length - 4.9]
	paint mcon 

	#paint COL_SEL contact 
	
	box size 1.6 1.1
	box position [expr $j * $pix_width + 2.7 - 1.6] [expr -1* [expr $num_pixels - 1] *$pix_length - 4+0.45]
	paint poly
	
	box size 1.1 1.1
	box position [expr $j * $pix_width + 2.7 - 1.6] [expr -1* [expr $num_pixels - 1] *$pix_length - 4+0.45]
	paint li
	
	box size 1.1 1.1
	box position [expr $j * $pix_width + 2.7 - 1.6] [expr -1* [expr $num_pixels - 1] *$pix_length - 4+0.45]
	paint m1
	paint m2
	paint m3
	paint m4

	box size 0.9 1
	box position [expr $j * $pix_width + 2.7 - 1.5] [expr -1* [expr $num_pixels - 1] *$pix_length - 4+0.5]
	paint pc
	paint mcon
	paint via1
	paint via2
	paint via3

	box size 1.1 2	
	box position [expr $j * $pix_width + 2.7 - 1.6] [expr -1* [expr $num_pixels - 1] *$pix_length - 5.5]
	paint m4
	label [format "COL_SEL%d" $j]
	port make
}

proc tile_array {num_pixels_x num_pixels_y} {
	set pix_width 15 
	set pix_length 15

	set pix_num 0

	for {set i 0} {$i < $num_pixels_x} {incr i} {
		
		for {set j 0} {$j < $num_pixels_y} {incr j} {
			
			
			place_pixel [expr $j * 15-0.8] [expr -1 * $i * 15-0.8] $pix_num 
			set pix_num [expr $pix_num + 1]
			puts $pix_num
		
			if {$i == 0} {
				#VBIAS
				box size 0.35 3 
				#wire up connections at top row
				box position [expr $j * $pix_width + 2.5] $pix_length
				paint m2
			
				box size 0.45 0.45	
				box position [expr $j * $pix_width + 2.45] [expr $pix_length + 2.8]
				paint via2
				paint via3

				box size 0.55 0.55	
				box position [expr $j * $pix_width + 2.4] [expr $pix_length + 2.75]
				paint m2
				paint m3
				paint m4
				
				box size 16 0.55
				box position [expr $j * $pix_width-5] [expr $pix_length + 2.75]
				paint m4
				
				if {$j == 0} {
					
					box size 15 0.55 
					box position -15 17.75
					paint m4
					box size 0 0.55
					label VBIAS n m4
					port make
				}


				#VREF
				box size 0.35 2 
				box position [expr $j * $pix_width + 0.3] $pix_length
				paint m2
				
				box size 0.45 0.45	
				box position [expr $j * $pix_width + 0.25] [expr $pix_length + 1.8]
				paint via1

				box size 0.55 0.55	
				box position [expr $j * $pix_width + 0.2] [expr $pix_length + 1.75]
				paint m1
				paint m2
				box size 15 0.55
				box position [expr $j * $pix_width -5] [expr $pix_length + 1.75]
				paint m1
				if {$j == 0} {
					
					box position -9.7 16.75
					box size 5.25 0.55
					paint m1
					paint m2
					box position -9.6 16.8
					box size 5.1 0.45
					paint via1
					box size 5.5 0.55
					box position -15 16.75
					paint m2
					box size 0 0.5


					label VREF
					port make
				}
				#NB2
				box size 0.35 5.2 
				box position [expr $j * $pix_width + 5.1] $pix_length
				paint m2
			
				box size 15 0.55	
				box position [expr $j * $pix_width]  [expr $pix_length + 5.+0.2]
				paint m2
				
				
				if {$j == 0} {
					box size 0 0
					label NB2
					port make
				}


							}
			if {$i == [expr $num_pixels_x - 1]} {
				box size 0.75 1 
				box position [expr $j * $pix_width + 13.15] [expr -1* [expr $num_pixels_x - 1] *$pix_length - 1]
				paint m4
				label [format "PIX_OUT%d" $j]
				port make
				place_coltran $j $pix_width $pix_length $num_pixels_y
			}
			if {$j == 0} {
				
				#wire vdd
				box size 10 0.75			
				box position -10 [expr -1 * $i * $pix_length + 14.1] 
				paint m1
				
				box size 1 15
				box position -10 [expr -1 * $i * $pix_length ] 

				paint m1	
				
				if {$i == 0 } {
					box size 0 0 
					label VDD
					port make

				}
			
				#SF_IB	
				box size 7 0.45
				box position -6 [expr -1 * $i * $pix_length + 13.75] 
				paint m3
				
				box size 0.45 15
				box position -6 [expr -1 * $i*$pix_length+10]	
				paint m3
				if {$i == 0 } {
					box size 0 0
					box position -5.8 [expr -1 * $i * $pix_length + 13.75 + 15] 	
					label SF_IB
					port make	
				}


				#CSA_VREF
				box size 5 0.45	
				box position -2.4 [expr -1 * $i * $pix_length + 12.3] 
				paint m3
				
				box size 0.45 0.35		
				box position -2.35 [expr -1 * $i * $pix_length + 12.35] 
				paint via3

				box size 0.55 0.55
				box position -2.4 [expr -1 * $i * $pix_length + 12.25]
			   	paint m3
				
				box size 0.55 21
				box position -2.4 [expr -1 * $i * $pix_length-8]
				paint m4	
				box size 0 0
				if {$i == [expr $num_pixels_x -1] } {
					label CSA_VREF n m4
					port make
				}

				#NB1
				box size 4 0.45
				box position -3.8 [expr -1 * $i * $pix_length + 0.8] 
				paint m3
				

				box size 0.45 0.35		
				box position -3.7 [expr -1 * $i * $pix_length + 0.8] 
				paint via2
				
				box size 0.55 0.55
				box position -3.75 [expr -1 * $i * $pix_length + 0.7]
			   	paint m3
				
				box size 0.55 20
				box position -3.75 [expr -1 * $i * $pix_length]
				paint m2
				if {$i == 0} {
					box size 0 0
					box position -3.7 [expr -1 * $i * $pix_length + 0.8 + 17]
					label NB1 n m2
					port make
				}
				#ROW_SEL
				box size 5 0.45
				box position -2.8 [expr -1 * $i * $pix_length + 7.4] 
				paint m3
				box size 0 0

								box size 1.5 0.45
				box position -2.8 [expr -1 * $i * $pix_length + 7.4] 
				paint m2
				
				box size 1.4 0.35
				box position -2.7 [expr -1 * $i * $pix_length + 7.45] 
				paint via2 
				paint via1

				box size 8 0.45
				box position -8 [expr -1 * $i * $pix_length + 7.4] 
				paint m1

				box size 2 0.35
				box position -7.9 [expr -1 * $i * $pix_length + 7.45] 
				paint via1
				
				box size 10 0.45
				box position -15 [expr -1 * $i * $pix_length + 7.4]
			   	paint m2	
 
				box size 0 0.45 

				label [format "ROW_SEL%d" $i]
				port make
			
				#WIRE UP GRING
				if {$i == 0 } {
					box size 10 1.6
					box position -10 [expr -1 * $i * $pix_length + 14.2]
					paint m5
					box size 0 0
					label GRING
					port make

				
				}
			}
			if {$j == [expr $num_pixels_y - 1]} {
				#wire up gnd	
				box size 3 0.75
				box position [expr $num_pixels_y * $pix_width] [expr -1 * $i * $pix_length + 0.15]
				paint m1
				
				box size 1 15
				box position [expr $num_pixels_y * $pix_width+2] [expr -1 * $i * $pix_length + 0.15]
				paint m1

				if {$i == 0} {
					box size 0 0
					label GND
					port make
				}
		

			}

			}
		}	
	
	}

proc connect_opamp {num_pixels} {
	set pix_width 15 
	set pix_length 15
	box position [expr $num_pixels * $pix_width + 10] [expr -1* [expr $num_pixels - 1] *$pix_length - 5.5]
	getcell opamp_wrapper
	
	box position [expr $num_pixels * $pix_width / 2 -10] 25
	getcell bias
}
tile_array $pix_x $pix_y 
#connect_opamp $pix_x

grid 0.05um 0.05um
