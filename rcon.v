module rcon(i, rci);
	input [3:0] i;
	output reg [31:0] rci;
	always @(i) begin
		case(i)
			4'd00: rci <= 32'h01000000;
			4'd01: rci <= 32'h02000000;
			4'd02: rci <= 32'h04000000;
			4'd03: rci <= 32'h08000000;
			4'd04: rci <= 32'h10000000;
			4'd05: rci <= 32'h20000000;
			4'd06: rci <= 32'h40000000;
			4'd07: rci <= 32'h80000000;
			4'd08: rci <= 32'h1b000000;
			4'd09: rci <= 32'h36000000;
			default: rci <= 32'h0;
		endcase
	end
endmodule
