%基于自相关函数法的基音周期检测
function [voiceseg,vsl,SF,Ef,period]=ACF_corr(x,wnd,inc,T1,fs,miniL)
if nargin<6, miniL=10; end
if length(wnd)==1
    wlen=wnd;                 % 求出帧长
else
    wlen=length(wnd);
end
y  = enframe(x,wnd,inc)';       % 分帧
[voiceseg,vsl,SF,Ef]=pitch_vad(x,wnd,inc,T1,miniL);   % 基音的端点检测
fn=length(SF);
Imin=fix(fs/500);                           % 基音周期的最小值
Imax=fix(fs/60);                            % 基音周期的最大值
period=zeros(1,fn);                         % 基音周期初始化
for i=1:vsl                      %只对有话段数据处理
    ixb=voiceseg(i).begin;
    ixe=voiceseg(i).end;
    ixd=ixe-ixb+1;               %求取一段有话段的帧数
    for k=1:ixd                  %对该段有话段数据处理
        u=y(:,k+ixb-1);          %取来一帧数据
        ru= xcorr(u,'coeff');    %计算归一化自相关函数
        ru=ru(wlen:end);         %取延迟量为正值的部分值
        [ tmax, tloc]=max(ru(Imin:Imax));%在Pmin~Pmax范围内寻找最大
        period(k+ixb-1)=Imin+tloc-1;      %给出对应最大值的延迟量
    end
end