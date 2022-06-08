v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -440 10 -440 140 {
lab=IN}
N -320 -210 -320 -120 {
lab=GND}
N -300 -240 -300 -120 {
lab=VDD}
N -280 -150 -280 -120 {
lab=CSA_VREF}
N -280 90 -280 120 {
lab=VBIAS}
N -300 80 -300 170 {
lab=NB1}
N -320 80 -320 200 {
lab=NB2}
N -440 0 -420 -0 {
lab=IN}
N -420 -50 -420 -20 {
lab=VREF}
N -490 10 -440 10 {
lab=IN}
N -590 10 -550 10 {
lab=GRING}
N -440 0 -440 10 {
lab=IN}
N 260 70 260 90 {
lab=ROW_SEL}
N 260 90 270 90 {
lab=ROW_SEL}
N 260 0 260 30 {
lab=GND}
N 130 -10 160 -10 {
lab=VDD}
N 450 30 640 30 {
lab=pix_out}
N 130 20 130 90 {
lab=GND}
N 350 30 450 30 {
lab=pix_out}
N 130 -180 160 -180 {
lab=VDD}
N 160 -210 160 -180 {
lab=VDD}
N 130 -210 160 -210 {
lab=VDD}
N 130 -120 130 -30 {
lab=#net1}
N 130 -120 190 -120 {
lab=#net1}
N 230 -210 230 -150 {
lab=VDD}
N 230 -90 230 30 {
lab=#net2}
N 230 -120 250 -120 {
lab=GND}
N 130 -150 130 -120 {
lab=#net1}
N -120 -10 90 -10 {
lab=AMP_OUT}
N 70 -180 90 -180 {
lab=SF_IB}
N 290 30 350 30 {
lab=pix_out}
C {/home/damic/CMOS/TopmetalSe/Pixel/Schematic/csa.sym} -260 -10 0 0 {name=x1}
C {devices/lab_pin.sym} -30 -10 1 0 {name=l40 sig_type=std_logic lab=AMP_OUT}
C {devices/ipin.sym} -320 -210 0 0 {name=hold_n3 lab=GND
}
C {devices/ipin.sym} -300 -240 2 0 {name=hold_n4 lab=VDD
}
C {devices/ipin.sym} -280 -150 2 0 {name=hold_n5 lab=CSA_VREF
}
C {devices/ipin.sym} -280 120 2 0 {name=hold_n6 lab=VBIAS
}
C {devices/ipin.sym} -300 170 2 0 {name=hold_n7 lab=NB1
}
C {devices/ipin.sym} -320 200 2 0 {name=hold_n8 lab=NB2
}
C {devices/ipin.sym} -420 -50 0 0 {name=hold_n9 lab=VREF
}
C {devices/ipin.sym} -440 140 3 0 {name=hold_n2 lab=IN
}
C {devices/capa.sym} -520 10 3 0 {name=C1
m=1
value=2f
footprint=1206
device="ceramic capacitor"}
C {devices/ipin.sym} -590 10 0 0 {name=hold_n11 lab=GRING
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 260 50 3 0 {name=M2
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
C {devices/lab_pin.sym} 260 0 3 1 {name=l41 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 -10 0 0 {name=M3
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
C {devices/vdd.sym} 130 -210 0 0 {name=l20 lab=VDD}
C {devices/lab_pin.sym} 130 90 0 1 {name=l14 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 -180 0 0 {name=M5
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
C {devices/opin.sym} 640 30 0 0 {name=pix_out2 lab=pix_out
}
C {devices/vdd.sym} 160 -10 1 0 {name=l31 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 210 -120 0 0 {name=M7
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
C {devices/vdd.sym} 230 -210 0 0 {name=l38 lab=VDD}
C {devices/lab_pin.sym} 250 -120 0 1 {name=l39 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 70 -180 0 0 {name=hold_n1 lab=SF_IB
}
C {devices/ipin.sym} 270 90 2 0 {name=hold_n10 lab=ROW_SEL
}
