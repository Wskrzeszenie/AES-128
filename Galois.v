module Galois(a,b,p);
	input [7:0] a,b;
	output [7:0] p;
	wire [7:0] add0, add1, add2, add3, add4, add5, add6, add7, shifta0, shifta1, shifta2, shifta3, shifta4, shifta5, shifta6, shifta7;
	
	assign shifta0 = a;
	assign add0 = b[0] ? shifta0 : 8'h00;
	assign shifta1 = shifta0[7] ? (shifta0<<1)^(8'h1b) : shifta0<<1;
	assign add1 = b[1] ? shifta1 : 8'h00;
	assign shifta2 = shifta1[7] ? (shifta1<<1)^(8'h1b) : shifta1<<1;
	assign add2 = b[2] ? shifta2 : 8'h00;
	assign shifta3 = shifta2[7] ? (shifta2<<1)^(8'h1b) : shifta2<<1;
	assign add3 = b[3] ? shifta3 : 8'h00;
	assign shifta4 = shifta3[7] ? (shifta3<<1)^(8'h1b) : shifta3<<1;
	assign add4 = b[4] ? shifta4 : 8'h00;
	assign shifta5 = shifta4[7] ? (shifta4<<1)^(8'h1b) : shifta4<<1;
	assign add5 = b[5] ? shifta5 : 8'h00;
	assign shifta6 = shifta5[7] ? (shifta5<<1)^(8'h1b) : shifta5<<1;
	assign add6 = b[6] ? shifta6 : 8'h00;
	assign shifta7 = shifta6[7] ? (shifta6<<1)^(8'h1b) : shifta6<<1;
	assign add7 = b[7] ? shifta7 : 8'h00;

	assign p = add0^add1^add2^add3^add4^add5^add6^add7;
endmodule
