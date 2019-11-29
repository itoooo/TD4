module TB_DFF();
  logic d, ck, q;

  DFF DFF1(d, ck, q);

  initial begin
    d = 0; ck = 0; #10;
    d = 1; #5;
    ck = 1; #5;
    ck = 0; #5;
    d = 0; #5;
    d = 1; #5;
    d = 0; #5;
    ck = 1; #5;
  end
endmodule
