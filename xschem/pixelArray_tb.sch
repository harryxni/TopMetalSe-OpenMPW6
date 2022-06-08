v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Testbench of pixel Array} 450 -1320 0 0 0.7 0.7 {}
N 670 -1130 670 -1100 { lab=PLUS}
N 810 -1130 810 -1100 { lab=vbias}
N 910 -1130 910 -1100 { lab=CSA}
N 1130 -480 1150 -480 { lab=GND}
N 1130 -480 1130 -400 { lab=GND}
N 810 -780 830 -780 {
lab=#net1}
N 1090 -440 1090 -400 {
lab=COL0}
N 1090 -400 1100 -400 {
lab=COL0}
N 1160 -400 1180 -400 {
lab=ARRAY_OUT}
N 1180 -400 1220 -400 {
lab=ARRAY_OUT}
N 1450 -470 1470 -470 { lab=GND}
N 1450 -470 1450 -390 { lab=GND}
N 1410 -430 1410 -390 {
lab=COL1}
N 1410 -390 1420 -390 {
lab=COL1}
N 1480 -390 1500 -390 {
lab=ARRAY_OUT}
N 1500 -390 1540 -390 {
lab=ARRAY_OUT}
N 1790 -480 1810 -480 { lab=GND}
N 1790 -480 1790 -400 { lab=GND}
N 1750 -440 1750 -400 {
lab=COL2}
N 1750 -400 1760 -400 {
lab=COL2}
N 1820 -400 1840 -400 {
lab=ARRAY_OUT}
N 1840 -400 1880 -400 {
lab=ARRAY_OUT}
N 1050 -750 1050 -650 {
lab=COL1}
N 990 -670 990 -570 {
lab=COL2}
N 670 -670 690 -670 {
lab=#net2}
N 670 -630 690 -630 {
lab=#net3}
N 670 -610 690 -610 {
lab=#net4}
N 670 -730 690 -730 {
lab=#net5}
N 670 -770 690 -770 {
lab=#net6}
N 670 -750 690 -750 {
lab=#net7}
N 1080 -770 1080 -670 {
lab=COL0}
N 410 -1130 410 -1100 { lab=GRING}
N 670 -710 690 -710 {
lab=#net8}
N 670 -650 700 -650 {
lab=#net9}
N 630 -500 690 -500 {
lab=sf_ib}
N 530 -480 690 -480 {
lab=NB1}
N 2050 -470 2090 -470 {
lab=#net10}
N 2070 -510 2090 -510 {
lab=AOUT}
N 2070 -630 2070 -510 {
lab=AOUT}
N 2070 -630 2250 -630 {
lab=AOUT}
N 2250 -630 2250 -490 {
lab=AOUT}
N 2230 -490 2250 -490 {
lab=AOUT}
N 2250 -490 2290 -490 {
lab=AOUT}
N 2320 -490 2340 -490 {
lab=AOUT}
N 2290 -490 2320 -490 {
lab=AOUT}
N 1050 -770 1080 -770 {
lab=COL0}
N 670 -690 690 -690 {
lab=#net11}
N 990 -730 990 -670 {
lab=COL2}
N 990 -750 1050 -750 {
lab=COL1}
N 2130 -430 2130 -370 {
lab=#net12}
N 990 -770 1050 -770 {
lab=COL0}
C {devices/code.sym} 10 -920 0 0 {name=STIMULI1 
only_toplevel=true
place=end
value="
.options savecurrents
.options gmin=0.0000000000000000000001
.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
op
tran 1m 100m
plot v(aout)
*plot v(itest)
write pixel_tb.raw
.endc
"}
C {devices/code.sym} 10 -1100 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 300 -1070 0 0 {name=V1 value=1.8 net_name=true}
C {devices/gnd.sym} 300 -1040 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 300 -1100 0 0 {name=l14 lab=VDD}
C {devices/vsource.sym} 670 -1070 0 0 {name=V2 only_toplevel=true value="DC=0.60"}
C {devices/lab_pin.sym} 670 -1130 0 1 {name=l4 sig_type=std_logic lab=PLUS}
C {devices/vsource.sym} 810 -1070 0 0 {name=V5 only_toplevel=true value="DC=0.9"}
C {devices/lab_pin.sym} 810 -1130 0 1 {name=l18 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} 670 -1040 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 810 -1040 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 910 -1070 0 0 {name=V6 only_toplevel=true value="DC=0.35"}
C {devices/lab_pin.sym} 910 -1130 0 1 {name=l30 sig_type=std_logic lab=CSA}
C {devices/gnd.sym} 910 -1040 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 1150 -480 3 0 {name=l121 lab=GND}
C {devices/lab_pin.sym} 1130 -360 3 0 {name=l122 sig_type=std_logic lab=COL_SEL0}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1130 -380 3 0 {name=M2
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
C {devices/lab_pin.sym} 1020 -1100 1 0 {name=l154 sig_type=std_logic lab=ROW_SEL0}
C {devices/vsource.sym} 1020 -1070 0 0 {name=Vrow0 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1020 -1040 0 0 {name=l155 lab=GND}
C {devices/lab_pin.sym} 1290 -1180 1 0 {name=l156 sig_type=std_logic lab=ROW_SEL1}
C {devices/vsource.sym} 1290 -1150 0 0 {name=Vrow1 value="0.0 pulse(0.0 1.8 \{2*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1290 -1120 0 0 {name=l157 lab=GND}
C {devices/lab_pin.sym} 1850 -1350 1 0 {name=l160 sig_type=std_logic lab=COL_SEL0}
C {devices/vsource.sym} 1850 -1320 0 0 {name=Vcol0 value="0 pulse(0.0 1.8 \{pix_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 1850 -1290 0 0 {name=l161 lab=GND}
C {devices/lab_pin.sym} 1510 -1050 1 0 {name=l162 sig_type=std_logic lab=COL_SEL1}
C {devices/vsource.sym} 1510 -1020 0 0 {name=Vcol1 value="0.0 pulse(0.0 1.8 \{pix_time+row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 1510 -990 0 0 {name=l163 lab=GND}
C {devices/vdd.sym} 790 -800 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 820 -800 2 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 810 -340 3 0 {name=l3 sig_type=std_logic lab=ROW_SEL0}
C {devices/lab_pin.sym} 830 -340 3 0 {name=l5 sig_type=std_logic lab=ROW_SEL1}
C {devices/lab_pin.sym} 1090 -1330 1 0 {name=l6 sig_type=std_logic lab=ROW_SEL2}
C {devices/vsource.sym} 1090 -1300 0 0 {name=Vrow2 value="0.0 pulse(0.0 1.8 \{3*pix_time\} 0.1m 0.1m \{pix_time\} \{row_time\})"}
C {devices/gnd.sym} 1090 -1270 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 690 -460 0 0 {name=l17 sig_type=std_logic lab=NB2}
C {devices/lab_pin.sym} 690 -590 2 1 {name=l19 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 690 -520 2 1 {name=l20 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 690 -570 2 1 {name=l21 sig_type=std_logic lab=CSA}
C {devices/lab_pin.sym} 1080 -670 0 1 {name=l29 sig_type=std_logic lab=COL0}
C {devices/lab_pin.sym} 1050 -650 0 1 {name=l34 sig_type=std_logic lab=COL1}
C {devices/lab_pin.sym} 1090 -440 2 1 {name=l37 sig_type=std_logic lab=COL0}
C {devices/lab_pin.sym} 1220 -400 2 0 {name=l43 sig_type=std_logic lab=ARRAY_OUT
}
C {devices/gnd.sym} 1470 -470 3 0 {name=l45 lab=GND}
C {devices/lab_pin.sym} 1450 -350 3 0 {name=l48 sig_type=std_logic lab=COL_SEL1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1450 -370 3 0 {name=M6
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
C {devices/lab_pin.sym} 1410 -430 2 1 {name=l49 sig_type=std_logic lab=COL1}
C {devices/gnd.sym} 1810 -480 3 0 {name=l56 lab=GND}
C {devices/lab_pin.sym} 1790 -360 3 0 {name=l57 sig_type=std_logic lab=COL_SEL2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1790 -380 3 0 {name=M7
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
C {devices/lab_pin.sym} 1750 -440 2 1 {name=l58 sig_type=std_logic lab=COL2}
C {devices/gnd.sym} 1510 -990 0 0 {name=l63 lab=GND}
C {devices/lab_pin.sym} 2140 -1100 1 0 {name=l64 sig_type=std_logic lab=COL_SEL2}
C {devices/vsource.sym} 2140 -1070 0 0 {name=Vcol4 value="0.0 pulse(0.0 1.8 \{pix_time+2*row_time\} 0.1m 0.1m \{row_time\} \{col_time\})"}
C {devices/gnd.sym} 2140 -1040 0 0 {name=l65 lab=GND}
C {devices/gnd.sym} 2140 -1040 0 0 {name=l67 lab=GND}
C {/home/damic/CMOS/TopmetalSe/Pixel/Testbench/array_symtb.sym} 840 -570 0 0 {name=x1}
C {devices/lab_pin.sym} 850 -340 3 0 {name=l9 sig_type=std_logic lab=ROW_SEL2}
C {devices/lab_pin.sym} 990 -570 0 1 {name=l10 sig_type=std_logic lab=COL2}
C {devices/code_shown.sym} -30 -470 0 0 {name=SPICE only_toplevel=false value="
.param array_size = 3
.param pix_time = 1m


.param row_time = \{array_size*pix_time\}

.param col_time = \{array_size*row_time\}


"}
C {devices/vsource.sym} 410 -1070 0 0 {name=V3 only_toplevel=true value="DC=0"}
C {devices/gnd.sym} 410 -1040 0 0 {name=V7 only_toplevel=true value="DC=0"}
C {devices/lab_pin.sym} 410 -1130 2 0 {name=l24 sig_type=std_logic lab=GRING}
C {devices/lab_pin.sym} 690 -540 0 0 {name=l32 sig_type=std_logic lab=GRING}
C {/home/damic/CMOS/TopmetalSe/ChipOutputBuffer/Schematic/opamp.sym} 2160 -490 0 0 {name=x2}
C {devices/lab_pin.sym} 2170 -430 2 0 {name=l61 sig_type=std_logic lab=GND}
C {devices/vdd.sym} 2150 -540 0 0 {name=l62 lab=VDD}
C {devices/lab_pin.sym} 2340 -490 2 0 {name=l66 sig_type=std_logic lab=AOUT}
C {devices/lab_pin.sym} 630 -500 0 0 {name=l15 sig_type=std_logic lab=sf_ib}
C {devices/lab_pin.sym} 530 -480 2 1 {name=l16 sig_type=std_logic lab=NB1}
C {devices/lab_pin.sym} 1540 -390 2 0 {name=l8 sig_type=std_logic lab=ARRAY_OUT
}
C {devices/lab_pin.sym} 1880 -400 2 0 {name=l11 sig_type=std_logic lab=ARRAY_OUT
}
C {devices/lab_pin.sym} 2050 -470 0 0 {name=l12 sig_type=std_logic lab=ARRAY_OUT
}
