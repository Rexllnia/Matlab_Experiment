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
title('(a)Ԫ��/a/����');ylabel('��ֵ')
subplot 322;plot(y,'k');xlim([0 L]);
title('(b)һ֡����');ylabel('��ֵ')
subplot 323;plot(est_x1,'k');xlim([0 L]);
title('(c)LPCԤ��ֵ');ylabel('��ֵ')
subplot 324;plot(est_x2,'k');xlim([0 L]);
title('(d)pc\coeffԤ��ֵ');ylabel('��ֵ')
subplot 325;plot(err1,'k');xlim([0 L]);
title('(e)LPCԤ�����');ylabel('��ֵ');xlabel('����')
subplot 326;plot(err2,'k');xlim([0 L]);
title('(f)lpc\coeffԤ�����');ylabel('��ֵ');xlabel('����')
