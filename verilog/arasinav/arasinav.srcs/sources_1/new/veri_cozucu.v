`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 19:55:25
// Design Name: 
// Module Name: veri_cozucu
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


module veri_cozucu(
input [21:0] veri_rar,
input [3:0] rar_bilgi,
output reg[31:0] cozulmus_veri
    );
    
    reg [1:0] A,B,C;
    reg [16:0]Sayi;
    reg [3:0]Sayi_usedbits;
    reg [16:0]Sayi_son;
    
    
    always@* begin
    Sayi = veri_rar[15:0];
    Sayi_usedbits = rar_bilgi;
    C = veri_rar[17:16];
    B = veri_rar[19:18];
    A = veri_rar[21:20];
    
    if(Sayi_usedbits == 0)
    Sayi_son = Sayi[0];
    else if(Sayi_usedbits == 1)
    Sayi_son = Sayi[1:0];
    else if(Sayi_usedbits == 2)
    Sayi_son = Sayi[2:0];
    else if(Sayi_usedbits == 3)
    Sayi_son = Sayi[3:0];
    else if(Sayi_usedbits == 4)
    Sayi_son = Sayi[4:0];
    else if(Sayi_usedbits == 5)
    Sayi_son = Sayi[5:0];
    else if(Sayi_usedbits == 6)
    Sayi_son = Sayi[6:0];
    else if(Sayi_usedbits == 7)
    Sayi_son = Sayi[7:0];
    else if(Sayi_usedbits == 8)
    Sayi_son = Sayi[8:0];
    else if(Sayi_usedbits == 9)
    Sayi_son = Sayi[9:0];
    else if(Sayi_usedbits == 10)
    Sayi_son = Sayi[10:0];
    else if(Sayi_usedbits == 11)
    Sayi_son = Sayi[11:0];
    else if(Sayi_usedbits == 12)
    Sayi_son = Sayi[12:0];
    else if(Sayi_usedbits == 13)
    Sayi_son = Sayi[13:0];
    else if(Sayi_usedbits == 14)
    Sayi_son = Sayi[14:0];
    else if(Sayi_usedbits == 15)
    Sayi_son = Sayi[15:0];
    
    
    cozulmus_veri = ((A*Sayi_son) + B)/C;
    end
    
    initial begin
    
    
    end
    
endmodule
