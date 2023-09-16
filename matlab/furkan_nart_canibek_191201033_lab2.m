clear all; close all; clc;
%%1
fs = 600;
ts = 1/fs;
t = [0:ts:100];
mt = cos(2.*pi.*5.*t); 

%%2
mu = 0.5;
xt = (1 + mu.*mt).*cos(2*pi*100.*t);

%%3
L = length(t);
f = ((-L./2 + 1):(L./2))/L*fs;
fcut = 10;
Lpfilter = (f>=-fcut) - (f>fcut);
lpfilter = abs(ifft(Lpfilter));
lpfilter(ceil(L/2):end) = [];

%%4 
A_dB = -10:10;
A = 10.^(A_dB/10);
n_sim = 100;
cc1 = zeros(n_sim,length(A));
cc2 = zeros(n_sim,length(A));
cc3 = zeros(n_sim,length(A));
cc4 = zeros(n_sim,length(A));

%%5

for a = 1:length(A)
    for b = 1:n_sim
       
        noise = randn(size(xt));
        
        yt = A(a).*xt+noise;
        %%6
        pt = yt.*cos(2.*pi.*100.*t);
        foupt = fftshift(abs(fft(pt))/L);
        %%7
        r1t = filter(lpfilter,1,abs(pt));
        %%8
        [r2t,~] = envelope(yt);
        %%9 
        r3t = lowpass(pt,fcut,fs);
        %%10
        y2t = yt.*yt;
        r4t = lowpass(y2t,fcut,fs);
        r4t = sqrt(r4t);
        %%11
        R = corrcoef([mt',r1t',r2t',r3t',r4t']);
        cc1(b,a) = R(1,2);
        
        cc2(b,a) = R(1,3);
        
        cc3(b,a) = R(1,4);
        
        cc4(b,a) = R(1,5);
        
        
     
    
    end
end

%%12
cc1=100*mean(cc1);
cc2=100*mean(cc2);
cc3=100*mean(cc3);
cc4=100*mean(cc4);
figure('Name' , '12)');
xlabel ( ' A_dB ' )
ylabel ( ' Correlation coefficents ' )
title ( ' Correlation coefficents - A ' )
hold on
plot(A_dB,cc1);
plot(A_dB,cc2);
plot(A_dB,cc3);
plot(A_dB,cc4);






