 %resim = imread('akiyo.png');
% % size(resim)
 %clc
% % whos resim
% % resim(1,1)
% % imshow(resim)
% % imwrite(resim,'akiyo2.png')
% % imwrite(resim,'akiyo5.jpg','quality',50)
% % imwrite(resim,'akiyo6.jpg','quality',5)
% % resim2 = imread('akiyo6.jpg');
% % imshow(resim2)
% gresim = rgb2gray(resim);
% dresim = im2double(resim);
% dresim(1,1)
% A = [ 1 2 3 ; 4 5 6 ; 7 8 9 ];
% A ( 2 , 3 );
% T2 = A ( [ 1 2 ] , [ 1 2 3 ] )
%  T3=A ( 1 : 2 , 1 : 3 );
%  C3 = A ( : , 3 );
%  R2 = A ( 2 , : );
%  B = A;
%  B ( :, 3 ) = 0;
% % A( end , end )
%  v = T2 ( : )
%  colsums = sum (A);
% % D = logical ([ 1 0 0 ; 0 0 1 ; 0 0 0]);
% % A ( D ) = [ 30 40 ];
% % H = hilb ( 4 );
% % r = [ 1 2 4 ] ;
% % c = [ 3 4 3 ];
% % H ( r , c )
%   fp = gresim ( end : -1 : 1 , :,: ) ;
%  imshow(fp)
%  whos gresim
% dgresim = im2double(gresim);
% whos dgresim
% max(max(dgresim))
% max(max(dgresim))
% resim = imread('akiyo.png');
% imshow(resim)
% resim(:,:,2:3) = 0;
% imshow(resim)
resim = imread('akiyo.png');
cresim = resim;
cresim(144:end,:,1:2) = 0;
imshow(cresim)
% R = find(A>4)
% A(R) = 42
% A(A>4) = 42
% A = [ 1 2 3 ; 4 5 6 ; 7 8 9 ];
% A(A>4) = 42
% A = [ 1 2 3 ; 4 5 6 ; 7 8 9 ];
% A(R) = 42
% A = [ 1 2 3 ; 4 5 6 ; 7 8 9 ];
%  resim(1,1,:)
%  
% 

