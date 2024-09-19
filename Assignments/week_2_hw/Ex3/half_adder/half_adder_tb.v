`timescale 1ns/1ns
module half_adder_tb;

reg a, b;
wire s, c;

half_adder dut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial begin
  $display("a b | s c");
  $display("---------------");
  a = 0; b = 0; #10 $display("%b %b | %b %b", a, b, s, c);
  a = 0; b = 1; #10 $display("%b %b | %b %b", a, b, s, c);
  a = 1; b = 0; #10 $display("%b %b | %b %b", a, b, s, c);
  a = 1; b = 1; #10 $display("%b %b | %b %b", a, b, s, c);

  $finish;
end

endmodule