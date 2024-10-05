`timescale 1 ns / 100 ps
module AES_tb;
	reg [127:0] test = 128'h74657374746573747465737474657374;
	reg [127:0] key = 128'h6e6d6f73706d6f73636d6f73766c7369;
	wire [127:0] encrypt;
	AES AES(test, key, encrypt);
	initial begin
		#20;
		$display("Input:  %h",test);
		$display("Output: %h",encrypt);
	end
endmodule
