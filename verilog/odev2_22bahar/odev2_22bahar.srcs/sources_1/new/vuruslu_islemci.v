`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 13:51:06
// Design Name: 
// Module Name: vuruslu_islemci
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


module vuruslu_islemci(
input clk,
input [9:0] buyruk,
output reg [31:0] yazmaclar_guncel,
output reg [31:0] sonuc
    );
    
reg [31:0] yazmaclar;
reg [31:0] yazmaclar_temp;
reg [31:0] sayac;


initial begin 

yazmaclar = 32'h11111111;
sayac = 32'd0;
yazmaclar_temp = yazmaclar;

end    
 
 
always@(posedge clk) begin

//kaynak2:0 kaynak1:0
    if (buyruk[5:4] == 0 && buyruk[3:2] ==0)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[7:0] + yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 2)
   sonuc = yazmaclar[7:0] ^ yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[7:0] & yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[7:0] * yazmaclar[7:0] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    end
    
    //kaynak2:1 kaynak1:0 ve kaynak2:0 kaynak1:1
    else if (buyruk[5:4] == 1 && buyruk[3:2] ==0 || buyruk[5:4] == 0 && buyruk[3:2] == 1 )
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[15:8] + yazmaclar[7:0] ; 
   
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[15:8] ^ yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[15:8] & yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[15:8] * yazmaclar[7:0] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    end
    
    //kaynak2:2 kaynak1:0 ve kaynak2:0 kaynak1:2
    else if (buyruk[5:4] == 2 && buyruk[3:2] ==0 || buyruk[5:4] == 0 && buyruk[3:2] == 2)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[23:16] + yazmaclar[7:0] ; 
    
    
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[23:16] ^ yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[23:16] & yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[23:16] * yazmaclar[7:0] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    end
    //kaynak2:1 kaynak1:1
    else if (buyruk[5:4] == 1 && buyruk[3:2] ==1)
    begin 
    
    if(buyruk[9:6] == 1)
   sonuc = yazmaclar[15:8] + yazmaclar[15:8]; 
   
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[15:8] ^ yazmaclar[15:8] ; 
    
    else if(buyruk[9:6] == 4)
   sonuc = yazmaclar[15:8] & yazmaclar[15:8] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[15:8] * yazmaclar[15:8] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    end
    
    
    
    
    //kaynak2:3 kaynak1:0 ve kaynak2:0 kaynak1:3
    else if (buyruk[5:4] == 3 && buyruk[3:2] ==0 || buyruk[5:4] == 0 && buyruk[3:2] == 3)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[31:24] + yazmaclar[7:0] ; 
    
    
    else if(buyruk[9:6] == 2)
   sonuc = yazmaclar[31:24] ^ yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[31:24] & yazmaclar[7:0] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[31:24] * yazmaclar[7:0] ; 
    else 
    sonuc = 32'hdeadbeef;
    end
    //kaynak2:2 kaynak1:1 ve kaynak2:1 kaynak1:2
    else if (buyruk[5:4] == 2 && buyruk[3:2] ==1 || buyruk[5:4] == 1 && buyruk[3:2] == 2)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[23:16] + yazmaclar[15:8] ; 
   
    
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[23:16] ^ yazmaclar[15:8] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[23:16] & yazmaclar[15:8] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[23:16] * yazmaclar[15:8] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    
    end
    
   
    //kaynak2:3 kaynak1:1 ve kaynak2:1 kaynak1:3
    else if (buyruk[5:4] == 3 && buyruk[3:2] == 1 || buyruk[5:4] == 1 && buyruk[3:2] == 3)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[31:24] + yazmaclar[15:8] ; 
   
   else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[31:24] ^ yazmaclar[15:8] ; 
    
   else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[31:24] & yazmaclar[15:8] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[31:24] * yazmaclar[15:8] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    end
    
    //kaynak2:2 kaynak1:2
    else if (buyruk[5:4] == 2 && buyruk[3:2] ==2)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[23:16] + yazmaclar[23:16] ; 
    
    
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[23:16] ^ yazmaclar[23:16] ; 
    
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[23:16] & yazmaclar[23:16] ; 
    
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[23:16] * yazmaclar[23:16] ; 
    
    else 
    sonuc = 32'hdeadbeef;
   
    end
    
    
    //kaynak2:3 kaynak1:2 ve kaynak2:2 kaynak1:3
    else if (buyruk[5:4] == 3 && buyruk[3:2] ==2 || buyruk[5:4] == 2 && buyruk[3:2] == 3)
    begin 
    
    if(buyruk[9:6] == 1)
    sonuc = yazmaclar[31:24] + yazmaclar[23:16] ; 
    
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[31:24] ^ yazmaclar[23:16] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[31:24] & yazmaclar[23:16] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[31:24] * yazmaclar[23:16] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    
    end
    
    
    //kaynak2:3 kaynak1:3
    else if (buyruk[5:4] == 3 && buyruk[3:2] ==3)
    begin 
    
    if(buyruk[9:6] == 1)
   sonuc = yazmaclar[31:24] + yazmaclar[31:24] ; 
    
    else if(buyruk[9:6] == 2)
    sonuc = yazmaclar[31:24] ^ yazmaclar[31:24] ; 
    
    else if(buyruk[9:6] == 4)
    sonuc = yazmaclar[31:24] & yazmaclar[31:24] ; 
    
    else if(buyruk[9:6] == 8)
    sonuc = yazmaclar[31:24] * yazmaclar[31:24] ; 
    
    else 
    sonuc = 32'hdeadbeef;
    
    end
    


if (buyruk[1:0] == 0)
yazmaclar_temp[7:0] = sonuc[7:0];

else if (buyruk[1:0] == 1)
yazmaclar_temp[15:8] = sonuc[7:0];

else if (buyruk[1:0] == 2)
yazmaclar_temp[23:16] = sonuc[7:0];

else if (buyruk[1:0] == 3)
yazmaclar_temp[31:24] = sonuc[7:0];


yazmaclar = yazmaclar_temp;

if (sayac%12 == 0) 
yazmaclar_guncel = yazmaclar_temp;

sayac = sayac + 1;



end


    
endmodule
