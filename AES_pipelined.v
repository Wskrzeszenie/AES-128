module AES_pipelined(data_out, data_in, key, clk, en, clr);
	input [127:0] data_in, key;
	input clk, en, clr;
	output [127:0] data_out;
	wire [127:0] RoundCurrent, RoundLast, KeyCurrent, KeyLast, Start, K, R_0, R_1, R_2, R_3, R_4;
	wire [31:0] w0, w1, w2, w3, w4, w5, w6, w7, rw3, sw3, rconi;
	wire [3:0] Round;
	
	register #(128) RoundReg(RoundCurrent, RoundLast, clk, en, clr);
	register #(128) KeyReg(KeyCurrent, KeyLast, clk, en, clr);
	counter c(Round, clk, clr);
	
	AddRoundKey A0(data_in, key, Start);
	
	rcon rc(Round, rconi);
	
	assign {w0,w1,w2,w3} = K;
	RotWord Rot(w3, rw3);
	SubWord Sub(rw3, sw3);
	assign w4 = w0^sw3^rconi;
	assign w5 = w4^w1;
	assign w6 = w5^w2;
	assign w7 = w6^w3;
	assign KeyLast = {w4,w5,w6,w7};
	
	assign R_0 = (Round == 4'b0000) ? Start : RoundCurrent;
	assign K = (Round == 4'b0000) ? key : KeyCurrent;
	
	SubBytes SB(R_0, R_1);
	ShiftRows SR(R_1, R_2);
	MixColumns M(R_2, R_3);
	assign R_4 = (Round == 4'b1001) ? R_2 : R_3;
	AddRoundKey A1(R_4, KeyLast, RoundLast);
	
	assign data_out = RoundLast;
	
endmodule
