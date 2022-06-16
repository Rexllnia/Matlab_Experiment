%����energy.m: ��������%
function rec_error=energy(image,type,N) %type: �任��ʽ(DCT or DFT)
%type = 1: DCT�Atype=2: DFT�C%
rec_error=zeros(1,N);
d_image=double(image)/255;              %��ԭͼ��ĸ�ʽ�任Ϊdouble��ʽ
if type==1                              %��DCT�任
  coef_all=dct2(d_image);
else
  coef_all=fft2(d_image);               %��DFT�任
end
for n=1:N
  coef_part=zeros(N,N);
  coef_part(1:n,1:n)=coef_all(1:n,1:n);
    if type==1                          
    rec_image= idct2(coef_part);        %��DCT���任
  else                                  
    rec_image=real(ifft2(coef_part));   %��DFT���任
  end
  %�������%
  diff=d_image-rec_image;
  rec_error(n)=sum(sum(diff.^2));       %�������������ݮ�
end
