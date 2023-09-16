`timescale 1ns / 1ps


module siparis_denetimi(
input musteri,
input[2:0] siparis,
input[2:0] stok,
output[2:0] sonuc
    );
    wire kontrol1,kontrol2,stokdurumu;
    
    buffer(sonuc[2:1],musteri);
   
    xnor(kontrol1,siparis[1:0],stok[1:0]);
    xnor(kontrol2,siparis[2:1],stok[2:1]);
    and(stokdurumu,kontrol1,kontrol2);
    and(sonuc[1:0],musteri,stokdurumu);
    
    
    
endmodule
