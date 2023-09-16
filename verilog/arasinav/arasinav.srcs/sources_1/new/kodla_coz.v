`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 18:56:01
// Design Name: 
// Module Name: kodla_coz
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


module kodla_coz(
input [3:0] giris,
output sonuc
    );
    
    wire [1:0]kodlayici_out;
    wire [3:0] kod_cozucu_out;
    wire q1,q2,q3,q4;
    
    kodlayici uut1(
    .giris(giris),
    .sonuc(kodlayici_out)
    );
    
    kod_cozucu uut2(
    .giris(kodlayici_out),
    .sonuc(kod_cozucu_out)
    );
    
    xnor(q1,giris[0],kod_cozucu_out[0]);
    xnor(q2,giris[1],kod_cozucu_out[1]);
    xnor(q3,giris[2],kod_cozucu_out[2]);
    xnor(q4,giris[3],kod_cozucu_out[3]);
    

    
    and(sonuc,q1,q2,q3,q4);
    
    
endmodule
