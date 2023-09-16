`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 17:58:19
// Design Name: 
// Module Name: mult3bit
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


module mult3bit(
input [2:0] sayi1,sayi2,
output [5:0] cikis
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
wire c1,c2_1,c2_2,c3_1,c3_2;
    
    and(cikis[0],sayi1[0],sayi2[0]);
    
    and(w1,sayi1[1],sayi2[0]);
    and(w2,sayi1[0],sayi2[1]);
    
    practice1 ha1(
    .a(w1),
    .b(w2),
    .s(cikis[1]),
    .c(c1)
    );
    
     and(w3,sayi1[2],sayi2[0]);
     and(w4,sayi1[1],sayi2[1]);
     and(w5,sayi1[0],sayi2[2]);
    
    practice1 ha2(
    .a(w3),
    .b(w4),
    .s(w6),
    .c(c2_1)
    );
    
    fulladder fa1(
    .a(w5),
    .b(w6),
    .cin(c1),
    .s(cikis[2]),
    .cout(c2_2)
    );
    
    and(w7,sayi1[2],sayi2[1]);
    and(w8,sayi1[1],sayi2[2]);
    
     practice1 ha3(
    .a(w7),
    .b(w8),
    .s(w9),
    .c(c3_1)
    );
    
     fulladder fa2(
    .a(w9),
    .b(c2_1),
    .cin(c2_2),
    .s(cikis[3]),
    .cout(c3_2)
    );
    
     and(w10,sayi1[2],sayi2[2]);
     
     fulladder fa3(
    .a(w10),
    .b(c3_1),
    .cin(c3_2),
    .s(cikis[4]),
    .cout(cikis[5])
    );
    
    
endmodule
