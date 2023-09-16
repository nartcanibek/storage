`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2022 22:58:47
// Design Name: 
// Module Name: tb_hamming
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


module tb_hamming();

reg [3:0] sayi1,sayi2;
wire [2:0] sonuc;

hamming uut(
.sayi1(sayi1),
.sayi2(sayi2),
.sonuc(sonuc)
);

initial begin

//sayi1 = 1'h0;sayi2 = 1'hD;#10;  
//sayi1 = 1'h2;sayi2 = 1'h6;#10;  
//sayi1 = 1'hD;sayi2 = 1'hB;#10;  
//sayi1 = 1'h3;sayi2 = 1'hE;#10;  
//sayi1 = 1'h7;sayi2 = 1'h2;#10;  
//sayi1 = 1'hB;sayi2 = 1'h4;#10;  
//sayi1 = 1'hC;sayi2 = 1'h5;#10;  
//sayi1 = 1'hF;sayi2 = 1'hF;#10;  

sayi1 = 4'hD;sayi2 = 4'h3; #10;
sayi1 = 0;sayi2 = 14;#10;  
sayi1 = 2;sayi2 = 3;#10;  
sayi1 = 15;sayi2 = 5;#10;  
sayi1 = 3;sayi2 = 11;#10;  
sayi1 = 7;sayi2 = 13;#10;  
sayi1 = 12;sayi2 = 4;#10;  
sayi1 = 13;sayi2 = 2;#10;  
sayi1 = 14;sayi2 = 1;#10;  
end

endmodule
