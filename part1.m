%%clear everything before it is run
clc 
clear all
clf

%%image package
pkg load image; 

%%set file name to the muct76.csv file
file_name = 'muct76.csv';

%%open and read the muct76 file
fileID = fopen(file_name, 'r');

%%gets the image
scrimage = dir('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\*.jpg');
fileimages = strcat('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\', scrimage);

Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\jpg');

%%displays the matrix as a color image
imagesc(Images);

%%sets the current colormap to gray
colormap('gray');

%%standard face triangle
x = [50; -75;1];
y = [1; -20;1];
z = [75; -20;1];
stdface = [x, y, z];

%%transformation 1
A1 = [55, 1, 90; -75, -24, -10;1,1,1];
T1 = stdface * inv(A1);

%%transformation 2
A2 = [30, -30, 58; -91,-35,-23;1 1 1];
T2 = stdface * inv(A2);

%%transformation 3
A3 = [87, 22, 99; -85, -31, -21;1,1,1];
T3 = stdface * inv(A3);

%%transformation 4
A4 = [11, -41, 47; -38, 6, 13;1,1,1];
T4 = stdface * inv(A4);

%%transformation 5
A5 = [51, 1, 88; 51, 1, -44;1,1,1];
T5 = stdface * inv(A5);

%%transformation 6
A6 = [50, -1, 96; -62, -7, -4;1,1,1];
T6 = stdface * inv(A6);

%%transformation 7
A7 = [60, -1, 95; -77, -1, -18;1,1,1];
T7 = stdface * inv(A7);

%%transformation 8
A8 = [168, 100, 182; -71, -14, -13;1,1,1];
T8 = stdface * inv(A8);

%%transformation 9
A9 = [6, -42, 54; 29, -42, 69;1,1,1];
T9 = stdface * inv(A9);

%%transformation 10
A10 = [47, -2, 92; -141, -82, -83;1,1,1];
T10 = stdface * inv(A10);

%%coordinate transformation: maps input triangle to standard triangle
%%x' = x *cos(theta) + y*cos(theta);
%%y' = -x *sin(theta) + y*cos(theta);
%%z' = z;

%%warp geometric transformation 't' to images 1-10
M = 10;

for i:10

B = imwarp(Images,T1)

imshow(B)

endfor

fclose(fileID);