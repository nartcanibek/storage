`timescale 1ns / 1ps



module sunucu(
input clk,
input paket_sonu,
input bit_girisi,
input [31:0]PAKET_KOTASI,
output bitti_mi
);
paketleyici connect(
.paket_sonu(paket_sonu),
.bit_girisi(bit_girisi)
);
reg [31:0]paket_hafizasi[63:0];
always@(posedge clk)begin 
generate i;
generate 
for (i=1;i<31;i=i+1)begin 
paketleyici(paket,paket_hafizasi[i]);
end
endgenerate 
end
endmodule
