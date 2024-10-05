module DFF (
    input D, clk,
    output Q
);
    wire Qm, notQm;  // Tín hiệu trung gian giữa master và slave

    // Master latch, bị ảnh hưởng khi clk = 0 (inverted clock)
    D_Latch master (.D(D), .clk(~clk), .Q(Qm), .notQ(notQm));

    // Slave latch, bị ảnh hưởng khi clk = 1
    D_Latch slave (.D(Qm), .clk(clk), .Q(Q), .notQ());  // notQ không cần thiết trong DFF
endmodule


module D_Latch (
    input D, clk,
    output Q, notQ
);
    wire D_n, R, S;

    not (D_n, D);           // Tạo tín hiệu nghịch của D
    nand (S, D, clk);       // Tạo tín hiệu Set
    nand (R, D_n, clk);     // Tạo tín hiệu Reset
    nand (Q, S, notQ);      // Tín hiệu đầu ra Q
    nand (notQ, R, Q);      // Tín hiệu nghịch của Q
endmodule

