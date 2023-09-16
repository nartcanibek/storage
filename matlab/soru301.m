T_1=tf([1],[1,3,2]); % define the TransferFunction "1/(s^2+3s+2)"
[y,t] = step(T_1,[20]); % get the step response for "20 seconds"
fig1=figure(1);
plot(t,y,'LineWidth',[2],'Color','b');
xlabel('t(sec)');
ylabel('y(t)');
fig1.Color=[1,1,1]; % to make the background "white"
title('step response of the system');
grid on;

