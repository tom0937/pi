clc ; 
clear all; 
close ;

img = imread ('D:\IMAGE PROCESSING PRAITICALS\lena.png'); 
img_gray = rgb2gray ( img ); 
figure ();
plot ('Input image 1'); 
imshow ( img_gray );

// EDGE DETECTION
[v,h] = size ( img_gray );

v_sobel = [-1, 0, 1; -2 ,0 ,2; -1 ,0 ,1];
disp ( v_sobel );

img_gray_v = conv2 ( double ( img_gray ), v_sobel ); 
figure ();
title ('vertical edge detection image'); 
imshow ( img_gray_v );
imwrite(img_gray_v, 'vertical_edge_detection.jpg');
//imshow (vertical_edge_detection.jpg);

h_sobel = [-1, -2, -1; 0 ,0 ,0; 1 ,2 ,1];
disp ( h_sobel );
img_gray_h = conv2 ( double ( img_gray ), h_sobel ); 
figure ();
title ('horizontal edge detection'); 
imshow ( img_gray_h );
 
imwrite ( img_gray_h, 'horizontal_edge_dection.jpg');
//clf;
//imshow (horizontal_edge_dection.jpg);

img_res = img_gray_h + img_gray_v ; 
figure ();
title ('sum of edge detection'); 
subplot (2,4,4);
imshow ( img_res );
imwrite (img_res, 'sum_of_edge_detection.jpg');
//clf;
//imshow (sum_of_edge_detection.jpg);

// Edge De t e c t i o n u s i n g in−b u i l t f u n c t i o n s
E = edge (img_gray, 'sobel'); figure ();
title ('sobel edge detection'); subplot (2,4,5);
imshow (E);
imwrite (E,'sobel.jpg');
//clf;
//imshow(sobel.jpg)

E2 = edge ( img_gray , 'canny' , [0.06 , 0.2]) ; 
figure ();
title ('Canny edge d e t e c t i o n'); 
subplot (2,4,6);
imshow (E2);
imwrite (E2,'canny.jpg')
//clf;
//imshow (canny.jpg)

E3 = edge ( img_gray , 'prewitt' ); figure ();
title ('Pr ewi t t edge d e t e c t i o n'); 
imshow (E3);
imwrite (E3,'prewitt.jpg')
//clf;
//imshow(prewitt.jpg)

//THRESHOLDING
img_thresh = int ( img_gray /128) *255; 
figure ();
plot ('Gl oba l Th r e s h o l d i n g'); 
imshow ( img_thresh );
imwrite ( img_thresh, 'threshhold.jpg');
//clf;
//imshow(threshhold.jpg);
