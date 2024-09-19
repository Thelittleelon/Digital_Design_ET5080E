module carry_ripple_adder_16bit (
    input [15:0] a, b,  
    input cin,          
    output [15:0] sum,   
    output cout          
);
    wire [14:0] carry;   

    
    full_adder fa0  (.A(a[0]),  .B(b[0]),  .Cin(cin),      .Sum(sum[0]),  .Cout(carry[0]));
    full_adder fa1  (.A(a[1]),  .B(b[1]),  .Cin(carry[0]), .Sum(sum[1]),  .Cout(carry[1]));
    full_adder fa2  (.A(a[2]),  .B(b[2]),  .Cin(carry[1]), .Sum(sum[2]),  .Cout(carry[2]));
    full_adder fa3  (.A(a[3]),  .B(b[3]),  .Cin(carry[2]), .Sum(sum[3]),  .Cout(carry[3]));
    full_adder fa4  (.A(a[4]),  .B(b[4]),  .Cin(carry[3]), .Sum(sum[4]),  .Cout(carry[4]));
    full_adder fa5  (.A(a[5]),  .B(b[5]),  .Cin(carry[4]), .Sum(sum[5]),  .Cout(carry[5]));
    full_adder fa6  (.A(a[6]),  .B(b[6]),  .Cin(carry[5]), .Sum(sum[6]),  .Cout(carry[6]));
    full_adder fa7  (.A(a[7]),  .B(b[7]),  .Cin(carry[6]), .Sum(sum[7]),  .Cout(carry[7]));
    full_adder fa8  (.A(a[8]),  .B(b[8]),  .Cin(carry[7]), .Sum(sum[8]),  .Cout(carry[8]));
    full_adder fa9  (.A(a[9]),  .B(b[9]),  .Cin(carry[8]), .Sum(sum[9]),  .Cout(carry[9]));
    full_adder fa10 (.A(a[10]), .B(b[10]), .Cin(carry[9]), .Sum(sum[10]), .Cout(carry[10]));
    full_adder fa11 (.A(a[11]), .B(b[11]), .Cin(carry[10]),.Sum(sum[11]), .Cout(carry[11]));
    full_adder fa12 (.A(a[12]), .B(b[12]), .Cin(carry[11]),.Sum(sum[12]), .Cout(carry[12]));
    full_adder fa13 (.A(a[13]), .B(b[13]), .Cin(carry[12]),.Sum(sum[13]), .Cout(carry[13]));
    full_adder fa14 (.A(a[14]), .B(b[14]), .Cin(carry[13]),.Sum(sum[14]), .Cout(carry[14]));
    full_adder fa15 (.A(a[15]), .B(b[15]), .Cin(carry[14]),.Sum(sum[15]), .Cout(cout));

endmodule
