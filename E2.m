xh=[1 0 0 0 0 0 0 0 0 0 0 0 0 ];       %自行设置数字序列，用于验证
yh=[];       %自行设置对应的数字序列，用于验证
  %%1 0 0 0 +v -b 0 0 -v +b 0 0 +v

 % 此处需要自己写出HDB3译码过程
 % 思路：判断 HDB3码中序列的第一个元素开始，如果第k个元素不为零，则保留该元素的极性
%在下一个循环中，如果是与前一个保留元素的记性相同，则为V码，设置为4连0，如果极性不同，则再次保留该非0元素的极性。

decode=yh;                            %输出初始化
sign=0;                               %极性标志初始化

for k=1:length(yh)
    if yh(k)~=0
       if sign==yh(k)  %如果当前码与前一个非零码的极性相同
        decode(k-3:k)=[0 0 0 0]; %则该码判为V码 并将*00V清零
       end
        sign=yh(k);      %极性标志 每遇到非零码 则保留当前循环中非零码的极性
    end
end


subplot(2,1,1)
stairs([0:length(xh)-1],yh);
axis([0 length(xh) -2 2]); 
title('郑宇凡 HDB3波形');       % 修改“***”为自己的名字

 decode
 sign
subplot(2,1,2)
stairs([0:length(xh)-1],abs(decode));
axis([0 length(xh) -2 2]);
title(' HDB3码的译码波形');