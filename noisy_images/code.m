I = imread("none.jpg");
J = imnoise(I,'salt & pepper',0.5);
imshow(J);