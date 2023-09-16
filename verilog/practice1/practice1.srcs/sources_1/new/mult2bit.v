`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 18:34:23
// Design Name: 
// Module Name: mult2bit
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


module mult2bit(

input [1:0] sayi1,sayi2,
output [3:0] cikis
    );
    
    wire w1,w2,w3,w4;
    and(cikis[0],sayi1[0],sayi2[0]);
    
    and(w1,sayi1[1],sayi2[0]);
    and(w2,sayi1[0],sayi2[1]);
    
    practice1 ha1(
    .a(w1),
    .b(w2),
    .s(cikis[1]),
    .c(w3)
    );
    
    and(w4,sayi1[1],sayi2[1]);
    
    practice1 ha2(
    .a(w3),
    .b(w4),
    .s(cikis[2]),
    .c(cikis[3])
    );
    
endmodule
