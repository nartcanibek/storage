clear all; close all; clc;

G = [1 0 0 0 1 1 0; 0 1 0 0 0 1 1 ;0 0 1 0 1 1 1 ;0 0 0 1 1 0 1];
H = [1 0 1 1 1 0 0 ; 1 1 1 0 0 1 0 ; 0 1 1 1 0 0 1];

bit = randi(2,1,1e4) - 1 ;

symbol = 2*bit - 1;

E_dB = -4:2:12;
Eb = 10.^(E_dB/10);

ber2pam = zeros(1,length(E_dB));
r2pam = zeros(1,length(E_dB));

bithem = reshape(bit,[1e4/4,4]);

coddedmessage = bithem*G;

coddemessage = reshape(coddedmessage,[1,7*(1e4/4)]);




% for a = 1:length(E_dB)
%     
%     y2pam = sqrt(Eb(a))*symbol + (randn(size(bit)) / sqrt(2));
%     
%     r2pam = 1*((y2pam>=0));
%     ber2pam(a) = mean(r2pam~=bit);    
%     
% 
% end
% figure 
% semilogy(E_dB,2\erfc(sqrt(Eb)));
% hold on;
% semilogy(E_dB,ber2pam);
% figure
% y = sqrt(10)*symbol + (randn(size(bit)) / sqrt(2) );
% scatter(y,zeros(size(y)));
% hold on;
% scatter ([-sqrt(10) sqrt(10)],[0 0]);
% 
