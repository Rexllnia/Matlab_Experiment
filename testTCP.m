t_server=tcpip('0.0.0.0',3333,'NetworkRole','server');%���һ���������ӵĿͻ����������ӡ�
t_server.InputBuffersize=100000;%������󻺳���
fopen(t_server);%�򿪷�������ֱ������һ��TCP���Ӳŷ��أ�
try_times=50;%���Զ�ȡ���������ݵĴ���
for i=1:try_times
    pause(0.02);
    try    
         data_recv=fscanf(t_server)%�����ı�����
        if data_recv~=null
            break;
        end

    catch
        t_server.ValuesReceived%�鿴��ȡ�����������������û�ж���������0��
    end
     if data_recv~=null
            break;
        end
end
fclose(t_server);