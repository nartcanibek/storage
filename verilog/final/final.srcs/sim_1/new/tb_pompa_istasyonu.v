`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 15:02:59
// Design Name: 
// Module Name: tb_pompa_istasyonu
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


module tb_pompa_istasyonu(

    );
    
    reg [3:0] b_birim_fiyati,d_birim_fiyati,litre;
    reg etkin,secim;
    wire [7:0] tutar;
    
    pompa_istasyonu uut(
    .b_birim_fiyati(b_birim_fiyati),
    .d_birim_fiyati(d_birim_fiyati),
    .etkin(etkin),
    .secim(secim),
    .litre(litre),
    .tutar(tutar)
    );
    
    initial begin 
    etkin = 1;secim = 1;
    b_birim_fiyati = 8'd2; d_birim_fiyati = 8'd3; litre = 8'd5; #10;
    b_birim_fiyati = 8'd5; d_birim_fiyati = 8'd7; litre = 8'd8; #10;
    b_birim_fiyati = 8'd7; d_birim_fiyati = 8'd3; litre = 8'd2; #10;
    
    etkin = 1;secim = 0;
    b_birim_fiyati = 8'd2; d_birim_fiyati = 8'd3; litre = 8'd5; #10;
    b_birim_fiyati = 8'd5; d_birim_fiyati = 8'd7; litre = 8'd8; #10;
    b_birim_fiyati = 8'd7; d_birim_fiyati = 8'd3; litre = 8'd2; #10;
    
    etkin = 0;secim = 1;
    b_birim_fiyati = 8'd2; d_birim_fiyati = 8'd3; litre = 8'd5; #10;
    b_birim_fiyati = 8'd5; d_birim_fiyati = 8'd7; litre = 8'd8; #10;
    b_birim_fiyati = 8'd7; d_birim_fiyati = 8'd3; litre = 8'd2; #10;
    
    etkin = 0;secim = 0;
    b_birim_fiyati = 8'd2; d_birim_fiyati = 8'd3; litre = 8'd5; #10;
    b_birim_fiyati = 8'd5; d_birim_fiyati = 8'd7; litre = 8'd8; #10;
    b_birim_fiyati = 8'd7; d_birim_fiyati = 8'd3; litre = 8'd2; #10;
    
    
    end
endmodule
