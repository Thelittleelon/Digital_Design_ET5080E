module tff_a(
    input wire clk,        
    input wire reset_async, 
    input wire t,     
    output reg q        
);

always @(posedge clk or posedge reset_async) begin
    if (reset_async) begin
        q <= 0;
    end
    else begin
        if (t) begin
            q <= ~q; 
        end
    end
end

endmodule
