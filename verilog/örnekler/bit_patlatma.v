`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 02:02:31 PM
// Design Name: 
// Module Name: bit_patlatma
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


module bit_patlatma(
    input clk,
    input bit,
    output reg [9:0] tablo=0,
    output reg [3:0] isaretci=0,
    output reg bitti_mi=0
    );    
    reg [9:0] tablo_next=0;
    reg [3:0] isaretci_next=0;

    always@* begin    
        tablo_next = tablo;
        isaretci_next = isaretci;
        tablo_next[isaretci] = bit;
        
        if( (isaretci > 4'd1 && isaretci < 4'd5) ||  (isaretci > 4'd6)  ) begin
            if(bit == tablo[isaretci-1] && tablo[isaretci-1] == tablo[isaretci-2])begin
                isaretci_next = isaretci - 2;
                tablo_next[isaretci] = 0;
                tablo_next[isaretci-1]=0;
                tablo_next[isaretci-2]=0;
            end
            else
                isaretci_next = isaretci + 1;
        end
        else begin
            isaretci_next = isaretci + 1;
        end
        if(isaretci == 10)
            bitti_mi = 1;
 
    end
    
    always@(posedge clk) begin
        if(!bitti_mi) begin
            isaretci <= isaretci_next;
            tablo <= tablo_next;
        end
    end

endmodule
