`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 15:46:30
// Design Name: 
// Module Name: siparis_denetimi
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


module siparis_denetimi(
input musteri,
input [1:0] siparis,stok,
output [1:0]sonuc
    );
    
    wire A,B,C,D;
    wire nA,nB,nC,nD;
    wire q1,q2,q3,q4;
    
    buf(A,siparis[1]);
    buf(B,siparis[0]);
    buf(C,stok[1]);
    buf(D,stok[0]);
    
    not(nA,A);
    not(nB,B);
    not(nC,C);
    not(nD,D);
    
    and(q1,nA,nB,nC,nD,musteri);
    and(q2,nA,B,nC,D,musteri);
    and(q3,A,B,C,D,musteri);
    and(q4,A,nB,C,nD,musteri);
    
    or(sonuc[0],q1,q2,q3,q4);
    
    buf(sonuc[1],musteri);
endmodule
