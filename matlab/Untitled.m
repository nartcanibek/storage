%soru 1

A = [1 2 3 4;
    4 5 6 7;
    4 5 6 8]
S = sum(A,2);
[SumMaxRow,maxRow] = max(S);

%soru 2
Mat = magic (5);
n = 5;
k = -5;
l = 5;

    

%soru 3

B = [1 1 1 1;
    1 0 0 0;
    1 0 0 0;
    1 0 0 0]

Balt = B(2:end,2:end);
[row,column] = size(B);
CarpimMatrisi = rand(row-1,column-1);
Sonuc = Balt * CarpimMatrisi;



% soru 4
C = [1 2 3 4;
    4 5 6 7]
Csize = size(C);
Calt = flip(C,1);
Calt = flip(Calt,2);

%soru 5
 for i = 1:n;
    
     B = [1 1 1 1;
    1 0 0 0;
    1 0 0 0;
    1 0 0 0] 
   
