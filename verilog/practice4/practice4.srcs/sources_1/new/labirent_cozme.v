`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 10:03:15
// Design Name: 
// Module Name: labirent_cozme
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


module labirent_cozme #(parameter N = 1 )(
input clk,
input [2*N-1:0] ilk_konum,
input [4*N-1:0] kus_ucusu_uzaklik,
output reg [(N*N*N*2)-1:0]izlenen_yol,
output reg cikti_mi
    );
reg [N-1:0] sag,sol,yukari,asagi,konum_x,konum_y; 
integer i=1;
    
initial begin
 konum_x = ilk_konum[N +:N];
 konum_y = ilk_konum[N-1:0];
 izlenen_yol[2*N-1:0] = ilk_konum;    
end    
 
 always @* begin
 sag = kus_ucusu_uzaklik[3*N+:N];
 sol = kus_ucusu_uzaklik[2*N+:N];
 yukari = kus_ucusu_uzaklik[N +:N];
 asagi = kus_ucusu_uzaklik[N-1:0];
 
 if (sag == 0 || sol == 0 || yukari == 0 || asagi == 0 )
 cikti_mi = 1;
 end
 
 always@(posedge clk) begin
if (sag > sol && sag > yukari && sag > asagi)
begin 
izlenen_yol[i*N +:N] <= sag;
konum_x <= konum_x + 1;
end
if (sol > sag && sol > yukari && sol > asagi)
begin
izlenen_yol[i*N +:N] <= sol;
konum_y <= konum_y + 1;
end
if (yukari > sag && yukari > sol && yukari > asagi)
begin
izlenen_yol[i*N +:N] <= yukari;
konum_y <= konum_y - 1;
end
if (asagi > sag && asagi > sol && asagi > yukari)
begin
izlenen_yol[i*N +:N] <= asagi;
konum_y <= konum_y + 1;
end
if (i == 2*N*N*N)
i = 1;
else
i <= i + 1;

 end    
endmodule
