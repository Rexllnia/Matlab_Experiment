t_server=tcpip('0.0.0.0',3333,'NetworkRole','server');%与第一个请求连接的客户机建立连接。
t_server.InputBuffersize=100000;%设置最大缓冲区
fopen(t_server);%打开服务器，直到建立一个TCP连接才返回；
try_times=50;%尝试读取缓冲区数据的次数
for i=1:try_times
    pause(0.02);
    try    
         data_recv=fscanf(t_server)%接收文本数据
        if data_recv~=null
            break;
        end

    catch
        t_server.ValuesReceived%查看读取出的数据数量，如果没有读到，返回0；
    end
     if data_recv~=null
            break;
        end
end
fclose(t_server);