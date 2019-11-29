module four_bit_full_adder(input logic [3:0] a, b,
                           output logic [3:0] s,
									output logic c);
	logic cin0, cin1, cin2, cin3;
	
	full_adder full_adder1(cin0, a[0], b[0], s[0], cin1);
	full_adder full_adder2(cin1, a[1], b[1], s[1], cin2);
	full_adder full_adder3(cin2, a[2], b[2], s[2], cin3);
	full_adder full_adder4(cin3, a[3], b[3], s[3], c);
endmodule
