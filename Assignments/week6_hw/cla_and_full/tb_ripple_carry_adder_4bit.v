`timescale 1ns/1ns
module tb_ripple_carry_adder_4bit;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    ripple_carry_adder_4bit dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
      $monitor("Time = %0t : a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);

      //Case 1
      a = 4'b0001;
      b = 4'b0011;
      cin = 0;
      #10;

      //Case 2
      a = 4'b0101;
      b = 4'b0011;
      cin = 0;
      #10;

      //Case 3
      a = 4'b1111;
      b = 4'b1111;
      cin = 1;
      #10;

      //Case 4
      a = 4'b1010;
      b = 4'b0101;
      cin = 1;
      #10;
    end
endmodule