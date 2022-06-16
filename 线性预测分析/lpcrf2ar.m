function [ar,arp,aru,g]=lpcrf2ar(rf)
[nf,p1]=size(rf);
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