[x,fs]=audioread('C3_5_y.wav');                    % 读入语音数据
L=240;                                                  	% 帧长
p=12;                                                       % LPC的阶数
y=x(8001:8000+L);                                   % 取一帧数据
ar=lpc(y,p);                                                % 线性预测变换
nfft=512;                                                   % FFT变换长度
W2=nfft/2;
m=1:W2+1;                                               % 正频率部分下标值
Y=fft(y,nfft);                                              % 计算信号y的FFT频谱
Y1=lpcff(ar,W2);                                        % 计算预测系数的频谱
subplot(211)
plot(1:240,y);
title('一帧语音信号波形');
subplot(212)
plot(1:512,Y,1:257,Y1);
axis([0 257 -20 20]);
title('FFT频谱和LPC谱的比较');
legend('FFT频谱','LPC谱');