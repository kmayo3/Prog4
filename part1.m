clc 
clear all
clf

pkg load image; 

file_name = 'muct76.csv';

fileID = fopen(file_name, 'r');

landmarks = dlmread("file_name.csv", '%s %d');


fclose(fileID);

 for i = 1:10;
%%set matrix to specific size

Images = imread(strcat('small-muct./jpg', char(landmarks(i))));

I2 = im2double(Images);
imshow(I2);
B = imagesc(reshape(T, 250, 250));

colormap('gray');

endfor