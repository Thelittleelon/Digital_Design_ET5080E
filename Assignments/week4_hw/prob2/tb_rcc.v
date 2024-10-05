module Ripple_Carry_Counter_tb;
    reg clk, reset;
    wire [3:0] Q;

    // Khởi tạo mạch Ripple Carry Counter
    Ripple_Carry_Counter rcc (.clk(clk), .reset(reset), .Q(Q));

    // Tạo tín hiệu xung clock
    always #5 clk = ~clk;  // Chu kỳ clock là 10 đơn vị thời gian (5 đơn vị lên và 5 đơn vị xuống)

    // Quá trình test
    initial begin
        // Khởi tạo giá trị ban đầu
        clk = 0;
        reset = 1;  // Reset bộ đếm
        #10 reset = 0;  // Ngừng reset sau 10 đơn vị thời gian

        // Chạy bộ đếm trong 100 đơn vị thời gian
        #100;

        // Kết thúc simulation
        $finish;
    end

    // Hiển thị giá trị của Q tại mỗi thay đổi
    always @(Q) begin
        $display("Time = %0d, Q = %b", $time, Q);
    end
endmodule
