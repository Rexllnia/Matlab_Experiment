xn=[1 0 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0];   %自行设置数字序列，用于验证
yn=xn;                               %输出yn初始化
num=0;                              %计数器初始化

% 思路：奇数个1时输出-1，进行极性交替

for k=1:length(xn)
    if xn(k)==1
        num=num+1;              %记录1码的个数
        if num/2==fix(num/2)       %如果1码的个数为偶数，是2的整数倍
            yn(k)=1;              %两端相同，波形取值为+1
        else 
            yn(k)=-1;             %如果1码的个数为奇数，num/2与fix(num/2) 不等
        end                      %波形取值为-1
    end
end


subplot(3,1,1)
stairs([0:length(xn)-1],xn);
axis([0 length(xn) -2 2]);
title(' 郑宇凡的单极性不归零波形');    % 修改“***”为自己的名字
 
subplot(3,1,2)
stairs([0:length(xn)-1],yn);
axis([0 length(xn) -2 2]);
title(' AMI码的编码波形');    
 
decodeAMI=abs(yn);                   % AMI译码
 
subplot(3,1,3)
stairs([0:length(xn)-1],decodeAMI);
axis([0 length(xn) -2 2]);
title('AMI码的译码波形');