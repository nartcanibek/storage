x = [0,50,200];
y = [50,60,250];
syms i a b c;
eqn1 = 360 + 50*50*a + 50*b + 50*exp(50*c) + 200*200*a + 200*b + 200*exp(200*c);
eqn2 = 50 - b - 1 + 60 - 50*a - b - exp(50*c) + 250 - 200*a - b - exp(200*c);
eqn3 = 360 + 50*50*exp(50*c)*a + 50*exp(50*c)*b + 50*exp(100*c) + 200*200*exp(200*c)*a + 200*exp(200*c)*b + 200*exp(400*c);
eqns = [eqn1 eqn2 eqn3];
S = vpasolve(eqns,[a b c]); % a b c bulunur
