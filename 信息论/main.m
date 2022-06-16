clc
clear
p=[0.4,0.3,0.2,0.1]
[ h,e ] = Huffman_code(p)
H=-0.4*log2(0.4)-0.3*log2(0.3)-0.2*log2(0.2)-0.1*log2(0.1) %熵
H/e%编码效率