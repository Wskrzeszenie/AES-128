module AES(data_in, key, data_out);
	input [127:0] data_in, key;
	output [127:0] data_out;
	wire [127:0] K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10;
	wire [127:0] R1, R1_0, R1_1, R1_2, R2, R2_0, R2_1, R2_2, R3, R3_0, R3_1, R3_2, R4, R4_0, R4_1, R4_2, R5, R5_0, R5_1, R5_2, R6, R6_0, R6_1, R6_2, R7, R7_0, R7_1, R7_2, R8, R8_0, R8_1, R8_2, R9, R9_0, R9_1, R9_2, R10, R10_0, R10_1;
	
	assign K0 = key;
	
	GenRoundKeys G(K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10);
	AddRoundKey A0(data_in, K0, R1);
	
	SubBytes SB1(R1, R1_0);
	ShiftRows SR1(R1_0, R1_1);
	MixColumns M1(R1_1, R1_2);
	AddRoundKey A1(R1_2, K1, R2);
	
	SubBytes SB2(R2, R2_0);
	ShiftRows SR2(R2_0, R2_1);
	MixColumns M2(R2_1, R2_2);
	AddRoundKey A2(R2_2, K2, R3);
	
	SubBytes SB3(R3, R3_0);
	ShiftRows SR3(R3_0, R3_1);
	MixColumns M3(R3_1, R3_2);
	AddRoundKey A3(R3_2, K3, R4);
	
	SubBytes SB4(R4, R4_0);
	ShiftRows SR4(R4_0, R4_1);
	MixColumns M4(R4_1, R4_2);
	AddRoundKey A4(R4_2, K4, R5);
	
	SubBytes SB5(R5, R5_0);
	ShiftRows SR5(R5_0, R5_1);
	MixColumns M5(R5_1, R5_2);
	AddRoundKey A5(R5_2, K5, R6);
	
	SubBytes SB6(R6, R6_0);
	ShiftRows SR6(R6_0, R6_1);
	MixColumns M6(R6_1, R6_2);
	AddRoundKey A6(R6_2, K6, R7);
	
	SubBytes SB7(R7, R7_0);
	ShiftRows SR7(R7_0, R7_1);
	MixColumns M7(R7_1, R7_2);
	AddRoundKey A7(R7_2, K7, R8);
	
	SubBytes SB8(R8, R8_0);
	ShiftRows SR8(R8_0, R8_1);
	MixColumns M8(R8_1, R8_2);
	AddRoundKey A8(R8_2, K8, R9);
	
	SubBytes SB9(R9, R9_0);
	ShiftRows SR9(R9_0, R9_1);
	MixColumns M9(R9_1, R9_2);
	AddRoundKey A9(R9_2, K9, R10);
	
	SubBytes SB10(R10, R10_0);
	ShiftRows SR10(R10_0, R10_1);
	AddRoundKey A10(R10_1, K10, data_out);

endmodule
