clc
clear all
clf
pkg load image; 
%%read in two images to be blended
A = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qa-fn.jpg');
B = imread('C:\Users\Maegen\Documents\cs 1300\Prog4\small_muct.jpg/i000qb-fn.jpg');

%%create a blended
%%referenced from http://www.mathworks.com/help/images/ref/imfuse.html

C = imfuse(A,B,'blend', 'Scaling', 'joint');

imwrite(C, 'meshed_image.jpg');
imshow(C);