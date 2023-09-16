`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 19:16:39
// Design Name: 
// Module Name: tb_kod_cozucu
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


module tb_kod_cozucu(

    );
    
    reg[1:0]giris;
    wire [3:0] sonuc;
    
    kod_cozucu uut(
    .giris(giris),
    .sonuc(sonuc)
    );
    
    initial begin 
    giris = 2'b00;#50;
    giris = 2'b01;#50;
    giris = 2'b10;#50;
    giris = 2'b11;#50;
    end
endmodule
