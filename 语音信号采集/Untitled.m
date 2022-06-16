%����¼��һ������,���洢Ϊwa�ļ���
%Ҫ��:�ֱ��Բ���Ƶ�ʡ�2������Ƶ�ʺ�1/2����Ƶ�ʴ�Ϊ����wav�ļ�,
%����plot������� subplot������һ��ͼ����ʾ3�����Ρ�
%�����������б�ע������ĵ�λΪ��(s),������ʾ��Ϊ��һ�������ֵ��
clc
clear

[y,Fs]=audioread('C.wav'); 
sound(y,Fs);  
ymax=max(abs(y)); %��һ��
y=y/ymax;
audiowrite('o.wav',y,Fs);   %��ԭ����Ƶ�ʵõ�����Ƶ��Ϊo.wav
audiowrite('half.wav',y,Fs/2);  %��1/2������Ƶ�ʵõ�����Ƶ��Ϊhalf.wav
audiowrite('double.wav',y,Fs*2);%��2������Ƶ�ʵõ�����Ƶ��Ϊdouble.wav
[y1,Fsl]= audioread('half.wav');% ��ȡhalf.wav�ļ�
t1=(1:length(y1))/Fsl;             %����ʱ��t1
[y2,Fs2]= audioread('double.wav');% ��ȡdouble.wav�ļ�
t2=(1:length(y2))/Fs2;             %����ʱ��t2
subplot(311)               %����ԭ�����ʲ�������Ƶʱ���ֵ����ͼ        axis([0 3 -1 1]);          %�趨x����y�����ʾ��Χ
plot(t,y);
xlabel('ʱ��/s');
ylabel('����');
title('(a)��ʼ������');
subplot(312)               %����1/2�������ʲ�������Ƶʱ���ֵ����ͼ
axis([0 3 -1 1]);          %�趨x����y�����ʾ��Χ
plot(t1,y1);
xlabel('ʱ��/s');
ylabel('����');
title('(b)1/2������');
subplot(313)                %����2�������ʲ�������Ƶʱ���ֵ����ͼ
axis([0 3 -1 1]);           %�趨x����y�����ʾ��Χ
plot(t2,y2);
xlabel('ʱ��/s');
ylabel('����');
title('(c)2��������');

