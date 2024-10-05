module Gray_Counter (
    input clk, reset,
    output [3:0] gray_out
);
    wire [3:0] binary_count;  // Đầu ra của bộ đếm nhị phân

    // Khởi tạo bộ đếm nhị phân 4-bit
    Binary_Counter binary_counter (.clk(clk), .reset(reset), .count(binary_count));

    // Chuyển đổi từ binary sang gray code
    Binary_to_Gray converter (.binary(binary_count), .gray(gray_out));
endmodule
