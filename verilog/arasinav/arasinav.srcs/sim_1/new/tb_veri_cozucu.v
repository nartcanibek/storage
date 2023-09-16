`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 20:17:48
// Design Name: 
// Module Name: tb_veri_cozucu
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


module tb_veri_cozucu(

    );
    reg [21:0] veri_rar;
reg [3:0] rar_bilgi;
wire [31:0] cozulmus_veri;

veri_cozucu uut(
.veri_rar(veri_rar),
.rar_bilgi(rar_bilgi),
.cozulmus_veri(cozulmus_veri));

initial begin
veri_rar = 22'b1000011010000000110111;
rar_bilgi = 4'b0011;
#10;

veri_rar = 22'b1000011010000000110111;
rar_bilgi = 4'b0111;
#10;

end
endmodule
