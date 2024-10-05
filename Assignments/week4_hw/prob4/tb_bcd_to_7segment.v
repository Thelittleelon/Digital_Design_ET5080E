module BCD_to_7Segment_tb;
    reg [3:0] BCD;  // Đầu vào BCD
    wire [6:0] seg; // Đầu ra 7-segment

    // Khởi tạo module BCD_to_7Segment
    BCD_to_7Segment uut (.BCD(BCD), .seg(seg));

    // Quá trình test
    initial begin
        $display("Time\tBCD\tSegment");

        // Thử từng giá trị BCD từ 0 đến 9
        BCD = 4'b0000; #10; // Số 0
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0001; #10; // Số 1
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0010; #10; // Số 2
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0011; #10; // Số 3
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0100; #10; // Số 4
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0101; #10; // Số 5
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0110; #10; // Số 6
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b0111; #10; // Số 7
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b1000; #10; // Số 8
        $display("%0d\t%b\t%b", $time, BCD, seg);

        BCD = 4'b1001; #10; // Số 9
        $display("%0d\t%b\t%b", $time, BCD, seg);

        // Kết thúc simulation
        $finish;
    end
endmodule
