module DFF (
    input D, clk,
    output Q
);
    wire notQ;

    D_Latch d_latch (.D(D), .clk(clk), .Q(Q), .notQ(notQ));

endmodule

module D_Latch (
    input D, clk,
    output Q, notQ
);
    wire D_n, R, S;

    not (D_n, D);
    nand (S, D, clk);
    nand (R, D_n, clk);
    nand (Q, S, notQ);
    nand (notQ, R, Q); 
endmodule