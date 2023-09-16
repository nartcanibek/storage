`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 01:16:59
// Design Name: 
// Module Name: karaSimsek
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


module karaSimsek(
input clk,
output reg [7:0] ledler = 8'b11100000
    );
    
    reg durum = 1;
    
    always @(negedge clk) begin
    
    if(durum)
    ledler <= ledler >> 1;
    else
    ledler <= ledler<<1;
    
   
    
    end
    always @* begin 
     
     if (ledler == 8'b11100000)
    durum = 1; 
    
    if (ledler == 8'b00000111)
    durum = 0; 
    
    
    end
    
    
endmodule
