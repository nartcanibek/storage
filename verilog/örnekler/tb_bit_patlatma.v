`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 02:19:02 PM
// Design Name: 
// Module Name: tb_bit_patlatma
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


module tb_bit_patlatma(

    );
    
    reg clk=0;
    reg bit=0;
    wire [9:0] tablo;
    wire [3:0] isaretci;
    wire bitti_mi;
    
    bit_patlatma uut(clk,bit,tablo,isaretci,bitti_mi);
    
    always begin
    clk = ~clk;
    #5;
    end
    
    initial begin
    bit=0;
    #20;
    bit=1;
    #30;
    bit=0;
    #10; //isaretci 0 olmali
    
    bit=1;
    #20;
    bit=0;
    #10
    bit=1;
    #30;
    bit=1;
    #20;
    bit=0;
    #20;
    bit=1;
    #10;
    bit=0;
    #20;
    
    
    end
    
endmodule
