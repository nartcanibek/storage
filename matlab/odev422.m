clear all; close all; clc;
Vgs = -5:1:-1;
Vds = -5:0.01:0;
Ids = zeros (1,length(Vds));
Vt = 0.7;
mu = 120;
tox = 100 * 10e-8;
kox = 3.9;
Eo = 8.85 * 10e-14;
Cox = (kox*Eo)/tox;
WdivL = 2;
B = mu*Cox*WdivL;
figure ('Name','pMOS I-V')
hold on
for i = 1:length(Vgs) 
for k = 1:length(Vds)
if abs(Vgs(i)) < abs(Vt)
Ids(k) = 0;
elseif abs(Vds(k)) < abs(Vgs(i)) - abs(Vt) 
    Ids(k) = -B * (abs(Vgs(i)) - abs(Vt) - abs(Vds(k)/2))*abs(Vds(k));
elseif abs(Vds(k)) >= abs(Vgs(i)) - abs(Vt)
    Ids(k) = -(B/2) * (abs(Vgs(i)) -abs(Vt)) * (abs(Vgs(i)) -abs(Vt));

end 
end 

plot (Vds,Ids*1000)
title('pMOS I-V')

end
legend ('Vgs = -5','Vgs = -4','Vgs = -3','Vgs = -2','Vgs = -1','Location','southeast');
xlabel('Vds')
ylabel('Ids (mA)')

