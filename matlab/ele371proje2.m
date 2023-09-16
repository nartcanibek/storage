clc
% SORU 1
% A ŞIKKI
syms t k
fonk1(t) =  exp(-1i*k*((2*pi)/3)*t);
fonk2(t) =  (1-t) * exp(-1i*k*((2*pi)/3)*t);
fonk3(t) = 1*exp(-1i*0*((2*pi)/3)*t);
fonk4(t) = (1-t)*exp(-1i*0*((2*pi)/3)*t);
a0 = 1/3 * (int(fonk3,-1,0) + int(fonk4,0,1)) ;
%a(k) = piecewise(k ~= 0, 1/3 * ( int(fonk1,-1,0) + int(fonk2,0,1)),1); 
x(t) =  a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,100);
zaman = -2.5:0.01:2.49;
xt = x(zaman);
xt = double(xt);
figure ('Name' , 'Soru 1 , A şıkkı') ;
plot ( zaman ,  xt )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )

% B ŞIKKI
x0(t) = a0 ;
x0t = x0(zaman);
x0t = double(x0t);
figure ('Name' , 'Soru 1 , B şıkkı') ;
plot ( zaman ,  x0t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )

% C ŞIKKI 
x1(t) =a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,1);
x1t = x1(zaman);
x1t = double(x1t);
figure ('Name' , 'Soru 1 , C şıkkı K =1') ;
plot ( zaman ,  x1t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )
x3(t) =a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,3);
x3t = x3(zaman);
x3t = double(x3t);
figure ('Name' , 'Soru 1 , C şıkkı K =3') ;
plot ( zaman ,  x3t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )
x5(t) = a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,5);
x5t = x5(zaman);
x5t = double(x5t);
figure ('Name' , 'Soru 1 , C şıkkı K =5') ;
plot ( zaman ,  x5t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )
x7(t) = a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,7);
x7t = x7(zaman);
x7t = double(x7t);
figure ('Name' , 'Soru 1 , C şıkkı K =7') ;
plot ( zaman ,  x7t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )
x9(t) = a0 + symsum(2*a*cos(k*((2*pi)/3)*t),k,1,9);
x9t = x9(zaman);
x9t = double(x9t);
figure ('Name' , 'Soru 1 , C şıkkı K =9') ;
plot ( zaman ,  x9t )
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )

% SORU 2 
% A ŞIKKI 


 sincsqr(t) = piecewise(t~=0,(sin(pi*t))^2/(pi*t)^2,1) ;
zaman2 = linspace(-5,5,1001);
y = sincsqr(zaman2);
y = double(y);
figure('Name' , 'Soru 2 , A şıkkı') ;
plot(zaman2,y);
xlabel ( ' zaman ' )
ylabel ( ' x ( t ) ' )
title ( ' x ( t ) fonksiyonu ' )


% B ŞIKKI
syms w;
figure ('Name' , 'Soru 2 , B şıkkı');
ftrans = piecewise(-2*pi< w <= 0, 1 + w/(2*pi) , 0< w <2*pi ,1 - w/(2*pi) , 0);
fplot(ftrans);
axis ( [ -8 , 8 , -0.1 , 1.2 ] )
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )

%SORU 3
n = -5:0.01:5;
transstep(w) = piecewise(w~=0,(10*sin(w))/w ,1);
ftrans2(w) = diff(ftrans);
sample1 = transstep(n);
sample2 = ftrans2(n);
sample1 = double(sample1);
sample2 = double(sample2);
convolved = conv(son1,son2);
figure ('Name' , 'Soru 3') ;
m = -10:0.01:10;
plot(m,convolved);
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )

SORU 4
A ŞIKKI

v = linspace(-5,5,1001);
clipfunc(t) = piecewise(-5 < t < 5 , 1 ,0);
timedomainfunc = v .* sincsqr(v) .* clipfunc(v);
timedomainfunc = double(timedomainfunc);
freqdomainfunc = fft(timedomainfunc,4096);
figure('Name' , 'Soru 4 , A şıkkı')
freqdomainfunc = fftshift(freqdomainfunc);
plot(abs(freqdomainfunc));
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )

%B ŞIKKI
freqdomainfunc2 = fft(timedomainfunc,128);
freqdomainfunc2 = fftshift(freqdomainfunc2);
freqdomainfunc3 = fft(timedomainfunc,256);
freqdomainfunc3 = fftshift(freqdomainfunc3);
freqdomainfunc4 = fft(timedomainfunc,512);
freqdomainfunc4 = fftshift(freqdomainfunc4);
freqdomainfunc5 = fft(timedomainfunc,1024);
freqdomainfunc5 = fftshift(freqdomainfunc5);
figure('Name' , 'Soru 4 , B şıkkı N =128')
plot(abs(freqdomainfunc2));
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )
figure('Name' , 'Soru 4 , B şıkkı N =256')
plot(abs(freqdomainfunc3));
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )
figure('Name' , 'Soru 4 , B şıkkı N =512')
plot(abs(freqdomainfunc4));
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )
figure('Name' , 'Soru 4 , B şıkkı N =1024')
plot(abs(freqdomainfunc5));
xlabel ( ' açısal frekans ' )
ylabel ( ' x ( jw ) ' )
title ( ' x ( jw ) fonksiyonu ' )
