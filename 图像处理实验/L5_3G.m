   %程序L5_3.m:同态滤波器%
   clc
   clear
   [image_0,map]=imread('L5_3.bmp');            %读取图像 
   image_01=double(image_0);
   image_1=log(image_01+1);                       %取自然对数
   image_2=fft2(image_1);                        %做二维傅立叶变换
  
   %产生高通Butterworth滤波器%
   n=3;
   D0=0.05*pi;
   rh=0.8;
   rl=0.5;
   [row,col]=size(image_2);
   for k=1:1:row
     for l=1:1:col
       D1(k,l)=sqrt((k^2+l^2));
       H(k,l)=rl+(rh/(1+(D0/D1(k,l))^(2*n)));
     end
   end

   image_3=(image_2.*H);                         %输入图像通过滤波器
   image_4=ifft2(image_3);                       %做二维反傅立叶变换
   image_5=(exp(image_4)-1);                     %取指数函数

   figure(1)               
   imshow(image_0,map)                           %显示原图像
   figure(2)
   imshow(real(image_5),map)                     %显示处理后的图像
   figure,imhist(image_0)       %显示原图像的直方图
   figure,imhist (real(image_5),map)      %显示处理后图像的直方图