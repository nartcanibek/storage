`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 17:13:50
// Design Name: 
// Module Name: vurussuz_islemci
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


module vurussuz_islemci(
input [9:0] buyruk,
input [31:0] yazmaclar,
output reg [31:0] yazmaclar_guncel,
output reg [31:0] sonuc
    );
    

    always@* begin
    
    yazmaclar_guncel = yazmaclar;
   
   
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
yazmaclar_guncel[7:0] = sonuc[7:0];

else if (buyruk[1:0] == 1)
yazmaclar_guncel[15:8] = sonuc[7:0];

else if (buyruk[1:0] == 2)
yazmaclar_guncel[23:16] = sonuc[7:0];

else if (buyruk[1:0] == 3)
yazmaclar_guncel[31:24] = sonuc[7:0];

    



    end
    
    
    
 

    
    
   

endmodule
