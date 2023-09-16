`timescale 1ns / 1ps

module paketleyici(
input clk,
input paket_olustur,
input paket_sonu,
input bit_girisi,
output reg[29:0] paket=30'd0, 
output reg paket_gonderildi
);
integer i ;
always @(posedge clk)begin 
if (paket_olustur)begin 
for (i=0;i<30;i=i+1)begin
paket[i]=bit_girisi;
if (paket_sonu)begin 
paket_gonderildi=1'b1;
i=30;
end
end
end
end
endmodule
