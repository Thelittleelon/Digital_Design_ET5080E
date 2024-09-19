`timescale 1ns/1ns
module mux2to1_tb;
reg a, b, s;
wire y;

mux2to1_gate dut(
    .a(a),
    .b(b),
    .s(s),
    .y(y)
);

initial begin
  $display("s a b | y");
  $display("------------------");
  s = 0; a = 0; b = 0; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 0; a = 0; b = 1; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 0; a = 1; b = 0; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 0; a = 1; b = 1; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 1; a = 0; b = 0; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 1; a = 0; b = 1; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 1; a = 1; b = 0; #10 $display("%b %b %b | %b", s, a, b, y);
  s = 1; a = 1; b = 1; #10 $display("%b %b %b | %b", s, a, b, y);
end

endmodule