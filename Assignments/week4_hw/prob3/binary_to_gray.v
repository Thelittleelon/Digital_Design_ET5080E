module Binary_to_Gray (
    input [3:0] binary,
    output [3:0] gray
);
    // Công thức chuyển từ binary sang gray
    assign gray[3] = binary[3];             // MSB giữ nguyên
    assign gray[2] = binary[3] ^ binary[2]; // XOR các bit kế tiếp
    assign gray[1] = binary[2] ^ binary[1];
    assign gray[0] = binary[1] ^ binary[0];
endmodule
