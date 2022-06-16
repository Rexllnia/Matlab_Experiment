%自行录制一段语音,并存储为wa文件。
%要求:分别以采样频率、2倍采样频率和1/2采样频率存为三个wav文件,
%并将plot函数结合 subplot函数在一幅图上显示3个波形。
%横轴和纵轴带有标注。横轴的单位为秒(s),纵轴显示的为归一化后的数值。


[y,Fs]=audioread('C.wav'); 
sound(y,Fs);  
ymax=max(abs(y)); %归一化
y=y/ymax;
audiowrite('o.wav',y,Fs);   %将原采样频率得到的音频存为o.wav
audiowrite('half.wav',y,Fs/2);  %将1/2倍采样频率得到的音频存为half.wav
audiowrite('double.wav',y,Fs*2);%将2倍采样频率得到的音频存为double.wav
[y1,Fsl]= audioread('half.wav');% 读取half.wav文件
t1=(1:length(y1))/Fsl;             %计算时间t1
[y2,Fs2]= audioread('double.wav');% 读取double.wav文件
t2=(1:length(y2))/Fs2;             %计算时间t2
subplot(311)               %作以原采样率采样的音频时间幅值波形图        axis([0 3 -1 1]);          %设定x轴与y轴的显示范围
plot(t,y);
xlabel('时间/s');
ylabel('幅度');
title('(a)初始采样率');
subplot(312)               %作以1/2倍采样率采样的音频时间幅值波形图
axis([0 3 -1 1]);          %设定x轴与y轴的显示范围
plot(t1,y1);
xlabel('时间/s');
ylabel('幅度');
title('(b)1/2采样率');
subplot(313)                %作以2倍采样率采样的音频时间幅值波形图
axis([0 3 -1 1]);           %设定x轴与y轴的显示范围
plot(t2,y2);
xlabel('时间/s');
ylabel('幅度');
title('(c)2倍采样率');

