clc
clear
%����L5_2.m: ƽ���˲���%
%Image: ԭͼ��%
%Image_noisy: ����Ⱦ��ͼ��%
%Image_low: ִ�е�ͨ�˲������ͼ��%  
%Image_med: ִ����ֵ�˲������ͼ��%
Image=imread('L5_2.bmp');                   %��ȡͼ��
%���������Ƶ���������ԭͼ���У�����0.02�������ܶ�%
Image_noisy= imnoise (Image ,'gaussian',0,0.01);%'',);gaussian,0,0.01 %salt & pepper',0.3
Image2_noisy=double(Image_noisy)/255;       %��Ϊ double��ʽ
h=[1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25];;%[1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25;1/25 1/25 1/25 1/25 1/25]; %; %�˲�������ģ��%
Image_low=filter2(h, Image2_noisy);         %ִ�е�ͨ�˲�
Image_med=medfilt2(Image_noisy,[5 5]);      %��ֵ�˲�����3��3����
%��ʾͼ��%
figure(1)
imshow(Image)                     
figure(2)
imshow(Image_noisy)
figure(3)
imshow(Image_low)
xlabel('��ͨ�˲�')
figure(4)
imshow(Image_med)
xlabel('��ֵ�˲�')

