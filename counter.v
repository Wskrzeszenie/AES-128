module counter(q, clk, clr);
	input clk, clr;
	output [3:0] q;
	wire w1, w2, w3, q1, q2, q3, q4, q5;
	tff t1(1'b1, clk, clr, q1);
	tff t2(q1, clk, clr, q2);
	and(w1, q1, q2);
	tff t3(w1, clk, clr, q3);
	and(w2, w1, q3);
	tff t4(w2, clk, clr, q4);
	assign q = {q4, q3, q2, q1};
endmodule
