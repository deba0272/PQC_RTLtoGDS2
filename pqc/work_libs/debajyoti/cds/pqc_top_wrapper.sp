* SPICE NETLIST
***************************************

.SUBCKT subil_presistorpower 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 8253.06 L=1.46e-05 W=2.1e-06 $[RW] $X=-20 $Y=10560 $D=77
.ENDS
***************************************
.SUBCKT subil_pngatering_ESD22
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD22
** N=4 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD22
** N=4 EP=0 IP=8 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT ICV_1 2 3 4
** N=4 EP=3 IP=8 FDC=4
M0 4 3 2 2 N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=26020 $Y=-8870 $D=24
M1 2 3 4 2 N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=26020 $Y=-1400 $D=24
M2 4 3 2 2 N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=26020 $Y=570 $D=24
M3 2 3 4 2 N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=26020 $Y=8040 $D=24
.ENDS
***************************************
.SUBCKT subil_iorulepower
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_4via_ESD
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pv0icon_ESD
** N=5 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_psegment
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_via1array
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_via2array
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_cornerarray
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pad
** N=3 EP=0 IP=18 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower_0di_ESD22
** N=5 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower_0di_ESD22
** N=5 EP=0 IP=10 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_ppbuffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=30 FDC=12
M0 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=5.48e-11 PD=4.504e-05 PS=8.274e-05 postlayout="1" $X=9010 $Y=-510 $D=36
M1 1 3 2 1 P L=2.5e-07 W=4e-05 AD=3.44e-11 AS=1.008e-10 PD=4.172e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=4780 $D=36
M2 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=3.44e-11 PD=4.504e-05 PS=4.172e-05 postlayout="1" $X=9010 $Y=6750 $D=36
M3 1 3 2 1 P L=2.5e-07 W=4e-05 AD=3.44e-11 AS=1.008e-10 PD=4.172e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=12040 $D=36
M4 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=3.44e-11 PD=4.504e-05 PS=4.172e-05 postlayout="1" $X=9010 $Y=14010 $D=36
M5 1 3 2 1 P L=2.5e-07 W=4e-05 AD=3.44e-11 AS=1.008e-10 PD=4.172e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=19300 $D=36
M6 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=3.44e-11 PD=4.504e-05 PS=4.172e-05 postlayout="1" $X=9010 $Y=21270 $D=36
M7 1 3 2 1 P L=2.5e-07 W=4e-05 AD=3.44e-11 AS=1.008e-10 PD=4.172e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=26560 $D=36
M8 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=3.44e-11 PD=4.504e-05 PS=4.172e-05 postlayout="1" $X=9010 $Y=28530 $D=36
M9 1 3 2 1 P L=2.5e-07 W=4e-05 AD=3.44e-11 AS=1.008e-10 PD=4.172e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=33820 $D=36
M10 2 3 1 1 P L=2.5e-07 W=4e-05 AD=1.008e-10 AS=3.44e-11 PD=4.504e-05 PS=4.172e-05 postlayout="1" $X=9010 $Y=35790 $D=36
M11 1 3 2 1 P L=2.5e-07 W=4e-05 AD=5.48e-11 AS=1.008e-10 PD=8.274e-05 PS=4.504e-05 postlayout="1" $X=9010 $Y=41080 $D=36
.ENDS
***************************************
.SUBCKT subil_pdiodepower
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_powerbase_1 1 2 3 4
** N=9 EP=4 IP=6 FDC=19
D0 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=14620 $Y=11030 $D=97
D1 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=17420 $Y=11030 $D=97
D2 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=20220 $Y=11030 $D=97
D3 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=23020 $Y=11030 $D=97
D4 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=25820 $Y=11030 $D=97
D5 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=28620 $Y=11030 $D=97
D6 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=31420 $Y=11030 $D=97
D7 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=34220 $Y=11030 $D=97
D8 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=37020 $Y=11030 $D=97
D9 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=43960 $Y=11030 $D=97
D10 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=46760 $Y=11030 $D=97
D11 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=49560 $Y=11030 $D=97
D12 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=52360 $Y=11030 $D=97
D13 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=55160 $Y=11030 $D=97
D14 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=57960 $Y=11030 $D=97
D15 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=60760 $Y=11030 $D=97
D16 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=63560 $Y=11030 $D=97
D17 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=66360 $Y=11030 $D=97
C18 1 2 L=1.513e-05 W=1.513e-05 $[CH] $X=51860 $Y=41355 $D=110
.ENDS
***************************************
.SUBCKT pv0i VSSO VSS VDD
** N=9 EP=3 IP=55 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
M0 VSS 6 VDD VSS N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=12520 $Y=95670 $D=24
M1 VDD 6 VSS VSS N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=3.99e-11 PD=3.722e-05 PS=6.266e-05 postlayout="1" $X=5050 $Y=95670 $D=24
M2 VSS 6 VDD VSS N L=2.5e-07 W=3e-05 AD=3.99e-11 AS=1.083e-10 PD=6.266e-05 PS=3.722e-05 postlayout="1" $X=59720 $Y=95670 $D=24
M3 VDD 6 VSS VSS N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=52250 $Y=95670 $D=24
X4 VDD 5 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X5 5 7 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X6 6 8 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X7 8 VSS subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X12 VSS 6 VDD ICV_1 $T=22780 151690 1 270 $X=11850 $Y=87580
X13 VSS 6 VDD ICV_1 $T=41660 151690 1 270 $X=30730 $Y=87580
X17 VDD VSS 7 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
X18 VDD 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
.ENDS
***************************************
.SUBCKT subil_pngatering22
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pvdicon_ESD
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD122
** N=5 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD122
** N=5 EP=0 IP=10 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_powerbasecon_ESD 1 2 3 4
** N=10 EP=4 IP=12 FDC=4
X0 3 9 subil_presistorpower $T=1110 -9670 0 0 $X=910 $Y=-180
X1 9 2 subil_presistorpower $T=1110 10390 0 0 $X=910 $Y=19880
X2 1 10 subil_presistorpower $T=56330 -9550 0 0 $X=56130 $Y=-60
X3 10 4 subil_presistorpower $T=56330 10510 0 0 $X=56130 $Y=20000
.ENDS
***************************************
.SUBCKT pvdi VSSO VSS VDD
** N=7 EP=3 IP=69 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
M0 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=12520 $Y=95670 $D=24
M1 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=3.99e-11 PD=3.722e-05 PS=6.266e-05 postlayout="1" $X=5050 $Y=95670 $D=24
M2 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=21960 $Y=95670 $D=24
M3 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=14490 $Y=95670 $D=24
M4 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=31400 $Y=95670 $D=24
M5 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=23930 $Y=95670 $D=24
M6 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=40840 $Y=95670 $D=24
M7 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=33370 $Y=95670 $D=24
M8 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=2.58e-11 AS=1.083e-10 PD=3.172e-05 PS=3.722e-05 postlayout="1" $X=50280 $Y=95670 $D=24
M9 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=42810 $Y=95670 $D=24
M10 VSSO 6 VDD VSSO N L=2.5e-07 W=3e-05 AD=3.99e-11 AS=1.083e-10 PD=6.266e-05 PS=3.722e-05 postlayout="1" $X=59720 $Y=95670 $D=24
M11 VDD 6 VSSO VSSO N L=2.5e-07 W=3e-05 AD=1.083e-10 AS=2.58e-11 PD=3.722e-05 PS=3.172e-05 postlayout="1" $X=52250 $Y=95670 $D=24
X14 VDD VSS 5 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
X15 VDD 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X25 6 5 VDD VSS subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
.ENDS
***************************************
.SUBCKT pfeed00010
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00120
** N=5 EP=0 IP=60 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00040
** N=5 EP=0 IP=20 FDC=0
.ENDS
***************************************
.SUBCKT ICV_2
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_3
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT pfeed30000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed10000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed02000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed01000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_4
** N=5 EP=0 IP=30 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatering
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD
** N=4 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD
** N=4 EP=0 IP=8 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT ICV_5 1 2 3
** N=4 EP=3 IP=8 FDC=4
M0 1 3 2 2 NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=26020 $Y=-8870 $D=20
M1 2 3 1 2 NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=26020 $Y=-1550 $D=20
M2 1 3 2 2 NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=26020 $Y=570 $D=20
M3 2 3 1 2 NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=26020 $Y=7890 $D=20
.ENDS
***************************************
.SUBCKT subil_pv0acon_ESD
** N=4 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower
** N=6 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower
** N=6 EP=0 IP=12 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_ppbuffpower 1 3 4
** N=6 EP=3 IP=36 FDC=12
M0 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=5.68e-11 PD=4.464e-05 PS=8.284e-05 postlayout="1" $X=9010 $Y=-460 $D=39
M1 1 3 4 1 PH L=4e-07 W=4e-05 AD=3.64e-11 AS=9.28e-11 PD=4.182e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=4580 $D=39
M2 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=3.64e-11 PD=4.464e-05 PS=4.182e-05 postlayout="1" $X=9010 $Y=6800 $D=39
M3 1 3 4 1 PH L=4e-07 W=4e-05 AD=3.64e-11 AS=9.28e-11 PD=4.182e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=11840 $D=39
M4 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=3.64e-11 PD=4.464e-05 PS=4.182e-05 postlayout="1" $X=9010 $Y=14060 $D=39
M5 1 3 4 1 PH L=4e-07 W=4e-05 AD=3.64e-11 AS=9.28e-11 PD=4.182e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=19100 $D=39
M6 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=3.64e-11 PD=4.464e-05 PS=4.182e-05 postlayout="1" $X=9010 $Y=21320 $D=39
M7 1 3 4 1 PH L=4e-07 W=4e-05 AD=3.64e-11 AS=9.28e-11 PD=4.182e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=26360 $D=39
M8 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=3.64e-11 PD=4.464e-05 PS=4.182e-05 postlayout="1" $X=9010 $Y=28580 $D=39
M9 1 3 4 1 PH L=4e-07 W=4e-05 AD=3.64e-11 AS=9.28e-11 PD=4.182e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=33620 $D=39
M10 4 3 1 1 PH L=4e-07 W=4e-05 AD=9.28e-11 AS=3.64e-11 PD=4.464e-05 PS=4.182e-05 postlayout="1" $X=9010 $Y=35840 $D=39
M11 1 3 4 1 PH L=4e-07 W=4e-05 AD=5.68e-11 AS=9.28e-11 PD=8.284e-05 PS=4.464e-05 postlayout="1" $X=9010 $Y=40880 $D=39
.ENDS
***************************************
.SUBCKT pv0a VSSO VSS VDDO
** N=8 EP=3 IP=61 FDC=47
*.CALIBRE ISOLATED NETS: VDD
M0 VSSO 6 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=12370 $Y=95670 $D=20
M1 VDDO 6 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=3.99e-11 PD=3.692e-05 PS=6.266e-05 postlayout="1" $X=5050 $Y=95670 $D=20
M2 VSSO 6 VDDO VSSO NH L=4e-07 W=3e-05 AD=3.99e-11 AS=1.038e-10 PD=6.266e-05 PS=3.692e-05 postlayout="1" $X=59570 $Y=95670 $D=20
M3 VDDO 6 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=52250 $Y=95670 $D=20
X4 VDDO 5 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X5 5 7 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X6 6 8 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X7 8 VSSO subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X10 VDDO 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X15 VDDO VSSO 6 ICV_5 $T=22780 151690 1 270 $X=11850 $Y=87580
X16 VDDO VSSO 6 ICV_5 $T=41660 151690 1 270 $X=30730 $Y=87580
X18 VDDO 7 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD1
** N=4 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD1
** N=4 EP=0 IP=8 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pvdacon_ESD
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pvda VSSO VSS VDDO
** N=7 EP=3 IP=65 FDC=47
*.CALIBRE ISOLATED NETS: VDD
M0 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=12370 $Y=95670 $D=20
M1 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=3.99e-11 PD=3.692e-05 PS=6.266e-05 postlayout="1" $X=5050 $Y=95670 $D=20
M2 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=21810 $Y=95670 $D=20
M3 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=14490 $Y=95670 $D=20
M4 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=31250 $Y=95670 $D=20
M5 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=23930 $Y=95670 $D=20
M6 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=40690 $Y=95670 $D=20
M7 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=33370 $Y=95670 $D=20
M8 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=2.58e-11 AS=1.038e-10 PD=3.172e-05 PS=3.692e-05 postlayout="1" $X=50130 $Y=95670 $D=20
M9 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=42810 $Y=95670 $D=20
M10 VSSO 5 VDDO VSSO NH L=4e-07 W=3e-05 AD=3.99e-11 AS=1.038e-10 PD=6.266e-05 PS=3.692e-05 postlayout="1" $X=59570 $Y=95670 $D=20
M11 VDDO 5 VSSO VSSO NH L=4e-07 W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05 postlayout="1" $X=52250 $Y=95670 $D=20
X14 VDDO 5 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X15 5 6 VDDO VSSO subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
X18 VDDO 6 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
.ENDS
***************************************
.SUBCKT subil_preside
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_CDNS_7842994551247
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7842994551245
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7842994551246
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT rpmpoly2t$$44660780 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 1180.05 L=6.455e-06 W=2e-06 $[RD] $X=0 $Y=540 $D=63
.ENDS
***************************************
.SUBCKT subil_vddring
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_podrive01 2 4 5 6 7 8 9
** N=15 EP=7 IP=20 FDC=23
M0 4 11 8 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.6e-12 PD=1.082e-05 PS=2.132e-05 postlayout="1" $X=26380 $Y=9530 $D=20
M1 8 11 4 2 NH L=3.6e-07 W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05 postlayout="1" $X=27560 $Y=9530 $D=20
M2 4 12 6 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=31460 $Y=9730 $D=20
M3 6 12 4 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05 postlayout="1" $X=32640 $Y=9730 $D=20
M4 4 12 6 2 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=33820 $Y=9730 $D=20
M5 14 15 7 2 NH L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05 postlayout="1" $X=46220 $Y=5700 $D=20
M6 8 5 14 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=46270 $Y=9480 $D=20
M7 14 5 8 2 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=47450 $Y=9480 $D=20
M8 8 15 11 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=49970 $Y=9530 $D=20
M9 11 15 8 2 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=51150 $Y=9530 $D=20
M10 2 5 15 2 N L=1.8e-07 W=5e-06 AD=2.925e-12 AS=2.925e-12 PD=1.117e-05 PS=1.117e-05 postlayout="1" $X=59410 $Y=11640 $D=24
M11 7 11 6 7 PH L=3.6e-07 W=2e-05 AD=8.2e-12 AS=1.32e-11 PD=2.082e-05 PS=4.132e-05 postlayout="1" $X=26550 $Y=38440 $D=39
M12 6 11 7 7 PH L=3.6e-07 W=2e-05 AD=1.24e-11 AS=8.2e-12 PD=4.124e-05 PS=2.082e-05 postlayout="1" $X=27730 $Y=38440 $D=39
M13 4 13 6 7 PH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=31560 $Y=48370 $D=39
M14 6 13 4 7 PH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05 postlayout="1" $X=32740 $Y=48370 $D=39
M15 4 13 6 7 PH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=33920 $Y=48370 $D=39
M16 7 11 14 7 PH L=3.6e-07 W=7.2e-06 AD=2.952e-12 AS=4.464e-12 PD=8.02e-06 PS=1.564e-05 postlayout="1" $X=45390 $Y=37110 $D=39
M17 11 14 7 7 PH L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06 postlayout="1" $X=46570 $Y=37110 $D=39
M18 15 5 9 9 P L=1.8e-07 W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05 postlayout="1" $X=72980 $Y=50100 $D=36
M19 9 5 15 9 P L=1.8e-07 W=5e-06 AD=3.1e-12 AS=1.4e-12 PD=1.124e-05 PS=5.56e-06 postlayout="1" $X=73720 $Y=50100 $D=36
D20 2 5 DN AREA=2.5e-13 PJ=2e-06 $X=60885 $Y=10080 $D=92
X27 12 7 rpmpoly2t$$44660780 $T=30895 6880 0 270 $X=30715 $Y=4660
X28 13 8 rpmpoly2t$$44660780 $T=33810 45745 0 180 $X=31590 $Y=38030
.ENDS
***************************************
.SUBCKT subil_pngatebuff
** N=6 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT subil_pngate2buff
** N=7 EP=0 IP=12 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7842994551240
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnbuff 1 3 4 5
** N=7 EP=4 IP=60 FDC=12
M0 1 3 5 1 NH L=5e-07 W=3e-05 AD=2.58e-11 AS=1.008e-10 PD=3.172e-05 PS=3.672e-05 postlayout="1" $X=27510 $Y=69950 $D=20
M1 5 3 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05 postlayout="1" $X=20290 $Y=69950 $D=20
M2 1 3 5 1 NH L=5e-07 W=3e-05 AD=2.58e-11 AS=1.008e-10 PD=3.172e-05 PS=3.672e-05 postlayout="1" $X=36950 $Y=69950 $D=20
M3 5 3 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05 postlayout="1" $X=29730 $Y=69950 $D=20
M4 1 3 5 1 NH L=5e-07 W=3e-05 AD=2.58e-11 AS=1.008e-10 PD=3.172e-05 PS=3.672e-05 postlayout="1" $X=46390 $Y=69950 $D=20
M5 5 3 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05 postlayout="1" $X=39170 $Y=69950 $D=20
M6 1 3 5 1 NH L=5e-07 W=3e-05 AD=2.58e-11 AS=1.008e-10 PD=3.172e-05 PS=3.672e-05 postlayout="1" $X=55830 $Y=69950 $D=20
M7 5 3 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05 postlayout="1" $X=48610 $Y=69950 $D=20
M8 1 4 5 1 NH L=5e-07 W=3e-05 AD=2.58e-11 AS=1.008e-10 PD=3.172e-05 PS=3.672e-05 postlayout="1" $X=65270 $Y=69950 $D=20
M9 5 3 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05 postlayout="1" $X=58050 $Y=69950 $D=20
M10 1 3 5 1 NH L=5e-07 W=3e-05 AD=3.99e-11 AS=1.008e-10 PD=6.266e-05 PS=3.672e-05 postlayout="1" $X=74710 $Y=69950 $D=20
M11 5 4 1 1 NH L=5e-07 W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05 postlayout="1" $X=67490 $Y=69950 $D=20
.ENDS
***************************************
.SUBCKT subil_ppgatebuff 2 3 4
** N=4 EP=3 IP=0 FDC=1
M0 2 3 4 2 PH L=4e-07 W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05 postlayout="1" $X=10090 $Y=4110 $D=39
.ENDS
***************************************
.SUBCKT subil_ppgate2buff 2 3 4
** N=4 EP=3 IP=8 FDC=2
X0 2 3 4 subil_ppgatebuff $T=1480 3020 1 0 $X=4750 $Y=-4550
X1 2 3 4 subil_ppgatebuff $T=1480 -560 0 0 $X=4750 $Y=-1860
.ENDS
***************************************
.SUBCKT subil_ppbuff 1 2 3 4
** N=5 EP=4 IP=16 FDC=12
M0 4 1 3 3 PH L=4e-07 W=5.2e-05 AD=1.2064e-10 AS=7.384e-11 PD=5.664e-05 PS=0.00010684 postlayout="1" $X=10500 $Y=-460 $D=39
M1 3 1 4 3 PH L=4e-07 W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05 postlayout="1" $X=10500 $Y=4580 $D=39
M2 4 2 3 3 PH L=4e-07 W=5.2e-05 AD=1.2064e-10 AS=4.732e-11 PD=5.664e-05 PS=5.382e-05 postlayout="1" $X=10500 $Y=35840 $D=39
M3 3 2 4 3 PH L=4e-07 W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05 postlayout="1" $X=10500 $Y=40880 $D=39
X4 3 1 4 subil_ppgate2buff $T=-1070 8290 0 0 $X=3680 $Y=3740
X5 3 1 4 subil_ppgate2buff $T=-1070 15550 0 0 $X=3680 $Y=11000
X6 3 1 4 subil_ppgate2buff $T=-1070 22810 0 0 $X=3680 $Y=18260
X7 3 1 4 subil_ppgate2buff $T=-1070 30070 0 0 $X=3680 $Y=25520
.ENDS
***************************************
.SUBCKT subil_iorule
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppolyres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 2 1 302.279 L=2.5e-06 W=4e-06 $[RE] $X=140 $Y=5120 $D=68
.ENDS
***************************************
.SUBCKT subil_nwellres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 4891.48 L=8.65e-06 W=2.1e-06 $[RW] $X=2060 $Y=720 $D=77
.ENDS
***************************************
.SUBCKT pc3o01 VSSO VSS VDD VDDO PAD I
** N=12 EP=6 IP=40 FDC=51
X1 VSS 12 I 9 VDDO VSSO VDD subil_podrive01 $T=-15430 134970 0 0 $X=-920 $Y=92510
X3 VSSO 11 12 PAD subil_pnbuff $T=-15240 25720 0 0 $X=-870 $Y=87580
X4 8 9 VDDO PAD subil_ppbuff $T=-4000 203800 0 0 $X=-350 $Y=196990
X6 10 7 subil_ppolyres $T=18405 135660 0 270 $X=21975 $Y=131300
X7 PAD 10 subil_ppolyres $T=35220 135670 0 270 $X=38790 $Y=131310
X8 VSSO 11 subil_nwellres $T=51125 154185 0 270 $X=51665 $Y=142555
X9 8 VDDO subil_nwellres $T=59985 154235 0 270 $X=60525 $Y=142605
.ENDS
***************************************
.SUBCKT subil_midconer2
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfrelr
** N=4 EP=0 IP=8 FDC=0
*.CALIBRE ISOLATED NETS: VDDO VDD VSSO VSS
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7842994551239
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_6
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_7
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_8
** N=5 EP=0 IP=20 FDC=0
.ENDS
***************************************
.SUBCKT ICV_9
** N=5 EP=0 IP=15 FDC=0
.ENDS
***************************************
.SUBCKT subil_pddrive01 1 2 4 5 6 7 8 9
** N=17 EP=8 IP=32 FDC=25
M0 6 13 6 1 NH L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=1.03354e-11 PD=1.749e-05 PS=3.458e-05 postlayout="1" $X=20320 $Y=3530 $D=20
M1 6 13 6 1 NH L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=6.8347e-12 PD=1.749e-05 PS=1.749e-05 postlayout="1" $X=21500 $Y=3530 $D=20
M2 6 13 6 1 NH L=3.6e-07 W=1.667e-05 AD=1.05021e-11 AS=6.8347e-12 PD=3.46e-05 PS=1.749e-05 postlayout="1" $X=22680 $Y=3530 $D=20
M3 7 12 6 1 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05 postlayout="1" $X=24690 $Y=9600 $D=20
M4 8 16 5 1 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=29880 $Y=9440 $D=20
M5 5 16 8 1 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=31060 $Y=9440 $D=20
M6 2 5 8 1 NH L=3.6e-07 W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05 postlayout="1" $X=33180 $Y=12350 $D=20
M7 4 2 1 1 NH L=3.6e-07 W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05 postlayout="1" $X=35210 $Y=9420 $D=20
M8 6 11 6 7 PH L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=1.03354e-11 PD=1.749e-05 PS=3.458e-05 postlayout="1" $X=18780 $Y=42620 $D=39
M9 6 11 6 7 PH L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=6.8347e-12 PD=1.749e-05 PS=1.749e-05 postlayout="1" $X=19960 $Y=42620 $D=39
M10 6 11 6 7 PH L=3.6e-07 W=1.667e-05 AD=1.05021e-11 AS=6.8347e-12 PD=3.46e-05 PS=1.749e-05 postlayout="1" $X=21140 $Y=42620 $D=39
M11 7 14 6 7 PH L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05 postlayout="1" $X=23240 $Y=40340 $D=39
M12 7 15 5 7 PH L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05 postlayout="1" $X=29970 $Y=39200 $D=39
M13 17 5 7 7 PH L=3.6e-07 W=2e-05 AD=4e-12 AS=1.24e-11 PD=2.04e-05 PS=4.124e-05 postlayout="1" $X=32580 $Y=39250 $D=39
M14 2 5 17 7 PH L=3.6e-07 W=2e-05 AD=1.24e-11 AS=4e-12 PD=4.124e-05 PS=2.04e-05 postlayout="1" $X=33340 $Y=39250 $D=39
M15 9 2 4 9 PH L=3.6e-07 W=8e-06 AD=3.28e-12 AS=5.36e-12 PD=8.82e-06 PS=1.734e-05 postlayout="1" $X=65900 $Y=48020 $D=39
M16 4 2 9 9 PH L=3.6e-07 W=8e-06 AD=3.28e-12 AS=3.28e-12 PD=8.82e-06 PS=8.82e-06 postlayout="1" $X=67080 $Y=48020 $D=39
M17 9 2 4 9 PH L=3.6e-07 W=8e-06 AD=3.28e-12 AS=3.28e-12 PD=8.82e-06 PS=8.82e-06 postlayout="1" $X=68260 $Y=48020 $D=39
M18 4 2 9 9 PH L=3.6e-07 W=8e-06 AD=4.96e-12 AS=3.28e-12 PD=1.724e-05 PS=8.82e-06 postlayout="1" $X=69440 $Y=48020 $D=39
X25 15 7 rpmpoly2t$$44660780 $T=27675 59970 0 180 $X=25455 $Y=52255
X26 8 11 rpmpoly2t$$44660780 $T=28390 50475 0 180 $X=26170 $Y=42760
X27 7 13 rpmpoly2t$$44660780 $T=35785 3175 0 90 $X=28070 $Y=2955
X28 7 12 rpmpoly2t$$44660780 $T=35785 5530 0 90 $X=28070 $Y=5310
X29 14 8 rpmpoly2t$$44660780 $T=28535 37840 0 270 $X=28355 $Y=35620
X30 8 16 rpmpoly2t$$44660780 $T=47880 3175 0 90 $X=40165 $Y=2955
.ENDS
***************************************
.SUBCKT pc3d01 VSSO VSS VDD VDDO CIN PAD
** N=11 EP=6 IP=37 FDC=52
X2 VSSO 11 11 PAD subil_pnbuff $T=-15240 25720 0 0 $X=-870 $Y=87580
X3 7 7 VDDO PAD subil_ppbuff $T=-4000 203800 0 0 $X=-350 $Y=196990
X5 PAD 8 subil_ppolyres $T=30480 136210 1 270 $X=21200 $Y=131850
X6 9 8 subil_ppolyres $T=35960 136210 0 270 $X=39530 $Y=131850
X7 VSSO 11 subil_nwellres $T=59660 149815 0 270 $X=60200 $Y=138185
X8 VSS 10 CIN 9 7 VDDO VSSO VDD subil_pddrive01 $T=-15430 134970 0 0 $X=-920 $Y=92510
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_784299455125
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7842994551221
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7842994551222
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7842994551223
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7842994551224
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7842994551225
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_784299455127
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7842994551229
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7842994551228
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7842994551227
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7842994551226
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_10
** N=2 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_11
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7842994551230
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_12
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7842994551220
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT feedth
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT M3_M2_S_CDNS_784299455120
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT feedth3
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT ICV_13
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT feedth9
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT ICV_14
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_S_CDNS_784299455121
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_15
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_16
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_17
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT nd02d1 A2 VSS A1 ZN VDD
** N=6 EP=5 IP=0 FDC=4
M0 6 A2 VSS VSS N L=1.8e-07 W=8.2e-07 AD=1.148e-13 AS=7.876e-13 PD=1.1e-06 PS=4.4e-06 postlayout="1" $X=660 $Y=1340 $D=24
M1 ZN A1 6 VSS N L=1.8e-07 W=8.2e-07 AD=4.018e-13 AS=1.148e-13 PD=2.62e-06 PS=1.1e-06 postlayout="1" $X=1120 $Y=1340 $D=24
M2 ZN A2 VDD VDD P L=1.8e-07 W=1.34e-06 AD=3.752e-13 AS=8.606e-13 PD=1.9e-06 PS=4.5e-06 postlayout="1" $X=660 $Y=3040 $D=36
M3 VDD A1 ZN VDD P L=1.8e-07 W=1.34e-06 AD=1.0076e-12 AS=3.752e-13 PD=5.2e-06 PS=1.9e-06 postlayout="1" $X=1400 $Y=3040 $D=36
.ENDS
***************************************
.SUBCKT dl03d1 I VDD VSS Z
** N=7 EP=4 IP=0 FDC=8
M0 VSS I 5 VSS N L=1.8e-07 W=4.2e-07 AD=3.68751e-13 AS=2.058e-13 PD=2.23685e-06 PS=1.82e-06 postlayout="1" $X=630 $Y=1760 $D=24
M1 6 5 VSS VSS N L=1.25e-06 W=4.7e-07 AD=3.055e-13 AS=4.12649e-13 PD=2.24e-06 PS=2.50315e-06 postlayout="1" $X=1290 $Y=1710 $D=24
M2 VSS 6 7 VSS N L=1.5e-06 W=4.5e-07 AD=2.97207e-13 AS=2.205e-13 PD=2.07931e-06 PS=1.88e-06 postlayout="1" $X=2800 $Y=940 $D=24
M3 Z 7 VSS VSS N L=1.8e-07 W=4.2e-07 AD=2.058e-13 AS=2.77393e-13 PD=1.82e-06 PS=1.94069e-06 postlayout="1" $X=4790 $Y=1450 $D=24
M4 VDD I 5 VDD P L=1.84827e-07 W=1.60042e-06 AD=8.96015e-13 AS=5.9415e-13 PD=4.23134e-06 PS=3.94042e-06 postlayout="1" $X=460 $Y=3740 $D=36
M5 6 5 VDD VDD P L=1.32e-06 W=4.8e-07 AD=2.64e-13 AS=2.68735e-13 PD=2.06e-06 PS=1.26907e-06 postlayout="1" $X=1310 $Y=3040 $D=36
M6 VDD 6 7 VDD P L=1.9e-06 W=4.2e-07 AD=1.40131e-13 AS=2.058e-13 PD=8.80684e-07 PS=1.82e-06 postlayout="1" $X=2400 $Y=4230 $D=36
M7 Z 7 VDD VDD P L=1.84709e-07 W=1.64042e-06 AD=6.3755e-13 AS=5.47319e-13 PD=4.02042e-06 PS=3.43973e-06 postlayout="1" $X=4730 $Y=3040 $D=36
.ENDS
***************************************
.SUBCKT dfcrq1 CP D CDN VDD VSS Q
** N=17 EP=6 IP=0 FDC=28
M0 VSS CP 12 VSS N L=1.8e-07 W=5.2e-07 AD=2.641e-13 AS=2.548e-13 PD=1.99e-06 PS=2.02e-06 postlayout="1" $X=630 $Y=1420 $D=24
M1 7 12 VSS VSS N L=1.8e-07 W=5.2e-07 AD=2.548e-13 AS=2.641e-13 PD=2.02e-06 PS=1.99e-06 postlayout="1" $X=1250 $Y=1420 $D=24
M2 8 D VSS VSS N L=1.8e-07 W=4.8e-07 AD=1.344e-13 AS=2.352e-13 PD=1.04e-06 PS=1.94e-06 postlayout="1" $X=2690 $Y=1590 $D=24
M3 IPM 12 8 VSS N L=1.8e-07 W=4.8e-07 AD=1.344e-13 AS=1.344e-13 PD=1.04e-06 PS=1.04e-06 postlayout="1" $X=3430 $Y=1590 $D=24
M4 9 7 IPM VSS N L=1.8e-07 W=4.8e-07 AD=1.40815e-13 AS=1.344e-13 PD=1.03178e-06 PS=1.04e-06 postlayout="1" $X=4170 $Y=1590 $D=24
M5 16 CDN 9 VSS N L=1.8e-07 W=5.9e-07 AD=1.475e-13 AS=1.73085e-13 PD=1.09e-06 PS=1.26822e-06 postlayout="1" $X=4910 $Y=1590 $D=24
M6 VSS 11 16 VSS N L=1.8e-07 W=5.9e-07 AD=3.24252e-13 AS=1.475e-13 PD=1.93361e-06 PS=1.09e-06 postlayout="1" $X=5590 $Y=1590 $D=24
M7 11 IPM VSS VSS N L=1.8e-07 W=6e-07 AD=1.68e-13 AS=3.29748e-13 PD=1.16e-06 PS=1.96639e-06 postlayout="1" $X=6370 $Y=1460 $D=24
M8 IPS 7 11 VSS N L=1.8e-07 W=6e-07 AD=1.90689e-13 AS=1.68e-13 PD=1.29076e-06 PS=1.16e-06 postlayout="1" $X=7110 $Y=1460 $D=24
M9 13 12 IPS VSS N L=1.8e-07 W=5.9e-07 AD=1.652e-13 AS=1.87511e-13 PD=1.15e-06 PS=1.26924e-06 postlayout="1" $X=7850 $Y=1590 $D=24
M10 VSS 15 13 VSS N L=1.8e-07 W=5.9e-07 AD=1.80054e-13 AS=1.652e-13 PD=1.20225e-06 PS=1.15e-06 postlayout="1" $X=8590 $Y=1590 $D=24
M11 17 CDN VSS VSS N L=1.85081e-07 W=1.52042e-06 AD=2.132e-13 AS=4.63996e-13 PD=1.80042e-06 PS=3.09817e-06 postlayout="1" $X=9190 $Y=1160 $D=24
M12 15 IPS 17 VSS N L=1.85081e-07 W=1.52042e-06 AD=5.6345e-13 AS=2.132e-13 PD=3.78042e-06 PS=1.80042e-06 postlayout="1" $X=9650 $Y=1400 $D=24
M13 Q 15 VSS VSS N L=1.86834e-07 W=1.13042e-06 AD=4.2165e-13 AS=4.4835e-13 PD=3.00042e-06 PS=3.06042e-06 postlayout="1" $X=10950 $Y=1110 $D=24
M14 VDD CP 12 VDD P L=1.8e-07 W=6.8e-07 AD=3.329e-13 AS=3.332e-13 PD=2.31e-06 PS=2.34e-06 postlayout="1" $X=630 $Y=3040 $D=36
M15 7 12 VDD VDD P L=1.8e-07 W=6.8e-07 AD=3.301e-13 AS=3.329e-13 PD=2.34e-06 PS=2.31e-06 postlayout="1" $X=1250 $Y=3040 $D=36
M16 8 D VDD VDD P L=1.8e-07 W=7.1e-07 AD=1.988e-13 AS=8.079e-13 PD=1.27e-06 PS=4.8e-06 postlayout="1" $X=2890 $Y=3310 $D=36
M17 IPM 7 8 VDD P L=1.8e-07 W=7.1e-07 AD=1.988e-13 AS=1.988e-13 PD=1.27e-06 PS=1.27e-06 postlayout="1" $X=3630 $Y=3310 $D=36
M18 9 12 IPM VDD P L=1.8e-07 W=7.1e-07 AD=1.89108e-13 AS=1.988e-13 PD=1.23032e-06 PS=1.27e-06 postlayout="1" $X=4370 $Y=3310 $D=36
M19 VDD CDN 9 VDD P L=1.86021e-07 W=1.13213e-06 AD=3.85915e-13 AS=3.01542e-13 PD=2.46367e-06 PS=1.96181e-06 postlayout="1" $X=4970 $Y=3900 $D=36
M20 9 11 VDD VDD P L=1.8e-07 W=1.07e-06 AD=4.744e-13 AS=3.64735e-13 PD=3.58e-06 PS=2.32846e-06 postlayout="1" $X=5680 $Y=3310 $D=36
M21 11 IPM VDD VDD P L=1.87906e-07 W=1.03456e-06 AD=3.71967e-13 AS=5.254e-13 PD=2.26392e-06 PS=3.53456e-06 postlayout="1" $X=6780 $Y=3820 $D=36
M22 IPS 12 11 VDD P L=1.8e-07 W=8e-07 AD=2.41119e-13 AS=2.87633e-13 PD=1.52168e-06 PS=1.75064e-06 postlayout="1" $X=7560 $Y=3320 $D=36
M23 13 7 IPS VDD P L=1.8e-07 W=6.3e-07 AD=1.764e-13 AS=1.89881e-13 PD=1.19e-06 PS=1.19832e-06 postlayout="1" $X=8300 $Y=3490 $D=36
M24 VDD 15 13 VDD P L=1.8e-07 W=6.3e-07 AD=1.80066e-13 AS=1.764e-13 PD=1.16163e-06 PS=1.19e-06 postlayout="1" $X=9040 $Y=3490 $D=36
M25 15 CDN VDD VDD P L=1.85908e-07 W=1.38456e-06 AD=3.17756e-13 AS=3.95734e-13 PD=1.86756e-06 PS=2.55293e-06 postlayout="1" $X=9640 $Y=4100 $D=36
M26 VDD IPS 15 VDD P L=1.8e-07 W=1.31e-06 AD=3.1514e-13 AS=3.00644e-13 PD=1.83931e-06 PS=1.767e-06 postlayout="1" $X=10380 $Y=3490 $D=36
M27 Q 15 VDD VDD P L=1.84797e-07 W=1.61042e-06 AD=6.0925e-13 AS=3.8741e-13 PD=3.96042e-06 PS=2.26111e-06 postlayout="1" $X=10950 $Y=3490 $D=36
.ENDS
***************************************
.SUBCKT decrq1 ENN D CP CDN VSS VDD Q
** N=22 EP=7 IP=0 FDC=38
M0 8 ENN VSS VSS N L=1.8e-07 W=4.3e-07 AD=5.254e-13 AS=2.107e-13 PD=2.98e-06 PS=1.84e-06 postlayout="1" $X=630 $Y=720 $D=24
M1 9 D VSS VSS N L=1.8e-07 W=4.2e-07 AD=1.638e-13 AS=2.268e-13 PD=1.2e-06 PS=1.92e-06 postlayout="1" $X=1170 $Y=1720 $D=24
M2 13 8 9 VSS N L=1.8e-07 W=4.2e-07 AD=1.67219e-13 AS=1.638e-13 PD=1.21116e-06 PS=1.2e-06 postlayout="1" $X=2130 $Y=1720 $D=24
M3 10 8 VSS VSS N L=1.8e-07 W=4.3e-07 AD=2.107e-13 AS=3.502e-13 PD=1.84e-06 PS=2.74e-06 postlayout="1" $X=2600 $Y=890 $D=24
M4 11 10 13 VSS N L=1.8e-07 W=4.4e-07 AD=1.738e-13 AS=1.75181e-13 PD=1.23e-06 PS=1.26884e-06 postlayout="1" $X=3110 $Y=1700 $D=24
M5 VSS 18 11 VSS N L=1.8e-07 W=4.4e-07 AD=2.98202e-13 AS=1.738e-13 PD=2.06845e-06 PS=1.23e-06 postlayout="1" $X=4080 $Y=1700 $D=24
M6 12 CP VSS VSS N L=1.8e-07 W=5.3e-07 AD=2.597e-13 AS=3.59198e-13 PD=2.04e-06 PS=2.49155e-06 postlayout="1" $X=4700 $Y=1610 $D=24
M7 15 12 13 VSS N L=1.8e-07 W=4.4e-07 AD=1.232e-13 AS=2.156e-13 PD=1e-06 PS=1.86e-06 postlayout="1" $X=6140 $Y=1700 $D=24
M8 14 16 15 VSS N L=1.8e-07 W=4.4e-07 AD=1.35385e-13 AS=1.232e-13 PD=9.81538e-07 PS=1e-06 postlayout="1" $X=6880 $Y=1700 $D=24
M9 21 CDN 14 VSS N L=1.8e-07 W=6e-07 AD=1.62e-13 AS=1.84615e-13 PD=1.14e-06 PS=1.33846e-06 postlayout="1" $X=7620 $Y=1540 $D=24
M10 VSS 17 21 VSS N L=1.8e-07 W=6e-07 AD=3.43015e-13 AS=1.62e-13 PD=2.16e-06 PS=1.14e-06 postlayout="1" $X=8340 $Y=1540 $D=24
M11 17 15 VSS VSS N L=1.8e-07 W=7e-07 AD=4.9e-13 AS=4.00185e-13 PD=2.4193e-06 PS=2.52e-06 postlayout="1" $X=9020 $Y=1440 $D=24
M12 19 16 17 VSS N L=1.8e-07 W=4.4e-07 AD=1.804e-13 AS=3.08e-13 PD=1.26e-06 PS=1.5207e-06 postlayout="1" $X=10470 $Y=1700 $D=24
M13 VSS 12 16 VSS N L=1.8e-07 W=5.2e-07 AD=5.67558e-13 AS=3.692e-13 PD=3.03333e-06 PS=2.46e-06 postlayout="1" $X=11470 $Y=790 $D=24
M14 18 12 19 VSS N L=1.8e-07 W=4.4e-07 AD=1.408e-13 AS=1.804e-13 PD=1.08e-06 PS=1.26e-06 postlayout="1" $X=11470 $Y=1700 $D=24
M15 VSS 20 18 VSS N L=1.8e-07 W=4.4e-07 AD=4.80242e-13 AS=1.408e-13 PD=2.56667e-06 PS=1.08e-06 postlayout="1" $X=12290 $Y=1700 $D=24
M16 22 19 20 VSS N L=1.8e-07 W=1.05e-06 AD=1.47e-13 AS=5.145e-13 PD=1.33e-06 PS=3.08e-06 postlayout="1" $X=13580 $Y=1090 $D=24
M17 VSS CDN 22 VSS N L=1.8e-07 W=1.05e-06 AD=2.9861e-13 AS=1.47e-13 PD=1.64927e-06 PS=1.33e-06 postlayout="1" $X=14040 $Y=1090 $D=24
M18 Q 20 VSS VSS N L=1.8e-07 W=1e-06 AD=5.6e-13 AS=2.8439e-13 PD=3.12e-06 PS=1.57073e-06 postlayout="1" $X=14780 $Y=1090 $D=24
M19 8 ENN VDD VDD P L=1.8e-07 W=9.3e-07 AD=4.557e-13 AS=4.557e-13 PD=2.84e-06 PS=2.84e-06 postlayout="1" $X=630 $Y=4050 $D=36
M20 9 D VDD VDD P L=1.8e-07 W=5.2e-07 AD=2.13571e-13 AS=2.548e-13 PD=1.28143e-06 PS=2.02e-06 postlayout="1" $X=1170 $Y=3150 $D=36
M21 VDD 8 10 VDD P L=1.8e-07 W=6e-07 AD=4.716e-13 AS=2.94e-13 PD=3.84e-06 PS=2.18e-06 postlayout="1" $X=1940 $Y=4560 $D=36
M22 13 10 9 VDD P L=1.8e-07 W=6e-07 AD=2.598e-13 AS=2.46429e-13 PD=1.58e-06 PS=1.47857e-06 postlayout="1" $X=2130 $Y=3150 $D=36
M23 11 8 13 VDD P L=1.8e-07 W=6e-07 AD=1.85825e-13 AS=2.598e-13 PD=1.35146e-06 PS=1.58e-06 postlayout="1" $X=3110 $Y=3330 $D=36
M24 VDD 18 11 VDD P L=1.8e-07 W=4.3e-07 AD=3.40746e-13 AS=1.33175e-13 PD=1.8982e-06 PS=9.68544e-07 postlayout="1" $X=3850 $Y=3330 $D=36
M25 12 CP VDD VDD P L=1.8e-07 W=6.8e-07 AD=4.896e-13 AS=5.38854e-13 PD=2.8e-06 PS=3.0018e-06 postlayout="1" $X=4650 $Y=3040 $D=36
M26 15 16 13 VDD P L=1.8e-07 W=6e-07 AD=1.68e-13 AS=2.94e-13 PD=1.16e-06 PS=2.18e-06 postlayout="1" $X=6420 $Y=3000 $D=36
M27 14 12 15 VDD P L=1.8e-07 W=6e-07 AD=1.68e-13 AS=1.68e-13 PD=1.16e-06 PS=1.16e-06 postlayout="1" $X=7160 $Y=3000 $D=36
M28 VDD 12 16 VDD P L=1.8e-07 W=6.8e-07 AD=3.332e-13 AS=3.176e-13 PD=2.34e-06 PS=2.34e-06 postlayout="1" $X=7220 $Y=4450 $D=36
M29 VDD CDN 14 VDD P L=1.8e-07 W=6e-07 AD=3.67545e-13 AS=1.68e-13 PD=2.47129e-06 PS=1.16e-06 postlayout="1" $X=7900 $Y=3000 $D=36
M30 14 17 VDD VDD P L=1.8e-07 W=6e-07 AD=2.634e-13 AS=3.67545e-13 PD=2.18e-06 PS=2.47129e-06 postlayout="1" $X=8520 $Y=3000 $D=36
M31 VDD 15 17 VDD P L=1.8e-07 W=8.2e-07 AD=5.02311e-13 AS=4.79411e-13 PD=3.37743e-06 PS=2.77183e-06 postlayout="1" $X=9240 $Y=4460 $D=36
M32 19 12 17 VDD P L=1.8e-07 W=6e-07 AD=1.68e-13 AS=3.50789e-13 PD=1.16e-06 PS=2.02817e-06 postlayout="1" $X=10430 $Y=3250 $D=36
M33 18 16 19 VDD P L=1.8e-07 W=6e-07 AD=2.94e-13 AS=1.68e-13 PD=2.18e-06 PS=1.16e-06 postlayout="1" $X=11170 $Y=3250 $D=36
M34 VDD 20 18 VDD P L=1.8e-07 W=4.9e-07 AD=2.009e-13 AS=2.401e-13 PD=1.45091e-06 PS=1.96e-06 postlayout="1" $X=12710 $Y=3450 $D=36
M35 20 19 VDD VDD P L=1.8e-07 W=1.05e-06 AD=2.94e-13 AS=4.305e-13 PD=1.61e-06 PS=3.10909e-06 postlayout="1" $X=13310 $Y=3450 $D=36
M36 VDD CDN 20 VDD P L=1.8e-07 W=1.05e-06 AD=3.61735e-13 AS=2.94e-13 PD=1.88588e-06 PS=1.61e-06 postlayout="1" $X=14050 $Y=3450 $D=36
M37 Q 20 VDD VDD P L=1.8e-07 W=1.5e-06 AD=7.35e-13 AS=5.16765e-13 PD=3.98e-06 PS=2.69412e-06 postlayout="1" $X=14850 $Y=3040 $D=36
.ENDS
***************************************
.SUBCKT M4_M3_S_CDNS_784299455124
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_18
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_19
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_20
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_21
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_22
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_23
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_24
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_25
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT dfcrb1 CP D CDN Q VDD VSS QN
** N=18 EP=7 IP=0 FDC=30
M0 VSS CP 13 VSS N L=1.8e-07 W=5.2e-07 AD=2.641e-13 AS=2.548e-13 PD=1.99e-06 PS=2.02e-06 postlayout="1" $X=630 $Y=1420 $D=24
M1 8 13 VSS VSS N L=1.8e-07 W=5.2e-07 AD=2.548e-13 AS=2.641e-13 PD=2.02e-06 PS=1.99e-06 postlayout="1" $X=1250 $Y=1420 $D=24
M2 9 D VSS VSS N L=1.8e-07 W=4.8e-07 AD=1.344e-13 AS=2.352e-13 PD=1.04e-06 PS=1.94e-06 postlayout="1" $X=2690 $Y=1590 $D=24
M3 IPM 13 9 VSS N L=1.8e-07 W=4.8e-07 AD=1.344e-13 AS=1.344e-13 PD=1.04e-06 PS=1.04e-06 postlayout="1" $X=3430 $Y=1590 $D=24
M4 10 8 IPM VSS N L=1.8e-07 W=4.8e-07 AD=1.43282e-13 AS=1.344e-13 PD=1.03178e-06 PS=1.04e-06 postlayout="1" $X=4170 $Y=1590 $D=24
M5 17 CDN 10 VSS N L=1.8e-07 W=5.9e-07 AD=1.475e-13 AS=1.76118e-13 PD=1.09e-06 PS=1.26822e-06 postlayout="1" $X=4910 $Y=1590 $D=24
M6 VSS 12 17 VSS N L=1.8e-07 W=5.9e-07 AD=3.24252e-13 AS=1.475e-13 PD=1.93361e-06 PS=1.09e-06 postlayout="1" $X=5590 $Y=1590 $D=24
M7 12 IPM VSS VSS N L=1.8e-07 W=6e-07 AD=1.68e-13 AS=3.29748e-13 PD=1.16e-06 PS=1.96639e-06 postlayout="1" $X=6370 $Y=1460 $D=24
M8 IPS 8 12 VSS N L=1.8e-07 W=6e-07 AD=1.90689e-13 AS=1.68e-13 PD=1.29076e-06 PS=1.16e-06 postlayout="1" $X=7110 $Y=1460 $D=24
M9 14 13 IPS VSS N L=1.8e-07 W=5.9e-07 AD=1.652e-13 AS=1.87511e-13 PD=1.15e-06 PS=1.26924e-06 postlayout="1" $X=7850 $Y=1590 $D=24
M10 VSS 16 14 VSS N L=1.8e-07 W=5.9e-07 AD=1.80054e-13 AS=1.652e-13 PD=1.20225e-06 PS=1.15e-06 postlayout="1" $X=8590 $Y=1590 $D=24
M11 18 CDN VSS VSS N L=1.85081e-07 W=1.52042e-06 AD=2.132e-13 AS=4.63996e-13 PD=1.80042e-06 PS=3.09817e-06 postlayout="1" $X=9190 $Y=1160 $D=24
M12 16 IPS 18 VSS N L=1.85081e-07 W=1.52042e-06 AD=7.8095e-13 AS=2.132e-13 PD=4.08042e-06 PS=1.80042e-06 postlayout="1" $X=9650 $Y=1400 $D=24
M13 VSS 16 Q VSS N L=1.8e-07 W=1.06e-06 AD=3.61711e-13 AS=7.208e-13 PD=2.04237e-06 PS=3.48e-06 postlayout="1" $X=11440 $Y=960 $D=24
M14 QN IPS VSS VSS N L=1.86834e-07 W=1.13042e-06 AD=4.3015e-13 AS=3.85739e-13 PD=3.00042e-06 PS=2.17805e-06 postlayout="1" $X=12070 $Y=1450 $D=24
M15 VDD CP 13 VDD P L=1.8e-07 W=6.8e-07 AD=3.329e-13 AS=3.332e-13 PD=2.31e-06 PS=2.34e-06 postlayout="1" $X=630 $Y=3040 $D=36
M16 8 13 VDD VDD P L=1.8e-07 W=6.8e-07 AD=3.301e-13 AS=3.329e-13 PD=2.34e-06 PS=2.31e-06 postlayout="1" $X=1250 $Y=3040 $D=36
M17 9 D VDD VDD P L=1.8e-07 W=7.1e-07 AD=1.988e-13 AS=8.079e-13 PD=1.27e-06 PS=4.8e-06 postlayout="1" $X=2890 $Y=3310 $D=36
M18 IPM 8 9 VDD P L=1.8e-07 W=7.1e-07 AD=1.988e-13 AS=1.988e-13 PD=1.27e-06 PS=1.27e-06 postlayout="1" $X=3630 $Y=3310 $D=36
M19 10 13 IPM VDD P L=1.8e-07 W=7.1e-07 AD=1.89108e-13 AS=1.988e-13 PD=1.23032e-06 PS=1.27e-06 postlayout="1" $X=4370 $Y=3310 $D=36
M20 VDD CDN 10 VDD P L=1.86021e-07 W=1.13213e-06 AD=3.85915e-13 AS=3.01542e-13 PD=2.46367e-06 PS=1.96181e-06 postlayout="1" $X=4970 $Y=3900 $D=36
M21 10 12 VDD VDD P L=1.8e-07 W=1.07e-06 AD=4.744e-13 AS=3.64735e-13 PD=3.58e-06 PS=2.32846e-06 postlayout="1" $X=5680 $Y=3310 $D=36
M22 12 IPM VDD VDD P L=1.87906e-07 W=1.03456e-06 AD=3.64843e-13 AS=5.254e-13 PD=2.20386e-06 PS=3.53456e-06 postlayout="1" $X=6780 $Y=3820 $D=36
M23 IPS 13 12 VDD P L=1.8e-07 W=8.5e-07 AD=2.55e-13 AS=2.99757e-13 PD=1.56667e-06 PS=1.8107e-06 postlayout="1" $X=7560 $Y=3320 $D=36
M24 14 8 IPS VDD P L=1.8e-07 W=6.8e-07 AD=1.904e-13 AS=2.04e-13 PD=1.24e-06 PS=1.25333e-06 postlayout="1" $X=8300 $Y=3490 $D=36
M25 VDD 16 14 VDD P L=1.8e-07 W=6.8e-07 AD=2.23447e-13 AS=1.904e-13 PD=1.43247e-06 PS=1.24e-06 postlayout="1" $X=9040 $Y=3490 $D=36
M26 16 CDN VDD VDD P L=1.85596e-07 W=1.38042e-06 AD=3.41218e-13 AS=4.53603e-13 PD=2.06771e-06 PS=2.90795e-06 postlayout="1" $X=9600 $Y=3490 $D=36
M27 VDD IPS 16 VDD P L=1.8e-07 W=1.09e-06 AD=5.131e-13 AS=2.69432e-13 PD=3.86e-06 PS=1.6327e-06 postlayout="1" $X=10370 $Y=3710 $D=36
M28 VDD 16 Q VDD P L=1.8e-07 W=1.4e-06 AD=3.11491e-13 AS=5.194e-13 PD=1.86335e-06 PS=3.78e-06 postlayout="1" $X=11500 $Y=3040 $D=36
M29 QN IPS VDD VDD P L=1.85254e-07 W=1.47042e-06 AD=5.7295e-13 AS=3.27159e-13 PD=3.68042e-06 PS=1.95707e-06 postlayout="1" $X=12070 $Y=3040 $D=36
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_784299455126
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7842994551212
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7842994551211
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7842994551210
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_784299455129
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7842994551213
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_26
** N=2 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_784299455128
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7842994551215
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7842994551214
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7842994551217
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7842994551216
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_27
** N=2 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_28
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7842994551218
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_29
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_30
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_31
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_32
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_33
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_34
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_35
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_36
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_37
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_38
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_39
** N=2 EP=0 IP=6 FDC=0
.ENDS
***************************************
.SUBCKT ICV_40
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_41
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7842994551219
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_42
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_43
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_44
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT subil_clkppbasebuff
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppclkbuff
** N=2 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_pp18clkdrive
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_clk1x 2 3 4 5
** N=5 EP=4 IP=0 FDC=6
M0 4 3 2 2 NH L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05 postlayout="1" $X=7660 $Y=43980 $D=20
M1 2 3 4 2 NH L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05 postlayout="1" $X=8840 $Y=43980 $D=20
M2 5 4 2 2 N L=1.8e-07 W=1.39e-05 AD=6.95e-12 AS=9.869e-12 PD=1.49e-05 PS=2.922e-05 postlayout="1" $X=6520 $Y=430 $D=24
M3 2 4 5 2 N L=1.8e-07 W=1.39e-05 AD=6.95e-12 AS=6.95e-12 PD=1.49e-05 PS=1.49e-05 postlayout="1" $X=7700 $Y=430 $D=24
M4 5 4 2 2 N L=1.8e-07 W=1.39e-05 AD=6.95e-12 AS=6.95e-12 PD=1.49e-05 PS=1.49e-05 postlayout="1" $X=8880 $Y=430 $D=24
M5 2 4 5 2 N L=1.8e-07 W=1.39e-05 AD=9.869e-12 AS=6.95e-12 PD=2.922e-05 PS=1.49e-05 postlayout="1" $X=10060 $Y=430 $D=24
.ENDS
***************************************
.SUBCKT subil_clkpngatering
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnclkbasebuff
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_45
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT pqc_top_wrapper VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE done_led led[0] led[1] led[2] led[3] clk start sw[0] rst_n sw[1] sw[2] sw[3]
** N=87 EP=16 IP=4316 FDC=1943
M0 VSS_CORE 6 8 VSS_CORE N L=1.8e-07 W=5.1e-07 AD=1.60595e-13 AS=2.499e-13 PD=1.03045e-06 PS=2e-06 postlayout="1" $X=991070 $Y=453560 $D=24
M1 9 8 VSS_CORE VSS_CORE N L=1.86399e-07 W=1.13627e-06 AD=4.438e-13 AS=3.57805e-13 PD=3.04627e-06 PS=2.29583e-06 postlayout="1" $X=991730 $Y=453560 $D=24
M2 10 9 VSS_CORE VSS_CORE N L=1.8e-07 W=1.01e-06 AD=4.949e-13 AS=4.949e-13 PD=3e-06 PS=3e-06 postlayout="1" $X=993410 $Y=453410 $D=24
M3 VSS_CORE 11 7 VSS_CORE N L=1.87858e-07 W=1.0987e-06 AD=2.50971e-13 AS=4.2765e-13 PD=1.60451e-06 PS=3.0487e-06 postlayout="1" $X=993580 $Y=456550 $D=24
M4 7 13 VSS_CORE VSS_CORE N L=1.8e-07 W=1.03e-06 AD=2.36633e-13 AS=2.35279e-13 PD=1.49535e-06 PS=1.50419e-06 postlayout="1" $X=994330 $Y=456540 $D=24
M5 VSS_CORE 16 7 VSS_CORE N L=1.88543e-07 W=1.11698e-06 AD=2.63291e-13 AS=2.56617e-13 PD=1.64889e-06 PS=1.62163e-06 postlayout="1" $X=994890 $Y=456540 $D=24
M6 16 14 VSS_CORE VSS_CORE N L=1.8e-07 W=1.13e-06 AD=2.56144e-13 AS=2.66359e-13 PD=1.59065e-06 PS=1.6681e-06 postlayout="1" $X=995660 $Y=456440 $D=24
M7 VSS_CORE 17 16 VSS_CORE N L=1.86435e-07 W=1.20042e-06 AD=4.4575e-13 AS=2.72106e-13 PD=3.14042e-06 PS=1.68977e-06 postlayout="1" $X=996230 $Y=456440 $D=24
M8 21 20 VSS_CORE VSS_CORE N L=1.8e-07 W=8.5e-07 AD=2.60296e-13 AS=7.63e-13 PD=1.45226e-06 PS=4.38e-06 postlayout="1" $X=1006080 $Y=475770 $D=24
M9 VSS_CORE 13 21 VSS_CORE N L=1.8e-07 W=1.14e-06 AD=2.6222e-13 AS=3.49104e-13 PD=1.61117e-06 PS=1.94774e-06 postlayout="1" $X=1006820 $Y=475770 $D=24
M10 21 22 VSS_CORE VSS_CORE N L=1.8812e-07 W=1.23113e-06 AD=4.77e-13 AS=2.8318e-13 PD=3.23113e-06 PS=1.73996e-06 postlayout="1" $X=1007380 $Y=475770 $D=24
M11 VSS_CORE 22 23 VSS_CORE N L=1.86478e-07 W=1.05213e-06 AD=2.76621e-13 AS=4.0785e-13 PD=1.6762e-06 PS=2.87213e-06 postlayout="1" $X=1011520 $Y=467730 $D=24
M12 23 17 VSS_CORE VSS_CORE N L=1.86358e-07 W=1.07213e-06 AD=2.51461e-13 AS=2.81879e-13 PD=1.5716e-06 PS=1.70806e-06 postlayout="1" $X=1012250 $Y=468180 $D=24
M13 27 25 23 VSS_CORE N L=1.8e-07 W=1.01e-06 AD=2.31602e-13 AS=2.36889e-13 PD=1.47291e-06 PS=1.48053e-06 postlayout="1" $X=1012990 $Y=467710 $D=24
M14 VSS_CORE 13 27 VSS_CORE N L=1.87542e-07 W=1.08456e-06 AD=4.928e-13 AS=2.48698e-13 PD=3.31456e-06 PS=1.58164e-06 postlayout="1" $X=1013560 $Y=467710 $D=24
M15 79 13 VSS_CORE VSS_CORE N L=1.85916e-07 W=1.15213e-06 AD=2.3902e-13 AS=6.9865e-13 PD=1.59919e-06 PS=4.19213e-06 postlayout="1" $X=1016710 $Y=475820 $D=24
M16 80 20 79 VSS_CORE N L=1.8e-07 W=1.09e-06 AD=1.853e-13 AS=2.2613e-13 PD=1.43e-06 PS=1.51295e-06 postlayout="1" $X=1017400 $Y=475820 $D=24
M17 30 22 80 VSS_CORE N L=1.8e-07 W=1.09e-06 AD=6.976e-13 AS=1.853e-13 PD=3.46e-06 PS=1.43e-06 postlayout="1" $X=1017920 $Y=475820 $D=24
M18 VSS_CORE 17 40 VSS_CORE N L=1.86418e-07 W=1.06213e-06 AD=4.0615e-13 AS=4.1275e-13 PD=2.22213e-06 PS=2.89213e-06 postlayout="1" $X=1028320 $Y=456620 $D=24
M19 40 11 VSS_CORE VSS_CORE N L=1.86418e-07 W=1.06213e-06 AD=2.68157e-13 AS=4.0615e-13 PD=1.61488e-06 PS=2.22213e-06 postlayout="1" $X=1029040 $Y=457090 $D=24
M20 41 28 40 VSS_CORE N L=1.8e-07 W=1.09e-06 AD=5.341e-13 AS=2.75193e-13 PD=3.16e-06 PS=1.65725e-06 postlayout="1" $X=1029810 $Y=456530 $D=24
M21 60 59 VDD_CORE VDD_CORE PH L=3.6e-07 W=2.35e-05 AD=9.635e-12 AS=1.457e-11 PD=2.432e-05 PS=4.824e-05 postlayout="1" $X=171370 $Y=453310 $D=39
M22 VDD_CORE 59 60 VDD_CORE PH L=3.6e-07 W=2.35e-05 AD=1.457e-11 AS=9.635e-12 PD=4.824e-05 PS=2.432e-05 postlayout="1" $X=171370 $Y=454490 $D=39
M23 5 60 VDD_CORE VDD_CORE P L=1.8e-07 W=3.234e-05 AD=1.617e-11 AS=2.29614e-11 PD=3.334e-05 PS=6.61e-05 postlayout="1" $X=208380 $Y=452220 $D=36
M24 VDD_CORE 60 5 VDD_CORE P L=1.8e-07 W=3.234e-05 AD=1.617e-11 AS=1.617e-11 PD=3.334e-05 PS=3.334e-05 postlayout="1" $X=208380 $Y=453400 $D=36
M25 5 60 VDD_CORE VDD_CORE P L=1.8e-07 W=3.234e-05 AD=1.617e-11 AS=1.617e-11 PD=3.334e-05 PS=3.334e-05 postlayout="1" $X=208380 $Y=454580 $D=36
M26 VDD_CORE 60 5 VDD_CORE P L=1.8e-07 W=3.234e-05 AD=2.29614e-11 AS=1.617e-11 PD=6.61e-05 PS=3.334e-05 postlayout="1" $X=208380 $Y=455760 $D=36
M27 VDD_CORE 6 8 VDD_CORE P L=1.8e-07 W=5.7e-07 AD=1.87641e-13 AS=2.793e-13 PD=1.11996e-06 PS=2.12e-06 postlayout="1" $X=991070 $Y=451910 $D=36
M28 9 8 VDD_CORE VDD_CORE P L=1.84599e-07 W=1.48213e-06 AD=5.7055e-13 AS=4.87909e-13 PD=3.73213e-06 PS=2.91217e-06 postlayout="1" $X=991740 $Y=451850 $D=36
M29 10 9 VDD_CORE VDD_CORE P L=1.8e-07 W=1.48e-06 AD=7.252e-13 AS=7.252e-13 PD=3.94e-06 PS=3.94e-06 postlayout="1" $X=993410 $Y=451000 $D=36
M30 81 11 7 VDD_CORE P L=1.88177e-07 W=1.55598e-06 AD=3.52232e-13 AS=6.82e-13 PD=2.11923e-06 PS=3.91598e-06 postlayout="1" $X=993610 $Y=459600 $D=36
M31 82 13 81 VDD_CORE P L=1.85115e-07 W=1.51042e-06 AD=2.271e-13 AS=3.41918e-13 PD=1.79042e-06 PS=2.05717e-06 postlayout="1" $X=994400 $Y=459170 $D=36
M32 VDD_CORE 16 82 VDD_CORE P L=1.85115e-07 W=1.51042e-06 AD=4.55156e-13 AS=2.271e-13 PD=2.38818e-06 PS=1.79042e-06 postlayout="1" $X=994860 $Y=459590 $D=36
M33 83 14 VDD_CORE VDD_CORE P L=1.8e-07 W=1.26e-06 AD=2.36565e-13 AS=3.79694e-13 PD=1.66372e-06 PS=1.99224e-06 postlayout="1" $X=995720 $Y=458850 $D=36
M34 16 17 83 VDD_CORE P L=1.85807e-07 W=1.33042e-06 AD=5.2645e-13 AS=2.49785e-13 PD=3.40042e-06 PS=1.7567e-06 postlayout="1" $X=996230 $Y=459350 $D=36
M35 84 20 VDD_CORE VDD_CORE P L=1.88569e-07 W=1.43184e-06 AD=2.56232e-13 AS=9.9595e-13 PD=1.8637e-06 PS=5.18184e-06 postlayout="1" $X=1006190 $Y=474440 $D=36
M36 85 13 84 VDD_CORE P L=1.8e-07 W=1.32e-06 AD=1.848e-13 AS=2.36218e-13 PD=1.6e-06 PS=1.71813e-06 postlayout="1" $X=1006920 $Y=473560 $D=36
M37 21 22 85 VDD_CORE P L=1.8e-07 W=1.32e-06 AD=6.468e-13 AS=1.848e-13 PD=3.62e-06 PS=1.6e-06 postlayout="1" $X=1007380 $Y=473560 $D=36
M38 86 22 26 VDD_CORE P L=1.8e-07 W=1.33e-06 AD=1.862e-13 AS=6.517e-13 PD=1.61e-06 PS=3.64e-06 postlayout="1" $X=1011670 $Y=469780 $D=36
M39 VDD_CORE 17 86 VDD_CORE P L=1.8e-07 W=1.33e-06 AD=4.21578e-13 AS=1.862e-13 PD=2.20457e-06 PS=1.61e-06 postlayout="1" $X=1012130 $Y=469780 $D=36
M40 26 25 VDD_CORE VDD_CORE P L=1.84896e-07 W=1.39213e-06 AD=3.25284e-13 AS=4.41272e-13 PD=1.8882e-06 PS=2.30756e-06 postlayout="1" $X=1012780 $Y=469780 $D=36
M41 27 13 26 VDD_CORE P L=1.8e-07 W=1.33e-06 AD=6.517e-13 AS=3.10766e-13 PD=3.64e-06 PS=1.80393e-06 postlayout="1" $X=1013520 $Y=469780 $D=36
M42 VDD_CORE 13 30 VDD_CORE P L=1.85652e-07 W=1.28627e-06 AD=3.98961e-13 AS=5.034e-13 PD=2.18331e-06 PS=3.32627e-06 postlayout="1" $X=1016550 $Y=473660 $D=36
M43 30 20 VDD_CORE VDD_CORE P L=1.85041e-07 W=1.35213e-06 AD=3.40361e-13 AS=4.19389e-13 PD=1.89464e-06 PS=2.2951e-06 postlayout="1" $X=1017270 $Y=474180 $D=36
M44 VDD_CORE 22 30 VDD_CORE P L=1.85994e-07 W=1.36456e-06 AD=8.856e-13 AS=3.43489e-13 PD=5.09456e-06 PS=1.91205e-06 postlayout="1" $X=1017980 $Y=473590 $D=36
M45 87 17 VDD_CORE VDD_CORE P L=1.8e-07 W=1.31e-06 AD=1.834e-13 AS=9.5e-13 PD=1.59e-06 PS=4.94e-06 postlayout="1" $X=1028500 $Y=458690 $D=36
M46 41 11 87 VDD_CORE P L=1.8e-07 W=1.31e-06 AD=4.56903e-13 AS=1.834e-13 PD=2.0444e-06 PS=1.59e-06 postlayout="1" $X=1028960 $Y=458690 $D=36
M47 VDD_CORE 28 41 VDD_CORE P L=1.85195e-07 W=1.31213e-06 AD=8.8925e-13 AS=4.57647e-13 PD=4.91213e-06 PS=2.04773e-06 postlayout="1" $X=1029770 $Y=459400 $D=36
D48 VSS_CORE 59 DN AREA=4.624e-13 PJ=2.72e-06 $X=141570 $Y=472620 $D=92
X49 VSSO_CORE VSS_CORE VDD_CORE pv0i $T=0 959730 0 270 $X=0 $Y=893860
X50 VSSO_CORE VSS_CORE VDD_CORE pv0i $T=658160 0 0 0 $X=657290 $Y=0
X51 VSSO_CORE VSS_CORE VDD_CORE pv0i $T=723160 1499600 0 180 $X=657290 $Y=1249540
X52 VSSO_CORE VSS_CORE VDD_CORE pv0i $T=1499600 894730 0 90 $X=1249540 $Y=893860
X53 VSSO_CORE VSS_CORE VDD_CORE pvdi $T=0 841445 0 270 $X=0 $Y=775575
X54 VSSO_CORE VSS_CORE VDD_CORE pvdi $T=539870 0 0 0 $X=539000 $Y=0
X55 VSSO_CORE VSS_CORE VDD_CORE pvdi $T=604870 1499600 0 180 $X=539000 $Y=1249540
X56 VSSO_CORE VSS_CORE VDD_CORE pvdi $T=1499600 776445 0 90 $X=1249540 $Y=775575
X117 VSSO_CORE VSS_CORE VDDO_CORE pv0a $T=0 1196310 0 270 $X=0 $Y=1130440
X118 VSSO_CORE VSS_CORE VDDO_CORE pv0a $T=894730 0 0 0 $X=893860 $Y=0
X119 VSSO_CORE VSS_CORE VDDO_CORE pv0a $T=959730 1499600 0 180 $X=893860 $Y=1249280
X120 VSSO_CORE VSS_CORE VDDO_CORE pv0a $T=1499600 1131310 0 90 $X=1249280 $Y=1130440
X121 VSSO_CORE VSS_CORE VDDO_CORE pvda $T=0 1078020 0 270 $X=0 $Y=1012150
X122 VSSO_CORE VSS_CORE VDDO_CORE pvda $T=776445 0 0 0 $X=775575 $Y=0
X123 VSSO_CORE VSS_CORE VDDO_CORE pvda $T=841445 1499600 0 180 $X=775575 $Y=1249280
X124 VSSO_CORE VSS_CORE VDDO_CORE pvda $T=1499600 1013020 0 90 $X=1249280 $Y=1012150
X125 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 62 61 pc3o01 $T=0 604870 0 270 $X=0 $Y=538950
X126 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 64 63 pc3o01 $T=0 723160 0 270 $X=0 $Y=657240
X127 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE done_led 28 pc3o01 $T=1013020 0 0 0 $X=1012100 $Y=0
X128 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 67 66 pc3o01 $T=1131310 0 0 0 $X=1130390 $Y=0
X129 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE led[0] 44 pc3o01 $T=1499600 303290 0 90 $X=1249280 $Y=302370
X130 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE led[1] 42 pc3o01 $T=1499600 421580 0 90 $X=1249280 $Y=420660
X131 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE led[2] 46 pc3o01 $T=1499600 539870 0 90 $X=1249280 $Y=538950
X132 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE led[3] 45 pc3o01 $T=1499600 658160 0 90 $X=1249280 $Y=657240
X157 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 59 clk pc3d01 $T=0 368290 0 270 $X=0 $Y=302370
X158 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 14 start pc3d01 $T=303290 0 0 0 $X=302370 $Y=0
X159 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 32 sw[0] pc3d01 $T=368290 1499600 0 180 $X=302370 $Y=1249280
X160 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 12 rst_n pc3d01 $T=421580 0 0 0 $X=420660 $Y=0
X161 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 29 sw[1] pc3d01 $T=486580 1499600 0 180 $X=420660 $Y=1249280
X162 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 35 sw[2] pc3d01 $T=1078020 1499600 0 180 $X=1012100 $Y=1249280
X163 VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE 34 sw[3] pc3d01 $T=1196310 1499600 0 180 $X=1130390 $Y=1249280
X644 17 VSS_CORE 22 25 VDD_CORE nd02d1 $T=1017200 455520 1 180 $X=1014670 $Y=455300
X645 41 VSS_CORE 30 39 VDD_CORE nd02d1 $T=1030640 477920 0 180 $X=1028110 $Y=472030
X646 7 VDD_CORE VSS_CORE 15 dl03d1 $T=990880 466720 1 0 $X=990590 $Y=460830
X647 12 VDD_CORE VSS_CORE 6 dl03d1 $T=994240 455520 1 0 $X=993950 $Y=449630
X648 18 VDD_CORE VSS_CORE 22 dl03d1 $T=1005440 466720 0 0 $X=1005150 $Y=466500
X649 19 VDD_CORE VSS_CORE 20 dl03d1 $T=1006000 455520 0 0 $X=1005710 $Y=455300
X650 24 VDD_CORE VSS_CORE 13 dl03d1 $T=1012160 477920 0 0 $X=1011870 $Y=477700
X651 29 VDD_CORE VSS_CORE 31 dl03d1 $T=1017200 489120 1 0 $X=1016910 $Y=483230
X652 27 VDD_CORE VSS_CORE 36 dl03d1 $T=1018320 455520 1 0 $X=1018030 $Y=449630
X653 32 VDD_CORE VSS_CORE 33 dl03d1 $T=1018880 500320 0 0 $X=1018590 $Y=500100
X654 35 VDD_CORE VSS_CORE 37 dl03d1 $T=1023360 511520 0 0 $X=1023070 $Y=511300
X655 34 VDD_CORE VSS_CORE 38 dl03d1 $T=1023360 522720 0 0 $X=1023070 $Y=522500
X656 39 VDD_CORE VSS_CORE 43 dl03d1 $T=1026720 466720 1 0 $X=1026430 $Y=460830
X657 5 21 10 VDD_CORE VSS_CORE 24 dfcrq1 $T=1001520 489120 1 0 $X=1001230 $Y=483230
X658 5 43 10 VDD_CORE VSS_CORE 28 dfcrq1 $T=1024480 466720 0 0 $X=1024190 $Y=466500
X659 30 31 5 10 VSS_CORE VDD_CORE 42 decrq1 $T=1016640 489120 0 0 $X=1016350 $Y=488900
X660 30 33 5 10 VSS_CORE VDD_CORE 44 decrq1 $T=1018320 511520 1 0 $X=1018030 $Y=505630
X661 30 37 5 10 VSS_CORE VDD_CORE 46 decrq1 $T=1022800 522720 1 0 $X=1022510 $Y=516830
X662 30 38 5 10 VSS_CORE VDD_CORE 45 decrq1 $T=1022800 533920 1 0 $X=1022510 $Y=528030
X1260 5 15 10 11 VDD_CORE VSS_CORE 18 dfcrb1 $T=988640 466720 0 0 $X=988350 $Y=466500
X1261 5 36 10 17 VDD_CORE VSS_CORE 19 dfcrb1 $T=1018320 455520 0 180 $X=1005150 $Y=449630
X1974 VSS_CORE 59 60 5 subil_clk1x $T=101400 462460 0 270 $X=95250 $Y=431560
.ENDS
***************************************
