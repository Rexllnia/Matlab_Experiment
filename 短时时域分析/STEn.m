%短时能量计算函数
function para=STEn(x,win,inc)
    X=enframe(x,win,inc)';     % 分帧
    fn=size(X,2);              % 求出帧数
    for i=1 : fn
        u=X(:,i); % 取出一帧
        u2=u.*u;
        para(i)=sum(abs(u2))/200;         % 对一帧累加求和
    end
 end

