clear all,close all,clc;
p1=1
p2=1
p3=1
p4=-1
% p_range=[p_min,p_max]
p1_range=[p1-0.1,p1+0.1]
p2_range=[p2-0.1,p2+0.1]
p3_range=[p3-0.1,p3+0.1]
p4_range=[p4-0.1,p4+0.1]
p1_vec=linspace(p1_range(1),p1_range(2),10);
p2_vec=linspace(p2_range(1),p2_range(2),10);
p3_vec=linspace(p3_range(1),p3_range(2),10);
p4_vec=linspace(p4_range(1),p4_range(2),10);
w_vec=logspace(0,2,20); % w_vec={1e1,1e2}
mag_matrix=zeros(length(p1_vec)*length(p2_vec)*length(p3_vec)*length(p4_vec),...
 length(w_vec));
ii=1;
for i_1=1:1:length(p1_vec)
 for i_2=1:1:length(p2_vec)
 for i_3=1:1:length(p3_vec)
 for i_4=1:1:length(p4_vec)
 p1_temp=p1_vec(i_1);
 p2_temp=p2_vec(i_2);
 p3_temp=p3_vec(i_3);
 p4_temp=p4_vec(i_4);
 Plant_temp=tf([1,p4_temp],conv(conv([1,p1_temp],[1,p2_temp]),[1,p3_temp]));
% [mag,phase,wout] = bode(sys,w)
 [mag,phase,wout] = bode(Plant_temp,w_vec);
mag=squeeze(mag)';
mag_matrix(ii,:)=mag;
ii=ii+1;
 end
 end
 end
end
%% PLOTTING THE BODE DIAGRAMS
for ii=1:1:size(mag_matrix,1)
 semilogx(w_vec,20*log10(mag_matrix(ii,:)),...
 'Color',[0,0,1],...
 'LineStyle','--',...
 'LineWidth',[.5]); hold on;
end
setfield(gcf,'Color',[1,1,1]);
xlabel('Freq (rad/s)');
ylabel('Magnitude (dB)');