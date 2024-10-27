module encoder8x3(
    input [7:0] d,
    output reg [2:0] y 
);

always @(d) begin
  y[2] <= d[4] | d[5] | d[6] | d[7];
  y[1] <= d[2] | d[3] | d[6] | d[7];
  y[0] <= d[1] | d[3] | d[5] | d[7];
end

endmodule