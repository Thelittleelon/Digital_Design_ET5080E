module tb_TFF;
    reg T, clk;
    wire Q;

    TFF uut (.T(T), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        T = 0; #10;
        T = 1; #10;
        T = 1; #10;
        T = 0; #10;
        T = 1; #10;
        T = 0; #10;
    end

    initial begin
        $monitor("At time %t: T = %b, Q = %b", $time, T, Q);
    end
endmodule
