`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 15:37:39
// Design Name: 
// Module Name: matris_carpici
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


module matris_carpici(
input clk,
input [15:0] satir,
output reg [63:0]  sonuc_satir,
output reg bitti_mi = 0
    );
    
    reg [15:0] A_matrisi [1:0] ;
    reg [15:0] B_matrisi [1:0] ;
    reg [63:0] C_matrisi [1:0] ;
    reg [7:0] cevrim = 1;
    reg [15:0] x,y,z,t;
    reg [15:0] k,l,m,n;
    
    
    
    always @* begin
    
    if(cevrim%4 == 1)begin
    
    if(cevrim  == 5)begin
    C_matrisi[0] = x*k + y*m + z*l + t*n;
    C_matrisi[0] = C_matrisi[0] << 32;
    end
    
    if(cevrim  == 9)begin
    C_matrisi[0] = C_matrisi[0] | x*k + y*m + z*l + t*n;
    end
    
    if(cevrim  == 13)begin
    C_matrisi[1] = x*k + y*m + z*l + t*n;
    C_matrisi[1] = C_matrisi[1] << 32;
    end
    
    if(cevrim  == 17)begin
    C_matrisi[1] = C_matrisi[1] | x*k + y*m + z*l + t*n;
    end
    
    
    
    x = satir[15:8];
    y = satir[7:0];
    A_matrisi[0] = {satir [15:8],satir[7:0]};
    end
    if(cevrim%4 == 2)begin
    z = satir[15:8];
    t = satir[7:0];
    A_matrisi[1] = {satir [15:8],satir[7:0]};
    end
    if(cevrim%4  ==3)begin
    k = satir[15:8];
    l = satir[7:0];
    B_matrisi[0] = {satir [15:8],satir[7:0]};
    end
    if(cevrim%4 == 0)begin
    m = satir[15:8];
    n = satir[7:0];
    B_matrisi[1] = {satir [15:8],satir[7:0]};
    end
    
    
    
    if(cevrim == 18)
    sonuc_satir = C_matrisi[0];
    
    if(cevrim == 19)begin
    sonuc_satir = C_matrisi[1];
    bitti_mi = 1'b1;
    end
    
    
    end
    
    always @(posedge clk) begin
    cevrim <= cevrim + 1;
    end
    
    
    
endmodule
