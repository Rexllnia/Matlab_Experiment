%///******DFT  实验
%///*****求(n)=[1 1 1 1] 的离散傅里叶变换
n=0:3;
x=[1 1 1 1];
k=0:1000;
w=(2*pi/1000)*k;
X=x*(exp(-j*2*pi/1000)).^(n'*k);
magX=abs(X);angX=angle(X);
realX=real(X);imagX=imag(X);
hold on 
figure(1);
subplot(2,1,1);plot(k/500,magX);grid
xlabel('frequency in pi units');title('Magnitude Part of DTFT')
subplot(2,1,2);plot(k/500,angX/pi*180);grid
xlabel('freqency in pi units');title('Anagle Part of DTFT')
hold off

 
%N=4,x=[1 1 1 1]
N=4;
k=0:N-1
X=dft(x,N);
magX=abs(X)
phaX=angle(X)*180/pi
hold on 
figure(2);
subplot(2,1,1);stem(k,magX);grid
xlabel('k');ylabel('|X(k)|');title('Magmitude of the DFT:N=4')
subplot(2,1,2);stem(k,phaX);grid
xlabel('k');ylabel('Degrees');title('Angle of the DFT:N=4')
hold off
 
 
% N=8点  x=[1 1 1 1 0 0 0 0]
x=[1,1,1,1,zeros(1,4)];
N=8;
k=0:N-1
X=dft(x,N);
magX=abs(X)
phaX=angle(X)*180/pi
hold on 
figure(3);
subplot(2,1,1);stem(k,magX);grid
xlabel('k');ylabel('|X(k)|');title('Magmitude of the DFT:N=8')
subplot(2,1,2);stem(k,phaX);grid
xlabel('k');ylabel('Degrees');title('Angle of the DFT:N=8')
hold off
 
% N=16点  x=[1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0]
x=[1,1,1,1,zeros(1,12)];
N=16;
k=0:N-1
X=dft(x,N);
magX=abs(X)
phaX=angle(X)*180/pi
hold on 
figure(4);
subplot(2,1,1);stem(k,magX);grid
xlabel('k');ylabel('|X(k)|');title('Magmitude of the DFT:N=16')
subplot(2,1,2);stem(k,phaX);grid
xlabel('k');ylabel('Degrees');title('Angle of the DFT:N=16')
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
