clear all; 
clc;
itemp=imread('D:\IMAGE PROCESSING PRAITICALS\lenababy.jpg'); 
r=double(itemp)/255;
c=1;
gamma=0.6; 
// dark image >1 , light image <1 
s=c*(r).^gamma; 
subplot(2,2,1),imshow(uint8(itemp)),title('Original Image'); 
subplot(2,2,2),imshow(s),title('Power Law transformed image');
