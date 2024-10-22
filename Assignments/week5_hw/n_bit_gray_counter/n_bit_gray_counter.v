module gray_counter #(
    parameter n = 4  
)
(
    input [n-1:0] binary_count,  
    output [n-1:0] gray_count  
);


    assign gray_count = binary_count ^ (binary_count >> 1);

endmodule
