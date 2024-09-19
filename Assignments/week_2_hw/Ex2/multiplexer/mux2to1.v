module mux2to1(
    input a,b,
    input s,
    output y
);

assign y = (s) ? a : b;

endmodule