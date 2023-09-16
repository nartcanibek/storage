`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 00:04:35
// Design Name: 
// Module Name: tb_vurussuz_islemci
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


module tb_vurussuz_islemci();
    
reg [9:0] buyruk;
reg [31:0] yazmaclar;

wire [31:0] yazmaclar_guncel;
wire [31:0] sonuc;

    vurussuz_islemci uut(
    .buyruk(buyruk),
    .yazmaclar(yazmaclar),
    .yazmaclar_guncel(yazmaclar_guncel),
    .sonuc(sonuc)
    );
    
    initial begin
    buyruk = 10'b_0001_00_01_10; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_0010_00_01_10; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_0100_00_01_10; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_1000_00_01_10; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_1100_00_01_10; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_1000_00_00_11; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_0100_00_11_00; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_0010_00_11_11; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    buyruk = 10'b_0001_00_00_00; yazmaclar = 32'h_aa_bb_cc_dd; #10;
    
    end
endmodule
