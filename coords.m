%clc
%clear all

XX = [632, 632,  582,  582,  380,  380, 432, 432, 682,  632,  430, 482];
YY = [ 69,  69, -130, -130, -181, -181, 118, 118,  19, -180, -231,  68];
ZZ = [  0,  50,    0,   50,    0,   50,   0,  50   50,   50,   50,  50];
X = [XX' YY' ZZ'];
Xcenter = [ 657,   44, 25;  % blue
            607, -155, 25;  % black
            405, -206, 25;  % green
            457,   93, 25]; % red

figure;
imshow(imread('test_image_11.tiff'));
[xx,yy, button] = ginput(size(X,1));
x = [xx,yy];


X2 = [633,   30,  0;
      633,   30, 50;
      582, -182,  0;
      582, -182, 50;
      432, -130,  0;
      432, -130, 50;
      382,   70,  0;
      382,   70, 50;
      683,  -20, 50;
      632, -232, 50;
      482, -180, 50;
      432,   20, 50];
  
X2center = [658,    5, 25;
            607, -207, 25;
            457, -155, 25;
            407,   45, 25];


 figure;
 imshow(imread('test_image_12.tiff'));
 [xx2,yy2, button2] = ginput(12);%size(X,1));
 x2 = [xx2,yy2];

 
 save calibration_coords.mat X x 
 %Xcenter
 save test_coords.mat x2 
 %X2center