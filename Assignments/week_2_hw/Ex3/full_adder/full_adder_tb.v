module full_adder_tb;
    reg A, B, Cin;       // Đầu vào: A, B, Cin
    wire Sum, Cout;      // Đầu ra: Sum, Cout

    // Gọi mô-đun full_adder
    full_adder dut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    // Khối kiểm thử
    initial begin
        // In tiêu đề
        $display("A B Cin | Sum Cout");
        $display("------------------");

        // Kiểm thử với các tổ hợp đầu vào
        A = 0; B = 0; Cin = 0; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 0; B = 0; Cin = 1; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 0; B = 1; Cin = 0; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 0; B = 1; Cin = 1; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 1; B = 0; Cin = 0; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 1; B = 0; Cin = 1; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 1; B = 1; Cin = 0; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);
        A = 1; B = 1; Cin = 1; #10 $display("%b %b %b   |  %b   %b", A, B, Cin, Sum, Cout);

        // Kết thúc kiểm thử
        $finish;
    end
endmodule
