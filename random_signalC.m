%功率谱估计，301数据点
fs=1000;
t=0:1/fs:0.3;
%两频点加随机噪声
x=cos(2*pi*t*300)+cos(2*pi*t*400)+randn(size(t));
figure(1)
%没加窗的周期图谱估计
subplot(2,2,1);
%周期图谱估计并画图，512点FFT
periodogram(x,[],512,fs);
axis([0 500 -50 0]);
%加窗的周期图谱估计
subplot(2,2,2);
window=hann(301);
periodogram(x,window,512,fs);
axis([0 500 -50 0]);
%相关函数法
R=xcorr(x)/150000;%301*512
Pw=fft(R);
subplot(2,2,3);
f=(0:length(Pw)-1)*fs/length(Pw);
plot(f,10*log10(abs(Pw)));
axis([0 500 -50 0]);
grid;
title('自相关函数法');
xlabel('Frequency (Hz)');
ylabel('Power Spectral Density (dB/Hz)');
%加窗的周期图谱估计
subplot(2,2,4);
window=hamming(301);
periodogram(x,window,512,fs);
axis([0 500 -50 0]);