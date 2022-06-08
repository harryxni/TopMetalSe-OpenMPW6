v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 80 110 100 {
lab=ROW_SEL}
N 110 100 120 100 {
lab=ROW_SEL}
N 110 10 110 40 {
lab=GND}
N -20 0 10 0 {
lab=VDD}
N -20 30 -20 100 {
lab=GND}
N -20 -170 10 -170 {
lab=VDD}
N 10 -200 10 -170 {
lab=VDD}
N -20 -200 10 -200 {
lab=VDD}
N -20 -110 -20 -20 {
lab=#net1}
N -20 -110 40 -110 {
lab=#net1}
N 80 -200 80 -140 {
lab=VDD}
N 80 -80 80 40 {
lab=#net2}
N 80 -110 100 -110 {
lab=GND}
N -20 -140 -20 -110 {
lab=#net1}
N -80 -170 -60 -170 {
lab=SF_IB}
N 140 40 200 40 {
lab=pix_out}
N -220 -70 -200 -70 {
lab=GND}
N -700 90 -700 150 { lab=#net3}
N -700 -420 -410 -420 { lab=VDD}
N -700 210 -700 260 { lab=#net4}
N -410 210 -410 260 { lab=#net4}
N -640 -200 -450 -200 { lab=#net5}
N -640 -200 -640 -140 { lab=#net5}
N -700 -140 -640 -140 { lab=#net5}
N -640 360 -600 360 { lab=NB1}
N -660 -200 -640 -200 { lab=#net5}
N -700 -170 -700 -140 { lab=#net5}
N -410 -170 -410 -70 { lab=#net6}
N -560 260 -410 260 { lab=#net4}
N -700 260 -560 260 { lab=#net4}
N -640 -340 -450 -340 { lab=#net7}
N -640 -340 -640 -280 { lab=#net7}
N -700 -280 -640 -280 { lab=#net7}
N -660 -340 -640 -340 { lab=#net7}
N -700 -310 -700 -280 { lab=#net7}
N -410 -310 -410 -230 { lab=#net8}
N -700 -420 -700 -370 {
lab=VDD}
N -700 -280 -700 -230 {
lab=#net7}
N -410 -420 -410 -370 {
lab=VDD}
N -410 -70 -410 30 {
lab=#net6}
N -700 -140 -700 30 {
lab=#net5}
N -570 60 -450 60 {
lab=VBIAS}
N -570 20 -570 60 {
lab=VBIAS}
N -410 90 -410 150 {
lab=#net9}
N -660 60 -570 60 {
lab=VBIAS}
N -410 -70 -260 -70 {
lab=#net6}
N -140 0 -90 0 {
lab=AMP_OUT}
N -220 -420 -220 -100 {
lab=VDD}
N -220 330 -220 360 { lab=GND}
N -310 300 -260 300 {
lab=NB2}
N -140 510 -140 600 {
lab=AMP_OUT}
N -560 390 -560 420 {
lab=GND}
N -180 510 -140 510 {
lab=AMP_OUT}
N -360 510 -240 510 {
lab=AMP_IN}
N -360 600 -240 600 {
lab=AMP_IN}
N -360 510 -360 600 {
lab=AMP_IN}
N -360 180 -360 510 {
lab=AMP_IN}
N -760 180 -740 180 {
lab=VREF}
N -220 0 -140 0 {
lab=AMP_OUT}
N -210 640 -210 670 {
lab=CSA_VREF}
N -560 260 -560 330 {
lab=#net4}
N -220 0 -220 270 {
lab=AMP_OUT}
N -560 360 -520 360 {
lab=GND}
N -220 300 -180 300 {
lab=GND}
N -220 -40 -220 0 {
lab=AMP_OUT}
N -370 180 -360 180 {
lab=AMP_IN}
N -700 180 -660 180 {
lab=GND}
N -360 180 -340 180 {
lab=AMP_IN}
N -210 570 -210 600 {
lab=VDD}
N -660 180 -610 180 {
lab=GND}
N -490 180 -410 180 {
lab=GND}
N -180 600 -140 600 {
lab=AMP_OUT}
N -140 0 -140 510 {
lab=AMP_OUT}
N -90 0 -60 -0 {
lab=AMP_OUT}
C {devices/lab_pin.sym} -100 0 1 0 {name=l40 sig_type=std_logic lab=AMP_OUT}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 60 3 0 {name=M2
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 110 10 3 1 {name=l41 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -40 0 0 0 {name=M3
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} -20 -200 0 0 {name=l20 lab=VDD}
C {devices/lab_pin.sym} -20 100 0 1 {name=l14 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -40 -170 0 0 {name=M5
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/opin.sym} 200 40 0 0 {name=pix_out2 lab=pix_out
}
C {devices/vdd.sym} 10 0 1 0 {name=l31 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 -110 0 0 {name=M7
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 80 -200 0 0 {name=l38 lab=VDD}
C {devices/lab_pin.sym} 100 -110 0 1 {name=l39 sig_type=std_logic lab=GND}
C {devices/ipin.sym} -80 -170 0 0 {name=hold_n1 lab=SF_IB
}
C {devices/ipin.sym} 120 100 2 0 {name=hold_n10 lab=ROW_SEL
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -240 -70 0 0 {name=M1
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -680 -200 0 1 {name=M8
L=2
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} -560 -420 0 0 {name=l3 lab=VDD}
C {devices/ngspice_probe.sym} -640 -140 0 0 {name=r3}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -430 -340 0 0 {name=M10
L=1
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -680 -340 0 1 {name=M11
L=1
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_probe.sym} -640 -280 0 0 {name=r10}
C {devices/gnd.sym} -560 420 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -220 360 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} -220 -420 0 0 {name=l22 lab=VDD}
C {devices/lab_pin.sym} -520 360 0 1 {name=l34 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -240 300 0 0 {name=M15
L=1.2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -580 360 0 0 {name=M16
L=1
W=1.2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -210 510 3 0 {name=C3 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -720 180 0 0 {name=M4
L=0.15
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -210 620 1 1 {name=M6
L=7.95
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -430 -200 0 0 {name=M9
L=2
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} -760 180 0 0 {name=p1 lab=VREF}
C {devices/ipin.sym} -340 180 2 0 {name=p2 lab=AMP_IN}
C {devices/ipin.sym} -640 360 0 0 {name=p3 lab=NB1
}
C {devices/ipin.sym} -210 670 0 0 {name=p4 lab=CSA_VREF}
C {devices/ipin.sym} -570 20 0 0 {name=p5 lab=VBIAS}
C {devices/ipin.sym} -310 300 1 0 {name=p7 lab=NB2
}
C {devices/lab_pin.sym} -210 570 1 0 {name=l6 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -680 60 0 1 {name=M12
L=0.8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -390 180 0 1 {name=M13
L=0.15
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -430 60 0 0 {name=M14
L=0.8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -610 180 0 1 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -490 180 2 1 {name=l7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -700 60 2 1 {name=l10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -410 60 0 1 {name=l8 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -200 -70 0 1 {name=l11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -180 300 0 1 {name=l13 sig_type=std_logic lab=GND}
