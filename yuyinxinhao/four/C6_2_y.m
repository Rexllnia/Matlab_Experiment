%实验要求一：LPC编解码实验
clc
close all
clear all
info = audioinfo('C6_2_y.wav');
nbits = info.BitsPerSample;
[x,fs]=audioread('C6_2_y.wav');     
LENGTH=length(x);                          
n=0:1/fs:(LENGTH-1)/fs;   

% ---------------------------------------------------------------------- %
% 原始语音信号 %
L=240;                                                  	% 帧长
p=12;                                                       % LPC的阶数
y=x(8001:8000+L);                                   % 取一帧数据
kk=lpc(y,p);                                                % 线性预测变换

subplot(2,1,1),plot(n*1000, x),grid ,hold on
xlabel('时间/秒');    ylabel('幅度');

% 简单编解码显示 %
order=12;                                               % 阶数
[a,g]=lpc(x,order);                                   % 预测系数（编码参数）
est_x=filter([0 -a(2:end)],1,x);                  % 解码后信号
plot(n*1000,est_x,'r--'),hold off
title('原始信号与解码后信号')
legend('原始信号','解码后信号')

% ---------------------------------------------------------------------- %
error=x-est_x;                                    % 预测误差显示
subplot(2,1,2),plot(n*1000,error), grid;
xlabel('时间/秒');    ylabel('幅度');
title('预测误差')