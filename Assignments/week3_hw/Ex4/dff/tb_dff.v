module tb_DFF;
    reg D, clk;
    wire Q;

    DFF uut (.D(D), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
    end

    initial begin
        $monitor("At time %t: D = %b, Q = %b", $time, D, Q);
    end
endmodule
