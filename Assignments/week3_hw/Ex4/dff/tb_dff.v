module tb_dff;
    reg D, clk, reset;
    wire Q, Qn;

    // Instantiate D Flip-Flop
    d_flip_flop dff (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .Qn(Qn)
    );

    // Generate clock signal
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        D = 0;
        #10 reset = 0;  // Release reset

        // Test various states
        #10 D = 1; // Set Q = 1
        #10 D = 0; // Reset Q = 0
        #10 D = 1; // Set Q = 1
        #10 D = 0; // Reset Q = 0
        #10 reset = 1; // Activate reset again
        #10 reset = 0; // Release reset
        #10 $stop;
    end

    initial begin
        $monitor("Time=%0t | D=%b, clk=%b, reset=%b | Q=%b, Qn=%b", 
                 $time, D, clk, reset, Q, Qn);
    end
endmodule
