
N=500;
xt=random('norm',0,1,N,100);
ht=fir1(101,[0.3 0.4]);
HW=fft(ht,2*N);
HW=rot90(fliplr(HW));
Rxx=xcorr(xt,'biased');
Sxx=abs(fft(xt,2*N).^2)/(2*N);
HW2=abs(HW).^2;
Syy=Sxx.*HW2;
Syy=mean(rot90(Syy));

Ryy=fftshift(ifft(Syy));
w=(1:N)/N;
t=(-N:N-1)/N*(N/20000);
subplot(411);plot(w,abs(Sxx(1:N)));
subplot(412);plot(w,abs(HW2(1:N)));
subplot(413);plot(w,abs(Syy(1:N)));
subplot(414);plot(t,Ryy);