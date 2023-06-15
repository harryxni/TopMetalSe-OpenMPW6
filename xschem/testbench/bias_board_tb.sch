v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -270 220 -270 {
lab=VDD}
N 180 -250 220 -250 {
lab=GND}
N 520 -270 550 -270 {
lab=#net1}
N 520 -250 620 -250 {
lab=#net2}
N 660 -230 690 -230 {
lab=#net3}
N 660 -210 760 -210 {
lab=#net4}
N 520 -210 660 -210 {
lab=#net4}
N 520 -190 830 -190 {
lab=#net5}
N 550 -410 550 -390 {
lab=OUT_DAC}
N 620 -440 620 -370 {
lab=NB1_DAC}
N 690 -470 690 -350 {
lab=SF_DAC}
N 760 -500 760 -380 {
lab=NB2_DAC}
N 760 -380 760 -330 {
lab=NB2_DAC}
N 830 -530 830 -410 {
lab=AMP_DAC}
N 830 -410 830 -360 {
lab=AMP_DAC}
N 830 -360 830 -310 {
lab=AMP_DAC}
N -120 -510 -120 -490 {
lab=OUT_DAC}
N 0 -510 0 -490 {
lab=NB1_DAC}
N 110 -510 110 -490 {
lab=NB2_DAC}
N 230 -510 230 -490 {
lab=SF_DAC}
N 230 -510 230 -490 {
lab=SF_DAC}
N 350 -510 350 -490 {
lab=AMP_DAC}
N 520 -230 660 -230 {
lab=#net3}
C {devices/code.sym} -60 100 0 0 {name=STIMULI1 
only_toplevel=true
place=end
value="
.options gmin=0.0000000000000000000001
*.options savecurrents

.control
save all
op

.endc
"}
C {devices/code.sym} -60 -80 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 30 -270 0 0 {name=V1 value=1.8 net_name=true}
C {devices/gnd.sym} 30 -240 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} 30 -300 0 0 {name=l29 lab=VDD}
C {biases.sym} 370 -230 0 0 {name=x1}
C {devices/lab_pin.sym} 180 -270 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 180 -250 0 1 {name=l1 lab=GND}
C {devices/res.sym} 550 -360 0 0 {name=R1
value=249k
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 620 -280 0 1 {name=Vmeas}
C {devices/ammeter.sym} 550 -300 0 1 {name=Vmeas1}
C {devices/ammeter.sym} 760 -240 0 1 {name=Vmeas2}
C {devices/ammeter.sym} 690 -260 2 0 {name=Vmeas3}
C {devices/ammeter.sym} 830 -220 0 1 {name=Vmeas4}
C {devices/res.sym} 620 -340 0 0 {name=R2
value=2.49M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 760 -300 0 0 {name=R3
value=24.9M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 690 -320 0 0 {name=R4
value=10M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 830 -280 0 0 {name=R5
value=2.49k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 550 -410 0 0 {name=p3 sig_type=std_logic lab=OUT_DAC}
C {devices/lab_pin.sym} 620 -440 0 0 {name=p4 sig_type=std_logic lab=NB1_DAC}
C {devices/lab_pin.sym} 760 -500 0 0 {name=p2 sig_type=std_logic lab=NB2_DAC}
C {devices/lab_pin.sym} 830 -530 0 0 {name=p6 sig_type=std_logic lab=AMP_DAC}
C {devices/isource.sym} -120 -540 0 0 {name=I0 value=1u}
C {devices/lab_pin.sym} -120 -490 0 0 {name=p7 sig_type=std_logic lab=OUT_DAC}
C {devices/vdd.sym} -120 -570 0 0 {name=l2 lab=VDD}
C {devices/isource.sym} 0 -540 0 0 {name=I1 value=400n}
C {devices/lab_pin.sym} 0 -490 0 0 {name=p8 sig_type=std_logic lab=NB1_DAC}
C {devices/vdd.sym} 0 -570 0 0 {name=l3 lab=VDD}
C {devices/isource.sym} 110 -540 0 0 {name=I2 value=30n}
C {devices/lab_pin.sym} 110 -490 0 0 {name=p9 sig_type=std_logic lab=NB2_DAC}
C {devices/vdd.sym} 110 -570 0 0 {name=l4 lab=VDD}
C {devices/isource.sym} 350 -540 0 0 {name=I5 value=100u}
C {devices/lab_pin.sym} 350 -490 0 0 {name=p12 sig_type=std_logic lab=AMP_DAC}
C {devices/vdd.sym} 350 -570 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 690 -470 0 0 {name=p5 sig_type=std_logic lab=SF_DAC}
C {devices/lab_pin.sym} 230 -490 0 0 {name=p11 sig_type=std_logic lab=SF_DAC}
C {devices/gnd.sym} 230 -570 2 0 {name=l5 lab=GND}
C {devices/isource.sym} 230 -540 2 1 {name=I3 value=100n}
