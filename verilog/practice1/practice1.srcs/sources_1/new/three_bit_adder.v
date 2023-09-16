`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 17:32:25
// Design Name: 
// Module Name: three_bit_adder
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


module three_bit_adder(
input [2:0] sayi1,
input [2:0] sayi2,
output [3:0] toplam
    );
    
    wire c1,c2;
    
     practice1 ha(
    .a(sayi1[0]),
    .b(sayi2[0]),
    .s(toplam[0]),
    .c(c1)
    );
    fulladder fa1(
    .a(sayi1[1]),
    .b(sayi2[1]),
    .cin(c1),
    .s(toplam[1]),
    .cout(c2)
    );
    fulladder fa2(
    .a(sayi1[2]),
    .b(sayi2[2]),
    .cin(c2),
    .s(toplam[2]),
    .cout(toplam[3])
    );
    
    
    
endmodule
