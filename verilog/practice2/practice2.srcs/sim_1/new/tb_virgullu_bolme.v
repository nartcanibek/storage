`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 17:50:09
// Design Name: 
// Module Name: tb_virgullu_bolme
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


module tb_virgullu_bolme();

reg [9:0] bolunen;
reg [5:0] bolen;
wire [3:0] sonuc1,sonuc2,sonuc3;

 wire [7:0] tam;
 wire [16:0] kesir;

virgullu_bolme uut(
.bolunen(bolunen),
.bolen(bolen),
.sonuc1(sonuc1),
.sonuc2(sonuc2),
.sonuc3(sonuc3),
.tam(tam),
.kesir(kesir)
);

initial begin
bolunen = 10'b0000011001;
bolen = 6'b000011 ;
#10;
end

endmodule
