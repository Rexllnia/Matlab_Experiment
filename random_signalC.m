%�����׹��ƣ�301���ݵ�
fs=1000;
t=0:1/fs:0.3;
%��Ƶ����������
x=cos(2*pi*t*300)+cos(2*pi*t*400)+randn(size(t));
figure(1)
%û�Ӵ�������ͼ�׹���
subplot(2,2,1);
%����ͼ�׹��Ʋ���ͼ��512��FFT
periodogram(x,[],512,fs);
axis([0 500 -50 0]);
%�Ӵ�������ͼ�׹���
subplot(2,2,2);
window=hann(301);
periodogram(x,window,512,fs);
axis([0 500 -50 0]);
%��غ�����
R=xcorr(x)/150000;%301*512
Pw=fft(R);
subplot(2,2,3);
f=(0:length(Pw)-1)*fs/length(Pw);
plot(f,10*log10(abs(Pw)));
axis([0 500 -50 0]);
grid;
title('����غ�����');
xlabel('Frequency (Hz)');
ylabel('Power Spectral Density (dB/Hz)');
%�Ӵ�������ͼ�׹���
subplot(2,2,4);
window=hamming(301);
periodogram(x,window,512,fs);
axis([0 500 -50 0]);