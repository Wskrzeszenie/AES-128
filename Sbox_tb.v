`timescale 1 ns / 100 ps
module Sbox_tb;
	wire [7:0] s;
	reg [8:0] i;
	Sbox lookup(i[7:0],s);
	initial begin
		for(i = 0; i < 256; i = i + 1) begin
			#20;
			$display("b:%h, s:%h", i[7:0], s);
		end
		$finish;
	end
endmodule
