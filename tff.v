module tff(t, clk, clr, q);
   input t, clk, clr;
   output q;
   wire d;

   xor(d,t,q);
   dffe_ref dff(q, d, clk, 1'b1, clr);
endmodule
