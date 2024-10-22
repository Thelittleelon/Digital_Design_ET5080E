`timescale 1ns/1ns
module tb_n_bit_gray_counter;

    reg [2:0] binary_count_3bit;  
    reg [3:0] binary_count_4bit;  
    wire [2:0] gray_count_3bit;   
    wire [3:0] gray_count_4bit;   
    integer i;

    
    gray_counter #(.n(3)) gray_counter_3bit (
        .binary_count(binary_count_3bit),
        .gray_count(gray_count_3bit)
    );


    gray_counter #(.n(4)) gray_counter_4bit (
        .binary_count(binary_count_4bit),
        .gray_count(gray_count_4bit)
    );


    initial begin
        $display("3-bit Gray Code");
        $display("------------------");
        for (i = 0; i < 8; i = i + 1) begin  
            binary_count_3bit = i;
            #10;  
            $display("%b", gray_count_3bit);
        end
    end


    initial begin
        #100;
        $display("4-bit Gray Code");
        $display("------------------");
        for (i = 0; i < 16; i = i + 1) begin  
            binary_count_4bit = i;
            #10; 
            $display("%b", gray_count_4bit);
        end
    end

endmodule
