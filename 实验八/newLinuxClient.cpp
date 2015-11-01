#include <netinet/in.h>
#include <unistd.h>
#include <sys/socket.h>
#include <iostream>
#include <string>
#include <stdio.h>
#include <sstream>
#include <cstdlib>
#include <thread>
#include <cstring>
using namespace std;

typedef unsigned long DWORD;
typedef unsigned int WORD;

DWORD ReceiveThread(long lparam){
	
	int err, i, num;
	char buf[100] = "";
	long ClientSocket = (long)lparam;
	string token[3];

	memset(buf, 0, sizeof(buf));
	while (1){
		err = recv(ClientSocket, buf, sizeof(buf), 0);
		cout << buf << endl;
		
		//���û��Ƿ��������������˶Ͽ����ӵ�������ǣ����յ�����������ʾ�������������ݵ�ѭ��
		string cmd(buf);
		istringstream stream(cmd);
		i = 0;
		while (stream >> token[i++]){
			if (i >= 3)
				break;
		}
		if (token[0] == "Disconnect"){
			break;
		}
		memset(buf, 0, sizeof(buf));
	}
	return 1;

}

/*DWORD WINAPI ReceiveThread(LPVOID lparam){
	int err, i, num;
	char buf[100] = "";
	long ClientSocket = (long)(LPVOID)lparam;
	string token[3];

	memset(buf, 0, sizeof(buf));
	while (1){
		err = recv(ClientSocket, buf, sizeof(buf), 0);
		cout << buf << endl;
		
		//���û��Ƿ��������������˶Ͽ����ӵ�������ǣ����յ�����������ʾ�������������ݵ�ѭ��
		string cmd(buf);
		istringstream stream(cmd);
		i = 0;
		while (stream >> token[i++]){
			if (i >= 3)
				break;
		}
		if (token[0] == "Disconnect"){
			break;
		}
		memset(buf, 0, sizeof(buf));
	}
	return 1;
}*/

void main(){
	//����ϵͳ��Socket�ӿ�
	int err, i, port;
	WORD versionRequired;
//	WSADATA wsaData;
	//HANDLE hThread;
	
	DWORD dwThreadId;
	bool hasConn;
	string token[3];
	int again = 0;
	int tryNum = 0;

	//versionRequired = MAKEWORD(1, 1);
	//err = WSAStartup(versionRequired, &wsaData);
//	if (!err){
	//	cout << "�ͻ��˳�ʼ����ɣ�" << endl;
	//	cout << endl;
//	}
//	else{
//		cout << "Socket�ӿ��޷���" << endl;
//		return;
//	}

	cout << "����ʹ�õ������У�" << endl;
	cout << "conn <ip> <port>: ���ӵ�ָ����ַ�Ͷ˿ڵķ����" << endl;
	cout << "disconn���Ͽ������˵�����" << endl;
	cout << "time: �������˸�����ǰʱ��" << endl;
	cout << "name���������˸��������������" << endl;
	cout << "list���������˸�����ǰ���ӵ����пͻ�����Ϣ����š�IP��ַ���˿ڵȣ�" << endl;
	cout << "send <id>������Ӧ��ŵ������ͻ��˷��ͼ������������" << endl;
	cout << "quit���˳��ͻ��˳���" << endl;
	cout << endl;

	long clientSocket = socket(AF_INET, SOCK_STREAM, 0);
	SOCKADDR_IN clientsock_in;
	string tmpStr;
	char* cmd;
	hasConn = false;
	while (1){
		cout << ">>>";
		getline(cin, tmpStr); //��ȡ�û�����
		istringstream stream(tmpStr);
		i = 0;
		while (stream >> token[i++]){
			if (i >= 3)
				break;
		}
		if (token[0] == "conn"){ //���ӷ�����
			//clientsock_in.sin_addr.S_un.S_addr = inet_addr(token[1].c_str());
			clientsock_in.sin_addr.s_addr = inet_addr(token[1].c_str());
			clientsock_in.sin_family = AF_INET;
			port = atoi(token[2].c_str());
			clientsock_in.sin_port = htons(port);
			clientSocket = socket(AF_INET, SOCK_STREAM, 0);

			//����
			i = -1;
			while (i < 0){
				i = connect(clientSocket, (SOCKADDR*)&clientsock_in, sizeof(SOCKADDR));//��ʼ����
				if (i < 0)
					cout << "���ӷ�����ʧ�ܣ���" << ++tryNum << "�γ��ԣ�" << endl;
				if (tryNum >= 10){
					cout << "�޷����Ϸ���������鿴�������Ƿ�����IP�Ͷ˿��Ƿ���ȷ��" << endl;
					return;
				}
				Sleep(100);
			}
			//cout << "�ɹ����Ϸ�������" << endl;

			//���շ������Ļ�ӭ��Ϣ
			char receiveBuf[100];
			recv(clientSocket, receiveBuf, 101, 0);
			cout << receiveBuf << endl;
			
			//if (again>0)
				//hThread = CreateThread(NULL, NULL, ReceiveThread2, (LPVOID)clientSocket, 0, &dwThreadId);
			//else
			//Ϊclient���շ�����������һ������������һ���߳�
			//hThread = CreateThread(NULL, NULL, ReceiveThread, (LPVOID)clientSocket, 0, &dwThreadId);
			//again++;
			//CloseHandle(hThread);
			
			thread hThread(ReceiveThread, clientSocket);
			
		/*	if (hThread == NULL)
				cout << "�޷�Ϊ�ͻ��˴������շ��������ݵ��̣߳�" << endl;
			else
				cout << "�ɹ�Ϊ�ͻ��˴������շ��������ݵ��̣߳�" << endl;*/
			hasConn = true;
		}
		else
		if (token[0] == "disconn"){ //�Ͽ�����
			cmd = const_cast<char*>(tmpStr.c_str());
			send(clientSocket, cmd, tmpStr.length() + 1, MSG_NOSIGNAL);
			Sleep(100);
			TerminateThread(hThread, dwThreadId);
			close(clientSocket);
			//WSACleanup();
			hasConn = false;
		}
		else
		if (token[0] == "quit"){
			if (hasConn){ //��socketδ�������Ǿ��Ƚ���socket
				cmd = const_cast<char*>(tmpStr.c_str());
				send(clientSocket, cmd, tmpStr.length() + 1, MSG_NOSIGNAL);
				TerminateThread(hThread, dwThreadId);
				close(clientSocket);
				//WSACleanup();
				hasConn = false;
				break; //�˳��ͻ���
			}
			else
			{
				break;
			}

		}
		else
		{
			if (!hasConn){
				cout << "�������ӷ�������"<< endl;
			}
			else
			{
				cmd = const_cast<char*>(tmpStr.c_str());
				send(clientSocket, cmd, tmpStr.length() + 1, MSG_NOSIGNAL);
			}
		}
		Sleep(500);
		//recv(clientSocket, receiveBuf, 101, 0);
		//printf("%s\n", receiveBuf);
	}
	//WSACleanup();
}
