xn=[1 0 0 1 0 1 0 1 1 0 1 1 0 0 1 0 0];   %���������������У�������֤
yn=xn;                               %���yn��ʼ��
num=0;                              %��������ʼ��

% ˼·��������1ʱ���-1�����м��Խ���

for k=1:length(xn)
    if xn(k)==1
        num=num+1;              %��¼1��ĸ���
        if num/2==fix(num/2)       %���1��ĸ���Ϊż������2��������
            yn(k)=1;              %������ͬ������ȡֵΪ+1
        else 
            yn(k)=-1;             %���1��ĸ���Ϊ������num/2��fix(num/2) ����
        end                      %����ȡֵΪ-1
    end
end


subplot(3,1,1)
stairs([0:length(xn)-1],xn);
axis([0 length(xn) -2 2]);
title(' ֣��ĵ����Բ����㲨��');    % �޸ġ�***��Ϊ�Լ�������
 
subplot(3,1,2)
stairs([0:length(xn)-1],yn);
axis([0 length(xn) -2 2]);
title(' AMI��ı��벨��');    
 
decodeAMI=abs(yn);                   % AMI����
 
subplot(3,1,3)
stairs([0:length(xn)-1],decodeAMI);
axis([0 length(xn) -2 2]);
title('AMI������벨��');