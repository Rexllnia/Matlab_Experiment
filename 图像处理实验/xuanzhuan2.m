   f = zeros(64,64);
	    for j=1:5
    		f(:,j*10:j*10+1)=1;
	    end
	    F=fft2(f);Fc=fftshift(F);
        figure,
	    subplot(1,2,1),imshow(f,[ ]);title('原始图像');
	    subplot(1,2,2),imshow(abs(Fc),[ ]);title('图像傅里叶变换');
frotate=imrotate(f,45);%图像旋转
 Frotate=fft2(frotate);Fc2=fftshift(Frotate);%图像旋转后做傅里叶变换
 figure,
subplot(1,2,1),imshow(frotate,[ ]);title('图像旋转');
subplot(1,2,2),imshow(abs(Fc2),[ ]);title('图像旋转后傅里叶');
