%%clear everything before it is run
clc
clear all
clf
%%read images to be meshed
%%gets the image
%%scrimage = dir('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\*.jpg');
%%fileimages = strcat('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct\', scrimage);


%%define a triangulation
x = [-55 47 132 56 1 90 4 80 21 50];
y = [-78 -187 -85 -72 -100 -18 -110 -112 -70 -55];

triangle = delaunay(x,y)
hold on, triplot(triangle,x,y), hold off

%%output the triangle that p lives in
tetramesh(triangle,x,y);

%%mesh points define a standard reference
stdref = [7 2 1; 8 2 3; 8 4 3; 8 7 2; 8 7 4; 6 4 3; 9 7 4; 5 7 1; 5 9 1; 5 9 7; 10 6 4; 10 9 4; 10 6 1; 10 9 1];

%%set triangle to be first in triangulation

%%perform triangle inclusion test for p and current triangle 