`timescale 1 ns / 100 ps
module AES_pipelined_tb;
	reg [127:0] test = 128'h74657374746573747465737474657374;
	reg [127:0] key = 128'h6e6d6f73706d6f73636d6f73766c7369;
	reg clk, clr;
	wire [127:0] data_out, test_out;
	AES_pipelined AESp(data_out, test, key, clk, 1'b1, clr);
	integer i;
	initial begin
		clk = 0;
		clr = 0;
		#10;
		clr = 1;
		#10;
		clr = 0;
		for(i = 0; i < 9; i = i + 1) begin
			#10;
			clk = ~clk;
			$display("Output: %h",data_out);
			#10;
			clk = ~clk;
		end
		$display("Output: %h",data_out);
	end
endmodule
