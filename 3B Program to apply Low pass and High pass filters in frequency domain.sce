clc ; 
clear all; 
close ;
img = imread ('D:\IMAGE PROCESSING PRAITICALS\lena.png');
img_gray = rgb2gray ( img );
img_gray = imresize ( img_gray , [256 , 256]) ; 
figure ();
title ('Gray image'); 
imshow ( img_gray );
mask_LPF = ones (3 ,3) /9;
disp ( mask_LPF );
img_LPF = conv2 ( double ( img_gray ), mask_LPF ); 
img_LPF = uint8 ( img_LPF )
figure ();
title ('Image a f t e r LPF'); 
imshow ( uint8 ( img_LPF )); 
mask_HPF = ones (3 ,3); 
mask_HPF = mask_HPF * -1;
mask_HPF (2 ,2) = mask_HPF (2 ,2) + 9 
disp ( mask_HPF );
mask_HPF = mask_HPF /9 
disp ( mask_HPF );
img_HPF = conv2 ( double ( img_gray ), mask_HPF ); 
figure ();
title ('Image a f t e r HPF');
// To make n e g a t i v e numbers z e r o s 
img_HPF = (abs( img_HPF ) + img_HPF )/2; 
img_HPF = uint8 ( img_HPF )
imshow ( uint8 ( img_HPF ));
//High Boos t F i l t e r
// Cr e a t e HBF mask 
mask_HBF = ones (3 ,3); 
mask_HBF = mask_HBF * -1; 
A = 5;
mask_HBF (2 ,2) = 8 + A
disp ( mask_HBF ); 
mask_HBF = mask_HBF /9 
disp ( mask_HBF );
[m,n] = size ( img_gray ) 
padded_img = zeros (m+2,n +2) ;
// c r e a t e image wi th z e r o s padded at the b o u n d a r i e s
u =2;
v =2;
for x=1: m 
    for y =1: n
 
padded_img (u,v) = img_gray (x,y); 
v = v+1;
end
u = u+1; 
v = 2;
end
hbf = zeros (m+2,n +2) ;
// a p p l y i n g the HBF mask on the image
u =1; v=1;
for x=2: m+1 
    for y =2: n+1
hbf (x,y) = padded_img (x -1,y -1) * mask_HBF (1 ,1) + padded_img (x -1,y)* mask_HBF (1,2) + padded_img (x -1,y+1) * mask_HBF (1 ,3) + padded_img (x,y -1)* mask_HBF (2 ,1) + padded_img (x,y)* mask_HBF (2 ,2) + padded_img (x,y+1)* mask_HBF (2 ,3) + padded_img (x+1,y-1) * mask_HBF (3 ,1) + padded_img ( +1,y)* mask_HBF (3 ,2) + padded_img (x+1,y+1)* mask_HBF (3 ,3) ;
v=v+1; 
end 
u=u+1; 
end
// remove padded z e r o s
for x=2: m+1 
    for y =2: n+1
hbf_img (x -1,y -1) = hbf (x,y); 
end
end
// c o n v e r t a l l n e g a t i v e v a l u e s to z e r o s
hbf_img = (abs( hbf_img )+ hbf_img )/2;
// Di s pl a y HBF image
figure ();
title ('HBF image'); 
imshow ( uint8 ( hbf_img ));
// Gaus s ian F i l t e r i n g
N = 3
sigma = 1
ind = -floor (N /2) : floor (N /2) ; 
disp (ind)
[X Y] = meshgrid (ind , ind )
// c r e a t e g a u s s i a n Mask
mask_gaussian = (1/(2* %pi * sigma ))* exp (-(X .^2 + Y .^2) / (2* sigma * sigma )); mask_gaussian = [[1 , 2 , 1];[2 ,4 ,2];[1 ,2 ,1]];
disp ( mask_gaussian )
// No rma l i z e so tha t t o t a l a r e a ( sum o f a l l we i g h t s )i s 1
mask_gaussian = mask_gaussian / sum ( mask_gaussian (:)); 
disp ( mask_gaussian )
img_gaussian = conv2 ( double ( img_gray ), mask_gaussian); 
figure ();
title ('Image a f t e r Gaus s ian F i l t e r '); 
imshow ( uint8 ( img_gaussian ));
imwrite ( uint8 ( img_gaussian ), 'n o i s e f i l t e r e d img g a u s s i a n . jpg' );
