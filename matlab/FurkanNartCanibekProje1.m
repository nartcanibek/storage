clear all; close all; clc;

n = -50:50;
x = zeros(size(n));
x(n==0) = 1;
u = zeros(size(n));
u(n>=0) = 1;
y = zeros(size(n));

% SORU 1
u_right1(n>=1) = 1;
z = 3.^(n-1).*u_right1;

figure('Name','Soru 1 ve 2','NumberTitle','off');
hold on;
stem(z);


% SORU 2

for temp = 50:101
y(temp)=2*y(temp-1)+3*y(temp-2)+x(temp-1)+x(temp-2);
end

plot(y,'-');

% SORU 4

k = 0:100;
u_new(k>=0) = 1;
x_n_1 = cos(20*pi*k);
x_n = x_n_1 + u_new;
b = [0 1 1];
a = [1 -2 -3];
y_n_soru4=filter(b,a,x_n);
figure('Name','Soru 4','NumberTitle','off');
plot(y_n_soru4);

% SORU 5

[y_n_soru5,~] = deconv(conv(b,x_n),a); 
figure('Name','Soru 5','NumberTitle','off');
plot(y_n_soru5);
