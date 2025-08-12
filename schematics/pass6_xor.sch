v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -890 550 -850 {lab=VDD}
N 550 -790 550 -750 {lab=NOT_A}
N 550 -690 550 -650 {lab=VSS}
N 450 -770 480 -770 {lab=A}
N 480 -820 510 -820 {lab=A}
N 480 -820 480 -770 {lab=A}
N 480 -770 480 -720 {lab=A}
N 480 -720 510 -720 {lab=A}
N 550 -770 600 -770 {lab=NOT_A}
N 1170 -880 1170 -840 {lab=VDD}
N 1170 -780 1170 -740 {lab=o}
N 1170 -680 1170 -640 {lab=VSS}
N 1070 -760 1100 -760 {lab=#net1}
N 1100 -810 1130 -810 {lab=#net1}
N 1100 -810 1100 -760 {lab=#net1}
N 1100 -760 1100 -710 {lab=#net1}
N 1100 -710 1130 -710 {lab=#net1}
N 1170 -760 1220 -760 {lab=o}
N 940 -840 990 -840 {lab=#net1}
N 990 -840 990 -660 {lab=#net1}
N 940 -660 990 -660 {lab=#net1}
N 990 -760 1070 -760 {lab=#net1}
N 910 -940 910 -880 {lab=B}
N 1220 -760 1330 -760 {lab=o}
N 910 -620 910 -560 {lab=B}
N 750 -840 880 -840 {lab=A}
N 750 -660 880 -660 {lab=NOT_A}
N 870 -560 910 -560 {lab=B}
N 740 -940 910 -940 {lab=B}
C {symbols/pfet_03v3.sym} 530 -820 0 0 {name=P_A
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 530 -720 0 0 {name=N_A
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 550 -890 3 0 {name=p1 lab=VDD

}
C {iopin.sym} 550 -650 1 0 {name=p2 lab=VSS
}
C {ipin.sym} 450 -770 0 0 {name=p5 lab=A
}
C {symbols/pfet_03v3.sym} 1150 -810 0 0 {name=P_B
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1150 -710 0 0 {name=N_B
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 1170 -880 3 0 {name=p3 lab=VDD

}
C {iopin.sym} 1170 -640 1 0 {name=p4 lab=VSS
}
C {symbols/pfet_03v3.sym} 910 -860 1 0 {name=P_1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 910 -640 3 0 {name=N_1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 1170 -640 1 0 {name=p8 lab=VSS
}
C {opin.sym} 1330 -760 0 0 {name=p11 lab=o
}
C {lab_wire.sym} 750 -840 0 0 {name=p7 sig_type=std_logic lab=A}
C {lab_wire.sym} 600 -770 0 1 {name=p10 sig_type=std_logic lab=NOT_A}
C {lab_wire.sym} 870 -560 0 0 {name=p16 sig_type=std_logic lab=B}
C {lab_wire.sym} 750 -660 0 0 {name=p6 sig_type=std_logic lab=NOT_A}
C {ipin.sym} 740 -940 0 0 {name=p9 lab=B
}
