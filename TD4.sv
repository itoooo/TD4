module TD4(input logic refclk,
           input logic reset,
			  input logic [3:0] d,
			  output logic [7:0] led);
  
  logic [3:0] load;
  logic [1:0] select;
  logic [3:0] alu_out;
  logic [3:0][3:0] mux_in;
  logic [3:0] alu_in;
  logic [3:0] im;
  logic [3:0] prog_count;
  logic [7:0] instruction;
  logic [3:0] register_c_output;
  
  //assign led[3:0] = alu_out; // debug output
  
  logic clk;
  clock_generator inner_clock(refclk, reset, clk);
	 
  assign led[7:4] = prog_count;
  rom program_memory(prog_count, instruction);
  
  four_bit_register register_a(alu_out, clk, load[0], mux_in[0]);
  four_bit_register register_b(alu_out, clk, load[1], mux_in[1]);
  
  // for use of the output
  four_bit_register register_c(alu_out, clk, load[2], register_c_output);
  assign led[3:0] = register_c_output;
  
  counter program_counter(alu_out, clk, load[3], reset, prog_count);
  
  my_mux41 selecter(mux_in, select, alu_in);
  
  logic c;
  four_bit_full_adder full_adder(alu_in, im, alu_out, c);
  
  logic c_flg;
  one_bit_register carry_flg(c, clk, c_flg);
  
  
  logic [3:0] op;
  assign op[3:0] = instruction[7:4];
  assign im[3:0] = instruction[3:0];
  
  op_decoder op_decoder1(op, c_flg, select[0], select[1], load);
endmodule