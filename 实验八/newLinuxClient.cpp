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
		
		//看用户是否在命令行输入了断开连接的命令，若是，会收到服务器的提示，跳出接收数据的循环
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
		
		//看用户是否在命令行输入了断开连接的命令，若是，会收到服务器的提示，跳出接收数据的循环
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
	//加载系统的Socket接口
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
	//	cout << "客户端初始化完成！" << endl;
	//	cout << endl;
//	}
//	else{
//		cout << "Socket接口无法打开" << endl;
//		return;
//	}

	cout << "可以使用的命令有：" << endl;
	cout << "conn <ip> <port>: 连接到指定地址和端口的服务端" << endl;
	cout << "disconn：断开与服务端的连接" << endl;
	cout << "time: 请求服务端给出当前时间" << endl;
	cout << "name：请求服务端给出其机器的名称" << endl;
	cout << "list：请求服务端给出当前连接的所有客户端信息（编号、IP地址、端口等）" << endl;
	cout << "send <id>：给对应编号的其他客户端发送键盘输入的内容" << endl;
	cout << "quit：退出客户端程序" << endl;
	cout << endl;

	long clientSocket = socket(AF_INET, SOCK_STREAM, 0);
	SOCKADDR_IN clientsock_in;
	string tmpStr;
	char* cmd;
	hasConn = false;
	while (1){
		cout << ">>>";
		getline(cin, tmpStr); //读取用户命令
		istringstream stream(tmpStr);
		i = 0;
		while (stream >> token[i++]){
			if (i >= 3)
				break;
		}
		if (token[0] == "conn"){ //连接服务器
			//clientsock_in.sin_addr.S_un.S_addr = inet_addr(token[1].c_str());
			clientsock_in.sin_addr.s_addr = inet_addr(token[1].c_str());
			clientsock_in.sin_family = AF_INET;
			port = atoi(token[2].c_str());
			clientsock_in.sin_port = htons(port);
			clientSocket = socket(AF_INET, SOCK_STREAM, 0);

			//连接
			i = -1;
			while (i < 0){
				i = connect(clientSocket, (SOCKADDR*)&clientsock_in, sizeof(SOCKADDR));//开始连接
				if (i < 0)
					cout << "连接服务器失败（第" << ++tryNum << "次尝试）" << endl;
				if (tryNum >= 10){
					cout << "无法连上服务器！请查看服务器是否开启，IP和端口是否正确。" << endl;
					return;
				}
				Sleep(100);
			}
			//cout << "成功连上服务器！" << endl;

			//接收服务器的欢迎信息
			char receiveBuf[100];
			recv(clientSocket, receiveBuf, 101, 0);
			cout << receiveBuf << endl;
			
			//if (again>0)
				//hThread = CreateThread(NULL, NULL, ReceiveThread2, (LPVOID)clientSocket, 0, &dwThreadId);
			//else
			//为client接收服务器数据这一动作单独建立一个线程
			//hThread = CreateThread(NULL, NULL, ReceiveThread, (LPVOID)clientSocket, 0, &dwThreadId);
			//again++;
			//CloseHandle(hThread);
			
			thread hThread(ReceiveThread, clientSocket);
			
		/*	if (hThread == NULL)
				cout << "无法为客户端创建接收服务器数据的线程！" << endl;
			else
				cout << "成功为客户端创建接收服务器数据的线程！" << endl;*/
			hasConn = true;
		}
		else
		if (token[0] == "disconn"){ //断开连接
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
			if (hasConn){ //若socket未结束，那就先结束socket
				cmd = const_cast<char*>(tmpStr.c_str());
				send(clientSocket, cmd, tmpStr.length() + 1, MSG_NOSIGNAL);
				TerminateThread(hThread, dwThreadId);
				close(clientSocket);
				//WSACleanup();
				hasConn = false;
				break; //退出客户端
			}
			else
			{
				break;
			}

		}
		else
		{
			if (!hasConn){
				cout << "请先连接服务器。"<< endl;
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
