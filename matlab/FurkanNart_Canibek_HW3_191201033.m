hold on; 

%a şıkkı
%PDF
x=(1:100);
y=(exp(-x/30))/30;
plot(x,y);
%CDF
y=1-exp(-x/30);
plot(x,y);


%b1 şıkkı
%15.05 te bitme olasılığı 
b1=1-exp(-35/30)-(1-exp(-34/30));
y=zeros(1,1000);
for v = 1.0:+1.0:1000.0
if v>1
r = rand;
if r<=b1
  y(1,v)=y(1,v-1)+1;
else
y(1,v)=y(1,v-1);
end
else
r = rand;
if r<=b1
  y(1,1)=1;
end
end
end
x=(1:1000);
plot (x,y,'--');


%b2 şıkkı
%15.00 ile 15.10 arası bitirme olasılığı
b2=1-exp(-40/30)-(1-exp(-30/30));
y=zeros(1,1000);
for v = 1.0:+1.0:1000.0
if v>1
r = rand;
if r<=b2
  y(1,v)=y(1,v-1)+1;
else
y(1,v)=y(1,v-1);
end
else
r = rand;
if r<=b2
  y(1,1)=1;
end
end
end
x=(1:1000);
plot (x,y,'--');

%c şıkkı
%dersin ikinci bölümünün 25 dakikadan uzun olma olasılığı 1-Fx(25)
c=1-(1-exp(-25/30));
y=zeros(1,1000);
for v = 1.0:+1.0:1000.0
if v>1
r = rand;
if r<=c
  y(1,v)=y(1,v-1)+1;
else
y(1,v)=y(1,v-1);
end
else
r = rand;
if r<=c
  y(1,1)=1;
end
end
end
x=(1:1000);
plot (x,y,':');

%e şıkkı
%İkinci dersin 15.05 ile 15.30 arası bitme olasılığı
e = (1-(exp(-55/30)+(55/30).*exp(-55/30)))- (1-(exp(-30/30)+(30/30).*exp(-30/30)));
%PDF
x=(1:100);
y=(1/30)*(1/30)*x.*exp(-x/30);
plot(x,y,'.');
%CDF (2 bölümden oluşan dersin toplam en fazla x dakika sürme olasılığı)
y=1-(exp(-x/30)+(x/30).*exp(-x/30));
plot(x,y,'.');

