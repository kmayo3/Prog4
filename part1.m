clc 
clear all
clf

pkg load image; 

file_name = 'muct76.csv';

fileID = fopen(file_name, 'r');

%%size = [150 7511];
landmarks = dlmread(fileID, ',');
 

for i = 1:10;

Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qa-fn.jpg');

imagesc(Images);

colormap('gray');

endfor

%%standard face triangle
x = [50, -75];
y = [1, -20];
z = [75, -20];

stdface = [x y z];

%%find triangle in input image's coordinates
tricoor = [landmarks];

%%define affine map from standard to input



%%affine transformation
%%tform = affine3d();
%%A = [a b c 0; d e f 0; g h i 0; j k l 1];

%%coordinate transformation: maps input triangle to standard triangle
%%x' = x *cos(theta) + y*cos(theta);
%%y' = -x *sin(theta) + y*cos(theta);
%%z' = z;

fclose(fileID);