clc;
clear;
n=50;
window=boxcar(n);
[h,w]=freqz(window,1);
hold on
figure(1)
subplot(2,1,1)
stem(window);                        %输出矩形窗冲击响应
xlabel('矩形窗冲击响应?');
subplot(2,1,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %输出矩形窗幅频特性
xlabel('矩形窗幅度特性');
hold off
n=51;
window=triang(n);
[h,w]=freqz(window,1);
hold on
figure(2)
subplot(2,1,1)
stem(window);                        %输出三角窗冲击响应
xlabel('三角窗冲击响应');
subplot(2,1,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %输出三角窗幅频特性
xlabel('?三角窗幅频特性’');
hold off
n=51;
window=hanning(n);
[h,w]=freqz(window,1);
hold on
figure(3)
subplot(1,2,1)
stem(window);                        %输出汗宁窗冲击响应
xlabel('?汉宁窗冲击响应');
subplot(1,2,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %输出汉宁窗幅频特性
xlabel('?汉宁窗幅频特性');
hold off
n=51;
window=hamming(n);
[h,w]=freqz(window,1);
hold on
figure(4)
subplot(1,2,1)
stem(window);                        %输出海明窗冲击响应
xlabel('海明窗冲击响应?');
subplot(1,2,2);
plot(w/pi,20*log(abs(h)/abs(h(1))));        %输出海明窗幅频特性
xlabel('海明窗幅频特性');
hold off
