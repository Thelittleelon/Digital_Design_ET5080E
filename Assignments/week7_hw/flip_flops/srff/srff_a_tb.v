`timescale 1ns/1ns
module srff_a_tb();
    reg clk;
    reg reset;
    reg s;
    reg r;
    wire q;
    wire q_bar;
    integer i;

    srff_a dut(
        .clk(clk),
        .reset(reset),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end 
    end

    initial begin 
        reset = 1'b1;
        #20;
        reset = 1'b0;
    end 

    initial begin
        $monitor("Time = %0t | s = %b | r = %b | q = %b | q_bar = %b", $time, s, r, q, q_bar);
        for(i = 0; i < 4; i = i+1) begin
            {s,r} = i;
            #20;
        end
        $finish;
    end
endmodule