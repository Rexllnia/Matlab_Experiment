   f = zeros(64,64);
	    for j=1:5
    		f(:,j*10:j*10+1)=1;
	    end
	    F=fft2(f);Fc=fftshift(F);
        figure,
	    subplot(1,2,1),imshow(f,[ ]);title('ԭʼͼ��');
	    subplot(1,2,2),imshow(abs(Fc),[ ]);title('ͼ����Ҷ�任');
frotate=imrotate(f,45);%ͼ����ת
 Frotate=fft2(frotate);Fc2=fftshift(Frotate);%ͼ����ת��������Ҷ�任
 figure,
subplot(1,2,1),imshow(frotate,[ ]);title('ͼ����ת');
subplot(1,2,2),imshow(abs(Fc2),[ ]);title('ͼ����ת����Ҷ');
