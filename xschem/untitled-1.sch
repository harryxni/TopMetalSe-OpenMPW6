v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 40 -310 100 { lab=AMP_OUT}
N -310 160 -310 210 { lab=GND}
N -370 130 -350 130 {
lab=AMP_IN}
N -310 130 -270 130 {
lab=GND}
N -360 -220 -320 -220 {
lab=VDD}
N -270 130 -220 130 {
lab=GND}
N -770 -70 -770 -10 {
lab=GND}
N -770 -150 -770 -130 {
lab=NB1}
N -770 -100 -730 -100 {
lab=GND}
N -770 -190 -770 -150 {
lab=NB1}
N -850 -150 -850 -100 {
lab=NB1}
N -850 -100 -810 -100 {
lab=NB1}
N -850 -150 -770 -150 {
lab=NB1}
N -850 -290 -850 -150 {
lab=NB1}
N -480 -70 -480 -10 {
lab=GND}
N -480 -100 -440 -100 {
lab=GND}
N -480 -150 -480 -130 {
lab=NB2}
N -550 -100 -520 -100 {
lab=NB2}
N -550 -150 -550 -100 {
lab=NB2}
N -550 -150 -480 -150 {
lab=NB2}
N -610 -100 -550 -100 {
lab=NB2}
N -480 -160 -480 -150 {
lab=NB2}
N -30 -440 -30 -410 { lab=AMP_IN}
N -310 -70 -310 -20 {
lab=VDD}
N -310 60 -150 60 {
lab=AMP_OUT}
C {devices/vsource.sym} -460 -380 0 0 {name=V1 value=1.8 net_name=true}
C {devices/gnd.sym} -460 -350 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} -460 -410 0 0 {name=l29 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -330 130 0 0 {name=M4
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
C {devices/ipin.sym} -370 130 0 0 {name=p1 lab=AMP_IN}
C {devices/ipin.sym} -350 -220 0 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} -320 -220 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 130 0 1 {name=l4 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -790 -100 0 0 {name=M7
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
C {devices/ngspice_probe.sym} -770 -160 0 0 {name=r2}
C {devices/lab_pin.sym} -730 -100 0 1 {name=l17 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -770 -10 0 1 {name=l18 sig_type=std_logic lab=GND}
C {devices/isource.sym} -770 -220 0 0 {name=I0 value=400n}
C {devices/vdd.sym} -770 -250 0 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} -850 -290 0 1 {name=l20 sig_type=std_logic lab=NB1}
C {devices/vdd.sym} -480 -220 0 0 {name=l21 lab=VDD}
C {devices/isource.sym} -480 -190 0 0 {name=I4 value=30n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -500 -100 0 0 {name=M9
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
C {devices/lab_pin.sym} -440 -100 0 1 {name=l32 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -480 -10 0 1 {name=l36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -610 -100 0 0 {name=l37 sig_type=std_logic lab=NB2}
C {devices/code.sym} -650 210 0 0 {name=STIMULI1 
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
C {devices/code.sym} -650 30 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -30 -380 0 0 {name=V5 only_toplevel=true value="DC=0.6"}
C {devices/lab_pin.sym} -30 -440 0 1 {name=l8 sig_type=std_logic lab=AMP_IN}
C {devices/gnd.sym} -30 -350 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} -310 210 0 1 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -310 -70 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/res.sym} -310 10 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -150 60 2 0 {name=p2 sig_type=std_logic lab=AMP_OUT}
