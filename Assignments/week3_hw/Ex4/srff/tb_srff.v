module tb_sr_flip_flop;
    reg S, R, clk;
    wire Q, Qn;

    // Instantiate the SR flip-flop
    sr_flip_flop uut (
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );

    // Generate clock signal
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        S = 0; R = 1;

        // Test sequence
        #10 S = 1; R = 0;  // Set
        #10 S = 0; R = 1;  // Reset
        #10 S = 0; R = 0;  // No change
        #10 S = 1; R = 1;  // Invalid state
        #10 $stop;
    end

    initial begin
        $monitor("Time=%0t | S=%b, R=%b, clk=%b | Q=%b, Qn=%b", $time, S, R, clk, Q, Qn);
    end
endmodule
