`timescale 1ns/1ns
module ex1_tb;

reg a, b, c, d;
wire f;

ex1 dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(f)
);

initial begin
  $display("a b c d | y");
  $display("----------------");
  a = 0; b = 0; c = 0; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 0; c = 0; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 0; c = 1; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 0; c = 1; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 1; c = 0; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 1; c = 1; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 0; b = 1; c = 1; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 0; c = 0; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 0; c = 0; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 0; c = 1; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 0; c = 1; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 1; c = 0; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 1; c = 0; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 1; c = 1; d = 0; #10 $display("%b %b %b %b | %b", a, b, c, d, f);
  a = 1; b = 1; c = 1; d = 1; #10 $display("%b %b %b %b | %b", a, b, c, d, f); 

  $finish; 
end



endmodule
