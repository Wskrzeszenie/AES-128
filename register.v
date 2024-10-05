module register #(parameter WIDTH=128)(q, d, clk, en, clr);
	input [WIDTH-1:0] d;
	input clk, en, clr;
	output [WIDTH-1:0] q;
	genvar i;
	generate
		for(i = 0; i < WIDTH; i = i + 1) begin
			dffe_ref dff(q[i], d[i], clk, en, clr);
		end
	endgenerate
endmodule

