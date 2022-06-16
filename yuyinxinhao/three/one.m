clc;clear all;
[x,fs] = audioread('C3_5_y.wav');
L=240;%帧长
s=x(8001:8000+L);
p=12;    % LPC的阶数
subplot(321)
plot(x);
title('(a)元音/a/波形')
subplot(322)
plot(s);
title('(b)一帧数据')
[ar_coeff,G]=lpc_coeff(s,p);%：输入参数s是一帧数据；P是线性预测阶数,{ai}共得p个预测系数；G增益系数
est_x_coeff = filter([0 -ar_coeff(2:end )],1,s); 
subplot(324);
plot(est_x_coeff);
title('(d)lpc_coeff预测值');
err_coeff = s - est_x_coeff;
ar = lpc(s,p); 
est_x = filter([0 -ar(2:end )],1,s); % calculate the predicted signal.
err = s - est_x; % calculate the residual signal.
subplot(323);
plot(est_x);
title('(c)LPC预测值');
subplot(325);
plot(err);
title('(e)LPC预测误差');
subplot(326);
plot(err_coeff);
title('(f)lpc_coeff预测误差');