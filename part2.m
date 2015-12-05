%%clear everything before it is run
clc
clear all
clf

%%set file name to the muct76.csv file
file_name = 'muct76.csv';

%%open and read the muct76 file
fileID = fopen(file_name, 'r');

%%read in the landmarks
landmarks = dlmread(fileID, ',');

scrimage = dir('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\*.jpg');
%%fileimages = strcat('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\', scrimage);

Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qa-fn.jpg');

%%standard face triangle
%%formed by averaging the x and y values from the first ten pictures
%%x2,x7,x12,x67,x31,x36,x48,x54,x39,x43
%%y2, y7, y12, y67, y31, y36, y48, y54, y39, y43

x = [-55 47 132 56 1 90 4 80 21 50];
y = [-78 -187 -85 -72 -100 -18 -110 -112 -70 -55];

%%set the standard matrix
stdface = [x;y];

%%normalizing images 
%%reference to pg 270
%%A'Au = A'*stdface

%%Form A matrix on ten images
A1 = [-38 52 127 55 1 90 11 89 24 81; -88 -181 127 -75 -24 -16 -111 -106 -79 -72];

%%solve for the unknown U in order to get the least squares solution
u1 = inv(A1' * A1) * A1' * stdface;

%%apply u to image 

%%Form A matrix on ten images
A2 = [-80 19 84 30 -30 58 -27 54 -6 45; -98 -197 -95 -91 -35 -28 -125 -120 -89 -83];

%%solve for the unknown U in order to get the least squares solution
u2 = inv(A2' * A2) * A2' * stdface;

%%Form A matrix on ten images
A3 = [-40 63 115 87 22 100 22 94 45 0; -87 -191 -95 -85 -31 -24 -121 -115 -81 0];

%%solve for the unknown U in order to get the least squares solution
u3 = inv(A3' * A3) * A3' * stdface;

%%Form A matrix on ten images
A4 = [-86 2 85 11 -41 48 -36 44 -20 36; -53 -162 -58 -38 6 7 -85 -86 -46 -43];

%%solve for the unknown U in order to get the least squares solution
u4 = inv(A4' * A4) * A4' * stdface;

%%Form A matrix on ten images
A5 = [-37 44 118 51 1 90 7 84 22 76; -113 -198 -112 -110 -54 -48 -134 -131 -105 -101];

%%solve for the unknown U in order to get the least squares solution
u5 = inv(A5' * A5) * A5' * stdface;

%%Form A matrix on ten images
A6 = [-58 37 128 50 -1 95 2 80 14 75; -70 -187 -80 -62 -7 -10 -103 -108 -60 -62];

%%solve for the unknown U in order to get the least squares solution
u6 = inv(A6' * A6) * A6' * stdface;

%%Form A matrix on ten images
A7 = [-72 47 118 60 -1 94 0 78 20 80; -77 -202 -95 -77 -17 -22 -116 -124 -70 -73];

%%solve for the unknown U in order to get the least squares solution
u7 = inv(A7' * A7) * A7' * stdface;

%%Form A matrix on ten images
A8 = [20, 143 199 168 100 182 102 168 122 0; -69 -194 -88 -71 -14 -18 -110 -118 -63 0];

%%solve for the unknown U in order to get the least squares solution
u8 = inv(A8' * A8) * A8' * stdface;

%%Form A matrix on ten images
A9 = [-102 -19 86 6 -42 53 -42 34 -27 33; 17 -108 -5 29 75 63 -20 -33 27 19];

%%solve for the unknown U in order to get theleast squares solution
u9 = inv(A9' * A9) * A9' * stdface;

%%Form A matrix on ten images
A10 = [-61 27 117 47 -2 93 -4 74 12 70; -143 -249 -151 -141 -82 -86 -172 -179 -135 -139];

%%solve for the unknown U in order to get the least squares solution
u10 = inv(A10' * A10) * A10' * stdface;