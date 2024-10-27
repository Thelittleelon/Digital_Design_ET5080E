module majority4bit(
    input [3:0] a,
    output reg y
);
integer i;
reg [2:0] b;
always @(a) begin
    b = 0;
    for(i = 0; i < 4; i = i + 1) begin
        b = b + a[i];
    end 
    
    if(b > 2) begin
        y = 1;
    end

    else begin
        y = 0;
    end 
end

endmodule