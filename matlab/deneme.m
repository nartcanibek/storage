syms a b
eq = [0.5 0.8 ; 0.8 1] * [a;b] == [-0.805 ; 0.593];
[a_son,b_son] = solve (eq,a,b);

son_1 = a_son / sqrt((a_son)^2 + (b_son)^2) ; 

son_2 = b_son / sqrt((a_son)^2 + (b_son)^2) ; 


