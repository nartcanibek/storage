`timescale 1ns / 1ps

module hedef_oyunu(
input[3:0] hedef1_atislar,
input[3:0] hedef2_atislar,
input[3:0] hedef3_atislar,
input[3:0] hedef4_atislar,
output[2:0] odul
    );
wire hedef1,hedef2,hedef3,hedef4;
or (hedef1,hedef1_atislar[1:0],hedef1_atislar[2:1],hedef1_atislar[3:2]);
or (hedef2,hedef2_atislar[1:0],hedef2_atislar[2:1],hedef2_atislar[3:2]);
or (hedef3,hedef3_atislar[1:0],hedef3_atislar[2:1],hedef3_atislar[3:2]);
or (hedef4,hedef4_atislar[1:0],hedef4_atislar[2:1],hedef4_atislar[3:2]);
wire nothedef1,nothedef2,nothedef3,nothedef4;
not(nothedef1,hedef1);
not(nothedef2,hedef2);
not(nothedef3,hedef3);
not(nothedef4,hedef4);
wire sagbitveya1,sagbitveya2,sagbitveya3,sagbitveya4,sagbitveya5;

or(sagbitveya1,nothedef1,nothedef2,nothedef3,nothedef4);
or(sagbitveya2,nothedef1,hedef2,hedef3,hedef4);
or(sagbitveya3,hedef1,hedef2,nothedef3,hedef4);
or(sagbitveya4,hedef1,hedef2,hedef3,nothedef4);
or(sagbitveya5,hedef1,nothedef2,hedef3,hedef4);
and(odul[1:0],sagbitveya1,sagbitveya2,sagbitveya3,sagbitveya4,sagbitveya5);

wire solbitve1,solbitve2,solbitve3,solbitve4;
and(solbitve1,hedef1,hedef2,hedef4);
and(solbitve2,hedef2,hedef3,hedef4);
and(solbitve3,hedef1,hedef3,hedef4);
and(solbitve4,hedef1,hedef2,hedef3);
or(odul[2:1],solbitve1,solbitve2,solbitve3,solbitve4);
endmodule
