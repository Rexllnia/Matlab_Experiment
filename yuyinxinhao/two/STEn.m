function para=STEn(x,win,inc)
    X=enframe(x,win,inc)';     % ��֡
    fn=size(X,2);              % ���֡��
    for i=1 : fn
        u=X(:,i);              % ȡ��һ֡
        para=sum(abs(enframe(x, win, inc)), 2);     
    end
end