module tb_decoder3x8;
    reg [2:0] A;
    wire [7:0] D;
    
    decoder_3x8 uut (
        .A(A),
        .D(D)
    );
    
    initial begin
        A = 3'b000; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b001; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b010; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b011; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b100; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b101; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b110; #10;
        $display("A = %b, D = %b", A, D);
        A = 3'b111; #10;
        $display("A = %b, D = %b", A, D);
    end
endmodule
