%ʵ��Ҫ�󣺶�ʱʱ������������㲢��ʾ
clear all; clc; close all;

[x,Fs]=audioread('C3_2_y.wav');       % ���������ļ�

wlen=200; inc=100;          % ����֡����֡��
%win=hanning(wlen);          % ����������
win=hamming(wlen);          % ����������
%win=rectwin(wlen);          % �������δ�
N=length(x);                    % �źų���
time=(0:N-1)/Fs;                % ������źŵ�ʱ��̶�
En=STEn(x,win,inc);             %��ʱ����
Mn=STMn(x,win,inc);             %��ʱƽ������
Zcr=STZcr(x,win,inc);              %��ʱ������
%�˴�������3��������ͬ�����صĲ����������Ǿ�����Ϊһ֡�źŵõ��Ĳ���һ����ֵ
X=enframe(x,win,inc)';     % ��֡
xn=X(:);
Ac=STAc(X);                         %�����ʱ�����
Ac=Ac(:);
Amdf=STAmdf(X);             %�����ʱ���Ȳ�
Amdf=Amdf(:);

fn=length(En);             % ���֡��


%subplot 311; plot(time,x,'b'); axis tight% ����ʱ�䲨�� 
%title('(a)��������');
%ylabel('��ֵ'); xlabel(['ʱ��/s' 10 ]); 
frameTime=FrameTimeC(fn,wlen,inc,Fs);   % ���ÿ֡��Ӧ��ʱ��
subplot 421; plot(frameTime,Mn,'b')     % ������ʱ����ͼ
title('(b)��ʱ����');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 ]);  
subplot 423; plot(frameTime,En,'b')     % ������ʱ����ͼ
title('(c)��ʱ����');
 ylabel('��ֵ'); xlabel(['ʱ��/s' 10 '(b)']);

subplot 422; plot(time,x,'b'); axis tight% ����ʱ�䲨�� 
title('(a)��������');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 ]); 
subplot 424; plot(frameTime,Zcr,'b')     % ������ʱ������ͼ
title('(b)��ʱ������');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 ]);  

subplot 425; plot(xn,'b'); % ����ʱ�䲨�� 
title('(a)��������');
ylabel('��ֵ'); xlabel(['����' 10 ]); 
subplot 427; plot(Ac,'b')                    % ������ʱ�����ͼ
title('(b)��ʱ�����');
ylabel('��ֵ'); xlabel(['����' 10 ]);  

subplot 426; plot(xn,'b'); % ����ʱ�䲨�� 
title('(a)��������');
ylabel('��ֵ'); xlabel(['����' 10 ]); 
subplot 428; plot(Amdf,'b')                     % ������ʱ���Ȳ�
title('(b)��ʱ���Ȳ�');
ylabel('��ֵ'); xlabel(['����' 10 ]);  
