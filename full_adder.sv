module full_adder(input logic cin, a, b,
                  output logic s, c);
	assign s = (~cin & ~a & b) |
	           (~cin & a & ~b) |
				  (cin & ~a & ~b) |
				  (cin & a & b);
	assign c = (~cin & a & b) |
	           (cin & ~a & b) |
				  (cin & a & ~b) |
				  (cin & a & b);
endmodule