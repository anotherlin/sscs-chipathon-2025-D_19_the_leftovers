module xor2 (output o, input a, b);

assign o = a ^ b;

endmodule

module xnor2 (output o, input a, b);

assign o = !(a ^ b);

endmodule

module xor3 (output o, input a, b, c);

assign o = a ^ b ^ c;

endmodule

module xnor3 (output o, input a, b, c);

assign o = !(a ^ b ^ c);

endmodule

module maj3 (output o, input a, b, c);

assign o = (a & b) | (b & c) | (c & a);

endmodule 
