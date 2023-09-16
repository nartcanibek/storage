`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 16:38:03
// Design Name: 
// Module Name: fulladder
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


module fulladder(
input a,b,cin,
output s,cout
    );
    
    wire w1,w2,w3;
    xor (w1,a,b);
   
   practice1 uut(
   .a(w1),
   .b(cin),
   .s(s),
   .c(w2)
    );
    
    and(w3,a,b);
    or(cout,w2,w3);
    
endmodule
