clc
clear
%采用冲击响应不变法设计一个低通切比雪夫I型数字滤波器，其通带上限截止频率为400Hz，阻带
%截止频率为600Hz，抽样频率为1000Hz，通带最大衰减为3dB，阻带最小衰减为60dB。
Wp=2*pi*400;     %400; 
Ws=2*pi*600;     %600;  
Rp=3;       
Rs=60;        
Fs=2463;      
%选择滤波器的最小阶数
[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs,'s');  
%?创建切比雪夫I型低通滤波器
[Z,P,K]=cheb1ap(N,Rp);            
[A,B,C,D]=zp2ss(Z,P,K);            %将系统零极点模型转换为状态空间模型[A,B,C,D]     
%低通到低通的转变
[At,Bt,Ct,Dt]=lp2lp(A,B,C,D,Wn);   %将截止频率为1rad/s的模拟低通滤波器转换为截止频率为Wn
%的模拟低通滤波器
[num1,den1]=ss2tf(At,Bt,Ct,Dt);    %·返回系统传递函数模型，num1为系统传递函数分子系数组成向量，den1为分母系数向量。
%冲击响应不变法把模拟滤波器转换为数字滤波器
[num2,den2]=impinvar(num1,den1,Fs);%冲击响应不变法模拟滤波器转换为数字滤波器，返回H(z)
%绘制幅频响应曲线
[H,W1]=freqs(num1,den1);         
figure(1)
subplot(2,1,1);
semilogx(W1/pi/2,20*log10(abs(H)));grid;  %X轴对数坐标为频率（Hz），Y轴为幅值画幅频特性图
xlabel('        频率/ Hz');
ylabel('   模拟滤波器幅值(db)');
[H,W2]=freqz(num2,den2,512,'whole',Fs);   %返回数字滤波器的复频率响应
subplot(2,1,2);
plot(W2,20*log10(abs(H)));grid;
xlabel('        频率/ Hz');
ylabel('   数字滤波器幅值(db)');
[H,W]=freqz(num2,den2,512,'whole');        
figure(2)
subplot(2,1,1);
plot(W/pi,20*log10(abs(H)));grid;            %X轴为数字角频率，Y轴为幅值
xlabel('    数字角频率/pi ');
ylabel('    数字滤波器幅值(db)');
subplot(2,1,2);
plot(W/pi,angle(H)/pi);grid;
xlabel('    数字角频率/pi');
ylabel('    相角/pi ');

