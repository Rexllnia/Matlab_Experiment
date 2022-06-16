%%主函数
%实验要求一：LPC编解码实验
info = audioinfo('C.wav');
nbits = info.BitsPerSample;
[x,fs]=audioread('C.wav');     
LENGTH=length(x);                          
n=0:1/fs:(LENGTH-1)/fs;   
 
% ---------------------------------------------------------------------- %
%原始语音信号%
subplot(3,3,2),plot(n*1000, x),grid ,hold on
title('原始信号')
xlabel('时间/秒');    
ylabel('幅度');
 
%简单编解码显示%
order=12;%阶数12
order1=8;%阶数8
[a,g]=lpc(x,order);%预测系数（编码参数）12阶
[a1,g1]=lpc(x,order1);%预测系数（编码参数）8阶
est_x=filter([0 -a(2:end)],1,x);%解码后信号12阶
est_x1=filter([0 -a1(2:end)],1,x);%解码后信号8阶
subplot(3,3,5),plot(n*1000,est_x,'b--')
xlabel('时间/秒');    ylabel('幅度');
title('12阶解码后信号')
subplot(3,3,4),plot(n*1000,est_x1,'b--')
xlabel('时间/秒');    ylabel('幅度');
title('8阶解码后信号')
 
% ---------------------------------------------------------------------- %
decode1(x,a,fs)
subplot(3,3,6),plot(n*1000,est_x,'b--')
xlabel('时间/秒');    ylabel('幅度');
title('12阶用函数解码后信号')
 
% ---------------------------------------------------------------------- %
error=x-est_x;%预测误差显示
subplot(3,3,8),plot(n*1000,error), grid;
xlabel('时间/秒');    ylabel('幅度');
title('12阶预测误差')
error1=x-est_x1;%预测误差显示
subplot(3,3,7),plot(n*1000,error1), grid;
xlabel('时间/秒');    ylabel('幅度');
title('8阶预测误差')
 
% ---------------------------------------------------------------------- %
decode1(x,a,fs)
subplot(3,3,9),plot(n*1000,error), grid;
xlabel('时间/秒');    ylabel('幅度');
title('12阶用函数后预测误差')