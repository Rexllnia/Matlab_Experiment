
function out = E4(in)

%in=input('input=')  %�Ӽ����ϻ��8λ���룬���磺  [1 1 0 1 1 0 0 0]
slot(1)=0;           %����ÿ����ʼ��ƽ
slot(2)=16;             
slot(3)=32;             
slot(4)=64;             
slot(5)=128;             
slot(6)=256;             
slot(7)=512;              
slot(8)=1024;              

step(1)=1 ;                   %����ÿ���������
step(2)=1;              
step(3)=2;              
step(4)=4;              
step(5)=8;              
step(6)=16;             
step(7)=32;             
step(8)=64;              


ss=2*in(1)-1;                        % ����
tmp=in(2)*4+in(3)*2+in(4)+1;          %�����
st=slot(tmp);                        %��ʼ��ƽ
dt=(in(5)*8+in(6)*4+in(7)*2+in(8))*step(tmp)+0.5*step(tmp);  % �������
    
out=ss*(st+dt)
end
