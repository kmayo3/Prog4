%%clear everything before it is run
clc
clear all
clf

%%image package
pkg load image; 

%%read in two images to be blended
A = imread('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct.jpg/i000qa-fn.jpg');
B = imread('C:\Users\Katlyn\Documents\GitHub\Prog4\small_muct.jpg/i000qb-fn.jpg');

%%create a blended
%%referenced from http://www.mathworks.com/help/images/ref/imfuse.html
C = imfuse(A,B,'blend', 'Scaling', 'joint');

%%write the matrix into the file
imwrite(C, 'meshed_image.jpg');

%%display the image
imshow(C);