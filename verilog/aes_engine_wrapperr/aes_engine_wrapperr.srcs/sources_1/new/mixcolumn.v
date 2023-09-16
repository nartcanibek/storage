`timescale 1ns / 1ps

module mixcolumn(giris,cikis);
input [127:0] giris;
output [127:0] cikis;

// Giriþ datasýný 8 bitlik bloklar halinde ayýrarak oluþan baytlardan bir matriks dizayn ettik.
// Oluþturduðumuz matriksin ilk sütununu [0:31] indisli bitler,
// ikinci sütununu [32:63] indisli bitler,
// üçüncü sütununu [64:95] indisli bitler,
// son sütununu [96:127] indisli bitler oluþturmaktadýr. 
// Oluþturduðmuz matrisi mixcolumn matrisi ile çarptýktan sonra çýkýþ datasýna ayný düzen ile matrisimiz atadýk. 

// Mixcolumn matrisinin ilk satýrý 2 3 1 1 elemanlarýndan oluþur ve bu elemanlar bir sonraki satýrda bir saða kayar.
// Giriþ datamýzýn bulunduðu matrisi ayrý ayrý fonksiyonlara sokmak yerine 2 3 1 1 formatýna fonksiyona sokup çarpýlan elemanlarýn sýrasýna göre fonksiyon çaðýrma sýrasýný düzenledik. 

assign cikis[127:120]= fonkmix(giris[127:120],giris[119:112],giris[111:104],giris[103:96]);
assign cikis[119:112]= fonkmix (giris[119:112],giris[111:104],giris[103:96],giris[127:120]);
assign cikis[111:104]= fonkmix (giris[111:104],giris[103:96],giris[127:120],giris[119:112]);
assign cikis[103:96]= fonkmix (giris[103:96],giris[127:120],giris[119:112],giris[111:104]);

assign cikis[95:88]= fonkmix (giris[95:88],giris[87:80],giris[79:72],giris[71:64]);
assign cikis[87:80]= fonkmix (giris[87:80],giris[79:72],giris[71:64],giris[95:88]);
assign cikis[79:72]= fonkmix (giris[79:72],giris[71:64],giris[95:88],giris[87:80]);
assign cikis[71:64]= fonkmix (giris[71:64],giris[95:88],giris[87:80],giris[79:72]);

assign cikis[63:56]= fonkmix (giris[63:56],giris[55:48],giris[47:40],giris[39:32]);
assign cikis[55:48]= fonkmix (giris[55:48],giris[47:40],giris[39:32],giris[63:56]);
assign cikis[47:40]= fonkmix (giris[47:40],giris[39:32],giris[63:56],giris[55:48]);
assign cikis[39:32]= fonkmix (giris[39:32],giris[63:56],giris[55:48],giris[47:40]);

assign cikis[31:24]= fonkmix (giris[31:24],giris[23:16],giris[15:8],giris[7:0]);
assign cikis[23:16]= fonkmix (giris[23:16],giris[15:8],giris[7:0],giris[31:24]);
assign cikis[15:8]= fonkmix (giris[15:8],giris[7:0],giris[31:24],giris[23:16]);
assign cikis[7:0]= fonkmix (giris[7:0],giris[31:24],giris[23:16],giris[15:8]);

// Fonksiyonu yazarken sonuca yazýlan xorlanmýþ çarpýmlarýn bit çapýnda etkilerine baktýk.
// Çýkýþ bitini matematiksel olarak belirledikten sonra giriþ datasýnýn indislerine göre Karnaugh haritasý oluþturduk.   

function [7:0] fonkmix;
input [7:0] i1,i2,i3,i4;
begin 
fonkmix[7]=i1[6] ^ ((i2[6]|i2[7])&(~i2[6]|~i2[7])) ^ i3[7] ^ i4[7];
fonkmix[6]=i1[5] ^ ((i2[5]|i2[6])&(~i2[5]|~i2[6])) ^ i3[6] ^ i4[6];
fonkmix[5]=i1[4] ^ ((i2[4]|i2[5])&(~i2[4]|~i2[5])) ^ i3[5] ^ i4[5];
fonkmix[4]=((i1[3]|i1[7])&(~i1[3]|~i1[7]))^ ((i2[3]&i2[4]&i2[7])|(~i2[3]&~i2[4]&i2[7])|(~i2[3]&i2[4]&~i2[7])|(i2[3]&~i2[4]&~i2[7])) ^ i3[4] ^ i4[4];
fonkmix[3]=((i1[2]|i1[7])&(~i1[2]|~i1[7]))^ ((i2[2]&i2[3]&i2[7])|(~i2[2]&~i2[3]&i2[7])|(~i2[2]&i2[3]&~i2[7])|(i2[2]&~i2[3]&~i2[7])) ^ i3[3] ^ i4[3];
fonkmix[2]=i1[1] ^ ((i2[1]|i2[2])&(~i2[1]|~i2[2]))^ i3[2] ^ i4[2];
fonkmix[1]=((i1[0]|i1[7])&(~i1[0]|~i1[7])) ^ ((i2[0]&i2[1]&i2[7])|(~i2[0]&~i2[1]&i2[7])|(~i2[0]&i2[1]&~i2[7])|(i2[0]&~i2[1]&~i2[7])) ^ i3[1] ^ i4[1];
fonkmix[0]=i1[7] ^ ((i2[7]|i2[0])&(~i2[7]|~i2[0]))^ i3[0] ^ i4[0];
end
endfunction 

endmodule