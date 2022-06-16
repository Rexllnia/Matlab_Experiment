
function out = E4(in)

%in=input('input=')  %从键盘上获得8位编码，例如：  [1 1 0 1 1 0 0 0]
slot(1)=0;           %设置每段起始电平
slot(2)=16;             
slot(3)=32;             
slot(4)=64;             
slot(5)=128;             
slot(6)=256;             
slot(7)=512;              
slot(8)=1024;              

step(1)=1 ;                   %设置每段量化间隔
step(2)=1;              
step(3)=2;              
step(4)=4;              
step(5)=8;              
step(6)=16;             
step(7)=32;             
step(8)=64;              


ss=2*in(1)-1;                        % 极性
tmp=in(2)*4+in(3)*2+in(4)+1;          %段落号
st=slot(tmp);                        %起始电平
dt=(in(5)*8+in(6)*4+in(7)*2+in(8))*step(tmp)+0.5*step(tmp);  % 量化间隔
    
out=ss*(st+dt)
end
