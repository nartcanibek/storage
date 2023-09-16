`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2022 21:26:02
// Design Name: 
// Module Name: dikdortgen
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


module dikdortgen(
input [5:0] sol_alt_x,sol_alt_y,sag_ust_x,sag_ust_y,nokta_x,nokta_y,
input clk,
output reg iceride_mi = 0,
output [4:0] toplam
//output reg [5:0] nokta_x_temp,nokta_y_temp
 );
 
 reg [5:0] nokta_x_temp,nokta_y_temp;
 reg [4:0] sayac = 0;
 
 always@(posedge clk) begin
 
 nokta_x_temp <= nokta_x;
 nokta_y_temp <= nokta_y;
 if(iceride_mi)
 sayac <= sayac + 1; 
 
 end
 
 always @* begin
 
 if (nokta_x_temp < sag_ust_x && nokta_x_temp > sol_alt_x) 
 begin
 
 if (nokta_y_temp < sag_ust_y && nokta_y_temp > sol_alt_y)
 iceride_mi = 1;
 
 else 
 iceride_mi = 0;
 
 end
 
 else
 iceride_mi = 0;
 
 end
    
assign toplam = sayac;    
    
    
endmodule
