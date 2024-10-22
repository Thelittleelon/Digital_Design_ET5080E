module n_bit_majority #(
    parameter n = 3  
)
(
    input [n-1:0] a,  
    output b          
);

wire [$clog2(n+1)-1:0] sum; 
wire [$clog2(n+1)-1:0] temp [n:0];  
genvar i;

assign temp[0] = 0;


generate
    for (i = 0; i < n; i = i + 1) begin : sum_gen
        assign temp[i+1] = temp[i] + a[i]; 
    end
endgenerate


assign sum = temp[n];

assign b = (sum >= (n / 2)) ? 1'b1 : 1'b0;

endmodule
