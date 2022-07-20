v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -90 40 -20 40 {
lab=VREF}
N -250 -340 -250 -190 {
lab=#net1}
N -130 70 -130 100 {
lab=#net2}
N -480 40 -410 40 {
lab=AMP_IN}
N -370 40 -290 40 {
lab=VDD}
N -130 -70 -130 10 {
lab=#net3}
N -370 -70 -130 -70 {
lab=#net3}
N -370 -70 -370 10 {
lab=#net3}
N -370 70 -370 140 {
lab=#net4}
N -130 100 170 100 {
lab=#net2}
N 390 -200 390 -120 {
lab=#net5}
N 170 -340 170 -260 {
lab=#net1}
N 390 -340 390 -260 {
lab=#net1}
N 240 -230 350 -230 {
lab=#net6}
N 170 -170 170 -120 {
lab=#net6}
N 240 -230 240 -170 {
lab=#net6}
N 170 -170 240 -170 {
lab=#net6}
N 240 -90 350 -90 {
lab=#net7}
N 240 -90 240 -30 {
lab=#net7}
N 170 -30 240 -30 {
lab=#net7}
N 170 -60 170 -30 {
lab=#net7}
N 210 -230 240 -230 {
lab=#net6}
N 170 -200 170 -170 {
lab=#net6}
N 210 -90 240 -90 {
lab=#net7}
N 170 -30 170 20 {
lab=#net7}
N 170 80 170 100 {
lab=#net2}
N 280 50 280 90 {
lab=VBN2}
N 210 50 280 50 {
lab=VBN2}
N 390 -20 500 -20 {
lab=AMP_OUT}
N 390 -20 390 20 {
lab=AMP_OUT}
N 390 -60 390 -20 {
lab=AMP_OUT}
N 140 -260 140 -230 {
lab=VDD}
N 140 -230 170 -230 {
lab=VDD}
N 420 -260 420 -230 {
lab=VDD}
N 390 -230 420 -230 {
lab=VDD}
N 420 -120 420 -90 {
lab=VDD}
N 390 -90 420 -90 {
lab=VDD}
N 140 -120 140 -90 {
lab=VDD}
N 140 -90 170 -90 {
lab=VDD}
N 140 20 140 50 {
lab=GND}
N 140 50 170 50 {
lab=GND}
N 420 50 420 80 {
lab=GND}
N 390 50 420 50 {
lab=GND}
N -250 -160 -140 -160 {
lab=#net1}
N -140 -190 -140 -160 {
lab=#net1}
N -250 -190 -140 -190 {
lab=#net1}
N -290 40 -290 100 {
lab=VDD}
N -210 40 -210 100 {
lab=VDD}
N -210 40 -130 40 {
lab=VDD}
N 170 230 170 370 {
lab=GND}
N 390 230 390 370 {
lab=GND}
N 210 200 280 200 {
lab=VBN1}
N 170 100 170 170 {
lab=#net2}
N 390 140 390 170 {
lab=#net4}
N 170 -340 390 -340 {
lab=#net1}
N 280 50 350 50 {
lab=VBN2}
N 280 200 350 200 {
lab=VBN1}
N 280 200 280 240 {
lab=VBN1}
N -370 140 390 140 {
lab=#net4}
N 50 -340 170 -340 {
lab=#net1}
N 50 -380 50 -340 {
lab=#net1}
N -370 -160 -290 -160 {
lab=VBIAS}
N -370 240 -350 240 {
lab=VDD}
N -370 290 -350 290 {
lab=GND}
N -250 -340 50 -340 {
lab=#net1}
N 390 80 390 140 {
lab=#net4}
N -250 -130 -250 -70 {
lab=#net3}
N 150 200 170 200 {
lab=GND}
N 150 200 150 230 {
lab=GND}
N 150 230 170 230 {
lab=GND}
N 390 200 410 200 {
lab=GND}
N 410 200 410 230 {
lab=GND}
N 390 230 410 230 {
lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -390 40 0 0 {name=M1
L=0.35
W=7
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 40 0 1 {name=M2
L=0.35
W=7
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 370 -230 0 0 {name=M5
L=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 190 -230 0 1 {name=M6
L=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 370 -90 0 0 {name=M3
L=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 190 -90 0 1 {name=M4
L=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 50 0 1 {name=M8
L=4
W=0.42
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 50 0 0 {name=M9
L=4
W=0.42
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
C {devices/opin.sym} 500 -20 0 0 {name=p7 lab=AMP_OUT}
C {devices/lab_pin.sym} 140 -260 3 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -260 1 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -120 1 0 {name=l16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -120 3 1 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 80 0 1 {name=l21 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 140 20 0 0 {name=l23 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -270 -160 0 0 {name=M7
L=1.4
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
C {devices/lab_pin.sym} -290 100 2 1 {name=l25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 100 2 0 {name=l26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 370 0 0 {name=l18 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 390 370 0 1 {name=l27 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 200 0 1 {name=M11
L=1
W=0.42
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 200 0 0 {name=M12
L=1
W=0.42
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
C {devices/ipin.sym} -480 40 0 0 {name=p1 lab=AMP_IN}
C {devices/ipin.sym} -20 40 0 1 {name=p2 lab=VREF}
C {devices/ipin.sym} -370 -160 0 0 {name=p3 lab=VBIAS}
C {devices/ipin.sym} 280 90 0 0 {name=p5 lab=VBN2}
C {devices/iopin.sym} -350 240 0 0 {name=p6 lab=VDD}
C {devices/lab_pin.sym} -370 240 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -350 290 0 0 {name=p8 lab=GND}
C {devices/lab_pin.sym} -370 290 0 0 {name=p9 lab=GND}
C {devices/ipin.sym} 280 240 0 0 {name=p10 lab=VBN1}
C {devices/lab_pin.sym} 50 -380 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/code.sym} -210 430 0 0 {name=STIMULI1 
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
C {devices/code.sym} -210 250 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
