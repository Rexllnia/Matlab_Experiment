clc
clear
%程序L5_2.m: 平滑滤波器%
%Image: 原图像%
%Image_noisy: 受污染的图像%
%Image_low: 执行低通滤波器后的图像%  
%Image_med: 执行中值滤波器后的图像%
Image=imread('L5_2.bmp');                   %读取图像
%将胡椒盐似的噪声加入原图像中，其中0.02是噪声密度%
Image_noisy= imnoise (Image ,'gaussian',0,0.01);%'',);gaussian,0,0.01 %salt & pepper',0.3
Image2_noisy=double(Image_noisy)/255;       %变为 double格式
h=[1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25];;%[1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25]; %; %滤波器的子模板%
Image_low=filter2(h, Image2_noisy);         %执行低通滤波
Image_med=medfilt2(Image_noisy,[5 5]);      %中值滤波采用3×3矩阵
%显示图像%
figure(1)
imshow(Image)                     
figure(2)
imshow(Image_noisy)
figure(3)
imshow(Image_low)
xlabel('低通滤波')
figure(4)
imshow(Image_med)
xlabel('中值滤波')

