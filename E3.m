clc
clear
scope=input('scope=');
x=input('x=') ;

x=2048*x/scope
out=[0,0,0,0,0,0,0,0];         % �����PCM8λ����out���г�ʼ���������޸ı���
if  x>0              % ʵ�ּ������ж�
    out(1)=1;
else
    out(1)=0;
end
% ʵ�ֶ������ж�
%����step��ʾ���������slot��ʾÿ�εĳ�ʼֵ

if abs(x)>=0 && abs(x)<16         %ʵ�ֶ������ж�     
    out(2)=0;out(3)=0;out(4)=0;step=1;st=0;
elseif  abs(x)>=16 && abs(x)<32            
    out(2)=0;out(3)=0;out(4)=1;step=1;st=16;
elseif  abs(x)>=32 && abs(x)<64            
    out(2)=0;out(3)=1;out(4)=0;step=2;st=32;  
 elseif  abs(x)>=64 && abs(x)<128            
    out(2)=0;out(3)=1;out(4)=1;step=4;st=64;
 elseif  abs(x)>=128 && abs(x)<256           
    out(2)=1;out(3)=0;out(4)=0;step=8;st=128;
  elseif  abs(x)>=256 && abs(x)<512            
    out(2)=1;out(3)=0;out(4)=1;step=16;st=256;
  elseif  abs(x)>=512 && abs(x)<1024            
    out(2)=1;out(3)=1;out(4)=0;step=32;st=512;
  else         
    out(2)=1;out(3)=1;out(4)=1;step=64;st=1024;
end
if(abs(x)>=2048)
    out(1,2:8)=[1 1 1 1 1 1 1];
else
tmp=floor((abs(x)-st)/step);  %ȡ����
    t=dec2bin(tmp,4);         %���ɶ������ַ���
    t=double(t)-48;
    out(1,5:8)=t(1:4);
end

%���PCM��8λ��
out
%�������Ӧ��������ƽ
I=st+tmp*step
%����������
I0=x-I

  
    

 
