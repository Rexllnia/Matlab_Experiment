%程序L5_1.m: 直方图均衡化法% 
%image_1 原图像；image_2 执行直方图均衡化后的图像%
image_1=imread('L5_1.bmp');  %读取图像L5_3.bmp
image_2=histeq(image_1);     %对上述图像执行直方图均衡化
imshow(image_1)              %显示原图像
figure,imshow(image_2)       %显示处理后的图像
figure,imhist(image_1)       %显示原图像的直方图
figure,imhist (image_2)      %显示处理后图像的直方图
