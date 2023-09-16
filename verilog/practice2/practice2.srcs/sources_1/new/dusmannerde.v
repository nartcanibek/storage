`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 17:00:19
// Design Name: 
// Module Name: dusmannerde
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


module dusmannerde(
input [15:0] giris,
output reg[2:0] cikis
    );
  reg [3:0] a,b;
  
  initial begin
  
  a = giris [3:0] | giris [15:12] ;
  b = giris [7:4] | giris [11:8] ;
  
  end
  
  always@(*) begin
  
  if (a>7 && b<7)
  cikis = 2'b00; 
   else if (a<7 && b<7)
  cikis = 2'b01; 
   else if (a<7 && b>7)
  cikis = 2'b10; 
   else if (a>7 && b>7)
  cikis = 2'b11; 
  
  end
    
endmodule
