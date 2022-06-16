clc
clear
scope=input('scope=');
x=input('x=') ;

x=2048*x/scope
out=[0,0,0,0,0,0,0,0];         % 对输出PCM8位编码out进行初始化，自行修改变量
if  x>0              % 实现极性码判断
    out(1)=1;
else
    out(1)=0;
end
% 实现段落码判断
%举例step表示量化间隔，slot表示每段的初始值

if abs(x)>=0 && abs(x)<16         %实现段落码判断     
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
tmp=floor((abs(x)-st)/step);  %取整。
    t=dec2bin(tmp,4);         %生成二进制字符串
    t=double(t)-48;
    out(1,5:8)=t(1:4);
end

%输出PCM的8位码
out
%该码组对应的量化电平
I=st+tmp*step
%计算量化误差。
I0=x-I

  
    

 
