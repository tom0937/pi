clc; 
clear all; 
close;
img=imread("D:\IMAGE PROCESSING PRAITICALS\lena.png"); 
figure ();
title("Original Image"); 
imshow(img); 
img_gray=rgb2gray(img); 
img_double=im2double(img_gray); 
[m,n]=size(img_gray);
for x=1:m 
for y=1:n
c(x,y)=exp((-2*%i*%pi*((x-1)*(y-1)))/m); 
end
end 
dft=c*img_double*inv(c); 
res=dft;
dft=fftshift(dft); 
dft=abs(dft); 
figure();
title('DFT of an image using code'); 
imshow(dft);
idfv=inv(c)*res*c; 
res_idft=abs(idfv); 
figure();
title("IDFT of an image using code"); 
imshow(res_idft);
