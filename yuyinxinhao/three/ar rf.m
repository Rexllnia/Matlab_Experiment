function rf=lpcar2rf(ar)
%���ܣ���֪Ԥ��ϵ�����������ϵ��
%˵����ar��Ԥ��ϵ����rf�Ƿ���ϵ����[nf,p1] = size(ar);
if p1==1
   rf=ones(nf,1);
else
   if any(ar(:,1)~=1)
      ar=ar./ar(:,ones(1,p1));
   end
   rf = ar;
   w=ones(nf,1);
   for j = p1-1:-1:2
      k = rf(:,j+1);
      d = (1-k.^2).^(-1);
      wj=ones(1,j-1);
      rf(:,2:j) = (rf(:,2:j)-k(:,wj).*rf(:,j:-1:2)).*d(:,wj);
   end
end

%*************************************************************************%
function [ar,arp,aru,g]=lpcrf2ar(rf)
%���ܣ���֪����ϵ�������Ԥ��ϵ�� 
%˵����rf�Ƿ���ϵ����ar��Ԥ��ϵ����arp��ѹ�����ݺ�����aru������ٶȵĴ��ݺ�����g�����档[nf,p1]=size(rf);
p2=p1+1;
p=p1-1;
pm=p-1;
arf=[ones(nf,1) zeros(nf,p)];
arr=[zeros(nf,p) rf(:,p1)];
cr=zeros(nf,p);
for k=1:p-1
  rk=rf(:,(p1-k)*ones(1,k));
  cr(:,1:k)=arr(:,p2-k:p1);
  arr(:,p1-k:p)=arr(:,p1-k:p)+rk.*arf(:,1:k);
  arf(:,2:k+1)=arf(:,2:k+1)+rk.*cr(:,1:k);
end
r1=rf(:,1);
ar=arf+r1(:,ones(1,p1)).*arr;
if nargout>1
   kp=prod(1-rf(:,2:p1),2);
   arp=(arf-arr)./kp(:,ones(1,p1));
   if nargout>2
      g=prod(1+rf(:,2:p1),2);
      aru=(arf+arr)./g(:,ones(1,p1));
      if nargout>3
         g=g.*(1+rf(:,1));
      end
   end
end

%***************************************************************************%
function ao=lpcrf2ao(rf)
%���ܣ���֪����ϵ������������������������
%˵����rf�Ƿ���ϵ����ao����������ȡ�
ao =(1-rf)./(1+rf);

%*****************************************************************************%
function rf=lpcao2rf(ao)
%���ܣ���֪����������������ȼ��������ϵ��
%˵����ao����������ȣ�rf�Ƿ���ϵ����
rf = (1-ao)./(1+ao);
