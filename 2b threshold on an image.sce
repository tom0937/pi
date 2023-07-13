clc,
clear all; 
p=imread('D:\IMAGE PROCESSING PRAITICALS\cameraman.jpg'); 
a=p;
[row col]=size(a);
T=input('Enter Value of the Threshold:'); //Value of threshold 50
for i=1:1:row for j=1:1:col
if(p(i,j)<T)
a(i,j)=0; else
a(i,j)=255;
end 
end
end 
subplot(1,2,1); imshow(p);
title('Original Image'); subplot(1,2,2); imshow(a);
title('Image obtained using threshold')
