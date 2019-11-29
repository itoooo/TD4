module TB_MUX41();
  logic [3:0] c;
  logic [1:0] sel;
  logic y;

  MUX41 MUX(c, sel, y);

  initial begin
    c = 0; sel = 0; #10;
    /*
    c = 4'b0001; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0010; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0011; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0100; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0101; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0110; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b0111; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1000; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1001; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1010; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1011; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1100; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1101; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1110; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    c = 4'b1111; #1; sel = 1; #1; sel = 2; #1; sel = 3; #1;
    sel = 0; #1;
    */
  end
endmodule
