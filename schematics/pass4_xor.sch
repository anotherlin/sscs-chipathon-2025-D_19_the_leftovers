v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1260 -540 1260 -500 {lab=VSS}
N 880 -960 920 -960 {lab=B}
N 1220 -760 1330 -760 {lab=o}
N 760 -860 890 -860 {lab=A}
N 760 -680 890 -680 {lab=B}
N 920 -960 920 -900 {lab=B}
N 920 -640 920 -580 {lab=A}
N 880 -580 920 -580 {lab=A}
N 950 -860 1040 -860 {lab=o}
N 950 -680 1040 -680 {lab=o}
N 1040 -860 1040 -680 {lab=o}
N 1040 -760 1220 -760 {lab=o}
N 1260 -640 1260 -600 {lab=#net1}
N 1260 -760 1260 -700 {lab=o}
N 1180 -670 1220 -670 {lab=A}
N 1180 -570 1220 -570 {lab=B}
C {symbols/pfet_03v3.sym} 920 -660 3 0 {name=P_B
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
C {symbols/nfet_03v3.sym} 1240 -570 0 0 {name=N_B
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
C {iopin.sym} 1260 -500 1 0 {name=p4 lab=VSS
}
C {symbols/pfet_03v3.sym} 920 -880 1 0 {name=P_1
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
C {symbols/nfet_03v3.sym} 1240 -670 0 0 {name=N_1
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
C {opin.sym} 1330 -760 0 0 {name=p11 lab=o
}
C {lab_wire.sym} 880 -960 0 0 {name=p14 sig_type=std_logic lab=B}
C {lab_wire.sym} 880 -580 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_wire.sym} 1180 -670 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 1180 -570 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_wire.sym} 880 -960 0 0 {name=p1 sig_type=std_logic lab=B}
C {lab_wire.sym} 880 -960 0 0 {name=p2 sig_type=std_logic lab=B}
C {ipin.sym} 760 -860 0 0 {name=p5 lab=A
}
C {ipin.sym} 760 -680 0 0 {name=p10 lab=B

}
