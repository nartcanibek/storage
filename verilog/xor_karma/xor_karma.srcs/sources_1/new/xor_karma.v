`timescale 1ns / 1ps

module xor_karma(giris,anahtar);
input [7:0] giris;
output anahtar;
    
    wire firstxor1,firstxnor1,firstxor2,firstxnor2,secondxor,secondxnor;
    
    xor(firstxor1,giris[0],giris[1]);
    xnor(firstxnor1,giris[2],giris[3]);
    xnor(firstxnor2,giris[4],giris[5]);
    xor(firstxor2,giris[6],giris[7]);
    
    xnor(secondxnor,firstxor1,firstxnor1);
    xor(secondxor,firstxor2,firstxnor2);
    
    xnor(anahtar,secondxor,secondxnor);
    
endmodule
