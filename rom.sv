module rom (input logic [3:0] addr, output logic [7:0] d);
  logic [15:0][7:0] matrix;

  initial
    begin
    /*
      matrix[0]  = 8'b10110011;
  		matrix[1]  = 8'b10110110;
  		matrix[2]  = 8'b10111100;
  		matrix[3]  = 8'b10111000;

  		matrix[4]  = 8'b10111000;
  		matrix[5]  = 8'b10111100;
  		matrix[6]  = 8'b10110110;
  		matrix[7]  = 8'b10110011;

  		matrix[8]  = 8'b10110001;
  		matrix[9]  = 8'b11110000;
  		matrix[10] = 8'b00000000;
  		matrix[11] = 8'b00000000;

  		matrix[12] = 8'b00000000;
  		matrix[13] = 8'b00000000;
  		matrix[14] = 8'b00000000;
  		matrix[15] = 8'b00000000;
      */
      matrix[0] = 8'b10110111;
      matrix[1] = 8'b00000001;
      matrix[2] = 8'b11100001;
      matrix[3] = 8'b00000001;
      matrix[4] = 8'b11100011;
      matrix[6] = 8'b00000001;
      matrix[7] = 8'b11100110;
      matrix[5] = 8'b10110110;
      matrix[8] = 8'b00000001;
      matrix[9] = 8'b11101000;
      matrix[10] = 8'b10110000;
      matrix[11] = 8'b10110100;
      matrix[12] = 8'b00000001;
      matrix[13] = 8'b11101010;
      matrix[14] = 8'b10111000;
      matrix[15] = 8'b11111111;
    end

  always_comb
    d <= matrix[addr];

endmodule
