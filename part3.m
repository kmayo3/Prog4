%%clear everything before it is run
clc
clear all
clf
%%read images to be meshed
%%gets the image
scrimage = dir('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\*.jpg');
%%fileimages = strcat('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\', scrimage);

Images = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qa-fn.jpg');

%%define a triangulation
x = [-55 47 132 56 1 90 4 80 21 50];
y = [-78 -187 -85 -72 -100 -18 -110 -112 -70 -55];

%%
triangle = delaunay(x,y)
hold on, triplot(triangle,x,y), hold off

%%output the meshed triangle 
tetramesh(triangle,x,y);

%%mesh points define a standard reference
stdref = [7 2 1; 8 2 3; 8 4 3; 8 7 2; 8 7 4; 6 4 3; 9 7 4; 5 7 1; 5 9 1; 5 9 7; 10 6 4; 10 9 4; 10 6 1; 10 9 1];

%%set triangle to be first in triangulation

%%perform triangle inclusion test for p and current triangle 

%%define a tin 

%%use images 1-10 and apply standard reference in order to align
%%Form A matrix on ten images
A1 = [-38 52 127 55 1 90 11 89 24 81; -88 -181 127 -75 -24 -16 -111 -106 -79 -72];

%%T1 = A1 * stdref;
%%imshow(images,T);
