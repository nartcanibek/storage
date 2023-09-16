`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2020 20:00:49
// Design Name: 
// Module Name: deneme
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


module deneme(
    input A,
    input B,
    input C,
    output F,
    output Q
);
wire An,Cn;
wire AnB,BC,BCn;

not(An,A);
xor (AnB,An,B);

and(BC,B,C);

not (Cn,C);
or (BCn,B,Cn);


xor(F,AnB,BC);

or(Q,AnB,BC,BCn);



endmodule

