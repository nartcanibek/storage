`timescale 1ns / 1ps


module dort_bit_toplayici(
input [3:0] sayi1,
input [3:0] sayi2,
output [7:0] sonuc
    );

    wire half_and,full_1_firtsxor,full_1_firtsand,full_1_secondand,full_1_or,full_2_firstxor,full_2_firstand,full_2_secondand,full_2_or;
    
    xor(sonuc[0],sayi1[0],sayi2[0]);
    and(half_and,sayi1[0],sayi2[0]);
   
    
    xor(full_1_firtsxor,sayi1[1],sayi2[1]);
    and(full_1_firtsand,sayi1[1],sayi2[1]);
    xor(sonuc[1],full_1_firtsxor,half_and);
    and(full_1_secondand,full_1_firtsxor,half_and);
    or(full_1_or,full_1_firtsand,full_1_secondand);
    
    
    xor(full_2_firstxor,sayi1[2],sayi2[2]);
    and(full_2_firstand,sayi1[2],sayi2[2]);
    xor(sonuc[2],full_2_firstxor,full_1_or);
    and(full_2_secondand,full_2_firstxor,full_1_or);
    or(full_2_or,full_2_secondand,full_2_firstand);
    
    
    xor(full_3_firstxor,sayi1[3],sayi2[3]);
    and(full_3_firstand,sayi1[3],sayi2[3]);
    xor(sonuc[3],full_2_or,full_3_firstxor);
    and(full_3_secondand,full_2_or,full_3_firstxor);
    or(sonuc[4],full_3_secondand,full_3_firstand);
   
endmodule


