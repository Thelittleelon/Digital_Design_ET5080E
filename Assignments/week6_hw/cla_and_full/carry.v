module Carry(
    input G, P, Cin,
    output Cout
);
    assign Cout = G | (P & Cin);  // Công thức tính carry
endmodule
