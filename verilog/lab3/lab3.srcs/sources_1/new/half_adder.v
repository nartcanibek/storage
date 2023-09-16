`timescale 1ns / 1ps



module half_adder(
input X,
input Y,
output S,
output C
    );
xor(S,X,Y);
and(C,X,Y);

endmodule
