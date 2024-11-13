module comparator_1bit(
    input A, B,
    output A_lt_B,
    output A_eq_B,
    output A_gt_B
);

assign A_lt_B = (~A) & B;
assign A_eq_B = A ~^ B;
assign A_gt_B = A & (~B);

endmodule