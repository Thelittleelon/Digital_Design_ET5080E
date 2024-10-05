module CLA_16bit(
    input [15:0] A, B,   // Hai đầu vào 16-bit
    input Cin,           // Carry đầu vào
    output [15:0] Sum,   // Kết quả tổng 16-bit
    output Cout          // Carry ra
);
    wire C1, C2, C3; // Carry giữa các bộ CLA 4-bit

    // Ghép 4 CLA 4-bit lại với nhau
    CLA_4bit cla0 (A[3:0], B[3:0], Cin, Sum[3:0], C1);
    CLA_4bit cla1 (A[7:4], B[7:4], C1, Sum[7:4], C2);
    CLA_4bit cla2 (A[11:8], B[11:8], C2, Sum[11:8], C3);
    CLA_4bit cla3 (A[15:12], B[15:12], C3, Sum[15:12], Cout);
endmodule
