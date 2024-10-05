module MixColumns(state_in, state_out);
	input [127:0] state_in;
	output [127:0] state_out;
	wire [7:0] a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15;
	wire [7:0] b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;
	wire [7:0] b0_0, b0_1, b0_2, b0_3, b1_0, b1_1, b1_2, b1_3, b2_0, b2_1, b2_2, b2_3, b3_0, b3_1, b3_2, b3_3, b4_0, b4_1, b4_2, b4_3, b5_0, b5_1, b5_2, b5_3, b6_0, b6_1, b6_2, b6_3, b7_0, b7_1, b7_2, b7_3, b8_0, b8_1, b8_2, b8_3, b9_0, b9_1, b9_2, b9_3, b10_0, b10_1, b10_2, b10_3, b11_0, b11_1, b11_2, b11_3, b12_0, b12_1, b12_2, b12_3, b13_0, b13_1, b13_2, b13_3, b14_0, b14_1, b14_2, b14_3, b15_0, b15_1, b15_2, b15_3;
	/*
	b0	b4	b8	b12		2	3	1	1		a0	a4	a8	a12
	b1	b5	b9	b13		1	2	3	1		a1	a5	a9	a13
	b2	b6	b10	b14	 =	1	1	2	3	x	a2	a6	a10	a14
	b3	b7	b11	b15		3	1	1	2		a3	a7	a11	a15
	*/
	assign {a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15} = state_in;
	assign state_out = {b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15};
	
	Galois2 G000(a0, b0_0);
	Galois3 G001(a1, b0_1);
	assign b0_2 = a2;
	assign b0_3 = a3;
	assign b0 = b0_0^b0_1^b0_2^b0_3;
	
	assign b1_0 = a0;
	Galois2 G011(a1, b1_1);
	Galois3 G012(a2, b1_2);
	assign b1_3 = a3;
	assign b1 = b1_0^b1_1^b1_2^b1_3;
	
	assign b2_0 = a0;
	assign b2_1 = a1;
	Galois2 G022(a2, b2_2);
	Galois3 G023(a3, b2_3);
	assign b2 = b2_0^b2_1^b2_2^b2_3;
	
	Galois3 G030(a0, b3_0);
	assign b3_1 = a1;
	assign b3_2 = a2;
	Galois2 G033(a3, b3_3);
	assign b3 = b3_0^b3_1^b3_2^b3_3;
	
	Galois2 G100(a4, b4_0);
	Galois3 G101(a5, b4_1);
	assign b4_2 = a6;
	assign b4_3 = a7;
	assign b4 = b4_0^b4_1^b4_2^b4_3;
	
	assign b5_0 = a4;
	Galois2 G111(a5, b5_1);
	Galois3 G112(a6, b5_2);
	assign b5_3 = a7;
	assign b5 = b5_0^b5_1^b5_2^b5_3;
	
	assign b6_0 = a4;
	assign b6_1 = a5;
	Galois2 G122(a6, b6_2);
	Galois3 G123(a7, b6_3);
	assign b6 = b6_0^b6_1^b6_2^b6_3;
	
	Galois3 G130(a4, b7_0);
	assign b7_1 = a5;
	assign b7_2 = a6;
	Galois2 G133(a7, b7_3);
	assign b7 = b7_0^b7_1^b7_2^b7_3;
	
	Galois2 G200(a8, b8_0);
	Galois3 G201(a9, b8_1);
	assign b8_2 = a10;
	assign b8_3 = a11;
	assign b8 = b8_0^b8_1^b8_2^b8_3;
	
	assign b9_0 = a8;
	Galois2 G211(a9, b9_1);
	Galois3 G212(a10, b9_2);
	assign b9_3 = a11;
	assign b9 = b9_0^b9_1^b9_2^b9_3;
	
	assign b10_0 = a8;
	assign b10_1 = a9;
	Galois2 G222(a10, b10_2);
	Galois3 G223(a11, b10_3);
	assign b10 = b10_0^b10_1^b10_2^b10_3;
	
	Galois3 G230(a8, b11_0);
	assign b11_1 = a9;
	assign b11_2 = a10;
	Galois2 G233(a11, b11_3);
	assign b11 = b11_0^b11_1^b11_2^b11_3;
	
	Galois2 G300(a12, b12_0);
	Galois3 G301(a13, b12_1);
	assign b12_2 = a14;
	assign b12_3 = a15;
	assign b12 = b12_0^b12_1^b12_2^b12_3;
	
	assign b13_0 = a12;
	Galois2 G311(a13, b13_1);
	Galois3 G312(a14, b13_2);
	assign b13_3 = a15;
	assign b13 = b13_0^b13_1^b13_2^b13_3;
	
	assign b14_0 = a12;
	assign b14_1 = a13;
	Galois2 G322(a14, b14_2);
	Galois3 G323(a15, b14_3);
	assign b14 = b14_0^b14_1^b14_2^b14_3;
	
	Galois3 G330(a12, b15_0);
	assign b15_1 = a13;
	assign b15_2 = a14;
	Galois2 G333(a15, b15_3);
	assign b15 = b15_0^b15_1^b15_2^b15_3;

endmodule
