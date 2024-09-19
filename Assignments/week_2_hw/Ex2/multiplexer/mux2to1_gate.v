module mux2to1_gate(
    input a,b,
    input s,
    output y
);

wire n1, n2;

and and1(n1, s, a);
and and2(n2, ~s, b);
or or0(y, n1, n2);

endmodule
