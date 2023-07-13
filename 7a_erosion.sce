clc; clear all;
a=imread('B:\leena.png');
 a=rgb2gray(a); subplot(2,1,1); imshow(a);
title('org img');
A1=a;
d=a; 
[r,c]=size(d);
m=[1 1 1;1 1 1;1 1 1];
m=ones(5,5); 
for i=2:1:r-1 
    for j=2:1:c-1
new=[(m(1)*d(i-1,j-1)) (m(2)*d(i-1,j)) (m(3)*d(i-1,j+1)) (m(4)*d(i,j-1)) (m(5)*d(i,j)) (m(6)*d(i,j+1)) (m(7)*d(i+1,j-1)) (m(8)*d(i+1,j)) (m(9)*d(i+1,j+1))]; 
A1(i,j)=min(new);
end 
subplot(2,1,2);
title('org img');imshow(A1);
end
title('Processed Image - Erosion'); 
