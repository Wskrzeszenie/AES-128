module RotWord(w_in, w_out);
	input [31:0] w_in;
	output [31:0] w_out;
	assign w_out = {w_in[23:0],w_in[31:24]};
endmodule
