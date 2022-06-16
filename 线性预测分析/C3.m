clear all; clc; close all;
[x,fs]=audioread('C1_1_y_1.wav');                    % ������������
L=1440;                                  % ֡��
p=30;                                   % LPC�Ľ���
y=x(90405:90405+L);                       % ���л��Σ�ȡһ֡����
ar1=lpc_coeff(y,p);                            % ����Ԥ��任
ar2=lpc(y,p);
nfft=1440;                               % FFT�任����
W2=nfft/2;
m=1:W2+1;                               % ��Ƶ�ʲ����±�ֵ
Y=fft(y,nfft);                          % �����ź�y��FFTƵ��
Y1=lpcff(ar1,W2-1);                   % ����Ԥ��ϵ����Ƶ��
Y2=lpcff(ar2,W2-1);
% ��ͼ
subplot 311; plot(y,'k');
title('һ֡�����źŵĲ���'); ylabel('��ֵ'); xlabel('ʱ��')
subplot 312;
plot(m,20*log10(abs(Y(m))),'k','linewidth',1.5);                                                                                                                                                                                                                                          
line(0:W2-1,20*log10(abs(Y1)),'color','r','linewidth',2)
axis([0 W2+1 -50 25]); ylabel('��ֵ/db');xlabel('Ƶ��');
title('FFTƵ�׺�lpcff�׵ıȽ�');
 
subplot 313;
plot(m,20*log10(abs(Y(m))),'k','linewidth',1.5);
line((0:W2-1),20*log10(abs(Y2)),'color','r','linewidth',2)
axis([0 W2+1 -50 25]); ylabel('��ֵ/db');xlabel('Ƶ��');
title('FFTƵ�׺�lpc�׵ıȽ�');
figure(2)
plot(x);