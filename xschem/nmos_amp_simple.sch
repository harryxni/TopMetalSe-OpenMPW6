v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -490 -130 -460 { lab=VREF}
N 10 -490 10 -460 { lab=VBIAS}
N -130 290 -130 350 { lab=#net1}
N -130 -220 160 -220 { lab=VDD}
N -130 410 -130 460 { lab=#net2}
N 160 410 160 460 { lab=#net2}
N -70 0 120 0 { lab=#net3}
N -70 0 -70 60 { lab=#net3}
N -130 60 -70 60 { lab=#net3}
N -70 560 -30 560 { lab=NB1}
N -90 0 -70 0 { lab=#net3}
N -130 30 -130 60 { lab=#net3}
N 160 30 160 130 { lab=AMP_OUT}
N 10 460 160 460 { lab=#net2}
N -130 460 10 460 { lab=#net2}
N -70 -140 120 -140 { lab=#net4}
N -70 -140 -70 -80 { lab=#net4}
N -130 -80 -70 -80 { lab=#net4}
N -90 -140 -70 -140 { lab=#net4}
N -130 -110 -130 -80 { lab=#net4}
N 160 -110 160 -30 { lab=#net5}
N -130 -220 -130 -170 {
lab=VDD}
N -130 -80 -130 -30 {
lab=#net4}
N 160 -220 160 -170 {
lab=VDD}
N 160 130 160 230 {
lab=AMP_OUT}
N -130 60 -130 230 {
lab=#net3}
N 0 260 120 260 {
lab=VBIAS}
N 0 220 0 260 {
lab=VBIAS}
N 160 290 160 350 {
lab=#net6}
N -90 260 0 260 {
lab=VBIAS}
N 160 130 310 130 {
lab=AMP_OUT}
N 10 590 10 620 {
lab=GND}
N -190 380 -170 380 {
lab=VREF}
N 10 460 10 530 {
lab=#net2}
N 10 560 50 560 {
lab=GND}
N 200 380 210 380 {
lab=AMP_IN}
N -130 380 -90 380 {
lab=GND}
N 210 380 230 380 {
lab=AMP_IN}
N 100 -270 150 -270 {
lab=GND}
N -100 -270 -60 -270 {
lab=VDD}
N -90 380 -40 380 {
lab=GND}
N 80 380 160 380 {
lab=GND}
N -590 180 -590 240 {
lab=GND}
N -590 100 -590 120 {
lab=NB1}
N -590 150 -550 150 {
lab=GND}
N -590 60 -590 100 {
lab=NB1}
N -670 100 -670 150 {
lab=NB1}
N -670 150 -630 150 {
lab=NB1}
N -670 100 -590 100 {
lab=NB1}
N -670 -40 -670 100 {
lab=NB1}
N -300 180 -300 240 {
lab=GND}
N -300 150 -260 150 {
lab=GND}
N -300 100 -300 120 {
lab=NB2}
N -370 150 -340 150 {
lab=NB2}
N -370 100 -370 150 {
lab=NB2}
N -370 100 -300 100 {
lab=NB2}
N -430 150 -370 150 {
lab=NB2}
N -300 90 -300 100 {
lab=NB2}
N 230 -490 230 -460 { lab=AMP_IN}
C {devices/vsource.sym} -200 -430 0 0 {name=V2 value=1.8 net_name=true}
C {devices/vsource.sym} -130 -430 0 0 {name=V3 only_toplevel=true value="DC=0.60"}
C {devices/lab_pin.sym} -130 -490 0 1 {name=l10 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} 10 -430 0 0 {name=V4 only_toplevel=true value="DC=1"}
C {devices/lab_pin.sym} 10 -490 0 1 {name=l15 sig_type=std_logic lab=VBIAS}
C {devices/gnd.sym} -200 -400 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -130 -400 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 10 -400 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} -200 -460 0 0 {name=l6 lab=VDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -110 0 0 1 {name=M8
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
C {devices/vdd.sym} 10 -220 0 0 {name=l7 lab=VDD}
C {devices/ngspice_probe.sym} -70 60 0 0 {name=r3}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 140 -140 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -110 -140 0 1 {name=M11
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
C {devices/ngspice_probe.sym} -70 -80 0 0 {name=r10}
C {devices/gnd.sym} 10 620 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 50 560 0 1 {name=l11 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 560 0 0 {name=M16
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -150 380 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 140 0 0 0 {name=M5
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
C {devices/ipin.sym} -190 380 0 0 {name=p3 lab=VREF}
C {devices/ipin.sym} 230 380 2 0 {name=p4 lab=AMP_IN}
C {devices/ipin.sym} -70 560 0 0 {name=p5 lab=NB1
}
C {devices/ipin.sym} 0 220 0 0 {name=p6 lab=VBIAS}
C {devices/ipin.sym} -90 -270 0 0 {name=p7 lab=VDD}
C {devices/lab_pin.sym} 150 -270 3 1 {name=l12 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 110 -270 0 0 {name=p9 lab=GND}
C {devices/lab_pin.sym} -60 -270 2 0 {name=l13 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 260 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 380 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 260 0 0 {name=M6
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
C {devices/lab_pin.sym} -40 380 0 1 {name=l14 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 80 380 2 1 {name=l16 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -130 260 2 1 {name=l17 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 160 260 0 1 {name=l18 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -610 150 0 0 {name=M9
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
C {devices/ngspice_probe.sym} -590 90 0 0 {name=r2}
C {devices/lab_pin.sym} -550 150 0 1 {name=l27 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -590 240 0 1 {name=l28 sig_type=std_logic lab=GND}
C {devices/isource.sym} -590 30 0 0 {name=I0 value=400n}
C {devices/vdd.sym} -590 0 0 0 {name=l30 lab=VDD}
C {devices/lab_pin.sym} -670 -40 0 1 {name=l31 sig_type=std_logic lab=NB1}
C {devices/vdd.sym} -300 30 0 0 {name=l32 lab=VDD}
C {devices/isource.sym} -300 60 0 0 {name=I4 value=30n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -320 150 0 0 {name=M12
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
C {devices/lab_pin.sym} -260 150 0 1 {name=l33 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -300 240 0 1 {name=l36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -430 150 0 0 {name=l37 sig_type=std_logic lab=NB2}
C {devices/code.sym} -470 460 0 0 {name=STIMULI2 
only_toplevel=true
place=end
value="
.options gmin=0.0000000000000000000001
*.options savecurrents

.control
save all

*tran 1m 50m
*plot v(test)
DC V5 0.2 0.8 0.001
plot v(amp_out)

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total
.endc
"}
C {devices/code.sym} -470 280 0 0 {name=TT_MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 230 -430 0 0 {name=V6 only_toplevel=true value="DC=0.6"}
C {devices/lab_pin.sym} 230 -490 0 1 {name=l34 sig_type=std_logic lab=AMP_IN}
C {devices/gnd.sym} 230 -400 0 0 {name=l35 lab=GND}
C {devices/opin.sym} 310 130 0 0 {name=p1 lab=AMP_OUT}
