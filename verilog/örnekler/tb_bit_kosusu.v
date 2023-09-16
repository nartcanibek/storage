`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 05:35:11 PM
// Design Name: 
// Module Name: tb_bit_kosusu
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


module tb_bit_kosusu(

    );
    reg clk=0;
    reg ileri;
    reg don;
    wire [1:0] bolge;
    wire [7:0]x;
    wire [7:0]y;
    wire bitti_mi;
    
    bit_kosusu tb(clk,ileri,don,bolge,x,y,bitti_mi);
    
    always begin
    clk = ~clk;
    #5;
    end
    
    initial begin
    don=1;
    
    ileri=1;
    #100;
    ileri=0;
    don=1;
    #10;
    
    ileri=1;
    #100;
    ileri=0;
    don=1;
    #10;
    
    ileri=1;
    #100;
    ileri=0;
    don=1;
    #10;
    
    ileri=1;
    #200;
    ileri=0;
    don=0;
    #10;
    
    ileri=1;
    #90;
    
    
   
    
    
    end
endmodule
