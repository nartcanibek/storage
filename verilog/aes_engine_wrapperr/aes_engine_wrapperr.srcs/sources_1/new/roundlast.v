`timescale 1ns / 1ps

module rounndlast(clk,rc,rin,keylastin,fout,c_gecerli);
input clk;
input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output   [127:0]fout;
output  c_gecerli;
wire [127:0] sb,sr,mcl,keyout;

KeyGeneration t0(rc,keylastin,keyout);
subbytes t1(rin,sb);
shiftrow t2(sb,sr);

assign fout = sr^keyout;

assign c_gecerli = 1;

endmodule

