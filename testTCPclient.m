Ip='127.0.0.1'
t_client=tcpip(Ip,30000,'NetworkRole','client');%�뱾�������������ӣ��˿ں�Ϊ30000����Ϊ�ͻ������ӡ�
t_client.OutputBuffersize=100000;
fopen(t_client);%��һ���������������ӣ�ֱ��������ɷ��أ����򱨴�
txt_send='HELO'; %���͵��ı�����
pause(1);%�ȴ������ȶ����������á�
fprintf(t_client,txt_send);%�����ı�����
fclose(t_client)