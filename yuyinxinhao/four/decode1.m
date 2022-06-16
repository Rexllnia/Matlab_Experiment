%%½âÂëº¯Êý
function [est_x,error,n]=decode1(x,a,fs)
LENGTH=length(x);  
n=0:1/fs:(LENGTH-1)/fs; 
est_x=filter([0 -a(2:end)],1,x);
error=x-est_x;   
end
