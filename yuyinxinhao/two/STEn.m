function para=STEn(x,win,inc)
    X=enframe(x,win,inc)';     % 分帧
    fn=size(X,2);              % 求出帧数
    for i=1 : fn
        u=X(:,i);              % 取出一帧
        para=sum(abs(enframe(x, win, inc)), 2);     
    end
end