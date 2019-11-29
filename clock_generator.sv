module clock_generator(input logic refclk, input logic reset, output logic clk);
  logic [31:0] underclock_th = 31'd50_000_000;
  logic [31:0] count = 0;
  
  always @ (posedge refclk, negedge reset)
    if (~reset)
	   count = 0;
	 else if (underclock_th < count)
	   begin clk <= 1; count <= 0; end
    else
	   begin
	     clk <= 0;
		  count <= count + 1;
		end
endmodule