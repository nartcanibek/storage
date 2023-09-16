`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 15:24:00
// Design Name: 
// Module Name: petrol_istasyonu
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


module petrol_istasyonu(
input [3:0] b_birim_fiyati,d_birim_fiyati,
input [31:0] p_litre,
input [7:0] p_etkin,p_secim,
output reg [15:0] ist_tutar,
output reg [7:0] ist_b_litre,
output reg [7:0] ist_d_litre
    );
    
    integer i = 0;
    
    always @* begin
    generate (N)
   for(i = 0; i < 8 ; i = i + 1)
   
    
    
    
    end
endmodule
