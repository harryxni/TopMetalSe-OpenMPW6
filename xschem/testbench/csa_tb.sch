v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -440 470 -410 { lab=PLUS}
N 610 -440 610 -410 { lab=vbias}
N 230 40 230 100 {
lab=GND}
N 230 -40 230 -20 {
lab=NB1}
N 230 10 270 10 {
lab=GND}
N 230 -80 230 -40 {
lab=NB1}
N 150 -40 150 10 {
lab=NB1}
N 150 10 190 10 {
lab=NB1}
N 150 -40 230 -40 {
lab=NB1}
N 150 -180 150 -40 {
lab=NB1}
N 710 -440 710 -410 { lab=CSA}
N 670 10 700 10 {
lab=node1}
N 750 -200 800 -200 {
lab=GND}
N 800 -200 800 -110 {
lab=GND}
N 840 -450 840 -420 { lab=row_sel}
N 840 -450 870 -450 {
lab=row_sel}
N 660 -130 660 10 {
lab=node1}
N 520 40 520 100 {
lab=GND}
N 520 10 560 10 {
lab=GND}
N 520 -40 520 -20 {
lab=NB2}
N 450 10 480 10 {
lab=NB2}
N 450 -40 450 10 {
lab=NB2}
N 450 -40 520 -40 {
lab=NB2}
N 390 10 450 10 {
lab=NB2}
N 520 -50 520 -40 {
lab=NB2}
N 570 460 570 520 {
lab=GND}
N 570 320 610 320 {
lab=VDD}
N 510 320 530 320 {
lab=SF_IB}
N 440 320 510 320 {
lab=SF_IB}
N 570 260 570 290 {
lab=VDD}
N 610 290 610 320 {
lab=VDD}
N 570 290 610 290 {
lab=VDD}
N 510 320 510 380 {
lab=SF_IB}
N 510 380 570 380 {
lab=SF_IB}
N 570 350 570 380 {
lab=SF_IB}
N 570 380 570 400 {
lab=SF_IB}
N 670 10 670 180 {
lab=node1}
N 670 180 720 180 {
lab=node1}
N 660 10 670 10 {
lab=node1}
N 1000 0 1020 0 {
lab=test}
N 1020 0 1040 0 {
lab=test}
N 1210 80 1210 100 {
lab=row_sel}
N 1210 100 1220 100 {
lab=row_sel}
N 1400 40 1400 100 {
lab=pix_out}
N 1210 10 1210 40 {
lab=GND}
N 1080 0 1110 0 {
lab=VDD}
N 1400 40 1590 40 {
lab=pix_out}
N 1080 30 1080 100 {
lab=#net1}
N 1080 -90 1080 -20 {
lab=#net2}
N 1300 40 1400 40 {
lab=pix_out}
N 1400 100 1400 140 {
lab=pix_out}
N 1400 200 1400 260 {
lab=GND}
N 1080 -170 1110 -170 {
lab=VDD}
N 1110 -200 1110 -170 {
lab=VDD}
N 1080 -200 1110 -200 {
lab=VDD}
N 1080 -140 1080 -90 {
lab=#net2}
N 1080 -110 1140 -110 {
lab=#net2}
N 1180 -200 1180 -140 {
lab=VDD}
N 1180 -80 1180 40 {
lab=#net3}
N 1180 -110 1200 -110 {
lab=GND}
N 720 240 720 280 {
lab=gring}
C {devices/code.sym} 230 400 0 0 {name=STIMULI1 
only_toplevel=true
place=end
value="
.options gmin=0.0000000000000000000001
*.options savecurrents

.control
save all
set filetype=ascii
tran 1m 600m
*plot v(test)
plot v(pix_out)

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total

*noise v(PIX_OUT) V8 dec 10 1 1Meg
*setplot noise2
*print onoise_total
wrdata csa_output_55.txt v(pix_out) v(gring)
.endc
"}
C {devices/code.sym} 230 220 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 400 -380 0 0 {name=V1 value=1.8 net_name=true}
C {devices/vsource.sym} 470 -380 0 0 {name=V2 only_toplevel=true value="DC=0.60"}
C {devices/lab_pin.sym} 470 -440 0 1 {name=l10 sig_type=std_logic lab=PLUS}
C {devices/vsource.sym} 610 -380 0 0 {name=V3 only_toplevel=true value="DC=1"}
C {devices/lab_pin.sym} 610 -440 0 1 {name=l15 sig_type=std_logic lab=vbias}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 210 10 0 0 {name=M1
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
C {devices/ngspice_probe.sym} 230 -50 0 0 {name=r2}
C {devices/lab_pin.sym} 270 10 0 1 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 230 100 0 1 {name=l7 sig_type=std_logic lab=GND}
C {devices/isource.sym} 230 -110 0 0 {name=I0 value=400n}
C {devices/vdd.sym} 230 -140 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 150 -180 0 1 {name=l17 sig_type=std_logic lab=NB1}
C {devices/gnd.sym} 400 -350 0 0 {name=l23 lab=GND}
C {devices/gnd.sym} 470 -350 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 610 -350 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 710 -380 0 0 {name=V4 only_toplevel=true value="DC=0.35"}
C {devices/lab_pin.sym} 710 -440 0 1 {name=l30 sig_type=std_logic lab=CSA}
C {devices/lab_pin.sym} 840 -110 0 1 {name=l1 sig_type=std_logic lab=CSA}
C {devices/lab_pin.sym} 800 90 3 0 {name=l3 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 820 90 1 1 {name=l4 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 840 100 1 1 {name=l9 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 700 -10 3 1 {name=l22 sig_type=std_logic lab=PLUS}
C {devices/vdd.sym} 820 -110 0 0 {name=l27 lab=VDD}
C {devices/gnd.sym} 750 -200 0 0 {name=l28 lab=GND}
C {devices/vsource.sym} 840 -390 0 0 {name=V5 net_name=true value="dc=1.8" PULSE(0 1.8 20m 20u 20u 50m)"}
C {devices/gnd.sym} 840 -360 0 0 {name=l34 lab=GND}
C {devices/lab_pin.sym} 870 -450 2 0 {name=l35 sig_type=std_logic lab=row_sel}
C {devices/vdd.sym} 520 -110 0 0 {name=l21 lab=VDD}
C {devices/isource.sym} 520 -80 0 0 {name=I4 value=30n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 500 10 0 0 {name=M6
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
C {devices/lab_pin.sym} 560 10 0 1 {name=l32 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 520 100 0 1 {name=l36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 390 10 0 0 {name=l37 sig_type=std_logic lab=NB2}
C {devices/vdd.sym} 570 260 0 0 {name=l2 lab=VDD}
C {devices/isource.sym} 570 430 0 0 {name=I1 value=100n}
C {devices/lab_pin.sym} 570 520 0 1 {name=l18 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 440 320 0 0 {name=l19 sig_type=std_logic lab=SF_IB}
C {devices/gnd.sym} 710 -350 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 400 -410 0 0 {name=l29 lab=VDD}
C {devices/capa.sym} 720 210 0 0 {name=C1
m=1
value=3.3f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 720 310 0 0 {name=V8 only_toplevel=true value="PULSE(0 100m 30m 0.01m 0.01m 1000s 1s)"}
C {devices/gnd.sym} 720 340 0 0 {name=l24 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 550 320 0 0 {name=M4
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
C {devices/lab_pin.sym} 1030 0 1 0 {name=l40 sig_type=std_logic lab=test}
C {devices/lab_pin.sym} 1220 100 2 0 {name=l11 sig_type=std_logic lab=row_sel}
C {devices/lab_pin.sym} 1400 260 0 1 {name=l33 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1210 60 3 0 {name=M2
L=1
W=2
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
C {devices/lab_pin.sym} 1210 10 3 1 {name=l41 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1060 0 0 0 {name=M3
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
C {devices/vdd.sym} 1080 -200 0 0 {name=l20 lab=VDD}
C {devices/ammeter.sym} 1270 40 3 0 {name=Vmeas}
C {devices/lab_pin.sym} 1080 160 0 1 {name=l14 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1060 -170 0 0 {name=M5
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
C {devices/lab_pin.sym} 1040 -170 0 0 {name=l16 sig_type=std_logic lab=SF_IB}
C {devices/opin.sym} 1590 40 0 0 {name=pix_out2 lab=pix_out
}
C {devices/vdd.sym} 1110 0 1 0 {name=l31 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1160 -110 0 0 {name=M7
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
C {devices/vdd.sym} 1180 -200 0 0 {name=l38 lab=VDD}
C {devices/isource.sym} 1400 170 0 0 {name=I3 value=1u}
C {devices/lab_pin.sym} 1200 -110 0 1 {name=l39 sig_type=std_logic lab=GND}
C {devices/ammeter.sym} 1080 130 0 0 {name=Vmeas1}
C {csa.sym} 860 0 0 0 {name=x1}
C {devices/lab_pin.sym} 670 120 0 0 {name=p2 sig_type=std_logic lab=node1}
C {devices/lab_pin.sym} 720 260 2 0 {name=p1 sig_type=std_logic lab=gring}
