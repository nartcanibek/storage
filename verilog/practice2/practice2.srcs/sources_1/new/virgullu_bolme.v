`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 17:17:08
// Design Name: 
// Module Name: virgullu_bolme
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


module virgullu_bolme(
input [9:0] bolunen,
input [5:0] bolen,
output reg[3:0] sonuc1,sonuc2,sonuc3,
output reg[7:0] tam,
output reg [16:0] kesir
    );
    
//    reg [7:0] tam;
//    reg [16:0] kesir;
    
//    initial begin
//    tam = bolunen[9:2];
//    kesir = bolunen[1:0];
//    end
    
    always@(*) begin
    tam = bolunen[9:2];
    kesir = bolunen[1] * 50 + bolunen[0] *  25;
    sonuc1 = (tam / bolen)%10;
    sonuc3 = (kesir/bolen)%10;
    sonuc2 = (kesir/bolen)-sonuc3;
    end    
    
endmodule
