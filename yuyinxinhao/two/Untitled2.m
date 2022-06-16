%实验要求：短时时域分析参数计算并显示
clear all; clc; close all;

[x,Fs]=audioread('C3_2_y.wav');       % 读入数据文件

wlen=200; inc=100;          % 给出帧长和帧移
%win=hanning(wlen);          % 给出海宁窗
win=hamming(wlen);          % 给出汉明窗
%win=rectwin(wlen);          % 给出矩形窗
N=length(x);                    % 信号长度
time=(0:N-1)/Fs;                % 计算出信号的时间刻度
En=STEn(x,win,inc);             %短时能量
Mn=STMn(x,win,inc);             %短时平均幅度
Zcr=STZcr(x,win,inc);              %短时过零率
%此处和上述3个参数不同，返回的不是向量而是矩阵，因为一帧信号得到的不是一个数值
X=enframe(x,win,inc)';     % 分帧
xn=X(:);
Ac=STAc(X);                         %计算短时自相关
Ac=Ac(:);
Amdf=STAmdf(X);             %计算短时幅度差
Amdf=Amdf(:);

fn=length(En);             % 求出帧数


%subplot 311; plot(time,x,'b'); axis tight% 画出时间波形 
%title('(a)语音波形');
%ylabel('幅值'); xlabel(['时间/s' 10 ]); 
frameTime=FrameTimeC(fn,wlen,inc,Fs);   % 求出每帧对应的时间
subplot 421; plot(frameTime,Mn,'b')     % 画出短时幅度图
title('(b)短时幅度');
ylabel('幅值'); xlabel(['时间/s' 10 ]);  
subplot 423; plot(frameTime,En,'b')     % 画出短时能量图
title('(c)短时能量');
 ylabel('幅值'); xlabel(['时间/s' 10 '(b)']);

subplot 422; plot(time,x,'b'); axis tight% 画出时间波形 
title('(a)语音波形');
ylabel('幅值'); xlabel(['时间/s' 10 ]); 
subplot 424; plot(frameTime,Zcr,'b')     % 画出短时过零率图
title('(b)短时过零率');
ylabel('幅值'); xlabel(['时间/s' 10 ]);  

subplot 425; plot(xn,'b'); % 画出时间波形 
title('(a)语音波形');
ylabel('幅值'); xlabel(['点数' 10 ]); 
subplot 427; plot(Ac,'b')                    % 画出短时自相关图
title('(b)短时自相关');
ylabel('幅值'); xlabel(['点数' 10 ]);  

subplot 426; plot(xn,'b'); % 画出时间波形 
title('(a)语音波形');
ylabel('幅值'); xlabel(['点数' 10 ]); 
subplot 428; plot(Amdf,'b')                     % 画出短时幅度差
title('(b)短时幅度差');
ylabel('幅值'); xlabel(['点数' 10 ]);  
