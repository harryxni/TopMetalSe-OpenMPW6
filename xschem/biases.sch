v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 170 -390 170 -330 {
lab=GND}
N 170 -470 170 -450 {
lab=NB1}
N 170 -420 210 -420 {
lab=GND}
N 170 -510 170 -470 {
lab=NB1}
N 90 -470 90 -420 {
lab=NB1}
N 90 -420 130 -420 {
lab=NB1}
N 90 -470 170 -470 {
lab=NB1}
N 220 -160 220 -100 {
lab=GND}
N 220 -190 260 -190 {
lab=GND}
N 220 -240 220 -220 {
lab=NB2}
N 150 -190 180 -190 {
lab=NB2}
N 150 -240 150 -190 {
lab=NB2}
N 150 -240 220 -240 {
lab=NB2}
N 220 -250 220 -240 {
lab=NB2}
N 910 -380 950 -380 {
lab=VDD}
N 850 -380 870 -380 {
lab=SF_IB}
N 950 -410 950 -380 {
lab=VDD}
N 910 -410 950 -410 {
lab=VDD}
N 850 -380 850 -320 {
lab=SF_IB}
N 850 -320 910 -320 {
lab=SF_IB}
N 910 -350 910 -320 {
lab=SF_IB}
N 910 -320 910 -260 {
lab=SF_IB}
N 910 -460 910 -410 {
lab=VDD}
N 580 -550 580 -520 {
lab=OUT_IB}
N 580 -460 580 -430 {
lab=GND}
N 480 -550 480 -490 {
lab=OUT_IB}
N 480 -550 580 -550 {
lab=OUT_IB}
N 580 -490 590 -490 {
lab=GND}
N 590 -490 590 -460 {
lab=GND}
N 580 -460 590 -460 {
lab=GND}
N 480 -490 540 -490 {
lab=OUT_IB}
N 580 -590 580 -550 {
lab=OUT_IB}
N 610 -230 610 -170 {
lab=AMP_IB}
N 610 -110 610 -80 {
lab=GND}
N 510 -200 510 -140 {
lab=AMP_IB}
N 510 -200 610 -200 {
lab=AMP_IB}
N 610 -140 620 -140 {
lab=GND}
N 620 -140 620 -110 {
lab=GND}
N 610 -110 620 -110 {
lab=GND}
N 510 -140 570 -140 {
lab=AMP_IB}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 -420 0 0 {name=M1
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
C {devices/ngspice_probe.sym} 170 -480 0 0 {name=r2}
C {devices/lab_pin.sym} 210 -420 0 1 {name=l23 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 170 -330 0 1 {name=l27 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 -190 0 0 {name=M3
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
C {devices/lab_pin.sym} 260 -190 0 1 {name=l36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 220 -100 0 1 {name=l39 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 890 -380 0 0 {name=M5
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
C {devices/ipin.sym} -300 -530 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 910 -460 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -300 -500 0 0 {name=p2 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -490 0 0 {name=M4
L=2
W=8
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
C {devices/lab_pin.sym} 580 -430 0 0 {name=l38 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 590 -140 0 0 {name=M9
L=2
W=8
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
C {devices/lab_pin.sym} 610 -80 0 0 {name=l68 sig_type=std_logic lab=GND}
C {devices/iopin.sym} 170 -510 0 0 {name=p3 lab=NB1}
C {devices/iopin.sym} 220 -250 0 0 {name=p4 lab=NB2}
C {devices/iopin.sym} 580 -590 0 0 {name=p7 lab=OUT_IB}
C {devices/iopin.sym} 610 -230 0 0 {name=p8 lab=AMP_IB}
C {devices/iopin.sym} 910 -260 2 0 {name=p5 lab=SF_IB}
