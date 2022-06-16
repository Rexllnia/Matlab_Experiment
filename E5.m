clear all;close all;
dx=0.01;          %���÷��沽��
x=0:dx:1;    
A=87.6;          %A��ȡֵ

for i=1:length(x)             %����A�ɹ�ʽ������A��87.6����
    if abs(x(i))<1/A
        ya(i)=A*x(i)/(1+log(A));
    else 
        ya(i)=(1+log(A*x(i)))/(1+log(A));
    end
end

figure(1)
plot(x,ya,'k.:');
title('A Law')
xlabel('x');
ylabel('y');
grid on
hold on

xx=[0,1/128,1/64,1/32,1/16,1/8,1/4,1/2,1];  %����A��13����
yy=[0,1/8,2/8,3/8,4/8,5/8,6/8,7/8,1];
plot(xx,yy,'r');
