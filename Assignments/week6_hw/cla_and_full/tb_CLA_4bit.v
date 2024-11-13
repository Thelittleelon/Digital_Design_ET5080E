`timescale 1ns / 1ns

module CLA_4bit_tb;


    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;


    CLA_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );


    initial begin
        A = 4'b0001; B = 4'b0010; Cin = 0;
        #10; 
        $display("Test case 1: A = %b, B = %b, Cin = %b => Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        A = 4'b0101; B = 4'b0011; Cin = 0;
        #10; 
        $display("Test case 2: A = %b, B = %b, Cin = %b => Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b0001; Cin = 1;
        #10; 
        $display("Test case 3: A = %b, B = %b, Cin = %b => Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10; 
        $display("Test case 4: A = %b, B = %b, Cin = %b => Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        $finish;
    end
endmodule
