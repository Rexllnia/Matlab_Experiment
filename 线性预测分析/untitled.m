clear all; clc; close all;
[x,fs]=audioread('C1_1_y_1.wav');                    % ������������
L=1440;                                  % ֡��
p=30;                                   % LPC�Ľ���
y=x(90405:90405+L);                       % ���л��Σ�ȡһ֡����
ar=lpc_coeff(y,p);                            % ����Ԥ��任
rf=lpcar2rf(ar)