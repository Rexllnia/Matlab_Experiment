N=500;
for i=1:100
xt=random('norm',0,1,1,N);
ht=fir1(101,[0.3 0.4]);
HW=fft(ht,2*N);
Rxx=xcorr(xt,'biased');
Sxx=abs(fft(xt,2*N).^2)/(2*N);
HW2=abs(HW).^2;
Syy=Sxx.*HW2+Syy;
Ryy=fftshift(ifft(Syy));
w=(1:N)/N;
t=(-N:N-1)/N*(N/20000);
end
Syy=Syy/100;
subplot(411);plot(w,abs(Sxx(1:N)));
subplot(412);plot(w,abs(HW2(1:N)));
subplot(413);plot(w,abs(Syy(1:N)));
subplot(414);plot(t,Ryy);
