module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output A_lt_B,
    output A_eq_B,
    output A_gt_B
);

    wire A_lt_B_high, A_eq_B_high, A_gt_B_high;
    wire A_lt_B_low, A_eq_B_low, A_gt_B_low;

    comparator_2bit high_comparator (
        .A(A[3:2]),
        .B(B[3:2]),
        .A_gt_B(A_gt_B_high),
        .A_lt_B(A_lt_B_high),
        .A_eq_B(A_eq_B_high)
    );

    comparator_2bit low_comparator (
        .A(A[1:0]),
        .B(B[1:0]),
        .A_gt_B(A_gt_B_low),
        .A_lt_B(A_lt_B_low),
        .A_eq_B(A_eq_B_low)
    );

    assign A_lt_B = A_lt_B_high | (A_eq_B_high & A_lt_B_low);
    assign A_eq_B = A_eq_B_high & A_eq_B_low;
    assign A_gt_B = A_gt_B_high | (A_eq_B_high & A_gt_B_low);

endmodule
