v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4190 300 4210 300 { lab=GND}
N 4190 300 4190 380 { lab=GND}
N 3980 -370 4000 -370 {
lab=#net1}
N 4150 340 4150 380 {
lab=COL0}
N 4150 380 4160 380 {
lab=COL0}
N 4220 380 4240 380 {
lab=ARRAY_OUT}
N 4240 380 4280 380 {
lab=ARRAY_OUT}
N 4510 310 4530 310 { lab=GND}
N 4510 310 4510 390 { lab=GND}
N 4470 350 4470 390 {
lab=COL1}
N 4470 390 4480 390 {
lab=COL1}
N 4540 390 4560 390 {
lab=ARRAY_OUT}
N 4560 390 4600 390 {
lab=ARRAY_OUT}
N 4850 300 4870 300 { lab=GND}
N 4850 300 4850 380 { lab=GND}
N 4810 340 4810 380 {
lab=COL2}
N 4810 380 4820 380 {
lab=COL2}
N 4880 380 4900 380 {
lab=ARRAY_OUT}
N 4900 380 4940 380 {
lab=ARRAY_OUT}
N 4220 -340 4220 -240 {
lab=COL1}
N 4190 -340 4220 -340 {
lab=COL1}
N 4160 -340 4190 -340 {
lab=COL1}
N 4190 -320 4190 -220 {
lab=COL2}
N 4160 -320 4190 -320 {
lab=COL2}
N 4250 -360 4250 -260 {
lab=COL0}
N 4750 -220 4790 -220 {
lab=ARRAY_OUT}
N 4770 -260 4790 -260 {
lab=io_analog[0]}
N 4770 -380 4770 -260 {
lab=io_analog[0]}
N 4770 -380 4950 -380 {
lab=io_analog[0]}
N 4950 -380 4950 -240 {
lab=io_analog[0]}
N 4930 -240 4950 -240 {
lab=io_analog[0]}
N 4950 -240 4990 -240 {
lab=io_analog[0]}
N 5020 -240 5040 -240 {
lab=io_analog[0]}
N 4990 -240 5020 -240 {
lab=io_analog[0]}
N 4430 10 4580 10 {
lab=io_analog[5]}
N 4620 -30 4620 -20 {
lab=ARRAY_OUT}
N 4620 40 4620 70 {
lab=GND}
N 4620 10 4640 10 {
lab=GND}
N 4640 10 4640 40 {
lab=GND}
N 4620 40 4640 40 {
lab=GND}
N 4560 -220 4760 -220 {
lab=ARRAY_OUT}
N 4620 -220 4620 -30 {
lab=ARRAY_OUT}
N 4870 -60 5020 -60 {
lab=io_analog[4]}
N 4830 -100 4830 -90 {
lab=#net2}
N 4830 -30 4830 0 {
lab=GND}
N 4810 -60 4830 -60 {
lab=GND}
N 4810 -60 4810 -30 {
lab=GND}
N 4810 -30 4830 -30 {
lab=GND}
N 4830 -180 4830 -100 {
lab=#net2}
N 3210 -350 3250 -350 {
lab=VDD}
N 3200 -410 3250 -410 {
lab=GND}
N 4220 -360 4250 -360 {
lab=COL0}
N 4160 -360 4220 -360 {
lab=COL0}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/gnd.sym} 4210 300 3 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4190 400 3 0 {name=M1
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
C {devices/vdd.sym} 3960 -390 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 3990 -390 2 1 {name=l8 lab=GND}
C {devices/lab_pin.sym} 4250 -260 0 1 {name=l18 sig_type=std_logic lab=COL0}
C {devices/lab_pin.sym} 4220 -240 0 1 {name=l22 sig_type=std_logic lab=COL1}
C {devices/lab_pin.sym} 4150 340 2 1 {name=l23 sig_type=std_logic lab=COL0}
C {devices/gnd.sym} 4530 310 3 0 {name=l24 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4510 410 3 0 {name=M3
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
C {devices/lab_pin.sym} 4470 350 2 1 {name=l26 sig_type=std_logic lab=COL1}
C {devices/gnd.sym} 4870 300 3 0 {name=l27 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4850 400 3 0 {name=M4
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
C {devices/lab_pin.sym} 4810 340 2 1 {name=l30 sig_type=std_logic lab=COL2}
C {/home/damic/CMOS/TopmetalSe/Pixel/Testbench/array_symtb.sym} 4010 -160 0 0 {name=x3}
C {devices/lab_pin.sym} 4190 -220 0 1 {name=l35 sig_type=std_logic lab=COL2}
C {devices/lab_pin.sym} 5040 -240 2 0 {name=l36 sig_type=std_logic lab=io_analog[0]}
C {/home/damic/CMOS/TopmetalSe/ChipOutputBuffer/Schematic/opamp.sym} 4860 -240 0 0 {name=x4}
C {devices/lab_pin.sym} 4870 -180 2 0 {name=l46 sig_type=std_logic lab=GND}
C {devices/vdd.sym} 4850 -290 0 0 {name=l47 lab=VDD}
C {devices/lab_pin.sym} 3860 -130 0 0 {name=l50 sig_type=std_logic lab=io_analog[2]}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4600 10 0 0 {name=M8
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
C {devices/lab_pin.sym} 4620 70 0 1 {name=l65 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 3860 -160 0 0 {name=l67 sig_type=std_logic lab=io_analog[10]}
C {devices/lab_pin.sym} 3860 -180 0 0 {name=l68 sig_type=std_logic lab=io_analog[9]}
C {devices/lab_pin.sym} 4280 380 0 1 {name=l1 sig_type=std_logic lab=ARRAY_OUT}
C {devices/lab_pin.sym} 4600 390 0 1 {name=l2 sig_type=std_logic lab=ARRAY_OUT}
C {devices/lab_pin.sym} 4940 380 0 1 {name=l3 sig_type=std_logic lab=ARRAY_OUT}
C {devices/lab_pin.sym} 4560 -220 2 1 {name=l5 sig_type=std_logic lab=ARRAY_OUT}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4850 -60 0 1 {name=M10
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
C {devices/lab_pin.sym} 4830 0 0 0 {name=l69 sig_type=std_logic lab=GND}
C {devices/vdd.sym} 3210 -350 3 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 3200 -410 1 1 {name=l11 lab=GND}
C {biases.sym} 4270 -650 0 0 {name=x1}
C {devices/vdd.sym} 4120 -690 3 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 4120 -670 1 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 3980 70 3 0 {name=l12 sig_type=std_logic lab=gpio_analog[0]}
C {devices/lab_pin.sym} 4000 70 3 0 {name=l13 sig_type=std_logic lab=gpio_analog[1]}
C {devices/lab_pin.sym} 4020 70 3 0 {name=l33 sig_type=std_logic lab=gpio_analog[2]}
C {devices/lab_pin.sym} 4190 420 3 0 {name=l6 sig_type=std_logic lab=gpio_analog[4]}
C {devices/lab_pin.sym} 4510 430 3 0 {name=l25 sig_type=std_logic lab=gpio_analog[5]}
C {devices/lab_pin.sym} 4850 420 3 0 {name=l28 sig_type=std_logic lab=gpio_analog[6]}
C {devices/lab_pin.sym} 3860 -70 0 0 {name=l39 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_pin.sym} 3860 -50 0 0 {name=l40 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4420 -690 2 0 {name=l17 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4420 -610 2 0 {name=l19 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 4420 -630 2 0 {name=l20 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4420 -670 2 0 {name=l21 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_pin.sym} 3860 -90 0 0 {name=l14 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 3860 -110 0 0 {name=l29 sig_type=std_logic lab=io_analog[8]}
C {devices/lab_pin.sym} 4420 -650 2 0 {name=l32 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 4430 10 0 0 {name=l9 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 5020 -60 2 0 {name=l31 sig_type=std_logic lab=io_analog[4]}
C {devices/isource.sym} 3830 -240 3 0 {name=I0 value="PULSE(0 100p 60m 0.01m 0.01m 10u)"}
C {devices/gnd.sym} 3800 -240 1 0 {name=l34 lab=GND}
