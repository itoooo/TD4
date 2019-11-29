module four_bit_register(input logic [3:0] data,
                         input logic clk,
								 input logic ld,
                         output logic [3:0] q);
  logic [3:0] d;
  
  always_ff @ (posedge clk) begin
    if (~ld) // if LOAD
		d <= data;
		
	 q <= d;
  end
endmodule