% design a FIR lowpass filter 
%wp=0.2pi,Rp=0.25DB,ws=0.3pi,As=50dB
wp=0.2*pi;ws=0.3*pi
tr_width=ws-wp;
M=ceil(6.6*pi/tr_width)+1;
n=[0:1:M-1];
wc=(ws+wp)/2;    % ideal LPF cutoff frequency
hd=ideal_lp(wc,M);
w_ham=(hamming(M))';
h=hd.*w_ham;
[db,mag,pha,grd,w]=freqz_m(h,[1]);
delta_w=2*pi/1000;
Rp=-(min(db(1:1:wp/delta_w+1)));    %actual passband ripple
As=-round(max(db(ws/delta_w+1:1:501)));  % min stopband attenuation
figure(1)
%subplot(2,2,1);stem(n,hd);title('Ideal Implust Respone')
plot(w/pi,db);title('Magnitude Response in dB');grid
axis([0 1 -100 10]);xlabel('frequency in pi units');ylabel('Decibels');
