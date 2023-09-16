`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 19:20:18
// Design Name: 
// Module Name: tb_kodlayici
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


module tb_kodlayici(

    );
    
    reg[3:0]giris;
    wire [1:0] sonuc;
    
    kodlayici uut(
    .giris(giris),
    .sonuc(sonuc)
    );
    
    initial begin 
    giris = 4'b0001;#50;
    giris = 4'b0010;#50;
    giris = 4'b0100;#50;
    giris = 4'b1000;#50;
    end
endmodule
