`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 18:30:10
// Design Name: 
// Module Name: kodlayici
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


module kodlayici(
input [3:0] giris,
output [1:0] sonuc
    );
    
    wire q1;
    wire w1,w2;
    wire I0,I1,I2,I3;
    wire nI0,nI1,nI2,nI3;
    
    buf(I0,giris[0]);
    buf(I1,giris[1]);
    buf(I2,giris[2]);
    buf(I3,giris[3]);
    
    not(nI0,I0);
    not(nI1,I1);
    not(nI2,I2);
    not(nI3,I3);
    
    and(q1,nI2,nI3);
    not (sonuc[1],q1);
    
    and(w1,nI0,nI2);
    and(w2,I0,nI2,I3);
    
    or(sonuc[0],w1,w2);
    
    
endmodule
