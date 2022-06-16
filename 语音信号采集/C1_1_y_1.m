clear
clc
[x,Fs]=audioread('C1_1_y_1.wav'); 
N=length(x); 
time=(0:N-1)/Fs; 
xmax=max(abs(x));%归一化
x=ceil((x/xmax+1)*100);
fileID = fopen('exp.txt','w');
fprintf(fileID,'%d ,\n',x);
fclose(fileID)
subplot(2,2,1); plot(time,x,'k');title('origin');xlabel('单位s');
[x,Fs]=audioread('Chalf.wav'); 
N=length(x); 
time=(0:N-1)/Fs; 
xmax=max(abs(x)); %归一化
x=x/xmax;
subplot(2,2,2); plot(time,x,'k');title('half');xlabel('单位s');
[x,Fs]=audioread('Cdouble.wav'); 
N=length(x); 
time=(0:N-1)/Fs; 
xmax=max(abs(x)); %归一化
x=x/xmax;
subplot(2,2,3); plot(time,x,'k');title('double');xlabel('单位s');