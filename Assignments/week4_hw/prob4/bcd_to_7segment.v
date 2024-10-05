module BCD_to_7Segment (
    input [3:0] BCD,  // Đầu vào là 4-bit BCD
    output [6:0] seg  // Đầu ra là 7-bit cho các đoạn a, b, c, d, e, f, g
);
    wire nB0, nB1, nB2, nB3;
    
    // Tạo các tín hiệu đảo của BCD đầu vào
    NOT_gate not0 (.a(BCD[0]), .y(nB0));
    NOT_gate not1 (.a(BCD[1]), .y(nB1));
    NOT_gate not2 (.a(BCD[2]), .y(nB2));
    NOT_gate not3 (.a(BCD[3]), .y(nB3));

    // Tính toán các đoạn a, b, c, d, e, f, g bằng cách kết hợp các cổng logic
    // Các đoạn tương ứng với BCD đầu vào

    // Đoạn a (Top horizontal)
    assign seg[0] = ~(BCD[3] | (BCD[2] & nB1) | (BCD[2] & BCD[1] & BCD[0]) | (nB2 & BCD[1] & BCD[0]));
    
    // Đoạn b (Top right vertical)
    assign seg[1] = ~(nB2 | (nB1 & nB0) | (BCD[1] & BCD[0] & BCD[2]));
    
    // Đoạn c (Bottom right vertical)
    assign seg[2] = ~(nB2 | nB1 | (BCD[0] & BCD[2]));
    
    // Đoạn d (Bottom horizontal)
    assign seg[3] = ~(BCD[3] | (BCD[2] & nB1 & nB0) | (BCD[2] & BCD[1] & BCD[0]) | (nB2 & nB1 & BCD[0]));
    
    // Đoạn e (Bottom left vertical)
    assign seg[4] = ~(nB1 & (nB2 | BCD[0]));
    
    // Đoạn f (Top left vertical)
    assign seg[5] = ~(BCD[3] | (nB2 & nB0) | (nB2 & BCD[1]) | (BCD[1] & nB0));
    
    // Đoạn g (Middle horizontal)
    assign seg[6] = ~(BCD[3] | (BCD[2] & nB1) | (nB2 & BCD[1] & BCD[0]));
endmodule
