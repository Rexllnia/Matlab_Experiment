X=-6:0.01:7;
Y=normpdf(X,1,2);
subplot(1,2,1);
axis on;
plot(X,Y);
axis square;
title('正态概率密度函数');
Y=normcdf(X,1,2);
subplot(1,2,2);
plot(X,Y);
title('正态概率分布函数');
axis square;