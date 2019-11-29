module TD4(input logic clk,
           input logic op,
			  output logic led0, led1, led2);
  logic d, q;
  
  one_bit_register register1(d, clk, q);
  
  logic and1, and2;
  assign and1 = q & op;
  assign and2 = ~q & ~op;
  assign d = and1 | and2;
  
  assign led0 = q;
  assign led1 = d;
  assign led2 = op;
endmodule