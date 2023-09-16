`timescale 1ns / 1ps


module odev2_a(
input sag,
input sol,
input on,
output yon_solbit,
output yon_sagbit
);
wire ONn,SOLn,SAGn;

not(ONn,on);
not(SOLn,sol);
not(SAGn,sag);


or(yon_solbit,sol,on);
or(yon_sagbit,sag,on);



endmodule
