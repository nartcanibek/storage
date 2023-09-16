`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 22:59:25
// Design Name: 
// Module Name: tb_practice1
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


module tb_practice1 ();
reg [2:0] sayi1,sayi2;
wire [3:0] toplam;

three_bit_adder uut(
.sayi1(sayi1),
.sayi2(sayi2),
.toplam(toplam)
);

initial begin
 
sayi1 = 0; sayi2 = 0;#10;
sayi1 = 1; sayi2 = 0;#10;
sayi1 = 2; sayi2 = 0;#10;
sayi1 = 3; sayi2 = 0;#10;
sayi1 = 4; sayi2 = 0;#10;
sayi1 = 5; sayi2 = 0;#10;
sayi1 = 6; sayi2 = 0;#10;
sayi1 = 7; sayi2 = 0;#10;

sayi1 = 0; sayi2 = 1;#10;
sayi1 = 1; sayi2 = 1;#10;
sayi1 = 2; sayi2 = 1;#10;
sayi1 = 3; sayi2 = 1;#10;
sayi1 = 4; sayi2 = 1;#10;
sayi1 = 5; sayi2 = 1;#10;
sayi1 = 6; sayi2 = 1;#10;
sayi1 = 7; sayi2 = 1;#10;

sayi1 = 0; sayi2 = 2;#10;
sayi1 = 1; sayi2 = 2;#10;
sayi1 = 2; sayi2 = 2;#10;
sayi1 = 3; sayi2 = 2;#10;
sayi1 = 4; sayi2 = 2;#10;
sayi1 = 5; sayi2 = 2;#10;
sayi1 = 6; sayi2 = 2;#10;
sayi1 = 7; sayi2 = 2;#10;

sayi1 = 0; sayi2 = 3;#10;
sayi1 = 1; sayi2 = 3;#10;
sayi1 = 2; sayi2 = 3;#10;
sayi1 = 3; sayi2 = 3;#10;
sayi1 = 4; sayi2 = 3;#10;
sayi1 = 5; sayi2 = 3;#10;
sayi1 = 6; sayi2 = 3;#10;
sayi1 = 7; sayi2 = 3;#10;

sayi1 = 0; sayi2 = 7;#10;
sayi1 = 1; sayi2 = 7;#10;
sayi1 = 2; sayi2 = 7;#10;
sayi1 = 3; sayi2 = 7;#10;
sayi1 = 4; sayi2 = 7;#10;
sayi1 = 5; sayi2 = 7;#10;
sayi1 = 6; sayi2 = 7;#10;
sayi1 = 7; sayi2 = 7;#10;
end

endmodule