clear all; close all; clc;
%%1
fs = 1000;
ts = 1/fs;
t = 0:ts:1;
f1 = 10;
f2 = 20;
a = 0.5;
m1t = cos(2*pi*f1*t);
m2t = sin(2*pi*f2*t);
mt = a.*m1t + (1-a).*m2t;

%%2
fc = 100;
kf = 20;
xt = cos(2*pi*fc*t+2*pi*kf*cumsum(mt)*ts);

%%3
figure('Name' , '3)');

subplot(2,1,1);
plot(t,mt);
xlabel ( 'time' );
ylabel ( 'mt' );

subplot(2,1,2); 
plot(t,xt);
xlabel ( 'time' );
ylabel ( 'xt' );

%%4
L = length(t);
foumt = fftshift(abs(fft(mt))/L);
fouxt = fftshift(abs(fft(xt))/L);
f = ((-L./2 + 1):(L./2))/L*fs;

figure('Name' , '4)');

subplot(2,1,1);
plot(f,foumt);
xlabel ( 'frequency' )
ylabel ( ' fourmt' )
subplot(2,1,2); 
plot(f,fouxt);
xlabel ( 'frequency' )
ylabel ( ' fourxt ' )

%%5
noise = randn(size(xt));
h = 10;
yt = h.*xt+noise;
fouyt = fftshift(abs(fft(yt))/L);
figure('Name' , '5)');

subplot(2,1,1);
plot(t,yt);
xlabel ( 'time' )
ylabel ( ' yt ' )
subplot(2,1,2); 
plot(f,fouyt);
xlabel ( 'frequency' )
ylabel ( ' fouryt ' )

%%6 
%%a
%%i
ytdiff = yt;
ytdiff(1002) = 0;
ytdiff = circshift(ytdiff,1);
ytdiff = diff(ytdiff);
pt = ytdiff.*cos(2.*pi.*100.*t);
fcut = 30;
r1t = lowpass(abs(pt),fcut,fs);
fourr1t = fftshift(abs(fft(r1t))/L);
figure('Name' , '6.a)i');
subplot(2,1,1);
plot(t,r1t);
xlabel ( 'time' )
ylabel ( ' r1t ' )
subplot(2,1,2); 
plot(f,fourr1t);
xlabel ( 'frequency' )
ylabel ( ' fourr1t ' )

%%ii
r2t = sqrt(lowpass(ytdiff.*ytdiff,fcut,fs));
fourr2t = fftshift(abs(fft(r2t))/L);
figure('Name' , '6.a)ii');
subplot(2,1,1);
plot(t,r2t);
xlabel ( 'time' )
ylabel ( ' r2t ' )
subplot(2,1,2); 
plot(f,fourr2t);
xlabel ( 'frequency' )
ylabel ( ' fourr2t ' )
%%b
%%i
Nf = 11; 
Fpass = 100;
Fstop = 120;

d = designfilt('differentiatorfir','FilterOrder',Nf,'SampleRate',fs);

ytdiff2 = filter(d,yt);
pt2 = ytdiff2.*cos(2.*pi.*100.*t);
r3t = lowpass(abs(pt2),fcut,fs);
fourr3t = fftshift(abs(fft(r3t))/L);
figure('Name' , '6.b)i');
subplot(2,1,1);
plot(t,r3t);
xlabel ( 'time' )
ylabel ( ' r3t ' )
subplot(2,1,2); 
plot(f,fourr3t);
xlabel ( 'frequency' )
ylabel ( ' four3t ' )

%%ii
r4t = sqrt(lowpass(ytdiff2.*ytdiff2,fcut,fs));
fourr4t = fftshift(abs(fft(r4t))/L);
figure('Name' , '6.b)ii');
subplot(2,1,1);
plot(t,r4t);
xlabel ( 'time' )
ylabel ( ' r4t' )
subplot(2,1,2); 
plot(f,fourr4t);
xlabel ( 'frequency' )
ylabel ( ' fourr4t ' )

%%7
MM = [mt', r1t', r2t',r3t',r4t'];
Rilk = corrcoef(MM)

%%8
t = 0:ts:10;
m1t = cos(2*pi*f1*t);
m2t = sin(2*pi*f2*t);
mt = a.*m1t + (1-a).*m2t;
xt = cos(2*pi*fc*t+2*pi*kf*cumsum(mt)*ts);
h_sim_db = -5:15;
h_sim = 10.^(h_sim_db/10);
n_sim = 10;
cc1 = zeros(n_sim,length(h_sim));
cc2 = zeros(n_sim,length(h_sim));
cc3 = zeros(n_sim,length(h_sim));
cc4 = zeros(n_sim,length(h_sim));
for a = 1:length(h_sim)
    for b = 1:n_sim
       
        %%5
        noise = randn(size(xt));
        yt = h_sim(a).*xt+noise;
        %%6.a i
        ytdiff = diff([0,yt]);
        pt = ytdiff.*cos(2.*pi.*100.*t);
        fcut = 30;
        r1t = lowpass(abs(pt),fcut,fs);
        %%6.a ii
        r2t = sqrt(lowpass(ytdiff.*ytdiff,fcut,fs));
        %%6.b i
        ytdiff2 = filter(d,yt);
        pt2 = ytdiff2.*cos(2.*pi.*100.*t);
        r3t = lowpass(abs(pt2),fcut,fs);
        %%6.b ii
        r4t = sqrt(lowpass(ytdiff2.*ytdiff2,fcut,fs));
       
        R = corrcoef([mt',r1t',r2t',r3t',r4t']);
        cc1(b,a) = R(1,2);
        
        cc2(b,a) = R(1,3);
        
        cc3(b,a) = R(1,4);
        
        cc4(b,a) = R(1,5);
        end
end

cc1=100*mean(abs(cc1));
cc2=100*mean(abs(cc2));
cc3=100*mean(abs(cc3));
cc4=100*mean(abs(cc4));
figure('Name' , '7)');
xlabel ( ' coefficient h ' )
ylabel ( ' Correlation coefficents ' )
title ( ' Correlation coefficents - A ' )
hold on
plot(h_sim_db,cc1);
plot(h_sim_db,cc2);
plot(h_sim_db,cc3);
plot(h_sim_db,cc4);








