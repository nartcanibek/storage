`timescale 1ns / 1ps


module dort_bit_carpici(
input [3:0] sayi1,
input[3:0] sayi2,
output [7:0] sonuc
    );
    
    wire [3:0] adder1_1,adder1_2,adder2_1,adder2_2,adder3_1,adder3_2;
    wire [7:0] adder1_out,adder2_out,adder3_out;
   
    and(sonuc[0],sayi1[0],sayi2[0]);
    
    and(adder1_1[0],sayi1[1],sayi2[0]);
    and(adder1_1[1],sayi1[2],sayi2[0]);
    and(adder1_1[2],sayi1[3],sayi2[0]);  
    buf(adder1_1[3],1'b0);

    and(adder1_2[0],sayi1[0],sayi2[1]);
    and(adder1_2[1],sayi1[1],sayi2[1]);
    and(adder1_2[2],sayi1[2],sayi2[1]);
    and(adder1_2[3],sayi1[3],sayi2[1]);
   
    
    dort_bit_toplayici adder1(
    .sayi1(adder1_1),
    .sayi2(adder1_2),
    .sonuc(adder1_out));
    
    buf(sonuc[1], adder1_out[0]);
    
    buf(adder2_1[3], adder1_out[4]);
    buf(adder2_1[2], adder1_out[3]);
    buf(adder2_1[1], adder1_out[2]);
    buf(adder2_1[0], adder1_out[1]);
    
    and(adder2_2[0],sayi1[0],sayi2[2]);
    and(adder2_2[1],sayi1[1],sayi2[2]);
    and(adder2_2[2],sayi1[2],sayi2[2]);
    and(adder2_2[3],sayi1[3],sayi2[2]);
    
    
     dort_bit_toplayici adder2(
    .sayi1(adder2_1),
    .sayi2(adder2_2),
    .sonuc(adder2_out));
    
    buf(sonuc[2], adder2_out[0]);
    
    buf(adder3_1[3] ,adder2_out[4]);
    buf(adder3_1[2] ,adder2_out[3]);
    buf(adder3_1[1] ,adder2_out[2]);
    buf(adder3_1[0] ,adder2_out[1]);
   
    and(adder3_2[0],sayi1[0],sayi2[3]);
    and(adder3_2[1],sayi1[1],sayi2[3]);
    and(adder3_2[2],sayi1[2],sayi2[3]);
    and(adder3_2[3],sayi1[3],sayi2[3]);
   
     dort_bit_toplayici adder3(
    .sayi1(adder3_1),
    .sayi2(adder3_2),
    .sonuc(adder3_out));
    
    buf(sonuc[7] ,adder3_out[4]);
    buf(sonuc[6] ,adder3_out[3]);
    buf(sonuc[5] ,adder3_out[2]);
    buf(sonuc[4] ,adder3_out[1]);
    buf(sonuc[3] ,adder3_out[0]);

    
 endmodule
