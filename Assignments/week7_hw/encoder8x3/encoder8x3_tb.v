`timescale 1ns/1ns
module encoder8x3_tb();
    reg [7:0] d;
    wire [2:0] y;

    encoder8x3 dut(
        .d(d),
        .y(y)
    );

    initial begin
        $monitor("Time = %0t | d = %b | y = %b", $time, d, y);

        d = 8'd1; #10;
        d = 8'd2; #10;
        d = 8'd4; #10;
        d = 8'd8; #10;
        d = 8'd16; #10;
        d = 8'd32; #10;
        d = 8'd64; #10;
        d = 8'd128; #10;

        $finish;
    end
endmodule