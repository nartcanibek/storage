`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 18:47:09
// Design Name: 
// Module Name: kod_cozucu
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


module kod_cozucu(
input [1:0] giris,
output [3:0] sonuc
    );
    
    wire A,B;
    wire nA,nB;
    
    buf(A,giris[0]);
    buf(B,giris[1]);
    
    not(nA,A);
    not(nB,B);
    
    and(sonuc[0],nA,nB);
    and(sonuc[1],A,nB);
    and(sonuc[2],nA,B);
    and(sonuc[3],A,B);
    
endmodule
