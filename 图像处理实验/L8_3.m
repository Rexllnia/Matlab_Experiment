%≥Ã–ÚL8_3.m: Sobel±ﬂ—ÿºÏ≤‚%
[image,map]=imread('cameraman1.bmp');
image1=sobel(image,0.5);
image2=sobel(image,0.6);
image3=sobel(image,0.7);
imshow(image,map)
figure,imshow(image1)
xlabel('„–÷µ£∞.5')
figure,imshow(image2)
xlabel('„–÷µ£∞.6')
figure,imshow(image3)
xlabel('„–÷µ£∞.7')
