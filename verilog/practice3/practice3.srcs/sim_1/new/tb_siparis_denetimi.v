`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 17:24:44
// Design Name: 
// Module Name: tb_siparis_denetimi
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


module tb_siparis_denetimi(

    );
    
    reg musteri;
    reg[1:0] siparis,stok;
    wire [1:0] sonuc;
    
    
    siparis_denetimi uut(
    .musteri(musteri),
    .siparis(siparis),
    .stok(stok),
    .sonuc(sonuc)
    ); 
    
    initial begin
    musteri = 1'b0;
    siparis = 2'b00;stok = 2'b00;#10;
    siparis = 2'b01;stok = 2'b00;#10;
    siparis = 2'b10;stok = 2'b00;#10;
    siparis = 2'b11;stok = 2'b00;#10;
    
    siparis = 2'b00;stok = 2'b01;#10;
    siparis = 2'b01;stok = 2'b01;#10;
    siparis = 2'b10;stok = 2'b01;#10;
    siparis = 2'b11;stok = 2'b01;#10;
    
    siparis = 2'b00;stok = 2'b10;#10;
    siparis = 2'b01;stok = 2'b10;#10;
    siparis = 2'b10;stok = 2'b10;#10;
    siparis = 2'b11;stok = 2'b10;#10;
    
    siparis = 2'b00;stok = 2'b11;#10;
    siparis = 2'b01;stok = 2'b11;#10;
    siparis = 2'b10;stok = 2'b11;#10;
    siparis = 2'b11;stok = 2'b11;#10;
    
    musteri = 1'b1;
    siparis = 2'b00;stok = 2'b00;#10;
    siparis = 2'b01;stok = 2'b00;#10;
    siparis = 2'b10;stok = 2'b00;#10;
    siparis = 2'b11;stok = 2'b00;#10;
    
    siparis = 2'b00;stok = 2'b01;#10;
    siparis = 2'b01;stok = 2'b01;#10;
    siparis = 2'b10;stok = 2'b01;#10;
    siparis = 2'b11;stok = 2'b01;#10;
    
    siparis = 2'b00;stok = 2'b10;#10;
    siparis = 2'b01;stok = 2'b10;#10;
    siparis = 2'b10;stok = 2'b10;#10;
    siparis = 2'b11;stok = 2'b10;#10;
    
    siparis = 2'b00;stok = 2'b11;#10;
    siparis = 2'b01;stok = 2'b11;#10;
    siparis = 2'b10;stok = 2'b11;#10;
    siparis = 2'b11;stok = 2'b11;#10;
    
    end
endmodule
