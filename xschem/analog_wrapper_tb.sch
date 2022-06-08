v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -290 510 -290 { lab=#net1}
N 300 -250 430 -250 { lab=GND}
N 300 -210 400 -210 { lab=VDD}
N 300 10 450 10 { lab=AIO[10:0]}
N 300 30 470 30 { lab=#net2}
N 300 50 410 50 { lab=#net3}
N 400 -210 480 -210 { lab=VDD}
N 300 -270 400 -270 { lab=#net4}
N 300 -230 400 -230 { lab=#net5}
N 300 -190 400 -190 { lab=#net6}
N 300 -190 400 -190 { lab=#net6}
N 300 -170 400 -170 { lab=#net7}
N 290 -150 390 -150 { lab=#net8}
N 290 -130 390 -130 { lab=#net9}
N 290 -110 390 -110 { lab=#net10}
N 300 -90 400 -90 { lab=#net11}
N 300 -10 400 -10 { lab=#net12}
N 300 70 400 70 { lab=#net13}
N -60 -290 -0 -290 { lab=#net14}
N -60 -270 0 -270 { lab=#net15}
N -60 -250 0 -250 { lab=#net16}
N -60 -230 0 -230 { lab=#net17}
N -60 -210 0 -210 { lab=#net18}
N -60 -210 0 -210 { lab=#net18}
N -60 -190 0 -190 { lab=#net19}
N -60 -190 0 -190 { lab=#net19}
N -60 -170 0 -170 { lab=#net20}
N -60 -150 0 -150 { lab=#net21}
N -60 -130 0 -130 { lab=#net22}
N -60 -110 0 -110 { lab=#net23}
N -60 -90 0 -90 { lab=#net24}
N -60 -70 0 -70 { lab=#net25}
N -60 -50 0 -50 { lab=#net26}
N 300 -70 400 -70 {
lab=#net27}
N 300 -50 400 -50 {
lab=#net28}
N 300 -30 400 -30 {
lab=GPIO[17:0]}
N 570 -570 600 -570 {
lab=AIO[2]}
N 700 -570 730 -570 {
lab=AIO[10]}
N 830 -570 860 -570 {
lab=AIO[9]}
N 310 -460 340 -460 {
lab=AIO[8]}
C {user_analog_project_wrapper.sym} 150 -110 0 0 {name=x1}
C {devices/vsource.sym} 440 -530 0 0 {name=V1 value=1.8 net_name=true}
C {devices/gnd.sym} 440 -500 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 440 -560 0 0 {name=l14 lab=VDD}
C {devices/vdd.sym} 480 -210 1 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 430 -250 3 0 {name=l2 lab=GND}
C {devices/gnd.sym} 600 -510 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 700 -570 0 0 {name=l7 sig_type=std_logic lab=AIO[10]}
C {devices/vsource.sym} 600 -540 0 0 {name=VGRING value=0}
C {devices/gnd.sym} 730 -510 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 830 -570 0 0 {name=l9 sig_type=std_logic lab=AIO[9]}
C {devices/vsource.sym} 730 -540 0 0 {name=VCSA value=0.35}
C {devices/gnd.sym} 860 -510 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 310 -460 0 0 {name=l11 sig_type=std_logic lab=AIO[8]}
C {devices/vsource.sym} 860 -540 0 0 {name=VREF value=0.6}
C {devices/lab_pin.sym} 450 10 2 0 {name=l3 sig_type=std_logic lab=AIO[10:0]}
C {devices/code_shown.sym} 1200 -90 0 0 {name=s1
only_toplevel=false
value="
.option gmin = 1E-21
.control
save all
tran 10u 20m
plot v('aio[10]')
.endc"}
C {devices/code.sym} 1000 -90 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 1060 -700 1 0 {name=l154 sig_type=std_logic lab=GPIO[0]}
C {devices/vsource.sym} 1060 -670 0 0 {name=Vrow3 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1060 -640 0 0 {name=l155 lab=GND}
C {devices/lab_pin.sym} 1060 -340 1 0 {name=l156 sig_type=std_logic lab=GPIO[2]}
C {devices/vsource.sym} 1060 -310 0 0 {name=Vrow4 value="0.0 pulse(0.0 1.8 \{2*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1060 -280 0 0 {name=l157 lab=GND}
C {devices/lab_pin.sym} 1550 -710 1 0 {name=l160 sig_type=std_logic lab=GPIO[4]}
C {devices/vsource.sym} 1550 -680 0 0 {name=Vcol5 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 1550 -650 0 0 {name=l161 lab=GND}
C {devices/lab_pin.sym} 1550 -530 1 0 {name=l162 sig_type=std_logic lab=GPIO[5]}
C {devices/vsource.sym} 1550 -500 0 0 {name=Vcol6 value="0.0 pulse(0.0 1.8 \{pix_time+row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 1550 -470 0 0 {name=l163 lab=GND}
C {devices/lab_pin.sym} 1060 -520 1 0 {name=l4 sig_type=std_logic lab=GPIO[1]}
C {devices/vsource.sym} 1060 -490 0 0 {name=Vrow7 value="0.0 pulse(0.0 1.8 \{3*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1060 -460 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1550 -470 0 0 {name=l63 lab=GND}
C {devices/lab_pin.sym} 1550 -330 1 0 {name=l64 sig_type=std_logic lab=GPIO[6]}
C {devices/vsource.sym} 1550 -300 0 0 {name=Vcol8 value="0.0 pulse(0.0 1.8 \{pix_time+2*row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 1550 -270 0 0 {name=l65 lab=GND}
C {devices/lab_pin.sym} 400 -30 2 0 {name=l12 sig_type=std_logic lab=GPIO[17:0]}
C {devices/code_shown.sym} 1450 -90 0 0 {name=SPICE only_toplevel=false value="
.param array_size = 3
.param pix_time = 1m


.param row_time = \{array_size*pix_time\}

.param col_time = \{array_size*row_time\}


"}
C {devices/isource.sym} -170 -540 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 220 -510 0 0 {name=l16 sig_type=std_logic lab=AIO[3]}
C {devices/isource.sym} -70 -540 0 0 {name=I1 value=100u}
C {devices/vdd.sym} -70 -570 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} -70 -510 2 0 {name=l18 sig_type=std_logic lab=AIO[4]}
C {devices/isource.sym} 30 -540 0 0 {name=I2 value=80n}
C {devices/lab_pin.sym} -170 -510 0 0 {name=l20 sig_type=std_logic lab=AIO[5]}
C {devices/isource.sym} 130 -540 0 0 {name=I3 value=400n}
C {devices/vdd.sym} 130 -570 0 0 {name=I4 value=40n}
C {devices/lab_pin.sym} 130 -510 0 0 {name=l21 sig_type=std_logic lab=AIO[6]}
C {devices/isource.sym} 220 -540 0 0 {name=I5 value=40n}
C {devices/vdd.sym} 220 -570 0 0 {name=I6 value=400n}
C {devices/lab_pin.sym} 30 -570 0 0 {name=l22 sig_type=std_logic lab=AIO[7]}
C {devices/gnd.sym} 30 -510 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} -170 -570 0 0 {name=l23 lab=VDD}
C {devices/gnd.sym} 340 -400 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 570 -570 0 0 {name=l24 sig_type=std_logic lab=AIO[2]}
C {devices/vsource.sym} 340 -430 0 0 {name=VBIAS value=0.9}
