module counter(input logic [3:0] d, input logic clk, input logic ld, input logic reset,
               output logic [3:0] q);
	always @ (posedge clk)
	 if (~reset)
	   q <= 0;
    else if (~ld)
	   q <= d;
	 else begin
		q <= q + 1;
	 end
endmodule