`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2020 13:27:06
// Design Name: 
// Module Name: f_lab2
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


module f_lab2(
input A,
input B,
input C,
input D,
output F

    );
    
 wire An,Bn,Cn;
 wire AnBC,AD,CnD;
 
 not n1(An,A);
 and (AD,A,D);
 
 not (Bn,B);
 and (AD,A,D);
 
 not (Cn,C);
 and (CnD,Cn,D);
 
 or (F,AnBC,Bn,AD,CnD);
 
    
    
    
endmodule
