`timescale 1 ns / 100 ps
module Galois_tb;
	integer a;
	reg [7:0] b = 8'd3;
	wire [7:0] p;
	//Galois G(a[7:0],b,p);
	Galois3 G(a[7:0],p);
	initial begin
		for(a = 0; a < 256; a = a + 1) begin
			#20;
			$display("a:%h, b:%h, p:%h", a[7:0],b,p);
		end
		$finish;
	end
endmodule
