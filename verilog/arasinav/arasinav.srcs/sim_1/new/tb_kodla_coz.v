`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 19:04:37
// Design Name: 
// Module Name: tb_kodla_coz
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


module tb_kodla_coz();
    
    reg [3:0]giris;
    wire sonuc;
    
    kodla_coz uut(
    .giris(giris),
    .sonuc(sonuc)
    );
    
    initial begin
    giris = 4'b0110;#50;
    giris = 4'b0111;#50;
    giris = 4'b1011;#50;
    giris = 4'b0011;#50;
   
    end
endmodule
