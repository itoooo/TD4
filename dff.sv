module DFF(input logic d, ck,
           output logic q);
  always_ff @(posedge ck)
    q = d;
endmodule
