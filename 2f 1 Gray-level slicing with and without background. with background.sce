clc; 
clear all;
p=imread('D:\IMAGE PROCESSING PRAITICALS\cameraman.jpg'); 
z=double(p);
[row col]=size(p); 
for i=1:1:row
for j=1:1:col 
if(z(i,j)>50)&&(z(i,j)<150) 
z(i,j)=255;
else 
z(i,j)=p(i,j); 
end
end 
end
subplot(2,2,1); 
imshow(p); 
title("Original Image"); 
subplot(2,2,2); 
imshow(uint8(z));
title("Gray level slicing with background");
