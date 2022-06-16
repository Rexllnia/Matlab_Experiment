a=0.8;
sigma=2;
N=500;
u=randn(N,1);
x(1)=sigma*u(1)/sqrt(1-a^2);
for i=2:N
x(i)=a*x(i-1)+sigma*u(i);
end
m=mean(x)
sigma2= var(x)
y=xcorr(x);
plot(y);
