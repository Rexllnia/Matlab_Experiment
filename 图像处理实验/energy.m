%函数energy.m: 能量集中%
function rec_error=energy(image,type,N) %type: 变换方式(DCT or DFT)
%type = 1: DCTtype=2: DFT%
rec_error=zeros(1,N);
d_image=double(image)/255;              %将原图像的格式变换为double格式
if type==1                              %做DCT变换
  coef_all=dct2(d_image);
else
  coef_all=fft2(d_image);               %做DFT变换
end
for n=1:N
  coef_part=zeros(N,N);
  coef_part(1:n,1:n)=coef_all(1:n,1:n);
    if type==1                          
    rec_image= idct2(coef_part);        %做DCT反变换
  else                                  
    rec_image=real(ifft2(coef_part));   %做DFT反变换
  end
  %求误差量%
  diff=d_image-rec_image;
  rec_error(n)=sum(sum(diff.^2));       %存放误差量的数据
end
