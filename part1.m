clc 
clear all
clf

pkg load image; 

file_name = 'muct76.csv';

fileID = fopen(file_name, 'r');

%%size = [150 7511];
landmarks = dlmread(fileID, ',');

Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qa-fn.jpg');

imagesc(Images);

colormap('gray');

%%standard face triangle
x = [50; -75;1];
y = [1; -20;1];
z = [75; -20;1];
stdface = [x, y, z];

%%transformation 1
A1 = [55, -24, 90; -75, -16, -28;1,1,1];
T1 = stdface * inv(A1);

%%transformation 2
A2 = [30, -30, 58; -75,-35,-23;1,1,1];
T2 = stdface * inv(A2);

%%transformation 3
A3 = [

%%coordinate transformation: maps input triangle to standard triangle
%%x' = x *cos(theta) + y*cos(theta);
%%y' = -x *sin(theta) + y*cos(theta);
%%z' = z;

fclose(fileID);