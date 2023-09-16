function  [y] = fonk2(x1,x3,f1,f2,f3)
y = x3 + (x3-x1)  * (f3/(sqrt(f3^2-f1*f2)));
end

