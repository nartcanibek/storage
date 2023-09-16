% function [p] = waterfilling1(snr,P)
% M = 1e4;
% lambda_axis = linspace(1e-15,5,M);
% Pn = max(1./lambda_axis - (1./snr)' ,0);
% ind = find(sum(Pn) < P+1e-3 & sum(Pn) > P-1e-3 );
% p = (Pn(:,ind))';
% end

function [p] = waterfilling2(snr,P)
M = 1e8;
lambda_axis = linspace(1e-15,5,M);
Pn = max(1./lambda_axis - (1./snr)' ,0);
ind = find(sum(Pn) < P+0.1 & sum(Pn) > P-0.1 );
pilk = (Pn(:,ind))';
p = mean(pilk);
end


