`timescale 1ns / 1ps

module tb_lab3_a(

    );
    reg A_tb,B_tb,Cin_tb;
    wire Cout_tb,Sum_tb;
    
    f_lab3_a connect(
    .A(A_tb),
    .B(B_tb),
    .Cin(Cin_tb),
    .Cout(Cout_tb),
    .Sum(Sum_tb)
    );

initial begin

A_tb=1'b0;B_tb=1'b0;Cin_tb=1'b0;#50;
A_tb=1'b0;B_tb=1'b0;Cin_tb=1'b1;#50;
A_tb=1'b0;B_tb=1'b1;Cin_tb=1'b0;#50;
A_tb=1'b0;B_tb=1'b1;Cin_tb=1'b1;#50;
A_tb=1'b1;B_tb=1'b0;Cin_tb=1'b0;#50;
A_tb=1'b1;B_tb=1'b0;Cin_tb=1'b1;#50;
A_tb=1'b1;B_tb=1'b1;Cin_tb=1'b0;#50;
A_tb=1'b1;B_tb=1'b1;Cin_tb=1'b1;#50;


end
endmodule
