module dff_s(
    input wire clk,        
    input wire reset_sync, 
    input wire d,     
    output reg q       
);

always @(posedge clk) begin
    if (reset_sync) begin
        q <= 0;
    end
    else begin
        q <= d;
    end
end

endmodule
