clear all; close all; clc;
%%1
fs = 600;
ts = 1/fs;
t = [0:ts:1];
mt = cos(2.*pi.*5.*t); 

%%2
mu = 0.5;
xt = (1 + mu.*mt).*cos(2*pi*100.*t);


%%3
figure ;
subplot(2,1,1);
plot(t,mt);

subplot(2,1,2); 
plot(t,xt);

%%4
L = length(t);
foumt = fftshift(abs(fft(mt))/L);
fouxt = fftshift(abs(fft(xt))/L);
f = ((-L./2 + 1):(L./2))/L*fs;

figure 
subplot(2,1,1);
plot(f,foumt);

subplot(2,1,2); 
plot(f,fouxt);

%%5 
A = 0.6;
yt = A.*xt;

%%6
pt = yt.*cos(2.*pi.*100.*t);
foupt = fftshift(abs(fft(pt))/L);

figure 
subplot(2,1,1);
plot(t,pt);

subplot(2,1,2); 
plot(f,foupt);

%%7
fcut = 10;
Lpfilter = (f>=-fcut) - (f>fcut);
lpfilter = abs(ifft(Lpfilter));
lpfilter(ceil(L/2):end) = [];

r1t = filter(lpfilter,1,abs(pt));
fourr1t = fftshift(abs(fft(r1t))/L);

figure 
subplot(2,1,1);
plot(t,r1t);

subplot(2,1,2); 
plot(f,fourr1t);

%%8
[r2t,~] = envelope(yt);
fourr2t = fftshift(abs(fft(r2t))/L);

figure
subplot(2,1,1);
plot(t,r2t);

subplot(2,1,2); 
plot(f,fourr2t);

%%9
MM = [mt', r1t', r2t'];
R = corrcoef(MM)




