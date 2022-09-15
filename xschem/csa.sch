v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -320 270 -320 {
lab=GND}
N -230 -160 -230 -100 { lab=#net1}
N -230 -670 60 -670 { lab=VDD}
N -230 -40 -230 10 { lab=#net2}
N 60 -40 60 10 { lab=#net2}
N -170 -450 20 -450 { lab=#net3}
N -170 -450 -170 -390 { lab=#net3}
N -230 -390 -170 -390 { lab=#net3}
N -170 110 -130 110 { lab=NB1}
N -190 -450 -170 -450 { lab=#net3}
N -230 -420 -230 -390 { lab=#net3}
N 60 -420 60 -320 { lab=#net4}
N -90 10 60 10 { lab=#net2}
N -230 10 -90 10 { lab=#net2}
N -170 -590 20 -590 { lab=#net5}
N -170 -590 -170 -530 { lab=#net5}
N -230 -530 -170 -530 { lab=#net5}
N -190 -590 -170 -590 { lab=#net5}
N -230 -560 -230 -530 { lab=#net5}
N 60 -560 60 -480 { lab=#net6}
N -230 -670 -230 -620 {
lab=VDD}
N -230 -530 -230 -480 {
lab=#net5}
N 60 -670 60 -620 {
lab=VDD}
N 60 -320 60 -220 {
lab=#net4}
N -230 -390 -230 -220 {
lab=#net3}
N -100 -190 20 -190 {
lab=VBIAS}
N -100 -230 -100 -190 {
lab=VBIAS}
N 60 -160 60 -100 {
lab=#net7}
N -190 -190 -100 -190 {
lab=VBIAS}
N 60 -320 210 -320 {
lab=#net4}
N 330 -250 380 -250 {
lab=AMP_OUT}
N 250 -670 250 -350 {
lab=VDD}
N 250 80 250 110 { lab=GND}
N 160 50 210 50 {
lab=NB2}
N 330 260 330 350 {
lab=AMP_OUT}
N -90 140 -90 170 {
lab=GND}
N 290 260 330 260 {
lab=AMP_OUT}
N 110 260 230 260 {
lab=AMP_IN}
N 110 350 230 350 {
lab=AMP_IN}
N 110 260 110 350 {
lab=AMP_IN}
N 110 -70 110 260 {
lab=AMP_IN}
N -290 -70 -270 -70 {
lab=VREF}
N 250 -250 330 -250 {
lab=AMP_OUT}
N 260 390 260 420 {
lab=CSA_VREF}
N -90 10 -90 80 {
lab=#net2}
N 250 -250 250 20 {
lab=AMP_OUT}
N -90 110 -50 110 {
lab=GND}
N 250 50 290 50 {
lab=GND}
N 250 -290 250 -250 {
lab=AMP_OUT}
N 100 -70 110 -70 {
lab=AMP_IN}
N -230 -70 -190 -70 {
lab=GND}
N 110 -70 130 -70 {
lab=AMP_IN}
N 0 -720 50 -720 {
lab=GND}
N 260 320 260 350 {
lab=VDD}
N -200 -720 -160 -720 {
lab=VDD}
N -190 -70 -140 -70 {
lab=GND}
N -20 -70 60 -70 {
lab=GND}
N 290 350 330 350 {
lab=AMP_OUT}
N 330 -250 330 260 {
lab=AMP_OUT}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 230 -320 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -210 -450 0 1 {name=M8
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
C {devices/vdd.sym} -90 -670 0 0 {name=l3 lab=VDD}
C {devices/ngspice_probe.sym} -170 -390 0 0 {name=r3}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 40 -590 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -210 -590 0 1 {name=M11
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
C {devices/ngspice_probe.sym} -170 -530 0 0 {name=r10}
C {devices/gnd.sym} -90 170 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 250 110 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 250 -670 0 0 {name=l22 lab=VDD}
C {devices/lab_pin.sym} -50 110 0 1 {name=l34 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 230 50 0 0 {name=M15
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 110 0 0 {name=M16
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 260 260 3 0 {name=C3 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -250 -70 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 260 370 1 1 {name=M7
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 40 -450 0 0 {name=M5
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
C {devices/ipin.sym} -290 -70 0 0 {name=p1 lab=VREF}
C {devices/ipin.sym} 130 -70 2 0 {name=p2 lab=AMP_IN}
C {devices/ipin.sym} -170 110 0 0 {name=p3 lab=NB1
}
C {devices/ipin.sym} 260 420 0 0 {name=p4 lab=CSA_VREF}
C {devices/ipin.sym} -100 -230 0 0 {name=p5 lab=VBIAS}
C {devices/opin.sym} 380 -250 0 0 {name=p6 lab=AMP_OUT}
C {devices/ipin.sym} 160 50 1 0 {name=p7 lab=NB2
}
C {devices/ipin.sym} -190 -720 0 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 50 -720 3 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 10 -720 0 0 {name=p9 lab=GND}
C {devices/lab_pin.sym} -160 -720 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 320 1 0 {name=l6 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -210 -190 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 -70 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 -190 0 0 {name=M6
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
C {devices/lab_pin.sym} -140 -70 0 1 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -20 -70 2 1 {name=l7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -230 -190 2 1 {name=l10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 60 -190 0 1 {name=l8 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 270 -320 0 1 {name=l11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 290 50 0 1 {name=l13 sig_type=std_logic lab=GND}
