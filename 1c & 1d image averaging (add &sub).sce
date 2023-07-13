clc; 
clear all;
A=imread("D:\IMAGE PROCESSING PRAITICALS\lenababy.jpg"); 
B=imread("D:\IMAGE PROCESSING PRAITICALS\abirbaby.jpg"); 
A=rgb2gray(A); 
B=rgb2gray(B); 
C=imadd(B,A); 
D=imsubtract(B,A); 
figure(1);
subplot(2,2,1); 
imshow(A); 
subplot(2,2,2);
imshow(B); 
subplot(2,2,3); 
imshow(C); 
subplot(2,2,4); 
imshow(D);
//1024x768 images 
