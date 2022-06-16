%%������
%ʵ��Ҫ��һ��LPC�����ʵ��
info = audioinfo('C6_2_y.wav');
nbits = info.BitsPerSample;
[x,fs]=audioread('C6_2_y.wav');     
LENGTH=length(x);                          
n=0:1/fs:(LENGTH-1)/fs;   
 
% ---------------------------------------------------------------------- %
%ԭʼ�����ź�%
subplot(3,3,2),plot(n*1000, x),grid ,hold on
title('ԭʼ�ź�')
xlabel('ʱ��/��');    
ylabel('����');
 
%�򵥱������ʾ%
order=12;%����12
order1=8;%����8
[a,g]=lpc(x,order);%Ԥ��ϵ�������������12��
[a1,g1]=lpc(x,order1);%Ԥ��ϵ�������������8��
est_x=filter([0 -a(2:end)],1,x);%������ź�12��
est_x1=filter([0 -a1(2:end)],1,x);%������ź�8��
subplot(3,3,5),plot(n*1000,est_x,'b--')
xlabel('ʱ��/��');    ylabel('����');
title('12�׽�����ź�')
subplot(3,3,4),plot(n*1000,est_x1,'b--')
xlabel('ʱ��/��');    ylabel('����');
title('8�׽�����ź�')
 
% ---------------------------------------------------------------------- %
decode1(x,a,fs)
subplot(3,3,6),plot(n*1000,est_x,'b--')
xlabel('ʱ��/��');    ylabel('����');
title('12���ú���������ź�')
 
% ---------------------------------------------------------------------- %
error=x-est_x;%Ԥ�������ʾ
subplot(3,3,8),plot(n*1000,error), grid;
xlabel('ʱ��/��');    ylabel('����');
title('12��Ԥ�����')
error1=x-est_x1;%Ԥ�������ʾ
subplot(3,3,7),plot(n*1000,error1), grid;
xlabel('ʱ��/��');    ylabel('����');
title('8��Ԥ�����')
 
% ---------------------------------------------------------------------- %
decode1(x,a,fs)
subplot(3,3,9),plot(n*1000,error), grid;
xlabel('ʱ��/��');    ylabel('����');
title('12���ú�����Ԥ�����')