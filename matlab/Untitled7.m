syms x y 
eqn1 = 1/(2*y) + x == 2
eqn2 =  1/x - y == 0.5
eqns = [eqn1 eqn2]
s = solve(eqns,[x y]);

