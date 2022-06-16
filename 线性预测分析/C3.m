clear all; clc; close all;
[x,fs]=audioread('C1_1_y_1.wav');                    % 读入语音数据
L=1440;                                  % 帧长
p=30;                                   % LPC的阶数
y=x(90405:90405+L);                       % 找有话段，取一帧数据
ar1=lpc_coeff(y,p);                            % 线性预测变换
ar2=lpc(y,p);
nfft=1440;                               % FFT变换长度
W2=nfft/2;
m=1:W2+1;                               % 正频率部分下标值
Y=fft(y,nfft);                          % 计算信号y的FFT频谱
Y1=lpcff(ar1,W2-1);                   % 计算预测系数的频谱
Y2=lpcff(ar2,W2-1);
% 作图
subplot 311; plot(y,'k');
title('一帧语音信号的波形'); ylabel('幅值'); xlabel('时间')
subplot 312;
plot(m,20*log10(abs(Y(m))),'k','linewidth',1.5);                                                                                                                                                                                                                                          
line(0:W2-1,20*log10(abs(Y1)),'color','r','linewidth',2)
axis([0 W2+1 -50 25]); ylabel('幅值/db');xlabel('频率');
title('FFT频谱和lpcff谱的比较');
 
subplot 313;
plot(m,20*log10(abs(Y(m))),'k','linewidth',1.5);
line((0:W2-1),20*log10(abs(Y2)),'color','r','linewidth',2)
axis([0 W2+1 -50 25]); ylabel('幅值/db');xlabel('频率');
title('FFT频谱和lpc谱的比较');
figure(2)
plot(x);