`timescale 1ns / 1ps

module masa_denetimi(
input [2:0] masa,
input[4:0] siparisler,
input[2:0] stok,
output[2:0] gecerli_siparis
);
reg sandalye1,sandalye2;


siparis_denetimi musteri1(
.siparis(siparisler[2:0]),
.stok(stok)
);
siparis_denetimi musteri2(
.siparis(siparisler[4:2]),
.stok(stok)
);
siparis_denetimi masakontrol1(
.musteri(sandalye1)
);
siparis_denetimi masakontrol2(
.musteri(sandalye2)
);

xor(masa[1:0],sandalye1,sandalye2);
and(masa[2:1],sandalye1,sandalye2);

wire kontrol11,kontrol12,stokdurumu,sonuc1musteri,sonuc1gecerli;
    
    buffer(sonuc1musteri,masa[1:0]);
   
    xnor(kontrol11,siparisler[1:0],stok[1:0]);
    xnor(kontrol12,siparisler[2:1],stok[2:1]);
    and(stokdurumu,kontrol1,kontrol2);
    and(sonuc1gecerli,masa[1:0],stokdurumu);
    
    wire kontrol21,kontrol22,stokdurumu,sonuc2musteri,sonuc2gecerli;
    
    buffer(sonuc1musteri,masa[1:0]);
   
    xnor(kontrol21,siparisler[3:2],stok[1:0]);
    xnor(kontrol22,siparisler[4:3],stok[2:1]);
    and(stokdurumu,kontrol21,kontrol22);
    and(sonuc2gecerli,masa[1:0],stokdurumu);
    
xor(gecerli_siparis[1:0],sonuc1gecerli,sonuc2gecerli);
and(gecerli_siparis[2:1],sonuc1gecerli,sonuc2gecerli);

endmodule
