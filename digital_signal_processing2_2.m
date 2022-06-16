%采用双线性变换法设计一个高通切比雪夫II型数字滤波器，通带截止频率为2000Hz，阻带截止频
%率为1500Hz，抽样频率为20000Hz，通带最大衰减为0.3dB，阻带最小衰减为50dB
Wp=2*pi*2000;Wp1=2*pi*Wp;
Ws=2*pi*1500;Ws1=2*pi*Ws;
Rp=0.3;
Rs=50;
Fs=30000;
[N,Wn]=cheb2ord(Wp,Ws,Rp,Rs,'s');
 
[Z,P,K]=cheb2ap(N,Rs);
[A,B,C,D]=zp2ss(Z,P,K);
%低通到高通变换
[At,Bt,Ct,Dt]=lp2hp(A,B,C,D,Wn);
[num1,den1]=ss2tf(At,Bt,Ct,Dt);
%双线性变换法把模拟滤波器转换为数字滤波器
[num2,den2]=bilinear(num1,den1,Fs);
%绘制幅频响应特性曲线
[H,W]=freqz(num2,den2);
subplot(2,1,1)
plot(W*Fs/2/pi,20*log10(abs(H)));
grid;
xlabel('频率/Hz');
ylabel('幅值(db)');
%绘制相频响应特性曲线
subplot(2,1,2)
plot(W*Fs/2/pi,angle(H)/pi);grid;
xlabel('频率/Hz');
ylabel('相角/  ');
