%����L5_1.m: ֱ��ͼ���⻯��% 
%image_1 ԭͼ��image_2 ִ��ֱ��ͼ���⻯���ͼ��%
image_1=imread('L5_1.bmp');  %��ȡͼ��L5_3.bmp
image_2=histeq(image_1);     %������ͼ��ִ��ֱ��ͼ���⻯
imshow(image_1)              %��ʾԭͼ��
figure,imshow(image_2)       %��ʾ������ͼ��
figure,imhist(image_1)       %��ʾԭͼ���ֱ��ͼ
figure,imhist (image_2)      %��ʾ�����ͼ���ֱ��ͼ
