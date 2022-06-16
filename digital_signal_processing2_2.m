%����˫���Ա任�����һ����ͨ�б�ѩ��II�������˲�����ͨ����ֹƵ��Ϊ2000Hz�������ֹƵ
%��Ϊ1500Hz������Ƶ��Ϊ20000Hz��ͨ�����˥��Ϊ0.3dB�������С˥��Ϊ50dB
Wp=2*pi*2000;Wp1=2*pi*Wp;
Ws=2*pi*1500;Ws1=2*pi*Ws;
Rp=0.3;
Rs=50;
Fs=30000;
[N,Wn]=cheb2ord(Wp,Ws,Rp,Rs,'s');
 
[Z,P,K]=cheb2ap(N,Rs);
[A,B,C,D]=zp2ss(Z,P,K);
%��ͨ����ͨ�任
[At,Bt,Ct,Dt]=lp2hp(A,B,C,D,Wn);
[num1,den1]=ss2tf(At,Bt,Ct,Dt);
%˫���Ա任����ģ���˲���ת��Ϊ�����˲���
[num2,den2]=bilinear(num1,den1,Fs);
%���Ʒ�Ƶ��Ӧ��������
[H,W]=freqz(num2,den2);
subplot(2,1,1)
plot(W*Fs/2/pi,20*log10(abs(H)));
grid;
xlabel('Ƶ��/Hz');
ylabel('��ֵ(db)');
%������Ƶ��Ӧ��������
subplot(2,1,2)
plot(W*Fs/2/pi,angle(H)/pi);grid;
xlabel('Ƶ��/Hz');
ylabel('���/  ');
