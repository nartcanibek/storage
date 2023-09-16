clear all; close all; clc;
bit = randi(2,1,1e8) - 1 ;
bit2 = randi(2,2,1e8) - 1;
bit3 = randi(2,2,1e8) - 1;
bit4 = randi(2,1,1e8) - 1 ;
symbol = 2*bit - 1;
symbol2 = 2*bit2 - 1;
symbol3 = 2*bit3 - 1;
symbol4 = 2*bit4 - 1;
E_dB = -4:2:12;
Eb = 10.^(E_dB/10);

ber2pam = zeros(1,length(E_dB));
r2pam = zeros(1,length(E_dB));

bercustom = zeros(1,length(E_dB));
rcustom = zeros(1,length(E_dB));

ber4pam1 = zeros(1,length(E_dB));
ber4pam2 = zeros(1,length(E_dB));
r4pam1 = zeros(1,length(E_dB));
r4pam2 = zeros(1,length(E_dB));

ber4qam1 = zeros(1,length(E_dB));
ber4qam2 = zeros(1,length(E_dB));
r4qam1 = zeros(1,length(E_dB));
r4qam2 = zeros(1,length(E_dB));


for a = 1:length(E_dB)
    
    y2pam = sqrt(Eb(a))*symbol + (randn(size(bit)) / sqrt(2));
    y4pam = (1-mod((bit2(1,:)+bit2(2,:).*2),2)).*(3.*sqrt((2.*Eb(a))/5).*symbol2(2,:) + (randn(1,1e8) / sqrt(2))) + mod((bit2(1,:)+bit2(2,:).*2),2).*(sqrt((2.*Eb(a))/5).*symbol2(2,:) + (randn(1,1e8) / sqrt(2)));
    y4qam = (-1).*(sqrt(Eb(a)).*symbol3(2,:)) + (-1).*(1i).*(sqrt(Eb(a)).*symbol3(1,:)) + ((randn(1,1e8)) / sqrt(2))+ ((1i).*(randn(1,1e8) / sqrt(2)));
    ycustom = (1i).*sqrt(Eb(a))*symbol4 + (1i).*((randn(size(bit)) / sqrt(2)));
    
    
    
    r4pam1 = 1*(y4pam>=0);
    ber4pam1(a) = mean(r4pam1~=bit2(2,:)); 
    r4pam2 = 1*((y4pam>=-sqrt((2.*Eb(a))/5)) & (y4pam<=sqrt((2.*Eb(a))/5)));
    ber4pam2(a) = mean(r4pam2~=bit2(1,:)); 
    
        r4qam1 = 1*((real(y4qam)<=0));
        ber4qam1(a) = mean(r4qam1~=bit3(2,:));
        r4qam2 = 1*((imag(y4qam)<=0));
        ber4qam2(a) = mean(r4qam2~=bit3(1,:));

 
    r2pam = 1*((y2pam>=0));
    ber2pam(a) = mean(r2pam~=bit);    
    
    rcustom = 1*((imag(ycustom)>=0));
    bercustom(a) = mean(rcustom~=bit4);  

end
figure 
semilogy(E_dB,2\erfc(sqrt(Eb)));
hold on;
semilogy(E_dB,ber2pam);
figure
y = sqrt(10)*symbol + (randn(size(bit)) / sqrt(2) );
scatter(y,zeros(size(y)));
hold on;
scatter ([-sqrt(10) sqrt(10)],[0 0]);

figure 
semilogy(E_dB,2\erfc(sqrt(2.*Eb/5)));
hold on;
semilogy(E_dB,ber4pam1);
hold on;
semilogy(E_dB,ber4pam2);
figure
y =(1-mod((bit2(1,:)+bit2(2,:).*2),2)).*(3.*sqrt((2.*10)/5).*symbol2(2,:) + (randn(1,1e8) / sqrt(2))) + mod((bit2(1,:)+bit2(2,:).*2),2).*(sqrt((2.*10)/5).*symbol2(2,:) + (randn(1,1e8) / sqrt(2)));
scatter(y,zeros(size(y)));
hold on;
scatter ([-3.*sqrt((2*10)/5) -sqrt((2*10)/5) sqrt((2*10)/5) 3.*sqrt((2*10)/5)],[0 0 0 0]);


figure 
semilogy(E_dB,2\erfc(sqrt(Eb)));
hold on;
semilogy(E_dB,ber4qam1);
hold on;
semilogy(E_dB,ber4qam2);

figure
y =(-1).*(sqrt(10).*symbol3(2,:)) + (-1).*(1i).*(sqrt(10).*symbol3(1,:)) + ((randn(1,1e8)) / sqrt(2))+ ((1i).*(randn(1,1e8) / sqrt(2)));
scatter(real(y),imag(y));
hold on;
b = [(-1).*sqrt(10)+(1i).*sqrt(10) (-1).*sqrt(10)-(1i).*sqrt(10) sqrt(10)+(1i).*sqrt(10) sqrt(10)-(1i).*sqrt(10)];
scatter(real(b),imag(b));

figure 
semilogy(E_dB,2\erfc(sqrt(Eb)));
hold on;
semilogy(E_dB,bercustom);
figure
y = (1i).*sqrt(10)*symbol4 + (1i).*(randn(size(bit)) / sqrt(2) );
scatter(real(y),imag(y));
hold on;
b = [0+sqrt(10).*1i 0-sqrt(10).*1i];
scatter (real(b),imag(b));




