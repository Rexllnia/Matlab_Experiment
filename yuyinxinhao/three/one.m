clc;clear all;
[x,fs] = audioread('C3_5_y.wav');
L=240;%֡��
s=x(8001:8000+L);
p=12;    % LPC�Ľ���
subplot(321)
plot(x);
title('(a)Ԫ��/a/����')
subplot(322)
plot(s);
title('(b)һ֡����')
[ar_coeff,G]=lpc_coeff(s,p);%���������s��һ֡���ݣ�P������Ԥ�����,{ai}����p��Ԥ��ϵ����G����ϵ��
est_x_coeff = filter([0 -ar_coeff(2:end )],1,s); 
subplot(324);
plot(est_x_coeff);
title('(d)lpc_coeffԤ��ֵ');
err_coeff = s - est_x_coeff;
ar = lpc(s,p); 
est_x = filter([0 -ar(2:end )],1,s); % calculate the predicted signal.
err = s - est_x; % calculate the residual signal.
subplot(323);
plot(est_x);
title('(c)LPCԤ��ֵ');
subplot(325);
plot(err);
title('(e)LPCԤ�����');
subplot(326);
plot(err_coeff);
title('(f)lpc_coeffԤ�����');