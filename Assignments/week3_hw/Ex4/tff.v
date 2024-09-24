module TFF (
    input T, clk,
    output Q
);
    wire D;

    xor (D, T, Q);
    DFF dff (.D(D), .clk(clk), .Q(Q)); 

endmodule
