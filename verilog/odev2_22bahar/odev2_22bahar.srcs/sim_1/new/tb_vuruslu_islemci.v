`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 14:21:59
// Design Name: 
// Module Name: tb_vuruslu_islemci
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


module tb_vuruslu_islemci(

    );

reg clk;
reg [9:0] buyruk;
wire [31:0] yazmaclar_guncel;
wire [31:0] sonuc;
 
 vuruslu_islemci uut1(
 .clk(clk),
 .buyruk(buyruk),
 .yazmaclar_guncel(yazmaclar_guncel),
 .sonuc(sonuc)
 );   
    
 always begin
 clk = ~clk;
 #5;
 end
 
 
 initial begin 
 
 
    clk = 0;
    #5;
    buyruk = 10'b_0001_00_01_10; ; #10;
    
    buyruk = 10'b_0010_00_01_11;  #10;
    
    buyruk = 10'b_0100_11_11_00;  #10;
    
    buyruk = 10'b_1000_00_01_01; #10;
    
    buyruk = 10'b_1100_00_00_11;  #10;
    
    buyruk = 10'b_0001_01_11_10; ; #10;
    
    buyruk = 10'b_0010_10_01_10;  #10;
    
    buyruk = 10'b_0100_10_00_11;  #10;
    
    buyruk = 10'b_1000_01_11_10; #10;
    
    buyruk = 10'b_1100_11_11_11;  #10;
    
    buyruk = 10'b_0001_00_01_10; ; #10;
    
    buyruk = 10'b_0010_00_01_10;  #10;
    
    buyruk = 10'b_0100_00_01_10;  #10;
    
    buyruk = 10'b_1000_00_01_10; #10;
    
    buyruk = 10'b_1100_00_01_10;  #10;
    
    buyruk = 10'b_0001_00_01_10; ; #10;
    
    buyruk = 10'b_0010_00_01_10;  #10;
    
    buyruk = 10'b_0100_00_01_10;  #10;
    
    buyruk = 10'b_1000_00_01_10; #10;
    
    buyruk = 10'b_1100_00_01_10;  #10;
    
    buyruk = 10'b_0001_00_01_10; ; #10;
    
    buyruk = 10'b_0010_00_01_10;  #10;
    
    buyruk = 10'b_0100_00_01_10;  #10;
    
    buyruk = 10'b_1000_00_01_10; #10;
    
    buyruk = 10'b_1100_00_01_10;  #10;
 
 
 end
endmodule
