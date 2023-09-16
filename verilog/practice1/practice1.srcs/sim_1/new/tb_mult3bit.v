`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 18:44:39
// Design Name: 
// Module Name: tb_mult3bit
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


module tb_mult3bit();

reg [2:0] sayi1,sayi2;
wire [5:0] cikis;

mult3bit uut(
.sayi1(sayi1),
.sayi2(sayi2),
.cikis(cikis)
);

initial begin
 
sayi1 = 0; sayi2 = 6; #50;
sayi1 = 1; sayi2 = 5; #50;
sayi1 = 2; sayi2 = 7; #50;
sayi1 = 3; sayi2 = 5; #50;
sayi1 = 4; sayi2 = 4; #50;
sayi1 = 5; sayi2 = 3; #50;
sayi1 = 6; sayi2 = 6; #50;
sayi1 = 7; sayi2 = 5; #50;

sayi1 = 0; sayi2 = 1; #50;
sayi1 = 1; sayi2 = 1; #50;
sayi1 = 2; sayi2 = 3; #50;
sayi1 = 3; sayi2 = 4; #50;
sayi1 = 4; sayi2 = 6; #50;
sayi1 = 5; sayi2 = 5; #50;
sayi1 = 6; sayi2 = 4; #50;
sayi1 = 7; sayi2 = 1; #50;


end
endmodule
