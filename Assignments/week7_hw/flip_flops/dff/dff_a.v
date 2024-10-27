module dff_a(
    input wire clk,         
    input wire reset_async,
    input wire d,
    output reg q  
);

always @(posedge clk or posedge reset_async) begin
    if (reset_async) begin
        q <= 0;
    end
    else begin
        q <= d;
    end
end

endmodule
