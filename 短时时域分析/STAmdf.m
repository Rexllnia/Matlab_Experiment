%��ʱ���Ȳ���㺯��
function para=STAmdf(X)
% X ��֡������ź� para
    para=zeros(size(X));
    fn=size(X,2);              % ���֡��
    wlen=size(X,1);
    for i=1 : fn
        u=X(:,i);              % ȡ��һ֡
        for k=1:wlen
            ppp=u(k:end);
           yyy=u(1:end-k+1);
           rrr=sum(abs(ppp-yyy));
           para(k,i)=rrr;
           %para(:,k)=sum(abs(u(k,end)-u(1,end-k+1)));      %��ÿ��������ķ��Ȳ�
        end
    end
 end
