module ShiftRows(state_in, state_out);
	input [127:0] state_in;
	output [127:0] state_out;
	wire [7:0] s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15;
	/*
	s0	s4	s8	s12
	s1	s5	s9	s13	<<1
	s2	s6	s10	s14	<<2
	s3	s7	s11	s15	<<3
	*/
	
	/*
	s0	s4	s8	s12
	s5	s9	s13	s1
	s10	s14	s2	s6
	s15	s3	s7	s11
	*/
	assign {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15} = state_in;
	assign state_out = {s0, s5, s10, s15, s4, s9, s14, s3, s8, s13, s2, s7, s12, s1, s6, s11};
endmodule
