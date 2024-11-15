module tb_tff;
    reg T, clk;
    wire Q, Qn;

    // Instantiate T Flip-Flop
    t_flip_flop tff (
        .T(T),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );

    // Generate clock signal
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        T = 0;
        #10 T = 1;
        #10 T = 1;
        #10 T = 0;
        #10 T = 1;
        #10 $stop;
    end

    initial begin
        $monitor("Time=%0t | T=%b, clk=%b | Q=%b, Qn=%b", $time, T, clk, Q, Qn);
    end
endmodule
