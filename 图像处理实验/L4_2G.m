%����L4_2.m: ͼ��任��������������%
image1=imread('L4_2.bmp');          %��ȡԭͼ�� 
N=88;                               %����ͼ���С�j�p
image=image1(1:N,1:N);
error1=energy(image,1,N);           %1ָDCT
error2=energy(image,2,N);           %2ָDFT
plot(1:N,error1,'-.',1:N,error2)    %������DCT��ʵ����DFT
xlabel('n(����nƽ���ı任ϵ��) ') 
text(40,80,'DFT')
ylabel('ƽ�����')
text(10,20,'DCT')
j_dc=dct2(image);
j_df=fft2(image);
d7=log(1+abs(j_dc));
figure (2)
subplot(2, 1, 1)
imshow(log(1+abs(j_dc)),[]);
xlabel('DCT�任')
%figure (3)
imshow(log(1+abs(j_df)),[]);
xlabel('DFT�任')