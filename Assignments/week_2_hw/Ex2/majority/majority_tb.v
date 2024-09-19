`timescale 1ns/1ns
module majority_tb;

reg v1, v2, v3;
wire major;

majority dut(
    .v1(v1),
    .v2(v2),
    .v3(v3),
    .major(major)
);

initial begin
  $display("v1 v2 v3 | major");
  $display("-------------------------");
  v1 = 0; v2 = 0; v3 = 0; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 0; v2 = 0; v3 = 1; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 0; v2 = 1; v3 = 0; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 0; v2 = 1; v3 = 1; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 1; v2 = 0; v3 = 0; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 1; v2 = 0; v3 = 1; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 1; v2 = 1; v3 = 0; #10 $display("%b %b %b | %b", v1, v2, v3, major);
  v1 = 1; v2 = 1; v3 = 1; #10 $display("%b %b %b | %b", v1, v2, v3, major);

  $finish;
end

endmodule