module Generate_Propagate(
    input A, B,
    output G, P
);
    assign G = A & B;   // Generate: AND của A và B
    assign P = A ^ B;   // Propagate: XOR của A và B
endmodule
