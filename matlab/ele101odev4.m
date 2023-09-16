clc
resim = imread('ele101odev4.png');
dresim = resim(:,:,1);
dresim (dresim < 255) = 0;
[row,col] = find(dresim==0);
start_row = min(row);
end_row = max(row);
start_col = min(col);
end_col = max(col);

middle_row = 0.5 * (end_row - start_row) + start_row ;
middle_col = 0.5 * (end_col - start_col) + start_col ;
white_start_row = 0.25 * (end_row - start_row) + start_row ;
white_end_row = 0.75 * (end_row - start_row) + start_row ;
white_start_col = 0.25 * (end_col - start_col) + start_col ;
white_end_col = 0.75 * (end_col - start_col) + start_col ;

middle_row = round(middle_row);
middle_col = round(middle_col);
white_start_row =round(white_start_row);
white_end_row = round(white_end_row);
white_start_col = round(white_start_col);
white_end_col = round(white_end_col);

resim(start_row:middle_row,start_col:middle_col,1) = 255;
resim(start_row:middle_row,start_col:middle_col,2) = 255;
resim(start_row:middle_row,start_col:middle_col,3) = 0;

resim(start_row:middle_row,middle_col:end_col,1) = 255;
resim(start_row:middle_row,middle_col:end_col,2) = 0;
resim(start_row:middle_row,middle_col:end_col,3) = 0;

resim(middle_row:end_row,start_col:middle_col,1) = 0;
resim(middle_row:end_row,start_col:middle_col,2) = 0;
resim(middle_row:end_row,start_col:middle_col,3) = 255;

resim(middle_row:end_row,middle_col:end_col,1) = 0;
resim(middle_row:end_row,middle_col:end_col,2) = 255;
resim(middle_row:end_row,middle_col:end_col,3) = 0;

resim(white_start_row:white_end_row,white_start_col:white_end_col,1) = 255;
resim(white_start_row:white_end_row,white_start_col:white_end_col,2) = 255;
resim(white_start_row:white_end_row,white_start_col:white_end_col,3) = 255;
resim_son = resim;
imwrite(resim_son,'son.png')
imshow('son.png');