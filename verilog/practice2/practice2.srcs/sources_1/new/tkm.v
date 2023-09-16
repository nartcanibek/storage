`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 01:22:09
// Design Name: 
// Module Name: tkm
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


module tkm(
input [1:0] secim1,secim2,
output [1:0] sonuc
    );
    
 wire A0,A1,B0,B1;
 wire nA0,nA1,nB0,nB1;
 wire q1,q2,q3,q4;
 wire w1,w2,w3,w4;
 
 buf(A0,secim1[0]);
 buf(A1,secim1[1]);
 buf(B0,secim2[0]);
 buf(B1,secim2[1]);
 
 not(nA0,A0);
 not(nA1,A1);
 not(nB0,B0);
 not(nB1,B1);
 
 //sonuc0
 and(q1,A1,A0,nB1);
 and(q2,nA1,nB1,B0);
 and(q3,nA1,A0,B1);
 and(q4,A1,nA0,nB0);
 
 or (sonuc[0],q1,q2,q3,q4);
  //sonuc1
 and(w1,nA1,nB1,nB0);
 and(w2,nA1,A0,nB1);
 and(w3,A1,nB1,B0);
 and(w4,nA0,B1,nB0);
 
  or (sonuc[1],w1,w2,w3,w4);   
    
    
endmodule
