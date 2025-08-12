module xor_p4 (output o, input a, b);

supply0	GND;
wire	w;

	pmos(o, a, b);
	pmos(o, b, a);

	nmos(o, w, a);
	nmos(w, GND, b);

endmodule

module xnor_p4 (output o, input a, b);

supply1	VCC;
wire	w;

	nmos(o, a, b);
	nmos(o, b, a);

	pmos(w, VCC, a);
	pmos(o, w, b);

endmodule

module inv (output o, input i);

supply0	GND;
supply1	VCC;

	pmos(o, VCC, i);
	nmos(o, GND, i);

endmodule

module xor_p4_obuf (output o, input a, b);

wire	w;
xnor_p4	x(w, a, b);
inv	i(o, w);

endmodule

module xnor_p4_obuf (output o, input a, b);

wire	w;
xor_p4	x(w, a, b);
inv	i(o, w);

endmodule

module testbench;

integer		i;
reg		a, b;
wire		o1, o2, o3, o4;

xor_p4		dut1(o1, a, b);
xnor_p4		dut2(o2, a, b);
xor_p4_obuf	dut3(o3, a, b);
xnor_p4_obuf	dut4(o4, a, b);

initial begin

	$monitor($time,
		"\t(%b ^ %b) = (%b, %v), (%b ~^ %b) = (%b, %v)", 
		a, b, o1, o1, a, b, o2, o2);
	for (i = 0; i < 10; i = i + 1) begin

#10		a = i & 1;
		b = (i >> 1) & 1;
#10		if ((a ^ b !== o1) || (a ~^ b !== o2)
		|| (a ^ b !== o3) || (a ~^ b !== o4)) begin

			$display($time, "\tComputed value is wrong!");
			$finish;

		end

	end
	$display($time, "\tAll done!");

end

endmodule
