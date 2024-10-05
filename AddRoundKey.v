module AddRoundKey(state_in, key, state_out);
	input [127:0] state_in, key;
	output [127:0] state_out;
	assign state_out = state_in^key;
endmodule
