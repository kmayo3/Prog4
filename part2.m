clc
clear all
clf
%%set file name to the muct76.csv file
file_name = 'muct76.csv';

%%open and read the muct76 file
fileID = fopen(file_name, 'r');

%%gets the image
%%scrimage = dir('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\*.jpg');
%%fileimages = strcat('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\', scrimage);

%%Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct\jpg');

%%sets the size for the matrix
%%size = [150 7511];

%%read in the landmarks
landmarks = dlmread(fileID, ',');

%%gets the image
%%Images = imread('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct.jpg/i000qa-fn.jpg');


%%displays the matrix as a color image
%%imagesc(Images);

%%standard face triangle
%%formed by averaging the x and y values from the first ten pictures
%%x2,x7,x12,x67,x31,x36,x48,x54,x39,x43
%%y2, y7, y12, y67, y31, y36, y48, y54, y39, y43

x = [-55 47 132 56 1 90 4 80 21 50];
y = [-78 -187 -85 -72 -100 -18 -110 -112 -70 -55];

stdface = [x;y];

%%normalizing images 
%%reference to pg 270
%%A'Au = A'*stdface

%%Form A matrix on ten images

A1 = [-38 52 127 55 1 90 11 89 24 81; -88 -181 127 -75 -24 -16 -111 -106 -79 -72];

u1 = 