module tb_comparator_4bit;

    reg [3:0] A;
    reg [3:0] B;
    wire A_gt_B;
    wire A_lt_B;
    wire A_eq_B;

    comparator_4bit dut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        A = 4'b0000; B = 4'b0000; #10; // A_eq_B
        $display("A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", A, B, A_gt_B, A_lt_B, A_eq_B);

        A = 4'b1100; B = 4'b0110; #10; // A_gt_B
        $display("A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", A, B, A_gt_B, A_lt_B, A_eq_B);

        A = 4'b1010; B = 4'b1011; #10; // A_lt_B
        $display("A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", A, B, A_gt_B, A_lt_B, A_eq_B);

        A = 4'b1111; B = 4'b1111; #10; // A_eq_B
        $display("A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", A, B, A_gt_B, A_lt_B, A_eq_B);

        $stop;
    end

endmodule
