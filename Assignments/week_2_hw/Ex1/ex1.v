module ex1(
    input a,b,c,d,
    output y
);

wire a1, b1;


assign a1 = (~b) & c;
assign b1 = (~b) & (~d);
assign y = a | a1 | b1;

endmodule