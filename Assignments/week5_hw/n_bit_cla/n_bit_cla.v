module n_bit_cla #(
    parameter n = 4
)
(
    input [n-1:0] a, b,
    input cin,
    output [n-1:0] sum,
    output cout
);

wire [n-1:0] gen, prop;
wire [n:0] carry;

assign carry[0] = cin;
assign gen[0] = a[0] & b[0];
assign prop[0] = a[0] ^ b[0];
assign sum[0] = prop[0] ^ cin;

genvar i;

generate
    for (i = 1; i < n ; i = i + 1) begin
        assign gen[i] = a[i] & b[i];
        assign prop[i] = a[i] ^ b[i];
        assign carry[i] = gen[i] | (prop[i] & carry[i-1]);
        assign sum[i] = prop[i] ^ carry[i];
    end
endgenerate

assign carry[n] = gen[n-1] | (prop[n-1] & carry[n-1]);
assign cout = carry[n];

endmodule