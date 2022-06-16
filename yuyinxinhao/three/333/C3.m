[x,fs] = audioread('pyr.wav');
L=240;
y=x(8001:8000+L);
p=12;
ar1=lpc(y,p);
ar2=lpc_coeff(y,p);
est_x1=filter([0-ar1(2:end)],1,y);
est_x2=filter([0-ar2(2:end)],1,y);
err1=y-est_x1;
err2=y-est_x2;

subplot 321;plot(x,'k');axis tight;
title('(a)元音/a/波形');ylabel('幅值')
subplot 322;plot(y,'k');xlim([0 L]);
title('(b)一帧数据');ylabel('幅值')
subplot 323;plot(est_x1,'k');xlim([0 L]);
title('(c)LPC预测值');ylabel('幅值')
subplot 324;plot(est_x2,'k');xlim([0 L]);
title('(d)pc\coeff预测值');ylabel('幅值')
subplot 325;plot(err1,'k');xlim([0 L]);
title('(e)LPC预测误差');ylabel('幅值');xlabel('样点')
subplot 326;plot(err2,'k');xlim([0 L]);
title('(f)lpc\coeff预测误差');ylabel('幅值');xlabel('样点')
