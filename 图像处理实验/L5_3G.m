   %����L5_3.m:̬ͬ�˲���%
   clc
   clear
   [image_0,map]=imread('L5_3.bmp');            %��ȡͼ�� 
   image_01=double(image_0);
   image_1=log(image_01+1);                       %ȡ��Ȼ����
   image_2=fft2(image_1);                        %����ά����Ҷ�任
  
   %������ͨButterworth�˲���%
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

   image_3=(image_2.*H);                         %����ͼ��ͨ���˲���
   image_4=ifft2(image_3);                       %����ά������Ҷ�任
   image_5=(exp(image_4)-1);                     %ȡָ������

   figure(1)               
   imshow(image_0,map)                           %��ʾԭͼ��
   figure(2)
   imshow(real(image_5),map)                     %��ʾ������ͼ��
   figure,imhist(image_0)       %��ʾԭͼ���ֱ��ͼ
   figure,imhist (real(image_5),map)      %��ʾ�����ͼ���ֱ��ͼ