`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2022 22:21:31
// Design Name: 
// Module Name: tb_dikdortgen
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


module tb_dikdortgen(

    );
    
   reg [5:0] sol_alt_x,sol_alt_y,sag_ust_x,sag_ust_y,nokta_x,nokta_y ; 
   reg clk = 1;
   wire iceride_mi;
   wire [4:0] toplam; 
   
   dikdortgen uut(
   .sol_alt_x(sol_alt_x),
   .sol_alt_y(sol_alt_y),
   .sag_ust_x(sag_ust_x),
   .sag_ust_y(sag_ust_y),
   .nokta_x(nokta_x),
   .nokta_y(nokta_y),
   .clk(clk),
   .iceride_mi(iceride_mi),
   .toplam(toplam)
    );
   
   always begin
   clk = ~clk;
   #5;
   
   end
   
   
   initial begin
   #5; 
   sol_alt_x = 6'd1;
   sol_alt_y = 6'd2;
   sag_ust_x = 6'd6;
   sag_ust_y = 6'd8;
   nokta_x = 6'd2;
   nokta_y = 6'd3;
   #10
   nokta_x = 6'd4;
   nokta_y = 6'd6;
    #10   
   nokta_x = 6'd15;
   
   
   
   end
   
   
   
endmodule
