x = [0,50,200];
y = [50,60,250];
syms i a b c;
eqn1 = 2*(y(1)-exp(a*x(1))-b*x(1)+c)(-x(1)*exp(a*x(1))) +  2(y(2)-exp(a*x(2))-b*x(2)+c)(-x(2)*exp(a*x(2))) +  2(y(3)-exp(a*x(3))-b*x(3)+c)*(-x(3)*exp(a*x(3)))== 0;
eqn2 = 2*(y(1)-exp(a*x(1))-b*x(1)+c)(-x(1)) +  2(y(2)-exp(a*x(2))-b*x(2)+c)(-x(2)) +  2(y(3)-exp(a*x(3))-b*x(3)+c)*(-x(3))== 0;
eqn3 = 2*(y(1)-exp(a*x(1))-b*x(1)+c) +  2*(y(2)-exp(a*x(2))-b*x(2)+c) +  2*(y(3)-exp(a*x(3))-b*x(3)+c)== 0;
eqns = [eqn1 eqn2 eqn3];
S = solve(eqns,[a b c]); % a b c bulunur
f0 = exp(S.a*x(1))+S.b*x(1) + S.c;
f50 = exp(S.a*x(2))+S.b*x(2)+S.c;
f200 = exp(S.a*x(3))+S.b*x(3)+S.c; % x değerlerine karşılık gelen y değerleri bulunur


