function [k] = fonk4(a,b,c,d)
syms x y
eqn = [a b;c d] * [x;y] == [0.909;-0.386];
k = vpasolve(eqn,[x y]);

end

