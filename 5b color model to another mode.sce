clc; 
clear all; 
close all;
a = imread('D:\IMAGE PROCESSING PRAITICALS\cameraman.jpg'); 
figure(1),imshow(a); 
title('Orignal Image'); 
k=rgb2ntsc(a); 
figure(2),imshow(k); 
title('RGB TO NTSC');
l=rgb2ycbcr(a); 
figure(3),imshow(l); 
title('RGB TO YCbCr');
m=imcomplement(a); 
figure(4),imshow(m); 
title('RGB TO CMY');
imr=a(:,:,1);
img=a(:,:,2);
imb=a(:,:,3); 
figure(5),imshow(imr); 
figure(6),imshow(img); 
figure(7),imshow(imb); 
I=(imr+img+imb)/3; 
[m,n]=size(imr);
for c=1:m 
    for d=1:n
        min1=min(imr(c,d),img(c,d)); 
        min2=min(min1,imb(c,d));
        S(c,d) = 1-(3/(imr(c,d)+img(c,d)+imb(c,d)))*min2; 
        end
    end
for c=1:m for d=1:n
temp= (0.5*(imr(c,d)-img(c,d))+(imr(c,d)- imb(c,d)))/sqrt(double(imr(c,d)*imr(c,d)+(imr(c,d)-imb(c,d))*(img(c,d)-imb(c,d)))); 
H(c,d)=acos(double(temp));
end 
end
for c=1:m 
    for d=1:n
finali(c,d,1)=I(c,d);
finali(c,d,2)=S(c,d);
finali(c,d,3)=H(c,d); 
end
end 
figure(8),imshow(finali); 
title('Final image');
