module decoder3x8(
    input [2:0] a,
    output [7:0] d 
);

wire na0, na1, na2;

not (na0, a[0]);
not (na1, a[1]);
not (nc0, a[2]);

and (d[0], na2, na1, na0);
and (d[1], na2, na1, a[0]);
and (d[2], na2, a[1], na0);
and (d[3], a[2], na1, na0);
and (d[4], a[2], na1, na0);
and (d[5], na2, a[1], na0);
and (d[6], a[2], a[1], na0);
and (d[7], a[2], a[1], a[0]);

endmodule