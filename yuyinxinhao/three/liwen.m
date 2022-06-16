close;clc;clear all;
[x,fs] = audioread('C3_5_y.wav');               %读入语音数据
L=240;                                    %帧长
p=12;                                     % LPC的阶数
y=x(8001:8000+L);                          %取一帧数据

subplot(3,2,1)
plot(x)
%frontx=0:50000:200000;
title('(a)元音/a/波形')
ylabel('幅值')
set(gca,'xtick',[5000 10000 15000])
set(gca,'xticklabel',[5000 10000 15000])
set(gca,'ytick',[-0.5 0 0.5])
set(gca,'yticklabel',[-0.5 0 0.5])
set(gca,'xlim',[0 18000])
%axis([0 200000 -1 1])

subplot(3,2,2)
plot(y);
title('(b)一帧数据')
ylabel('幅值')
set(gca,'xtick',[0 50 100 150 200])
set(gca,'xticklabel',[0 50 100 150 200])
set(gca,'ytick',[-1 0 1])
set(gca,'yticklabel',[-1 0 1])
set(gca,'xlim',[0 242])

ar = lpc(y,p); 
est_x = filter([0 -ar(2:end )],1,y); % calculate the predicted signal.
subplot(3,2,3);
plot(est_x);
title('(c)LPC预测值');
ylabel('幅值')
set(gca,'xtick',[0 50 100 150 200])
set(gca,'xticklabel',[0 50 100 150 200])
set(gca,'ytick',[-1 0 1])
set(gca,'yticklabel',[-1 0 1])
set(gca,'xlim',[0 242])

[ar_coeff,G]=lpc_coeff(y,p);%：输入参数s是一帧数据；P是线性预测阶数,{ai}共得p个预测系数；G增益系数
est_x_coeff = filter([0 -ar_coeff(2:end )],1,y);
subplot(3,2,4);
plot(est_x_coeff);
title('(d)lpc_-coeff预测值');
ylabel('幅值')
set(gca,'xtick',[0 50 100 150 200])
set(gca,'xticklabel',[0 50 100 150 200])
set(gca,'ytick',[-1 0 1])
set(gca,'yticklabel',[-1 0 1])
set(gca,'xlim',[0 242])


err = y - est_x; % calculate the residual signal.
subplot(3,2,5);
plot(err);
title('(e)LPC预测误差');
xlabel('样点')
ylabel('幅值')
set(gca,'xtick',[0 50 100 150 200])
set(gca,'xticklabel',[0 50 100 150 200])
set(gca,'ytick',[-0.5 0 0.5])
set(gca,'yticklabel',[-0.5 0 0.5])
set(gca,'xlim',[0 242])


err_coeff = y - est_x_coeff;
subplot(3,2,6);
plot(err_coeff);
title('(f)lpc_-coeff预测误差');
xlabel('样点')
ylabel('幅值')
set(gca,'xtick',[0 50 100 150 200])
set(gca,'xticklabel',[0 50 100 150 200])
set(gca,'ytick',[-0.5 0 0.5])
set(gca,'yticklabel',[-0.5 0 0.5])
set(gca,'xlim',[0 242])

