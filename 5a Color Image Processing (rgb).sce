//program to show RGB planes 
original=imread('B:\leena.png');
 im_red=original(:,:,1); 
 im_green=original(:,:,1); 
 im_blue=original(:,:,3);
subplot(2,2,1),imshow(original),title('Original'); subplot(2,2,2),imshow(im_red),title('Red'); subplot(2,2,3),imshow(im_green),title('Green'); subplot(2,2,4),imshow(im_blue),title('Blue');

