`timescale 1 ns / 100 ps
module GenRoundKeys_tb;
	wire [127:0] K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10;
	assign K0 = 128'h6e6d6f73706d6f73636d6f73766c7369;
	GenRoundKeys G(K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10);
	
	initial begin
		#1;
		$display("K0:%h", K0);
		$display("K1:%h", K1);
		$display("K2:%h", K2);
		$display("K3:%h", K3);
		$display("K4:%h", K4);
		$display("K5:%h", K5);
		$display("K6:%h", K6);
		$display("K7:%h", K7);
		$display("K8:%h", K8);
		$display("K9:%h", K9);
		$display("K10:%h", K10);
		$finish;
	end
endmodule
