v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1130 -800 1160 -800 {
lab=AIO[10]}
N 1260 -800 1290 -800 {
lab=AIO[9]}
N 1390 -800 1420 -800 {
lab=AIO[8]}
N 870 -690 900 -690 {
lab=AIO[2]}
C {array_output.sym} 900 -290 0 0 {name=x1}
C {devices/vsource.sym} 1000 -760 0 0 {name=V1 value=1.8 net_name=true}
C {devices/gnd.sym} 1000 -730 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 1000 -790 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1160 -740 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1130 -800 0 0 {name=l7 sig_type=std_logic lab=AIO[10]}
C {devices/vsource.sym} 1160 -770 0 0 {name=VGRING value=0}
C {devices/gnd.sym} 1290 -740 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1260 -800 0 0 {name=l9 sig_type=std_logic lab=AIO[9]}
C {devices/vsource.sym} 1290 -770 0 0 {name=VCSA value=0.35}
C {devices/gnd.sym} 1420 -740 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1390 -800 0 0 {name=l11 sig_type=std_logic lab=AIO[8]}
C {devices/vsource.sym} 1420 -770 0 0 {name=VREF value=0.6}
C {devices/lab_pin.sym} 1620 -930 1 0 {name=l154 sig_type=std_logic lab=GPIO[0]}
C {devices/vsource.sym} 1620 -900 0 0 {name=Vrow3 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1620 -870 0 0 {name=l155 lab=GND}
C {devices/lab_pin.sym} 1620 -570 1 0 {name=l156 sig_type=std_logic lab=GPIO[2]}
C {devices/vsource.sym} 1620 -540 0 0 {name=Vrow4 value="0.0 pulse(0.0 1.8 \{2*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1620 -510 0 0 {name=l157 lab=GND}
C {devices/lab_pin.sym} 2110 -940 1 0 {name=l160 sig_type=std_logic lab=GPIO[4]}
C {devices/vsource.sym} 2110 -910 0 0 {name=Vcol5 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 2110 -880 0 0 {name=l161 lab=GND}
C {devices/lab_pin.sym} 2110 -760 1 0 {name=l162 sig_type=std_logic lab=GPIO[5]}
C {devices/vsource.sym} 2110 -730 0 0 {name=Vcol6 value="0.0 pulse(0.0 1.8 \{pix_time+row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 2110 -700 0 0 {name=l163 lab=GND}
C {devices/lab_pin.sym} 1620 -750 1 0 {name=l4 sig_type=std_logic lab=GPIO[1]}
C {devices/vsource.sym} 1620 -720 0 0 {name=Vrow7 value="0.0 pulse(0.0 1.8 \{3*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1620 -690 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 2110 -700 0 0 {name=l63 lab=GND}
C {devices/lab_pin.sym} 2110 -560 1 0 {name=l64 sig_type=std_logic lab=GPIO[6]}
C {devices/vsource.sym} 2110 -530 0 0 {name=Vcol8 value="0.0 pulse(0.0 1.8 \{pix_time+2*row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 2110 -500 0 0 {name=l65 lab=GND}
C {devices/isource.sym} 390 -770 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 390 -740 0 0 {name=l16 sig_type=std_logic lab=AIO[3]}
C {devices/isource.sym} 490 -770 0 0 {name=I1 value=100u}
C {devices/vdd.sym} 490 -800 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} 490 -740 2 0 {name=l18 sig_type=std_logic lab=AIO[4]}
C {devices/isource.sym} 590 -770 0 0 {name=I2 value=80n}
C {devices/lab_pin.sym} 590 -800 0 0 {name=l20 sig_type=std_logic lab=AIO[5]}
C {devices/isource.sym} 690 -770 0 0 {name=I3 value=400n}
C {devices/vdd.sym} 690 -800 0 0 {name=I4 value=40n}
C {devices/lab_pin.sym} 690 -740 2 0 {name=l21 sig_type=std_logic lab=AIO[6]}
C {devices/isource.sym} 780 -770 0 0 {name=I5 value=40n}
C {devices/vdd.sym} 780 -800 0 0 {name=I6 value=400n}
C {devices/lab_pin.sym} 780 -740 2 0 {name=l22 sig_type=std_logic lab=AIO[7]}
C {devices/gnd.sym} 590 -740 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} 390 -800 0 0 {name=l23 lab=VDD}
C {devices/gnd.sym} 900 -630 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 870 -690 0 0 {name=l24 sig_type=std_logic lab=AIO[2]}
C {devices/vsource.sym} 900 -660 0 0 {name=VREF1 value=0.9}
C {devices/vdd.sym} 750 -450 3 0 {name=I7 value=400n}
C {devices/gnd.sym} 750 -430 1 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 750 -410 0 0 {name=l2 sig_type=std_logic lab=AIO[8]}
C {devices/lab_pin.sym} 750 -390 0 0 {name=l3 sig_type=std_logic lab=AIO[9]}
C {devices/lab_pin.sym} 750 -370 0 0 {name=l12 sig_type=std_logic lab=AIO[10]}
C {devices/lab_pin.sym} 750 -350 0 0 {name=l25 sig_type=std_logic lab=AIO[2]}
C {devices/lab_pin.sym} 750 -330 0 0 {name=l26 sig_type=std_logic lab=AIO[5]}
C {devices/lab_pin.sym} 750 -310 0 0 {name=l27 sig_type=std_logic lab=AIO[6]}
C {devices/lab_pin.sym} 750 -290 0 0 {name=l28 sig_type=std_logic lab=AIO[7]}
C {devices/lab_pin.sym} 750 -270 0 0 {name=l29 sig_type=std_logic lab=GPIO[6]}
C {devices/lab_pin.sym} 750 -250 0 0 {name=l30 sig_type=std_logic lab=GPIO[4]}
C {devices/lab_pin.sym} 750 -230 0 0 {name=l31 sig_type=std_logic lab=GPIO[5]}
C {devices/lab_pin.sym} 750 -210 0 0 {name=l32 sig_type=std_logic lab=GPIO[0]}
C {devices/lab_pin.sym} 750 -190 0 0 {name=l33 sig_type=std_logic lab=GPIO[1]}
C {devices/lab_pin.sym} 750 -170 0 0 {name=l34 sig_type=std_logic lab=GPIO[2]}
C {devices/lab_pin.sym} 750 -150 0 0 {name=l35 sig_type=std_logic lab=AIO[4]}
C {devices/lab_pin.sym} 750 -130 0 0 {name=l36 sig_type=std_logic lab=AIO[3]}
C {devices/lab_pin.sym} 1050 -450 2 0 {name=l37 sig_type=std_logic lab=test}
C {devices/code_shown.sym} 1390 -200 0 0 {name=s1
only_toplevel=false
value="
.option gmin = 1E-21
.control
save all
tran 10u 80m
plot v('aio[10]')
.endc"}
C {devices/code.sym} 1190 -200 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1640 -200 0 0 {name=SPICE only_toplevel=false value="
.param array_size = 3
.param pix_time = 1m


.param row_time = \{array_size*pix_time\}

.param col_time = \{array_size*row_time\}


"}
