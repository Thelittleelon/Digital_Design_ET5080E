module t_flip_flop (
    input wire T,
    input wire clk,
    output wire Q,
    output wire Qn
);
    // Internal signals for JK Flip-Flop
    wire J, K;

    // Assign inputs for JK Flip-Flop based on T
    assign J = T;
    assign K = T;

    // Instantiate JK Flip-Flop
    jk_flip_flop jkff (
        .J(J),
        .K(K),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );
endmodule
