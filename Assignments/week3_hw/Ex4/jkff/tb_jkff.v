module tb_jk_flip_flop;
    reg J, K, clk, reset;
    wire Q, Qn;

    // Khởi tạo JK flip-flop với reset
    jk_flip_flop uut (
        .J(J),
        .K(K),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .Qn(Qn)
    );

    // Tạo tín hiệu xung clock
    always #5 clk = ~clk;

    initial begin
        // Khởi tạo các tín hiệu
        clk = 0;
        reset = 1;
        J = 0; K = 0;
        #10 reset = 0;

        // Thử nghiệm các trạng thái của JK Flip-Flop
        #10 J = 1; K = 0; // Set Q = 1
        #10 J = 0; K = 1; // Reset Q = 0
        #10 J = 1; K = 1; // Toggle Q
        #10 J = 0; K = 0; // Giữ trạng thái hiện tại
        #10 J = 1; K = 1; // Toggle Q
        #20 $stop;
    end

    initial begin
        $monitor("Time=%0t | J=%b, K=%b, clk=%b, reset=%b | Q=%b, Qn=%b", 
                 $time, J, K, clk, reset, Q, Qn);
    end
endmodule
