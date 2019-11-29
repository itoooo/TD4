module tb_op_decoder();
  logic [3:0] op;
  logic c_flg;
  logic select_a, select_b;
  logic [3:0] load;
  logic [7:0] vectornum, errors;
  logic [10:0] testvectors[255:0];

  op_decoder op_decoder1(op, c_flg, select_a, select_b, load);

  logic clk;
  always
    begin
      clk = 1; #5; clk = 0; #5;
    end

  logic expect_select_b, expect_select_a;
  logic [3:0] expect_load;

  initial begin
    $readmemb("op_pattern.tv", testvectors);
    vectornum = 0; errors = 0;
  end

  always @ (posedge clk)
    begin
      #1; {op, c_flg, expect_select_b, expect_select_a, expect_load} =
        testvectors[vectornum];
	    $display("load %b", testvectors[vectornum]);
    end

  always @ (negedge clk)
    begin
	    $display("testing %b", {op, c_flg});
      if (select_b !== expect_select_b | select_a !== expect_select_a |
        load !== expect_load) begin
        $display("Error: inputs = %b", {op, c_flg});
      end
      vectornum = vectornum + 1;
      if (testvectors[vectornum] === 11'bx) begin
        $finish;
      end
    end
endmodule
