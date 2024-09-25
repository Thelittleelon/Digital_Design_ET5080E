module tb_SRFF;
    reg S, R, clk;
    wire Q;

    SRFF uut (.S(S), .R(R), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 1; #10;
        S = 1; R = 1; #10;
        S = 0; R = 0; #10;
    end

    initial begin
        $monitor("At time %t: S = %b, R = %b, Q = %b", $time, S, R, Q);
    end
endmodule
