function [outputArg1] = matfindstr(path,str)
%UNTITLED3 此处提供此函数的摘要
%   此处提供详细说明
fp=fileread(path);
outputArg1=strfind(fp,str);
end