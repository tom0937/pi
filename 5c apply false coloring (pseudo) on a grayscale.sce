clc; 
clear all;
a=imread('‪D:\IMAGE PROCESSING PRAITICALS\cameraman.jpg'); 
[l,m,n]=size(a);
for i=1:l 
    for j=1:m for k=1:n
if a(i,j)>=0 & a(i,j) < 50 b(i,j,1)=a(i,j,1)+50;
b(i,j,2)=a(i,j,1)+100;
b(i,j,3)=a(i,j,1)+10;
end
if a(i,j)>=50 & a(i,j) < 100 b(i,j,1)=a(i,j,1)+35;
b(i,j,2)=a(i,j,1)+128;
b(i,j,3)=a(i,j,1)+10;
end
if a(i,j)>=100 & a(i,j) < 150 b(i,j,1)=a(i,j,1)+152;
b(i,j,2)=a(i,j,1)+130;
b(i,j,3)=a(i,j,1)+15;
end
if a(i,j)>=150 & a(i,j) < 200 b(i,j,1)=a(i,j,1)+50;
b(i,j,2)=a(i,j,1)+140;
b(i,j,3)=a(i,j,1)+25;
end
if a(i,j)>=200 & a(i,j) < 256 b(i,j,1)=a(i,j,1)+120;
b(i,j,2)=a(i,j,1)+160;
b(i,j,3)=a(i,j,1)+45;
end 
end 
end 
end
subplot(1,2,1),imshow(a),title('Original'); 
subplot(1,2,2),imshow(b),title('Pseudo Image');
