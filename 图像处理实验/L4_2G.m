%程序L4_2.m: 图像变换的能量集中能力%
image1=imread('L4_2.bmp');          %读取原图像 
N=88;                               %处理图像大小
image=image1(1:N,1:N);
error1=energy(image,1,N);           %1指DCT
error2=energy(image,2,N);           %2指DFT
plot(1:N,error1,'-.',1:N,error2)    %虚线是DCT，实线是DFT
xlabel('n(保留n平方的变换系数) ') 
text(40,80,'DFT')
ylabel('平方误差')
text(10,20,'DCT')
j_dc=dct2(image);
j_df=fft2(image);
d7=log(1+abs(j_dc));
figure (2)
subplot(2, 1, 1)
imshow(log(1+abs(j_dc)),[]);
xlabel('DCT变换')
%figure (3)
imshow(log(1+abs(j_df)),[]);
xlabel('DFT变换')