`timescale 1ns / 1ps
module bit_kosusu(
    input clk,ileri,don,
    output reg [1:0] bolge = 2'bxx,
    output reg [6:0] x = 7'd64, y = 7'd64,
    output reg bitti_mi = 0
    );
    
    localparam YUKARI = 2'b00, SAG = 2'b01, ASAGI = 2'b10;
    localparam SOL = 2'b11;
    
    localparam OTOPARK = 2'b00, FUAYE = 2'b01, KUTUPHANE = 2'b10;
    localparam TM_217 = 2'b11;
    
    reg [1:0] yon = YUKARI, yon_next = YUKARI;
    
    reg [6:0] y_next, x_next;
    
    reg [5:0] oyun_sayaci = 6'd0;
    
    always @* begin
        yon_next = yon;
        y_next = y;
        x_next = x;
        if(bitti_mi ==0) begin
            if(ileri) begin
                case (yon)
                    YUKARI: begin
                        y_next = y + 1;  
                    end
                    SAG: begin
                        x_next = x + 1;  
                    end
                    ASAGI: begin
                        y_next = y - 1;  
                    end
                    SOL: begin
                        x_next = x - 1;  
                    end
                endcase
            end
            else begin
                if(don) begin
                    //SOLA DONUS
                    yon_next = yon - 2'b01;
                end
                else begin
                    //SAGA DONUS
                    yon_next = yon + 2'b01;
                end
            end
        end
    end
        
    always @(negedge clk) begin
        x <= x_next;
        y <= y_next;
        yon <= yon_next;
        if(bitti_mi == 1'b0) begin
            if(oyun_sayaci != 6'd63) begin
                oyun_sayaci <= oyun_sayaci + 1'b1;
            end
            else begin
                bitti_mi <= 1'b1;
            end
        end
        if(x > 64 && y > 64) 
            bolge = OTOPARK;
       else if(x <= 64 && y > 64)
            bolge = FUAYE;
       else if(x < 64 && y <= 64)
            bolge = KUTUPHANE;
       else
            bolge = TM_217;
    end
endmodule
