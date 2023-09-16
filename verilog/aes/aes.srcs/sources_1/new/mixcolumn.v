`timescale 1ns / 1ps

module mixcolumn(aftersrw,aftermcl);
input [127:0] aftersrw;
output [127:0] aftermcl;

assign aftermcl[127:120]= fonkmix(aftersrw[127:120],aftersrw[119:112],aftersrw[111:104],aftersrw[103:96]);
assign aftermcl[119:112]= fonkmix (aftersrw[119:112],aftersrw[111:104],aftersrw[103:96],aftersrw[127:120]);
assign aftermcl[111:104]= fonkmix (aftersrw[111:104],aftersrw[103:96],aftersrw[127:120],aftersrw[119:112]);
assign aftermcl[103:96]= fonkmix (aftersrw[103:96],aftersrw[127:120],aftersrw[119:112],aftersrw[111:104]);

assign aftermcl[95:88]= fonkmix (aftersrw[95:88],aftersrw[87:80],aftersrw[79:72],aftersrw[71:64]);
assign aftermcl[87:80]= fonkmix (aftersrw[87:80],aftersrw[79:72],aftersrw[71:64],aftersrw[95:88]);
assign aftermcl[79:72]= fonkmix (aftersrw[79:72],aftersrw[71:64],aftersrw[95:88],aftersrw[87:80]);
assign aftermcl[71:64]= fonkmix (aftersrw[71:64],aftersrw[95:88],aftersrw[87:80],aftersrw[79:72]);

assign aftermcl[63:56]= fonkmix (aftersrw[63:56],aftersrw[55:48],aftersrw[47:40],aftersrw[39:32]);
assign aftermcl[55:48]= fonkmix (aftersrw[55:48],aftersrw[47:40],aftersrw[39:32],aftersrw[63:56]);
assign aftermcl[47:40]= fonkmix (aftersrw[47:40],aftersrw[39:32],aftersrw[63:56],aftersrw[55:48]);
assign aftermcl[39:32]= fonkmix (aftersrw[39:32],aftersrw[63:56],aftersrw[55:48],aftersrw[47:40]);

assign aftermcl[31:24]= fonkmix (aftersrw[31:24],aftersrw[23:16],aftersrw[15:8],aftersrw[7:0]);
assign aftermcl[23:16]= fonkmix (aftersrw[23:16],aftersrw[15:8],aftersrw[7:0],aftersrw[31:24]);
assign aftermcl[15:8]= fonkmix (aftersrw[15:8],aftersrw[7:0],aftersrw[31:24],aftersrw[23:16]);
assign aftermcl[7:0]= fonkmix (aftersrw[7:0],aftersrw[31:24],aftersrw[23:16],aftersrw[15:8]);

function [7:0] fonkmix;
input [7:0] i1,i2,i3,i4;
begin 
fonkmix[7]=i1[6] ^ i2[6] ^ i2[7] ^ i3[7] ^ i4[7];
fonkmix[6]=i1[5] ^ i2[5] ^ i2[6] ^ i3[6] ^ i4[6];
fonkmix[5]=i1[4] ^ i2[4] ^ i2[5] ^ i3[5] ^ i4[5];
fonkmix[4]=i1[3] ^ i1[7] ^ i2[3] ^ i2[4] ^ i2[7] ^ i3[4] ^ i4[4];
fonkmix[3]=i1[2] ^ i1[7] ^ i2[2] ^ i2[3] ^ i2[7] ^ i3[3] ^ i4[3];
fonkmix[2]=i1[1] ^ i2[1] ^ i2[2] ^ i3[2] ^ i4[2];
fonkmix[1]=i1[0] ^ i1[7] ^ i2[0] ^ i2[1] ^ i2[7] ^ i3[1] ^ i4[1];
fonkmix[0]=i1[7] ^ i2[7] ^ i2[0] ^ i3[0] ^ i4[0];
end
endfunction 









endmodule