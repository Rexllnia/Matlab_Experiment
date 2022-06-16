clear all
h=fir1(71,[0.25 0.55]); 
%71位阶数，0.25和0.55分别为带通滤波器的截止频率，h为FIR滤波器系数，即滤波器的冲激响应h(n)
[HH,WW]=freqz(h,1,512); 
%返回幅度谱和相位谱，512为数据点数
subplot(121);plot(WW/pi,20*log10(abs(HH)));   %画对数幅度谱
grid on; xlabel('归一化频率'); ylabel('幅度 (dB)');
axis([0 1 -100 0]);
subplot(122); plot(WW/pi, unwrap(angle(HH))*180/pi); %画相位谱
grid on; xlabel('归一化频率'); ylabel('相位 (°)');
