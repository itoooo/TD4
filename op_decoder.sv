module op_decoder(input logic [3:0] op, input logic c_flg,
                  output logic select_a, select_b, output logic [3:0] load);
	assign select_a = op[0] | op[3];
	assign select_b = op[1];
	assign load[0] = op[2] | op[3];
	assign load[1] = ~op[2] | op[3];
	assign load[2] = ~(~op[2] & op[3]);
	assign load[3] = ~op[2] | ~op[3] | (~op[0] & c_flg);
endmodule