clear all; close all; clc;
%syms lambda_axis;
snr = [1,2,3];
M = 1e8;
lambda_axis = linspace(1e-15,5,M);
Pn = max(1./lambda_axis - (1./snr)' ,0);
ind = find(sum(Pn) < 10.1 & sum(Pn) > 9.9 );
deneme = sum(Pn);
p = (Pn(:,ind))';
pson = mean(p);
% n = length(snr);
% M = 1e4;
% lambda_axis = linspace(1e-15,5,M);
% %a = max(1./1 - (1./snr)' ,0);
% %Pn = 2.9442 == 1./lambda_axis - 1./1;
% %vpasolve (Pn, lambda_axis)
% Pn = max(1./lambda_axis - (1./snr)' ,0);
% ind = find(sum(Pn) < 10+1e-3 & sum(Pn) > 10-1e-3 );
% lagrange = sum(log(1 + Pn.*(repmat(snr',[1 M])))) - lambda_axis .* sum(Pn);
% min_lagrange=find(lagrange == min(lagrange));
% %lambda = lambda_axis(ind);
% 
% f1 = figure(1);
% clf(f1);
% plot(lambda_axis,lagrange);
% grid on
% grid minor
% 
% disp(min_lagrange)