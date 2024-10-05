module CLA_16bit_tb;
    reg [15:0] A, B;   // Đầu vào cho bộ cộng
    reg Cin;           // Carry vào
    wire [15:0] Sum;   // Kết quả tổng
    wire Cout;         // Carry ra

    // Khởi tạo CLA 16-bit
    CLA_16bit cla_16bit_inst (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    // Tạo các thử nghiệm
    initial begin
        // Thử nghiệm 1
        A = 16'h1234; B = 16'h5678; Cin = 0;
        #10; // Đợi 10 đơn vị thời gian

        // Thử nghiệm 2
        A = 16'hFFFF; B = 16'h0001; Cin = 0;
        #10;

        // Thử nghiệm 3
        A = 16'hAAAA; B = 16'h5555; Cin = 1;
        #10;

        // Thử nghiệm 4
        A = 16'hFFFF; B = 16'hFFFF; Cin = 1;
        #10;

        $finish; // Kết thúc simulation
    end
endmodule
