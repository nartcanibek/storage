`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2020 22:34:13
// Design Name: 
// Module Name: odev1_b
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


module odev1_b(
input A,
input B,
input C,
input D,
output F

    );
 wire An,Cn,Dn,Nlast;
 wire AnB,BCn,ADn,BD,big1,big2;   
    
    not (An,A);
    and(AnB,An,B);
    
    not (Cn,C);
    and (BCn,B,Cn);
    
    or (big1,AnB,BCn);
    not (Nlast,big1);
    
    not(Dn,D);
    and(ADn,A,Dn);
    and(BD,B,D);
    or(big2,ADn,BD);
    
    or(F,Nlast,big2);
    
endmodule
