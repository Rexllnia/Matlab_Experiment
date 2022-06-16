%��������غ������Ļ������ڼ��
function [voiceseg,vsl,SF,Ef,period]=ACF_corr(x,wnd,inc,T1,fs,miniL)
if nargin<6, miniL=10; end
if length(wnd)==1
    wlen=wnd;                 % ���֡��
else
    wlen=length(wnd);
end
y  = enframe(x,wnd,inc)';       % ��֡
[voiceseg,vsl,SF,Ef]=pitch_vad(x,wnd,inc,T1,miniL);   % �����Ķ˵���
fn=length(SF);
Imin=fix(fs/500);                           % �������ڵ���Сֵ
Imax=fix(fs/60);                            % �������ڵ����ֵ
period=zeros(1,fn);                         % �������ڳ�ʼ��
for i=1:vsl                      %ֻ���л������ݴ���
    ixb=voiceseg(i).begin;
    ixe=voiceseg(i).end;
    ixd=ixe-ixb+1;               %��ȡһ���л��ε�֡��
    for k=1:ixd                  %�Ըö��л������ݴ���
        u=y(:,k+ixb-1);          %ȡ��һ֡����
        ru= xcorr(u,'coeff');    %�����һ������غ���
        ru=ru(wlen:end);         %ȡ�ӳ���Ϊ��ֵ�Ĳ���ֵ
        [ tmax, tloc]=max(ru(Imin:Imax));%��Pmin~Pmax��Χ��Ѱ�����
        period(k+ixb-1)=Imin+tloc-1;      %������Ӧ���ֵ���ӳ���
    end
end