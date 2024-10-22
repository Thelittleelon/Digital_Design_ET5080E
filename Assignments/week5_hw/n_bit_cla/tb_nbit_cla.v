`timescale 1ns/1ns
module tb_nbit_cla;
    reg [3:0] a, b;
    wire [3:0] sum4;
    reg [7:0] c, d;
    wire [7:0] sum8;
    reg cin1, cin2;
    wire cout1, cout2;
    integer i;

n_bit_cla cla_4bit(
    .a(a),
    .b(b),
    .cin(cin1),
    .sum(sum4),
    .cout(cout1)
);

initial begin
    $display("A B Cin | Sum Cout");
    $display("------------------");
    a = 4'b0000;
    b = 4'b0000;
    cin1 = 1'b0;
    for(i = 0; i < 16; i = i + 1) begin
        #10 a = a + 1;
            b = b + 1;
        $display("%b %b %b | %b %b", a, b, cin1, sum4, cout1);
    end
end

n_bit_cla #(.n(8)) cla_8bit(
    .a(c),
    .b(d),
    .cin(cin2),
    .sum(sum8),
    .cout(cout2)
);

initial begin
    #200;
    c = 8'h80;
    d = 8'h80;
    cin2 = 1'b0;
    for(i = 0; i < 10; i = i + 1) begin
        #10 c = c + 1;
            d = d + 1;
        $display("%b %b %b | %b %b", c, d, cin2, sum8, cout2);       
    end
end
      
endmodule