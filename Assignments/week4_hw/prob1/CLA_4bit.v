module CLA_4bit(
    input [3:0] A, B,   // Hai đầu vào 4-bit
    input Cin,          // Carry đầu vào
    output [3:0] Sum,   // Kết quả tổng 4-bit
    output Cout         // Carry ra
);
    wire [3:0] G, P;    // Giá trị Generate và Propagate cho từng bit
    wire [3:1] C;       // Carry cho các bit

    // Tạo các module Generate và Propagate cho 4 bit
    Generate_Propagate gp0 (A[0], B[0], G[0], P[0]);
    Generate_Propagate gp1 (A[1], B[1], G[1], P[1]);
    Generate_Propagate gp2 (A[2], B[2], G[2], P[2]);
    Generate_Propagate gp3 (A[3], B[3], G[3], P[3]);

    // Tạo các module Carry
    Carry carry0 (G[0], P[0], Cin, C[1]);
    Carry carry1 (G[1], P[1], C[1], C[2]);
    Carry carry2 (G[2], P[2], C[2], C[3]);
    Carry carry3 (G[3], P[3], C[3], Cout);

    // Tính tổng (Sum = P ^ Cin)
    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ C[1];
    assign Sum[2] = P[2] ^ C[2];
    assign Sum[3] = P[3] ^ C[3];
endmodule
