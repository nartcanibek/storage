clear all; close all; clc;
syms s;
%Genişletilmiş sistem durum matrisleri
C = [0 0 1 0 ; 0 0 0 0; -5 1 0 0];
A = [0 1 0 0; 5 -4 1 0; 0 0 -0.1 -4; 5 -1 0 0 ];
I = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
B = [0 0 0; 1 0 1; 0 0 0; 0 0 0];
D = [0 0 0; 0 0 1; 0 -1 0];

%G = C*((s.*I - A)^-1)*B + D ifadesini veren matlab fonksiyonu ss'in kullanımı 
G = ss(A,B,C,D);
%state space gösteriminden transfer fonksiyonuna dönmek için tf fonksiyonu
Gtf = tf(G)
%K kontrolcüsü elde etmek için state space kullanımı
[State_space_P_controller,CL,gamma,info] = hinfsyn(G,1,1);
%elde ettiğimiz K kontrolcüsünün tf'ye çevrimi
tf_P_controller = tf(State_space_P_controller)
%elde ettiğimiz tf'nin zero pole gain modeli
zpk_P_controller = zpk(tf_P_controller)
%elde ettiğimiz zpk'dan gain'i K konrolcüsü değeri olarak atama
coefficient_of_P_conroller = zpk_P_controller.K


