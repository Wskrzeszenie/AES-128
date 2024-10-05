module Galois3(a,p);
	input [7:0] a;
	output [7:0] p;
	assign p = a[7] ? (a<<1)^(8'h1b)^a : (a<<1)^a;
endmodule
