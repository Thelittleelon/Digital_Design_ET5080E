`timescale 1ns/1ns

module tff_a_tb();
    reg clk;
    reg reset_async;
    reg t;
    wire q;

    tff_a dut(
        .clk(clk),
        .reset_async(reset_async),
        .t(t),
        .q(q)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        reset_async = 1'b1;
        #15;
        reset_async = 1'b0;
    end

    initial begin
        $monitor("Time = %0t | t = %b | q = %b", $time, t, q);
        t = 1'b0; #20;
        t = 1'b1; #20;
        t = 1'b0; #20;
        t = 1'b1; #20;
        t = 1'b1; #20;
        $finish;
    end
endmodule
