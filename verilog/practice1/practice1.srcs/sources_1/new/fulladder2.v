`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 17:12:23
// Design Name: 
// Module Name: fulladder2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder2(
input a,b,cin,
output s,cout
    );
    
    wire w1,w2,w3;
    
   
   practice1 uut(
   .a(a),
   .b(b),
   .s(w1),
   .c(w2)
    );
     practice1 uut2(
   .a(w1),
   .b(cin),
   .s(s),
   .c(w3)
    );
    
   or(cout,w2,w3);
endmodule
