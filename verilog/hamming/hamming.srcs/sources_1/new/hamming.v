`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2022 20:40:47
// Design Name: 
// Module Name: hamming
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


module hamming(
input [3:0] sayi1,sayi2,
output [2:0] sonuc
    );
    
    wire A,B,C,D;
    wire nA,nB,nC,nD;
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    wire e1,e2,e3,e4,e5;
    wire q1;
   
    
    xnor (A,sayi1[3],sayi2[3]);
    xnor (B,sayi1[2],sayi2[2]);
    xnor (C,sayi1[1],sayi2[1]);
    xnor (D,sayi1[0],sayi2[0]);
    
    not(nA,A);
    not(nB,B);
    not(nC,C);
    not(nD,D);
    
    and(w1,nA,B,nC,nD);
    and(w2,nA,nB,nC,D);
    and(w3,A,nB,nC,nD);
    and(w4,A,B,nC,D);
    and(w5,nA,B,C,D);
    and(w6,nA,nB,C,nD);
    and(w7,A,nB,C,D);
    and(w8,A,B,C,nD);
    
    or(sonuc[0],w1,w2,w3,w4,w5,w6,w7,w8);
    
    and(e1,A,nB,nC);
    and(e2,B,nC,nD);
    and(e3,nA,nC,D);
    and(e4,nA,nB,D);
    and(e5,nA,C,nD);
    
    or(sonuc[1],e1,e2,e3,e4,e5);    
    
    and(sonuc[2],nA,nB,nC,nD);
    
endmodule
