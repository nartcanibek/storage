`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2020 18:06:06
// Design Name: 
// Module Name: top_bit_kosusu
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


module top_bit_kosusu(
    input clk,ileri,don,
    output [1:0] bolge,
    output [6:0] x , y,
    output  bitti_mi
    );
    
    
    reg [31:0] counter = 0;
    reg slow_clk = 1'b0;
    bit_kosusu bk0 (slow_clk,ileri,don,bolge,x,y,bitti_mi);
    
    always @(negedge clk) begin
        if(counter == 10**8 / 2) begin
            slow_clk <= ~slow_clk;
            counter <= 0;
        end
        else begin
            counter <= counter + 1'b1;
        end
        
    end
   
endmodule
