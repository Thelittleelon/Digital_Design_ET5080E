`timescale  1ns/1ns
module tb_16bit_carry_ripple_adder;
    reg [15:0] a, b;   
    reg cin;             
    wire [15:0] sum;   
    wire cout;    

   
    carry_ripple_adder_16bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
       
        $monitor("Time = %0t : a = %h, b = %h, cin = %b, sum = %h, cout = %b", 
                  $time, a, b, cin, sum, cout);

        
        a = 16'h0001;
        b = 16'h0001;
        cin = 0;
        #10;

    
        a = 16'hFFFF;
        b = 16'h0001;
        cin = 0;
        #10;

       
        a = 16'hAAAA;
        b = 16'h5555;
        cin = 1;
        #10;

       
        a = 16'h1234;
        b = 16'h5678;
        cin = 0;
        #10;


        a = 16'hFFFF;
        b = 16'hFFFF;
        cin = 1;
        #10;


        $finish;
    end
endmodule
