clear ; clc ; clear all; close ;
img = imread ('‪D:\IMAGE PROCESSING PRAITICALS\cameraman.png'); 
figure ();
title('original image'); 
imshow (img);
img_gray = rgb2gray ( img ); 
img_double = im2double ( img_gray );
// DCT o f image u s i n g s c i l a b f u n c t i o n
img_dct = dct( img_double ); 
figure ();
title('DCT of image using buitin function'); imshow ( img_dct );
// Cr e a t i n g the Twiddle Fa c t o r Mat r ix c
[m,n]= size ( img_gray ); for x=1: m
for y =1: n
if x ==1 // f o r row number one
c(1,y)= sqrt (1/ m); 
else
c(x,y) = sqrt (2/ m)*cos (( %pi *(2* y +1) *x)/(2* m)); 
end
end 
end
// DCT o f image u s i n g code 
result = c * img_double * c' ; figure ();
title('DCT of an image using code'); imshow ( result );
// I n v e r s e DCT o f image u s i n g s c i l a b f u n c t i o n
img_idct = idct ( img_dct ); figure ();
title('inverse DCT using buitin function'); imshow ( img_idct );
// I n v e r s e DCT o f image u s i n g code 
result_idct = inv (c) * result * inv (c'); figure ();
title('inverse DCT using code'); imshow ( result_idct );
