`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2022 18:50:33
// Design Name: 
// Module Name: tb_mult2bit
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


module tb_mult2bit();
reg [1:0] sayi1,sayi2;
wire [3:0] cikis;

mult2bit uut(
.sayi1(sayi1),
.sayi2(sayi2),
.cikis(cikis)
);

initial begin
 
sayi1 = 0; sayi2 = 0; #50;
sayi1 = 1; sayi2 = 0; #50;
sayi1 = 2; sayi2 = 0; #50;
sayi1 = 3; sayi2 = 0; #50;

sayi1 = 0; sayi2 = 1; #50;
sayi1 = 1; sayi2 = 1; #50;
sayi1 = 2; sayi2 = 1; #50;
sayi1 = 3; sayi2 = 1; #50;

sayi1 = 0; sayi2 = 2; #50;
sayi1 = 1; sayi2 = 2; #50;
sayi1 = 2; sayi2 = 2; #50;
sayi1 = 3; sayi2 = 2; #50;

sayi1 = 0; sayi2 = 3; #50;
sayi1 = 1; sayi2 = 3; #50;
sayi1 = 2; sayi2 = 3; #50;
sayi1 = 3; sayi2 = 3; #50;
end
endmodule
