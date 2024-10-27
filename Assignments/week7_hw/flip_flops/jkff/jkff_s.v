module jkff_s(
    input wire clk,       
    input wire reset,     
    input wire j,       
    input wire k,      
    output reg q,         
    output reg q_bar   
);

always @(posedge clk) begin

    if (reset) begin
        q <= 0;
        q_bar <= 1;
    end
    else begin
   
        case ({j, k})
            2'b00: begin

                q <= q;
                q_bar <= q_bar;
            end
            2'b01: begin

                q <= 0;
                q_bar <= 1;
            end
            2'b10: begin

                q <= 1;
                q_bar <= 0;
            end
            2'b11: begin

                q <= ~q;
                q_bar <= ~q_bar;
            end
        endcase
    end
end

endmodule
