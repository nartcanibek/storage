`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 01:47:28
// Design Name: 
// Module Name: tb_tkm
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


module tb_tkm(

    );
    
reg [1:0] secim1,secim2;
wire [1:0] sonuc;

tkm uut(
.secim1(secim1),
.secim2(secim2),
.sonuc(sonuc)

);

initial begin

secim1 = 2'b00 ; secim2 = 2'b00; #10;
secim1 = 2'b01 ; secim2 = 2'b00; #10;
secim1 = 2'b10 ; secim2 = 2'b00; #10;

secim1 = 2'b00 ; secim2 = 2'b01; #10;
secim1 = 2'b01 ; secim2 = 2'b01; #10;
secim1 = 2'b10 ; secim2 = 2'b01; #10;

secim1 = 2'b00 ; secim2 = 2'b10; #10;
secim1 = 2'b01 ; secim2 = 2'b10; #10;
secim1 = 2'b10 ; secim2 = 2'b10; #10;

end
endmodule
