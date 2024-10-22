module n_bit_full_adder #(
    parameter n = 4
)
(
    input [n-1:0] a, b,
    input cin,
    output [n-1:0] sum,
    output cout
);

assign {cout, sum} = a + b + cin;

endmodule