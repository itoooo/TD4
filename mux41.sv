module my_mux41(input logic [3:0][3:0] c,
             input logic [1:0] sel,
             output logic [3:0] y);
  always_comb
    case (sel)
      0: y = c[0];
      1: y = c[1];
      2: y = c[2];
      3: y = c[3];
      default: y = 'x;
    endcase
endmodule
