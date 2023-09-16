`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 01:27:28
// Design Name: 
// Module Name: tb_karaSimsek
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


module tb_karaSimsek(

    );
    
    reg clk = 1;
    wire [7:0] ledler;
    
    
    karaSimsek uut(
    .clk(clk),
    .ledler(ledler)
    );
    
    
    always begin
   clk = ~clk;
   #0.5;
   end
   
   initial begin
   #5;
   
   
   end
   
endmodule
