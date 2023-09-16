clear all,close all,clc;
%%
p1=1
p2=1
p3=1
p4=-1
Plant=tf([1,p4],conv(conv([1,p1],[1,p2]),[1,p3]))
bodemag(Plant,{1,1e2});
obj1=gca;
obj1.Children(1).Children.Color=[0,0,0];
obj1.Children(1).Children.LineWidth= 2;
obj1.Children(1).Children.LineStyle= '-';
% setfield(gcf,'Color',[1,1,1]);
obj2=gcf
obj2.Color=[1,1,1]