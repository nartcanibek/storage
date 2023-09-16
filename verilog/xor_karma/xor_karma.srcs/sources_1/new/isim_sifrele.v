`timescale 1ns / 1ps


module isim_sifrele(isim,sifre);

input [63:0] isim;
output [7:0] sifre;
   
    xor_karma first8(
    .giris(isim[7:0]),
    .anahtar(sifre[0]));
    xor_karma second8(
    .giris(isim[15:8]),
    .anahtar(sifre[1]));
    xor_karma third8(
    .giris(isim[23:16]),
    .anahtar(sifre[2]));
    xor_karma fourth8(
    .giris(isim[31:24]),
    .anahtar(sifre[3]));
    xor_karma fifth8(
    .giris(isim[39:32]),
    .anahtar(sifre[4]));
    xor_karma sixth8(
    .giris(isim[47:40]),
    .anahtar(sifre[5]));
    xor_karma seventh8(
    .giris(isim[55:48]),
    .anahtar(sifre[6]));
    xor_karma eighth8(
    .giris(isim[63:56]),
    .anahtar(sifre[7]));
     
endmodule
