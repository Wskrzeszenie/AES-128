module SubWord(w_in, w_out);
	input [31:0] w_in;
	output [31:0] w_out;
	Sbox box0(w_in[7:0], w_out[7:0]);
	Sbox box1(w_in[15:8], w_out[15:8]);
	Sbox box2(w_in[23:16], w_out[23:16]);
	Sbox box3(w_in[31:24], w_out[31:24]);
endmodule
