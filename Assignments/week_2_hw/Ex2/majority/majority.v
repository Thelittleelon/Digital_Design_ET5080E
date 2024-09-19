module majority(
    input v1, v2, v3,
    output major
);

wire n1, n2, n3;

assign n1 = v1 & v2;
assign n2 = v2 & v3;
assign n3 = v3 & v1;
assign major = n1 | n2 | n3;

endmodule