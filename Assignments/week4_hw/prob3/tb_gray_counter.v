module tb_gray_counter;
    reg clk, reset;
    wire [3:0] gray_out;

    // Khởi tạo Gray Counter
    Gray_Counter gc (.clk(clk), .reset(reset), .gray_out(gray_out));

    // Tạo xung clock
    always #5 clk = ~clk;  // Chu kỳ clock là 10 đơn vị thời gian

    // Quá trình test
    initial begin
        // Hiển thị tiêu đề cột
        $display("Time\tBinary Counter\tGray Code");

        // Khởi tạo giá trị ban đầu
        clk = 0;
        reset = 1;  // Reset bộ đếm
        #10 reset = 0;  // Ngừng reset sau 10 đơn vị thời gian

        // Chạy bộ đếm trong 100 đơn vị thời gian
        #100;
        
        // Kết thúc simulation
        $finish;
    end

    // Hiển thị giá trị mỗi khi gray_out thay đổi
    always @(posedge clk) begin
        $display("%0d\t%b\t%b", $time, gc.binary_counter.count, gray_out);
    end
endmodule
