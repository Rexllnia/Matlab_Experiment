%******DFT  实验内容二
%*****求x(n)=cos(0.48n*pi)+cos(0.52n*pi) 的离散时间傅里叶变换
%******X(e^jw)=  
n=[0:1:99];x=cos(0.48*pi*n)+cos(0.52*pi*n)
n1=[0:1:9];y1=x(1:1:10)
hold on
figure(1)
subplot(2,1,1);stem(n1,y1);title('signal x(n),0<=n<=9'); xlabel('n')
Y1=dft(y1,10);
magY1=abs(Y1(1:1:6));
k1=0:1:5;w1=2*pi/10*k1;   %   一个周期0-pi
subplot(2,1,2);stem(w1/pi,magY1);title('Sample of DTFT Magnitude');
xlabel('frequency in pi units');
hold off
 
n2=[0:1:99];y2=[x(1:1:10) zeros(1,90)];
hold on
figure(2)
subplot(2,1,1);stem(n2,y2);title('signal x(n),0<=n<=9+90zeros'); xlabel('n')
Y2=dft(y2,100);magY2=abs(Y2(1:1:51));
k2=0:1:50;w2=2*pi/100*k2;
subplot(2,1,2);stem(w2/pi,magY2);title('Sample of DTFT Magnitude');
xlabel('frequency in pi units');
hold off
 
 hold on
figure(3)
subplot(2,1,1);stem(n,x);title('signal x(n),0<=n<=99'); xlabel('n')
X=dft(x,100);magX=abs(X(1:1:51));
k=0:1:50;w=2*pi/100*k;
subplot(2,1,2);stem(w/pi,magX);title('DTFT Magnitude');
xlabel('frequency in pi units');
hold off
% DFT 函数
function [Xk]=dft(xn,N)
% Computers Discrete Fourier Transform]
% [Xk]=dft(xn,N)
% xn=N-point finite-duration sequence
% N=Length of DFT

n=[0:1:N-1];          %row vector for n
k=[0:1:N-1];          % row vector for k
WN=exp(-j*2*pi/N);    % Wn factor
nk=n'*k;             % creates a N by N matrix of nk values
WNnk=WN.^nk;          % DFT matrix
Xk=xn*WNnk;           % row vector for DFT coefficients
end