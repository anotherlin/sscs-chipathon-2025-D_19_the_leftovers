module testbench;

integer		i;
reg		a, b, c;

wire		xor2_gold_o, xor2_4t_o, xor2_6t_o;
wire		xnor2_gold_o, xnor2_4t_o, xnor2_6t_o;
wire		xor3_gold_o, xor3_8t_a_o, xor3_8t_b_o, xor3_10t_o;
wire		maj3_gold_o, maj3_6t_o;

xor2		gold_xor2(xor2_gold_o, a, b);
xor2_4t 	dut_xor2_4t(xor2_4t_o, a, b);
xor2_6t		dut_xor2_6t(xor2_6t_o, a, b);

xnor2		gold_xnor2(xnor2_gold_o, a, b);
xnor2_4t 	dut_xnor2_4t(xnor2_4t_o, a, b);
xnor2_6t	dut_xnor2_6t(xnor2_6t_o, a, b);

xor3		gold_xor3(xor3_gold_o, a, b, c);
xor3_8t_a 	dut_xor3_8t_a(xor3_8t_a_o, a, b, c);
xor3_8t_b 	dut_xor3_8t_b(xor3_8t_b_o, a, b, c);
xor3_10t 	dut_xor3_10t(xor3_10t_o, a, b, c);

maj3		gold_maj3(maj3_gold_o, a, b, c);
maj3_6t		dut_maj3_6t(maj3_6t_o, a, b, c);


/*
wire		xnor3_gold, xnor3_8t_o;
xnor3		gold_xnor3(xnor3_gold, a, b, c);
xnor3_8t 	dut_xnor3_8t(xnor3_8t_o, a, b, c);
*/

initial begin


/*
	$monitor($time,
		"\t(%b, %b, %b) => (%b, %v) vs.  (%b, %v)", 
		a, b, c, maj3_gold_o, maj3_gold_o, maj3_6t_o, maj3_6t_o);
*/

	for (i = 0; i < 16; i = i + 1) begin

#10		a = i & 1;
		b = (i >> 1) & 1;
		c = (i >> 2) & 1;

#10		if ((xor2_gold_o !== xor2_4t_o)
		|| (xor2_gold_o !== xor2_6t_o)
		|| (xnor2_gold_o !== xnor2_4t_o)
		|| (xnor2_gold_o !== xnor2_6t_o)
		|| (xor3_gold_o !== xor3_8t_a_o)
		|| (xor3_gold_o !== xor3_8t_b_o)
		|| (xor3_gold_o !== xor3_10t_o)
		|| (maj3_gold_o !== maj3_6t_o)) begin
		
			$display("\tValidation failed!");
			$finish;

		end

	end
	$display("\tValidation successful!");

end

endmodule
