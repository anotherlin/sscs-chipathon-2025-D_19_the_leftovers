module inv (output o, input i);

supply0	GND;
supply1	VCC;

	pmos(o, VCC, i);
	nmos(o, GND, i);

endmodule

module xor2_4t (output o, input a, b);

supply0	GND;
wire	w;

	pmos(o, a, b);
	pmos(o, b, a);

	nmos(o, w, a);
	nmos(w, GND, b);

endmodule

module xnor2_4t (output o, input a, b);

supply1	VCC;
wire	w;

	nmos(o, a, b);
	nmos(o, b, a);

	pmos(w, VCC, a);
	pmos(o, w, b);

endmodule

module xor2_6t (output o, input a, b);

wire		w;

xnor2_4t	x(w, a, b);
inv		i(o, w);

endmodule

module xnor2_6t (output o, input a, b);

wire	w;

xor2_4t	x(w, a, b);
inv	i(o, w);

endmodule

module xor3_8t_a (output o, input a, b, c);

wire	w;

xor2_4t	x0(w, a, b);
xor2_4t x1(o, w, c);

endmodule

module xor3_8t_b (output o, input a, b, c);

wire	w, not_c;

xor2_4t	x(w, a, b);

inv	i(not_c, c);
	pmos(o, c, w);
	nmos(o, not_c, w);

endmodule

module xor3_10t (output o, input a, b, c);

wire	w0, w1, not_c;

xor2_4t	x(w0, a, b);

inv	i0(not_c, c);
	pmos(w1, not_c, w0);
	nmos(w1, c, w0);

inv	i1(o, w1);

endmodule

module maj3_6t (output o, input a, b, c);

wire	w;
inv	i(not_a, a);

	pmos(w, a, b);
	nmos(w, not_a, b);

	nmos(o, c, w);
	pmos(o, b, w);

endmodule
