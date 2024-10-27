`timescale 1ns/1ns
module jkff_a_tb();
    reg clk;
    reg reset;
    reg j;
    reg k;
    wire q;
    wire q_bar;
    integer i;

    jkff_a dut(
        .clk(clk),
        .reset(reset),
        .j(j),
        .k(k),
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
        $monitor("Time = %0t | j = %b | k = %b | q = %b | q_bar = %b", $time, j, k, q, q_bar);
        for(i = 0; i < 4; i = i+1) begin
            {j, k} = i;
            #20;
        end
        $finish;
    end
endmodule
