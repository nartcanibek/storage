`timescale 1ns / 1ps



module tb_odev2_a(
);
reg sag_tb,sol_tb,on_tb;
wire yon_solbit_tb,yon_sagbit_tb;

odev2_a connect(
.sag(sag_tb),
.sol(sol_tb),
.on(on_tb),
.yon_solbit(yon_solbit_tb),
.yon_sagbit(yon_sagbit_tb)
);
initial begin
sag_tb=1'b0;sol_tb=1'b0;on_tb=1'b0; #50;
sag_tb=1'b0;sol_tb=1'b0;on_tb=1'b1; #50;
sag_tb=1'b0;sol_tb=1'b1;on_tb=1'b0; #50;
sag_tb=1'b0;sol_tb=1'b1;on_tb=1'b1; #50;
sag_tb=1'b1;sol_tb=1'b0;on_tb=1'b0; #50;
sag_tb=1'b1;sol_tb=1'b0;on_tb=1'b1; #50;
sag_tb=1'b1;sol_tb=1'b1;on_tb=1'b0; #50;
sag_tb=1'b1;sol_tb=1'b1;on_tb=1'b1; #50;


end




endmodule
