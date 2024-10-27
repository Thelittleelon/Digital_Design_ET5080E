`timescale 1ns/1ns
module majority4bit_tb();
    reg [3:0] a;
    wire y;
    integer i;

    majority4bit dut(
        .a(a),
        .y(y)
    );

    initial begin
        $monitor("Time = %0t | a = %b | y = %b", $time, a, y);
        for(i = 0; i < 16; i = i + 1) begin
            a = i;
            #10;
        end 

        $finish;
    end
endmodule