`timescale  1ns/1ns
module bcd_to_7segment_tb();
    reg [4:0] a;
    wire [6:0] y;
    integer i;

    bcd_to_7segment dut(
        .a(a),
        .y(y)
    );

    initial begin
        $monitor("Time = %0t | a = %b | y = %b", $time, a, y);

        for(i = 0; i < 10; i = i + 1) begin
            a = i;
            #10;
        end 

        $finish;
    end
endmodule