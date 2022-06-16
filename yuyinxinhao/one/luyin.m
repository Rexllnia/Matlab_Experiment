recObj=audiorecorder(16000,16,1);
disp('Start speaking.')
recordblocking(recObj,3);
disp('End of Recording.');
% 回放录音数据
play(recObj);
% 获取录音数据
myRecording = getaudiodata(recObj);
% 绘制录音数据波形
x=[0:1/16000:(3-1/16000)];
plot(x,myRecording);
xlabel('时间/s');
ylabel('幅度');
%存储语音信号
filename = 'data1.wav'; 
audiowrite(filename,myRecording,16000);