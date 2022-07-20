v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -120 -70 -120 -40 { lab=PLUS}
N 20 -70 20 -40 { lab=vbias}
N 120 -70 120 -40 { lab=CSA}
N -120 710 -120 770 { lab=#net1}
N -120 200 170 200 { lab=VDD}
N -120 830 -120 880 { lab=#net2}
N 170 830 170 880 { lab=#net2}
N -60 420 130 420 { lab=#net3}
N -60 420 -60 480 { lab=#net3}
N -120 480 -60 480 { lab=#net3}
N -60 980 -20 980 { lab=NB1}
N -80 420 -60 420 { lab=#net3}
N -120 450 -120 480 { lab=#net3}
N 170 450 170 550 { lab=#net4}
N 20 880 170 880 { lab=#net2}
N -120 880 20 880 { lab=#net2}
N -60 280 130 280 { lab=#net5}
N -60 280 -60 340 { lab=#net5}
N -120 340 -60 340 { lab=#net5}
N -80 280 -60 280 { lab=#net5}
N -120 310 -120 340 { lab=#net5}
N 170 310 170 390 { lab=#net6}
N -120 200 -120 250 {
lab=VDD}
N -120 340 -120 390 {
lab=#net5}
N 170 200 170 250 {
lab=VDD}
N 170 550 170 650 {
lab=#net4}
N -120 480 -120 650 {
lab=#net3}
N 10 680 130 680 {
lab=VBIAS}
N 10 640 10 680 {
lab=VBIAS}
N 170 710 170 770 {
lab=#net7}
N -80 680 10 680 {
lab=VBIAS}
N 170 550 320 550 {
lab=#net4}
N 20 1010 20 1040 {
lab=GND}
N -180 800 -160 800 {
lab=VREF}
N 20 880 20 950 {
lab=#net2}
N 20 980 60 980 {
lab=GND}
N 210 800 220 800 {
lab=AMP_IN}
N -120 800 -80 800 {
lab=GND}
N 220 800 240 800 {
lab=AMP_IN}
N 110 150 160 150 {
lab=GND}
N -90 150 -50 150 {
lab=VDD}
N -80 800 -30 800 {
lab=GND}
N 90 800 170 800 {
lab=GND}
N 360 550 380 550 {
lab=GND}
N 360 200 360 520 {
lab=VDD}
N 360 950 360 980 { lab=GND}
N 360 620 360 890 {
lab=AMP_OUT}
N 360 920 400 920 {
lab=GND}
N 360 580 360 620 {
lab=AMP_OUT}
N 270 920 320 920 {
lab=NB2}
N 360 630 450 630 {
lab=AMP_OUT}
N -580 600 -580 660 {
lab=GND}
N -580 520 -580 540 {
lab=NB1}
N -580 570 -540 570 {
lab=GND}
N -580 480 -580 520 {
lab=NB1}
N -660 520 -660 570 {
lab=NB1}
N -660 570 -620 570 {
lab=NB1}
N -660 520 -580 520 {
lab=NB1}
N -660 380 -660 520 {
lab=NB1}
N -290 600 -290 660 {
lab=GND}
N -290 570 -250 570 {
lab=GND}
N -290 520 -290 540 {
lab=NB2}
N -360 570 -330 570 {
lab=NB2}
N -360 520 -360 570 {
lab=NB2}
N -360 520 -290 520 {
lab=NB2}
N -420 570 -360 570 {
lab=NB2}
N -290 510 -290 520 {
lab=NB2}
N 240 -70 240 -40 { lab=AMP_IN}
C {devices/vsource.sym} -190 -10 0 0 {name=V1 value=1.8 net_name=true}
C {devices/vsource.sym} -120 -10 0 0 {name=V2 only_toplevel=true value="DC=0.60"}
C {devices/lab_pin.sym} -120 -70 0 1 {name=l10 sig_type=std_logic lab=PLUS}
C {devices/vsource.sym} 20 -10 0 0 {name=V3 only_toplevel=true value="DC=1"}
C {devices/lab_pin.sym} 20 -70 0 1 {name=l15 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} -190 20 0 0 {name=l23 lab=GND}
C {devices/gnd.sym} -120 20 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 20 20 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 120 -10 0 0 {name=V4 only_toplevel=true value="DC=0.35"}
C {devices/lab_pin.sym} 120 -70 0 1 {name=l30 sig_type=std_logic lab=CSA}
C {devices/gnd.sym} 120 20 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} -190 -40 0 0 {name=l29 lab=VDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -100 420 0 1 {name=M8
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
C {devices/vdd.sym} 20 200 0 0 {name=l3 lab=VDD}
C {devices/ngspice_probe.sym} -60 480 0 0 {name=r3}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 150 280 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -100 280 0 1 {name=M11
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
C {devices/ngspice_probe.sym} -60 340 0 0 {name=r10}
C {devices/gnd.sym} 20 1040 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 60 980 0 1 {name=l1 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 0 980 0 0 {name=M16
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -140 800 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 150 420 0 0 {name=M5
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
C {devices/ipin.sym} -180 800 0 0 {name=p1 lab=VREF}
C {devices/ipin.sym} 240 800 2 0 {name=p2 lab=AMP_IN}
C {devices/ipin.sym} -60 980 0 0 {name=p3 lab=NB1
}
C {devices/ipin.sym} 10 640 0 0 {name=p5 lab=VBIAS}
C {devices/ipin.sym} -80 150 0 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 160 150 3 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 120 150 0 0 {name=p9 lab=GND}
C {devices/lab_pin.sym} -50 150 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -100 680 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 800 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 680 0 0 {name=M6
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
C {devices/lab_pin.sym} -30 800 0 1 {name=l4 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 90 800 2 1 {name=l7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -120 680 2 1 {name=l6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 170 680 0 1 {name=l11 sig_type=std_logic lab=GND}
C {devices/opin.sym} 450 630 0 0 {name=p4 lab=AMP_OUT}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 550 0 0 {name=M2
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
C {devices/vdd.sym} 360 200 0 0 {name=l22 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 920 0 0 {name=M15
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
C {devices/lab_pin.sym} 380 550 0 1 {name=l12 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 400 920 0 1 {name=l14 sig_type=std_logic lab=GND}
C {devices/gnd.sym} 360 980 0 0 {name=l16 lab=GND}
C {devices/ipin.sym} 270 920 1 0 {name=p7 lab=NB2
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -600 570 0 0 {name=M7
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
C {devices/ngspice_probe.sym} -580 510 0 0 {name=r2}
C {devices/lab_pin.sym} -540 570 0 1 {name=l17 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -580 660 0 1 {name=l18 sig_type=std_logic lab=GND}
C {devices/isource.sym} -580 450 0 0 {name=I0 value=400n}
C {devices/vdd.sym} -580 420 0 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} -660 380 0 1 {name=l20 sig_type=std_logic lab=NB1}
C {devices/vdd.sym} -290 450 0 0 {name=l21 lab=VDD}
C {devices/isource.sym} -290 480 0 0 {name=I4 value=30n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -310 570 0 0 {name=M9
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
C {devices/lab_pin.sym} -250 570 0 1 {name=l32 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -290 660 0 1 {name=l36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -420 570 0 0 {name=l37 sig_type=std_logic lab=NB2}
C {devices/code.sym} -460 880 0 0 {name=STIMULI1 
only_toplevel=true
place=end
value="
.options gmin=0.0000000000000000000001
*.options savecurrents

.control
save all

tran 1m 50m
*plot v(test)
plot v(pix_out)

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total
.endc
"}
C {devices/code.sym} -460 700 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 240 -10 0 0 {name=V5 only_toplevel=true value="DC=0.6"}
C {devices/lab_pin.sym} 240 -70 0 1 {name=l8 sig_type=std_logic lab=AMP_IN}
C {devices/gnd.sym} 240 20 0 0 {name=l24 lab=GND}
