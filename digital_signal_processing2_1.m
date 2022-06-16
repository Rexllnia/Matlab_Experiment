clc
clear
%���ó����Ӧ���䷨���һ����ͨ�б�ѩ��I�������˲�������ͨ�����޽�ֹƵ��Ϊ400Hz�����
%��ֹƵ��Ϊ600Hz������Ƶ��Ϊ1000Hz��ͨ�����˥��Ϊ3dB�������С˥��Ϊ60dB��
Wp=2*pi*400;     %400; 
Ws=2*pi*600;     %600;  
Rp=3;       
Rs=60;        
Fs=2463;      
%ѡ���˲�������С����
[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs,'s');  
%?�����б�ѩ��I�͵�ͨ�˲���
[Z,P,K]=cheb1ap(N,Rp);            
[A,B,C,D]=zp2ss(Z,P,K);            %��ϵͳ�㼫��ģ��ת��Ϊ״̬�ռ�ģ��[A,B,C,D]     
%��ͨ����ͨ��ת��
[At,Bt,Ct,Dt]=lp2lp(A,B,C,D,Wn);   %����ֹƵ��Ϊ1rad/s��ģ���ͨ�˲���ת��Ϊ��ֹƵ��ΪWn
%��ģ���ͨ�˲���
[num1,den1]=ss2tf(At,Bt,Ct,Dt);    %������ϵͳ���ݺ���ģ�ͣ�num1Ϊϵͳ���ݺ�������ϵ�����������den1Ϊ��ĸϵ��������
%�����Ӧ���䷨��ģ���˲���ת��Ϊ�����˲���
[num2,den2]=impinvar(num1,den1,Fs);%�����Ӧ���䷨ģ���˲���ת��Ϊ�����˲���������H(z)
%���Ʒ�Ƶ��Ӧ����
[H,W1]=freqs(num1,den1);         
figure(1)
subplot(2,1,1);
semilogx(W1/pi/2,20*log10(abs(H)));grid;  %X���������ΪƵ�ʣ�Hz����Y��Ϊ��ֵ����Ƶ����ͼ
xlabel('        Ƶ��/ Hz');
ylabel('   ģ���˲�����ֵ(db)');
[H,W2]=freqz(num2,den2,512,'whole',Fs);   %���������˲����ĸ�Ƶ����Ӧ
subplot(2,1,2);
plot(W2,20*log10(abs(H)));grid;
xlabel('        Ƶ��/ Hz');
ylabel('   �����˲�����ֵ(db)');
[H,W]=freqz(num2,den2,512,'whole');        
figure(2)
subplot(2,1,1);
plot(W/pi,20*log10(abs(H)));grid;            %X��Ϊ���ֽ�Ƶ�ʣ�Y��Ϊ��ֵ
xlabel('    ���ֽ�Ƶ��/pi ');
ylabel('    �����˲�����ֵ(db)');
subplot(2,1,2);
plot(W/pi,angle(H)/pi);grid;
xlabel('    ���ֽ�Ƶ��/pi');
ylabel('    ���/pi ');

