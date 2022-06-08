v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -200 -190 -180 -190 { lab=GND}
N -200 -190 -200 -110 { lab=GND}
N -520 -490 -500 -490 {
lab=#net1}
N -240 -150 -240 -110 {
lab=COL0}
N -240 -110 -230 -110 {
lab=COL0}
N -170 -110 -150 -110 {
lab=ARRAY_OUT}
N -150 -110 -110 -110 {
lab=ARRAY_OUT}
N 120 -180 140 -180 { lab=GND}
N 120 -180 120 -100 { lab=GND}
N 80 -140 80 -100 {
lab=COL1}
N 80 -100 90 -100 {
lab=COL1}
N 150 -100 170 -100 {
lab=ARRAY_OUT}
N 170 -100 210 -100 {
lab=ARRAY_OUT}
N 460 -190 480 -190 { lab=GND}
N 460 -190 460 -110 { lab=GND}
N 420 -150 420 -110 {
lab=COL2}
N 420 -110 430 -110 {
lab=COL2}
N 490 -110 510 -110 {
lab=ARRAY_OUT}
N 510 -110 550 -110 {
lab=ARRAY_OUT}
N -280 -460 -280 -360 {
lab=COL1}
N -340 -380 -340 -280 {
lab=COL2}
N -660 -380 -640 -380 {
lab=#net2}
N -660 -340 -640 -340 {
lab=#net3}
N -660 -300 -640 -300 {
lab=VREF}
N -660 -440 -640 -440 {
lab=#net4}
N -660 -480 -640 -480 {
lab=#net5}
N -660 -460 -640 -460 {
lab=#net6}
N -250 -480 -250 -380 {
lab=COL0}
N -660 -420 -640 -420 {
lab=#net7}
N 130 120 130 180 {
lab=ARRAY_OUT}
N -660 -360 -630 -360 {
lab=#net8}
N 130 180 130 240 {
lab=ARRAY_OUT}
N 170 280 320 280 {
lab=OUT_IB}
N 130 240 130 250 {
lab=ARRAY_OUT}
N 130 310 130 340 {
lab=GND}
N 110 280 130 280 {
lab=GND}
N 110 280 110 310 {
lab=GND}
N 110 310 130 310 {
lab=GND}
N 720 -180 760 -180 {
lab=ARRAY_OUT}
N 740 -220 760 -220 {
lab=AOUT}
N 740 -340 740 -220 {
lab=AOUT}
N 740 -340 920 -340 {
lab=AOUT}
N 920 -340 920 -200 {
lab=AOUT}
N 900 -200 920 -200 {
lab=AOUT}
N 920 -200 960 -200 {
lab=AOUT}
N 990 -200 1010 -200 {
lab=AOUT}
N 960 -200 990 -200 {
lab=AOUT}
N -280 -480 -250 -480 {
lab=COL0}
N -660 -400 -640 -400 {
lab=#net9}
N -340 -440 -340 -380 {
lab=COL2}
N -340 -460 -280 -460 {
lab=COL1}
N 800 -140 800 -80 {
lab=test}
N 800 -80 800 -20 {
lab=test}
N 840 20 990 20 {
lab=AMP_IB}
N 800 -20 800 -10 {
lab=test}
N 800 50 800 80 {
lab=GND}
N 780 20 800 20 {
lab=GND}
N 780 20 780 50 {
lab=GND}
N 780 50 800 50 {
lab=GND}
N -340 -480 -280 -480 {
lab=COL0}
N -660 -280 -640 -280 {
lab=CSA_VREF}
N -660 -250 -640 -250 {
lab=GRING}
N -660 -230 -640 -230 {
lab=VBIAS}
N -660 -210 -640 -210 {
lab=SF_IB}
N -660 -190 -640 -190 {
lab=NB1}
N -660 -170 -640 -170 {
lab=NB2}
N -200 -70 -200 -50 {
lab=COL_SEL0}
N 120 -60 120 -40 {
lab=COL_SEL1}
N 460 -70 460 -50 {
lab=COL_SEL2}
N -520 -50 -520 -30 {
lab=ROW_SEL0}
N -500 -50 -500 -30 {
lab=ROW_SEL1}
N -480 -50 -480 -30 {
lab=ROW_SEL2}
N -540 -560 -540 -510 {
lab=VDD}
N -510 -560 -510 -510 {
lab=GND}
N -660 -320 -640 -320 {
lab=#net10}
C {devices/gnd.sym} -180 -190 3 0 {name=l121 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -200 -90 3 0 {name=M2
L=0.15
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
C {devices/lab_pin.sym} -250 -380 0 1 {name=l29 sig_type=std_logic lab=COL0}
C {devices/lab_pin.sym} -280 -360 0 1 {name=l34 sig_type=std_logic lab=COL1}
C {devices/lab_pin.sym} -240 -150 2 1 {name=l37 sig_type=std_logic lab=COL0}
C {devices/gnd.sym} 140 -180 3 0 {name=l45 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -80 3 0 {name=M6
L=0.15
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
C {devices/lab_pin.sym} 80 -140 2 1 {name=l49 sig_type=std_logic lab=COL1}
C {devices/lab_pin.sym} 210 -100 2 0 {name=l55 sig_type=std_logic lab=ARRAY_OUT}
C {devices/gnd.sym} 480 -190 3 0 {name=l56 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 460 -90 3 0 {name=M7
L=0.15
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
C {devices/lab_pin.sym} 420 -150 2 1 {name=l58 sig_type=std_logic lab=COL2}
C {/home/damic/CMOS/TopmetalSe/Pixel/Testbench/array_symtb.sym} -490 -280 0 0 {name=x1}
C {devices/lab_pin.sym} -340 -280 0 1 {name=l10 sig_type=std_logic lab=COL2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 280 0 1 {name=M8
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
C {devices/lab_pin.sym} 130 340 0 0 {name=l42 sig_type=std_logic lab=GND}
C {/home/damic/CMOS/TopmetalSe/ChipOutputBuffer/Schematic/opamp.sym} 830 -200 0 0 {name=x2}
C {devices/lab_pin.sym} 840 -140 2 0 {name=l61 sig_type=std_logic lab=GND}
C {devices/vdd.sym} 820 -250 0 0 {name=l62 lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 820 20 0 1 {name=M10
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
C {devices/lab_pin.sym} 800 80 0 0 {name=l69 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 800 -70 2 0 {name=l8 sig_type=std_logic lab=test}
C {devices/lab_pin.sym} -110 -110 2 0 {name=l6 sig_type=std_logic lab=ARRAY_OUT}
C {devices/lab_pin.sym} 550 -110 2 0 {name=l7 sig_type=std_logic lab=ARRAY_OUT}
C {devices/lab_pin.sym} 720 -180 0 0 {name=l13 sig_type=std_logic lab=ARRAY_OUT}
C {devices/ipin.sym} -660 -300 0 0 {name=p1 lab=VREF}
C {devices/ipin.sym} -660 -280 0 0 {name=p2 lab=CSA_VREF}
C {devices/ipin.sym} -660 -250 0 0 {name=p3 lab=GRING}
C {devices/ipin.sym} -660 -230 0 0 {name=p4 lab=VBIAS}
C {devices/ipin.sym} -660 -210 0 0 {name=p5 lab=SF_IB}
C {devices/ipin.sym} -660 -190 0 0 {name=p6 lab=NB1}
C {devices/ipin.sym} -660 -170 0 0 {name=p7 lab=NB2}
C {devices/ipin.sym} -200 -50 3 0 {name=p8 lab=COL_SEL0}
C {devices/ipin.sym} 120 -40 3 0 {name=p9 lab=COL_SEL1}
C {devices/ipin.sym} 460 -50 3 0 {name=p10 lab=COL_SEL2}
C {devices/ipin.sym} -520 -30 3 0 {name=p11 lab=ROW_SEL0}
C {devices/ipin.sym} -500 -30 3 0 {name=p12 lab=ROW_SEL1}
C {devices/ipin.sym} -480 -30 3 0 {name=p13 lab=ROW_SEL2}
C {devices/ipin.sym} 320 280 2 0 {name=p14 lab=OUT_IB}
C {devices/lab_pin.sym} 130 120 2 0 {name=l3 sig_type=std_logic lab=ARRAY_OUT}
C {devices/ipin.sym} 990 20 2 0 {name=p15 lab=AMP_IB}
C {devices/opin.sym} 1010 -200 0 0 {name=p16 lab=AOUT}
C {devices/ipin.sym} -540 -560 0 0 {name=p17 lab=VDD}
C {devices/ipin.sym} -510 -560 0 1 {name=p18 lab=GND}
C {biases.sym} 140 -580 0 0 {name=x3}
C {devices/vdd.sym} -10 -620 3 0 {name=l1 lab=VDD}
C {devices/lab_pin.sym} -10 -600 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 290 -620 2 0 {name=l4 sig_type=std_logic lab=OUT_IB}
C {devices/lab_pin.sym} 290 -600 2 0 {name=l5 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 290 -580 2 0 {name=l9 sig_type=std_logic lab=SF_IB}
C {devices/lab_pin.sym} 290 -560 2 0 {name=l11 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 290 -540 2 0 {name=l12 sig_type=std_logic lab=AMP_IB}
