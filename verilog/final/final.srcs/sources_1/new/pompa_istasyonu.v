`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 14:57:17
// Design Name: 
// Module Name: pompa_istasyonu
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


module pompa_istasyonu(
input [3:0] b_birim_fiyati,d_birim_fiyati,litre,
input etkin,secim,
output reg [7:0] tutar

    );
    
    always @* begin
    
    if (etkin) begin
    
    if (secim == 1)
    tutar = d_birim_fiyati*litre;
    else
    tutar = b_birim_fiyati*litre;
    end
    
    else if (!etkin) 
    tutar = 8'd0;
    
 end
    
    
endmodule
