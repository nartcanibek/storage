`timescale 1ns / 1ps



module tb_half_adder(

    );
    reg X_tb,Y_tb;
    wire S,C;
    
    half_adder connect(
    .X(X_tb),
    .Y(Y_tb),
    .S(S),
    .C(C)
    );
    initial begin 
    
    X_tb=1'b0;Y_tb=1'b0; #50;
    X_tb=1'b0;Y_tb=1'b1; #50;
    X_tb=1'b1;Y_tb=1'b0; #50;
    X_tb=1'b1;Y_tb=1'b1; #50;
    
    
    
    
    
    end
    
    
endmodule
