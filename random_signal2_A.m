clear all
h=fir1(71,[0.25 0.55]); 
%71λ������0.25��0.55�ֱ�Ϊ��ͨ�˲����Ľ�ֹƵ�ʣ�hΪFIR�˲���ϵ�������˲����ĳ弤��Ӧh(n)
[HH,WW]=freqz(h,1,512); 
%���ط����׺���λ�ף�512Ϊ���ݵ���
subplot(121);plot(WW/pi,20*log10(abs(HH)));   %������������
grid on; xlabel('��һ��Ƶ��'); ylabel('���� (dB)');
axis([0 1 -100 0]);
subplot(122); plot(WW/pi, unwrap(angle(HH))*180/pi); %����λ��
grid on; xlabel('��һ��Ƶ��'); ylabel('��λ (��)');
