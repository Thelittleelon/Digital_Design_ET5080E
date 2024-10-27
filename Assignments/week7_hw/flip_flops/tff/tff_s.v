module tff_s(
    input wire clk,        // Tín hiệu xung nhịp
    input wire reset_sync, // Tín hiệu reset đồng bộ
    input wire t,          // Đầu vào T
    output reg q           // Đầu ra Q
);

always @(posedge clk) begin
    if (reset_sync) begin
        q <= 0;
    end
    else begin
        if (t) begin
            q <= ~q; // Toggle trạng thái của Q khi T = 1
        end
    end
end

endmodule
