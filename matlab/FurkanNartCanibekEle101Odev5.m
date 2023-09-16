%SORU 1 A Şıkkı
country = ['Algeria'];
year = ['2017'];
load('infimfchange.mat');
b = strcmp (country,infimfchange);
[b1,~] = find(b);
b(b1,:) = 1;
c = strcmp (year,infimfchange);
[~,c1] = find(c);
c(:,c1) = 1;
d = b.*c;
[row,column] = find(d);
inflation_of_country = infimfchange(row,column);

%SORU 1 B Şıkkı
continent = ['Asia'];
year = ['2017'];
f = strcmp (continent,infimfchange);
[f1,~] = find(f);
f(f1,:) = 1;
g = strcmp (year,infimfchange);
[~,g1] = find(g);
g(:,g1) = 1;
h = f.*g;
infimson = str2double(infimfchange);
found = h.*infimson;
found = found(:,g1);
found2 = find(found);
vector_of_infs = infimson(found2,g1);
histogram(vector_of_infs);
standart_deviation_of_infs = std (vector_of_infs); 
mean_of_infs = mean(vector_of_infs);

%SORU 2 A Şıkkı
time_between_customers = exprnd(1,1,100);
moments_of_arrivals = cumsum(time_between_customers);

%SORU 2 B Şıkkı
de = find(moments_of_arrivals<10);
customers_under10 = de(1,end);

%SORU 2 C Şıkkı
repeats = 1:1000;
time_between_customers2  = exprnd(1,1000,100);
moments_of_arrivals2 = cumsum(time_between_customers2,2);


