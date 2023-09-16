`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 16:28:18
// Design Name: 
// Module Name: tb_matris_carpici
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


module tb_matris_carpici(

    );
    
    
    reg clk = 1;
    reg [15:0] satir;
    wire [63:0] sonuc_satir;
    wire bitti_mi;
    
    
    matris_carpici uut (
    .clk(clk),
    .satir(satir),
    .sonuc_satir(sonuc_satir),
    .bitti_mi(bitti_mi)
    );
    
    
    always begin
    clk = ~clk;
    #5;
    
    end 
    
    initial begin 
    
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    satir = 16'h0202; #10;
    
    
    
    
    
    end
endmodule
