clear all; clc; close all;
[x,fs]=audioread('C1_1_y_1.wav');                    % 读入语音数据
L=1440;                                  % 帧长
p=30;                                   % LPC的阶数
y=x(90405:90405+L);                       % 找有话段，取一帧数据
ar=lpc_coeff(y,p);                            % 线性预测变换
rf=lpcar2rf(ar)