recObj=audiorecorder(16000,16,1);
disp('Start speaking.')
recordblocking(recObj,3);
disp('End of Recording.');
% �ط�¼������
play(recObj);
% ��ȡ¼������
myRecording = getaudiodata(recObj);
% ����¼�����ݲ���
x=[0:1/16000:(3-1/16000)];
plot(x,myRecording);
xlabel('ʱ��/s');
ylabel('����');
%�洢�����ź�
filename = 'data1.wav'; 
audiowrite(filename,myRecording,16000);