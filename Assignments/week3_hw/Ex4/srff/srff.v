module sr_flip_flop (
    input wire S,
    input wire R,
    input wire clk,
    output wire Q,
    output wire Qn
);

    wire n1, n2, n3, n4;


    nand G1(n1, S, clk);
    nand G2(n2, R, clk);

    nand G3(Q, n1, Qn);
    nand G4(Qn, n2, Q);

endmodule
