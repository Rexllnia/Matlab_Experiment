%����L8_3.m: Sobel���ؼ��%
[image,map]=imread('cameraman1.bmp');
image1=sobel(image,0.5);
image2=sobel(image,0.6);
image3=sobel(image,0.7);
imshow(image,map)
figure,imshow(image1)
xlabel('��ֵ��.5')
figure,imshow(image2)
xlabel('��ֵ��.6')
figure,imshow(image3)
xlabel('��ֵ��.7')
