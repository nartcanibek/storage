`timescale 1ns / 1ps



module f_lab3_a(
input A,
input B,
input Cin,
output Sum,
output Cout
    );
wire carry1,sum1;
wire carry2;

half_adder connect1(
    .X(A),
    .Y(B),
    .S(sum1),
    .C(carry1)
    );
half_adder connect2(
    .X(sum1),
    .Y(Cin),
    .S(Sum),
    .C(carry2)
    );
or(Cout,carry1,carry2);

endmodule
