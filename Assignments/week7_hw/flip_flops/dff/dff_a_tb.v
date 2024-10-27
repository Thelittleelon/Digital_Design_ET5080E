`timescale 1ns/1ns

module dff_a_tb();
    reg clk;
    reg reset_async;
    reg d;
    wire q;

    dff_a dut(
        .clk(clk),
        .reset_async(reset_async),
        .d(d),
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
        $monitor("Time = %0t | d = %b | q = %b", $time, d, q);
        d = 1'b0;
        #20;
        d = 1'b1;
        #20;
        d = 1'b0;
        #20;
        d = 1'b1;
        #20;
        $finish;
    end
endmodule
