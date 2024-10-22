`timescale 1ns/1ns
module tb_n_bit_majority;
    reg[2:0] input_3bit;
    reg[4:0] input_5bit;
    wire output_3bit, output_5bit;
    integer i;

    n_bit_majority dut(
        .a(input_3bit),
        .b(output_3bit)
    );

    n_bit_majority #(.n(5)) dut2(
        .a(input_5bit),
        .b(output_5bit)
    );

    initial begin
        $display ("Input    | Output");
        $display("-----------------------");
        input_3bit = 3'b000;
        for(i = 0; i < 8; i = i + 1) begin
            #10 input_3bit = input_3bit + 1;
            $display("%b | %b", input_3bit, output_3bit);
        end       
    end

    initial begin
        #200;
        input_5bit = 5'b00000;
        for(i = 0; i < 32; i = i + 1) begin
            #10 input_5bit = input_5bit + 1;
            $display("%b | %b", input_5bit, output_5bit);
        end       
    end
endmodule 