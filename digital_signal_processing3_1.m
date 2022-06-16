clc;
clear;
n=50;
window=boxcar(n);
[h,w]=freqz(window,1);
hold on
figure(1)
subplot(2,1,1)
stem(window);                        %������δ������Ӧ
xlabel('���δ������Ӧ?');
subplot(2,1,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %������δ���Ƶ����
xlabel('���δ���������');
hold off
n=51;
window=triang(n);
[h,w]=freqz(window,1);
hold on
figure(2)
subplot(2,1,1)
stem(window);                        %������Ǵ������Ӧ
xlabel('���Ǵ������Ӧ');
subplot(2,1,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %������Ǵ���Ƶ����
xlabel('?���Ǵ���Ƶ���ԡ�');
hold off
n=51;
window=hanning(n);
[h,w]=freqz(window,1);
hold on
figure(3)
subplot(1,2,1)
stem(window);                        %��������������Ӧ
xlabel('?�����������Ӧ');
subplot(1,2,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %�����������Ƶ����
xlabel('?��������Ƶ����');
hold off
n=51;
window=hamming(n);
[h,w]=freqz(window,1);
hold on
figure(4)
subplot(1,2,1)
stem(window);                        %��������������Ӧ
xlabel('�����������Ӧ?');
subplot(1,2,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %�����������Ƶ����
xlabel('��������Ƶ����');
hold off
