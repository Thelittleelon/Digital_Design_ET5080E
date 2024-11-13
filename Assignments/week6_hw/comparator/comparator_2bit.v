module comparator_2bit (
    input [1:0] A,
    input [1:0] B,
    output A_lt_B,
    output A_eq_B,
    output A_gt_B
);

    wire A_lt_B_high, A_eq_B_high, A_gt_B_high;
    wire A_lt_B_low, A_eq_B_low, A_gt_B_low;

    comparator_1bit high_comparator (
        .A(A[1]),
        .B(B[1]),
        .A_lt_B(A_lt_B_high),
        .A_eq_B(A_eq_B_high),
        .A_gt_B(A_gt_B_high)
    );

    comparator_1bit low_comparator (
        .A(A[0]),
        .B(B[0]),
        .A_lt_B(A_lt_B_low),
        .A_eq_B(A_eq_B_low),
        .A_gt_B(A_gt_B_low)
    );

    assign A_lt_B = A_lt_B_high | (A_eq_B_high & A_lt_B_low);
    assign A_eq_B = A_eq_B_high & A_eq_B_low;
    assign A_gt_B = A_gt_B_high | (A_eq_B_high & A_gt_B_low);

endmodule
