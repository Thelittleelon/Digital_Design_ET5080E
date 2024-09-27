module SRFF (
    input S, R, clk,
    output Q
);
    wire S_n, R_n, Q_n;

    SR_Latch sr_latch (.S(S), .R(R), .clk(clk), .Q(Q), .Q_n(Q_n));

endmodule

module SR_Latch (
    input S, R, clk,
    output Q, Q_n
);
    wire S_clk, R_clk;

    nand (S_clk, S, clk);
    nand (R_clk, R, clk);
    nand (Q, S_clk, Q_n);
    nand (Q_n, R_clk, Q);
endmodule
