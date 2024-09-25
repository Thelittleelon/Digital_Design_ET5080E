module tb_encoder8x3;
    reg [7:0] D;
    wire [2:0] Y;
    
    encoder_8x3 dut (
        .D(D),
        .Y(Y)
    );
    
    initial begin
        D = 8'b00000001; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b00000010; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b00000100; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b00001000; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b00010000; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b00100000; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b01000000; #10;
        $display("D = %b, Y = %b", D, Y);
        D = 8'b10000000; #10;
        $display("D = %b, Y = %b", D, Y);
    end
endmodule
