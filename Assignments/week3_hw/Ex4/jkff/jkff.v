module JKFF (
    input J, K, clk,
    output Q
);
    wire S, R, notQ;

    JK_Latch jk_latch (.J(J), .K(K), .clk(clk), .Q(Q), .notQ(notQ));

endmodule

module JK_Latch (
    input J, K, clk,
    output Q, notQ
);
    wire J_n, K_n, S, R;

    not (J_n, J);
    not (K_n, K);

    nand (S, J, notQ, clk);
    nand (R, K, Q, clk);
    nand (Q, S, notQ);
    nand (notQ, R, Q);
endmodule
