`timescale 1ns / 1ps


module takvim(
input[32:0] gunsayisi,
output reg[32:0] gun,
output reg[32:0] ay,
output reg[32:0] yil,
output reg[32:0] gunadi
    );
    reg yilfarki;
always@(*)begin
gun=gunsayisi%30;
yilfarki=(gunsayisi-gun)%360;
ay=(gunsayisi-(yilfarki*360)-gun)/30;
gunadi=gun%7;
yil=2000+yilfarki;
end
endmodule
