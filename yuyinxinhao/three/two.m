[x,fs]=audioread('C3_5_y.wav');                    % ������������
L=240;                                                  	% ֡��
p=12;                                                       % LPC�Ľ���
y=x(8001:8000+L);                                   % ȡһ֡����
ar=lpc(y,p);                                                % ����Ԥ��任
nfft=512;                                                   % FFT�任����
W2=nfft/2;
m=1:W2+1;                                               % ��Ƶ�ʲ����±�ֵ
Y=fft(y,nfft);                                              % �����ź�y��FFTƵ��
Y1=lpcff(ar,W2);                                        % ����Ԥ��ϵ����Ƶ��
subplot(211)
plot(1:240,y);
title('һ֡�����źŲ���');
subplot(212)
plot(1:512,Y,1:257,Y1);
axis([0 257 -20 20]);
title('FFTƵ�׺�LPC�׵ıȽ�');
legend('FFTƵ��','LPC��');