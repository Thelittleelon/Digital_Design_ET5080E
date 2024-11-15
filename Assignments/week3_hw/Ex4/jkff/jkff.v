module jk_flip_flop (
    input wire J,
    input wire K,
    input wire clk,
    input wire reset,
    output wire Q,
    output wire Qn
);
    wire n1, n2, n3, n4;

    // Cổng NAND cho reset tín hiệu Q và Qn
    wire Q_init, Qn_init;
    nand G0(Q_init, reset, 1'b0); // Q = 0 khi reset
    nand G1(Qn_init, reset, 1'b1); // Qn = 1 khi reset

    // Cổng NAND cho JK Flip-Flop
    nand G2(n1, J, clk, Qn);
    nand G3(n2, K, clk, Q);

    // SR Latch với ưu tiên tín hiệu reset
    nand G4(Q, n1, Qn, Q_init);
    nand G5(Qn, n2, Q, Qn_init);

endmodule
