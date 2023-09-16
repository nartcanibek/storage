clear all,close all,clc;
%% define the parameters
p1=1;
p2=1;
p3=1;
%% define the PLANT
Plant=tf([1,p3],[1,p1,p2]);
%% Find P-AUG(augmented)
Plant.u='u';
Plant.y='y';
Summer_1=sumblk('e=r-y');
P_aug = connect(Plant,Summer_1,{'r','u'},{'e','u','e'});
zpk(P_aug)
P_aug.u={'w','u'}
P_aug.y={'z1','z2','y'}
%% Find K(s)
% P_aug=[1,-Plant;0,1;1,-Plant];
% [K,CL,gamma] = hinfsyn(P,nmeas,ncont)
[K,CL,gamma] = hinfsyn(P_aug,1,1);
K.u='y';
K.y='u';
% tf(K)
% zpk(K)
zpk(minreal(CL))
% sigma(CL)
%% Find Tzw(s)
Tzw=connect(P_aug,K,{'w'},{'z1','z2'})
zpk(Tzw)
zpk(minreal(Tzw))
%% Find GAMMA
% [ninf,fpeak] = hinfnorm(sys,tol)
[GAMMA,fpeak] = hinfnorm(Tzw,1e-3)
%%
% p_range=[p_min,p_max]
p1_range=[p1-0.01,p1+0.01]
p2_range=[p2-0.01,p2+0.01]
p3_range=[p3-0.01,p3+0.01]
p1_vec=linspace(p1_range(1),p1_range(2),10);
p2_vec=linspace(p2_range(1),p2_range(2),10);
p3_vec=linspace(p3_range(1),p3_range(2),10);
max_Tzw_norm=0;
for i_1=1:1:length(p1_vec)
 for i_2=1:1:length(p2_vec)
 for i_3=1:1:length(p3_vec)
 p1_temp=p1_vec(i_1);
 p2_temp=p2_vec(i_2);
 p3_temp=p3_vec(i_3);
 % construct PLANT_temp
 Plant_temp=tf([1,p3_temp],[1,p1_temp,p2_temp]);
 % construct PAUG_temp
 Plant_temp.u='u';
 Plant_temp.y='y';
 Summer_1=sumblk('e=r-y');
 P_aug_temp = connect(Plant_temp,Summer_1,{'r','u'},{'e','u','e'});

 P_aug_temp.u={'w','u'};
 P_aug_temp.y={'z1','z2','y'};
% P_aug_temp=[1,-Plant_temp;0,1;1,-Plant_temp];
 % construct Tzw_temp
 Tzw_temp=connect(P_aug_temp,K,{'w'},{'z1','z2'});
 %Tzw_temp=lft(P_aug_temp,K,1,1);
 % compute "norm of Tzw_temp"
 Tzw_norm_temp=hinfnorm(Tzw_temp);
 if Tzw_norm_temp>max_Tzw_norm
 disp([p1_temp,p2_temp,p3_temp,Tzw_norm_temp]);
 if max_Tzw_norm==Inf
 return;
 end
 end
 max_Tzw_norm=max([max_Tzw_norm,Tzw_norm_temp]);
 end
 end
end
max_Tzw_norm;
