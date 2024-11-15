module d_flip_flop (
    input wire D,
    input wire clk,
    input wire reset,
    output wire Q,
    output wire Qn
);
    // Internal signals for JK Flip-Flop
    wire J, K;

    // Assign inputs for JK Flip-Flop based on D
    assign J = D;
    assign K = ~D;

    // Instantiate JK Flip-Flop with reset
    jk_flip_flop jkff (
        .J(J),
        .K(K),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .Qn(Qn)
    );
endmodule
