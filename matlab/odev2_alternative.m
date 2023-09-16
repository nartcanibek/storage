data = [1 4;
        2 2;
        3 6;
        4 1;
        5 7]

[datarow,~] = size(data)    
ki = zeros(1,5); 

for i = 1:datarow-1
    %ki(i) = (2*(data(i,2)*(data(i,1) - data(i+1,1))))/(data(i,1) - data(i+1,1))^2;
    %ki(i+1) = (-2*(data(i+1,2)*(data(i,1) - data(i+1,1))))/(data(i+1,1) - data(i,1))^2;
    ki(i+1)=((2*(data(i,2)-data(i+1,2)))/(data(i,1)-data(i+1,1))) - ki(i)
    
end

%S = solve(eqn,ki)
%fx = zeros(datarow-1,1)
syms fx 
syms x 

 for a = 1:datarow-1
    
     fx(a) = (((ki(a)*(x-data(a+1,1))^2)) - (ki(a+1)*(x-data(a,1))^2))/(2*(data(a,1)-data(a+1,1))) + (2*data(a,2)-ki(a)*(data(a,1)-data(a+1,1)))/2
 
 end
 
 coefficents = zeros(datarow-1,3)

 for b = 1:datarow-1
    
     
    coefficents (b,:) = coeffs(fx(b))
   
 end
 
 syms y(x)
 for index = 1:datarow-1
 
 y(x) = piecewise(data(index,1)<x<data(index+1,1),fx(index))
 hold on
 fplot (x,y(x))
 
 end