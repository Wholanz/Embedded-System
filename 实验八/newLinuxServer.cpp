#include <netinet/in.h>
#include <unistd.h>
#include <sys/socket.h>
#include <stdio.h>
#include <iostream>
#include <map>
#include <string>
#include <sstream>
#include <cstdlib>
#include <sys/types.h>
#include <cstring>
#include <time.h>
#include <arpa/inet.h>
using namespace std;

typedef unsigned long DWORD;
typedef unsigned int WORD;

map<int, long> clientList;
int total;

DWORD AnswerThread(long lparam){
	
	int err, i, num, tokenNum;
	char buf[100] = "";
	char recvbuf[100] = "您已成功连上服务器！";
	long ClientSocket = (long)lparam;
	map<int, long>::iterator it;
	string token[20];

	memset(buf, 0, sizeof(buf));
	send(ClientSocket, recvbuf, 100, MSG_NOSIGNAL);
	while (1){
		err = recv(ClientSocket, buf, sizeof(buf), 0);
		cout << "来自用户的命令： " <<buf << endl;

		
		string cmd(buf);
		istringstream stream(cmd);
		tokenNum = 0;
		while (stream >> token[tokenNum++]){
			if (tokenNum >= 20)
				break;
		}

		if(token[0] == "ready"){
		
			cout << "hehe" << endl;
		}
		/*if (token[0] == "time"){ 
			//SYSTEMTIME st = { 0 };
			GetLocalTime(&st);
			string stime;
			int k;
			string tmpStr;
			char portCh[6];
			time_t timep;
			time(&timep);
			tmpStr = ctime(&timep);
			/*k = st.wYear;
			tmpStr = _itoa(k, portCh, 10);
			stime = tmpStr+"/";

			k = st.wMonth;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + "/";

			k = st.wDay;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + "  ";

			k = st.wHour;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + ":";

			k = st.wMinute;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + ":";

			k = st.wSecond;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr; 

			char* message = const_cast<char*>(stime.c_str());
			send(ClientSocket, message, stime.length() + 1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "name"){ 
			char message[256];
			gethostname(message, 256);
			string hostname(message);
			send(ClientSocket, message, hostname.length() + 1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "list"){ 
			map<int, long>::iterator it;
			string tmpStr;
			SOCKADDR_IN m_address;
			int nAddrLen;
		
			for (it = clientList.begin(); it != clientList.end(); ++it){
				memset(&m_address, 0, sizeof(m_address));
				nAddrLen = sizeof(m_address);
				getpeername(it->second, (SOCKADDR*)&m_address, &nAddrLen);
				string ipaddr(inet_ntoa(m_address.sin_addr));
				int j = ntohs(m_address.sin_port);
				char portCh[6];
				string portStr(itoa(j, portCh, 10));
				string idStr(_itoa(it->first, portCh, 10));
				tmpStr = idStr + "  " + ipaddr + "  " + portStr;
				char* message = const_cast<char*>(tmpStr.c_str());
				send(ClientSocket, message, tmpStr.length()+1, MSG_NOSIGNAL);
			}
			
		}
		else
		if (token[0] == "send"){ 
			num = atoi(token[1].c_str());
			long& target = clientList[num]; 

			string tmpMessage = token[2];
			for (i = 3; i < tokenNum; i++)
				tmpMessage = tmpMessage + " " + token[i];
			//char* message = const_cast<char*>(token[2].c_str());
			char* message = const_cast<char*>(tmpMessage.c_str());
			//send(target, message, token[2].length(), 0);
			send(target, message, tmpMessage.length()+1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "disconn" || token[0] == "quit"){ 
			
			SOCKADDR_IN t_address;
			int tAddrLen;
			memset(&t_address, 0, sizeof(t_address));
			tAddrLen = sizeof(t_address);
			getpeername(ClientSocket, (SOCKADDR*)&t_address, &tAddrLen);
			string tIP(inet_ntoa(t_address.sin_addr));
			int tPortNum = ntohs(t_address.sin_port);

			
			string tmpStr;
			SOCKADDR_IN m_address;
			int nAddrLen;
			for (it = clientList.begin(); it != clientList.end(); ++it){
				memset(&m_address, 0, sizeof(m_address));
				nAddrLen = sizeof(m_address);
				getpeername(it->second, (SOCKADDR*)&m_address, &nAddrLen);
				string ipaddr(inet_ntoa(m_address.sin_addr));
				int portNum = ntohs(m_address.sin_port);
				
				if (ipaddr == tIP && portNum == tPortNum){
					//clientList.erase(it);
					char* message = "Disconnect successfully!";
					send(ClientSocket, message, 25, MSG_NOSIGNAL);
					break;
				}
				
			}
			break; 
		}*/
		else
		{
			char* message = "Invalid command";
			string tmpStr(message);
			send(ClientSocket, message, tmpStr.length()+1, MSG_NOSIGNAL);
			cout << "Invalid command" << endl;
		}
		
	}
	close(it->second);
	clientList.erase(it);
	close(ClientSocket);
	return 1;

}

/*DWORD WINAPI AnswerThread(LPVOID lparam){
	int err, i, num, tokenNum;
	char buf[100] = "";
	char recvbuf[100] = "Connect successfully";
	long ClientSocket = (long)(LPVOID)lparam;
	map<int, long>::iterator it;
	string token[20];

	memset(buf, 0, sizeof(buf));
	send(ClientSocket, recvbuf, 100, MSG_NOSIGNAL);
	while (1){
		err = recv(ClientSocket, buf, sizeof(buf), 0);
		cout << "Command from client " <<buf << endl;

		
		string cmd(buf);
		istringstream stream(cmd);
		tokenNum = 0;
		while (stream >> token[tokenNum++]){
			if (tokenNum >= 20)
				break;
		}

		
		if (token[0] == "time"){ 
			SYSTEMTIME st = { 0 };
			GetLocalTime(&st);
			string stime;
			int k;
			string tmpStr;
			char portCh[6];
			k = st.wYear;
			tmpStr = _itoa(k, portCh, 10);
			stime = tmpStr+"/";

			k = st.wMonth;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + "/";

			k = st.wDay;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + "  ";

			k = st.wHour;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + ":";

			k = st.wMinute;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr + ":";

			k = st.wSecond;
			tmpStr = _itoa(k, portCh, 10);
			stime = stime + tmpStr;

			char* message = const_cast<char*>(stime.c_str());
			send(ClientSocket, message, stime.length() + 1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "name"){ 
			char message[256];
			gethostname(message, 256);
			string hostname(message);
			send(ClientSocket, message, hostname.length() + 1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "list"){ 
			map<int, long>::iterator it;
			string tmpStr;
			SOCKADDR_IN m_address;
			int nAddrLen;
			
			for (it = clientList.begin(); it != clientList.end(); ++it){
				memset(&m_address, 0, sizeof(m_address));
				nAddrLen = sizeof(m_address);
				getpeername(it->second, (SOCKADDR*)&m_address, &nAddrLen);
				string ipaddr(inet_ntoa(m_address.sin_addr));
				int j = ntohs(m_address.sin_port);
				char portCh[6];
				string portStr(_itoa(j, portCh, 10));
				string idStr(_itoa(it->first, portCh, 10));
				tmpStr = idStr + "  " + ipaddr + "  " + portStr;
				char* message = const_cast<char*>(tmpStr.c_str());
				send(ClientSocket, message, tmpStr.length()+1, MSG_NOSIGNAL);
			}
			
		}
		else
		if (token[0] == "send"){ 
			num = atoi(token[1].c_str());
			long& target = clientList[num]; 

			string tmpMessage = token[2];
			for (i = 3; i < tokenNum; i++)
				tmpMessage = tmpMessage + " " + token[i];
			//char* message = const_cast<char*>(token[2].c_str());
			char* message = const_cast<char*>(tmpMessage.c_str());
			//send(target, message, token[2].length(), 0);
			send(target, message, tmpMessage.length()+1, MSG_NOSIGNAL);
		}
		else
		if (token[0] == "disconn" || token[0] == "quit"){ 
			
			SOCKADDR_IN t_address;
			int tAddrLen;
			memset(&t_address, 0, sizeof(t_address));
			tAddrLen = sizeof(t_address);
			getpeername(ClientSocket, (SOCKADDR*)&t_address, &tAddrLen);
			string tIP(inet_ntoa(t_address.sin_addr));
			int tPortNum = ntohs(t_address.sin_port);

			string tmpStr;
			SOCKADDR_IN m_address;
			int nAddrLen;
			for (it = clientList.begin(); it != clientList.end(); ++it){
				memset(&m_address, 0, sizeof(m_address));
				nAddrLen = sizeof(m_address);
				getpeername(it->second, (SOCKADDR*)&m_address, &nAddrLen);
				string ipaddr(inet_ntoa(m_address.sin_addr));
				int portNum = ntohs(m_address.sin_port);
				
				if (ipaddr == tIP && portNum == tPortNum){
					//clientList.erase(it);
					char* message = "Disconnect successfully!";
					send(ClientSocket, message, 25, MSG_NOSIGNAL);
					break;
				}
				
			}
			break; 
		}
		else
		{
			char* message = "Invalid command";
			string tmpStr(message);
			send(ClientSocket, message, tmpStr.length()+1, MSG_NOSIGNAL);
			cout << "Invalid Command" << endl;
		}
		
	}
	close(it->second);
	clientList.erase(it);
	close(ClientSocket);
	return 1;
}*/

void main(){
	//加载系统的Socket接口
	WORD myVersionRequest;
	//WSADATA wsaData;
	//HANDLE hThread;
	DWORD dwThreadId;

	//myVersionRequest = MAKEWORD(1, 1);
	//int err;
//	err = WSAStartup(myVersionRequest, &wsaData);
//	if (!err){
//		cout << "Successfully open socket interface" << endl;
//	}
//	else{
//		cout << "Cannot open socket interface" << endl;
//		return;
//	}

	long serSocket = socket(AF_INET, SOCK_STREAM, 0);
	
	SOCKADDR_IN addr;
	addr.sin_family = AF_INET;
	//addr.sin_addr.S_un.S_addr = htonl(INADDR_ANY);
	addr.sin_addr.s_addr = htonl(INADDR_ANY);
	addr.sin_port = htons(6666);

	bind(serSocket, (SOCKADDR*)&addr, sizeof(SOCKADDR));
	listen(serSocket, 10);

	
	SOCKADDR_IN clientsocket;
	int len = sizeof(SOCKADDR);
	total = 0;
	while (1){
		long serConn = accept(serSocket, (SOCKADDR*)&clientsocket, &len);//如果这里不是accept而是conection的话。。就会不断的监听
		total++;
		clientList[total] = serConn;
		cout << "A new client connect, the ID is : " << total << endl;
		
		SOCKADDR_IN m_address;
		int nAddrLen;
		memset(&m_address, 0, sizeof(m_address));
		nAddrLen = sizeof(m_address);
		getpeername(serConn, (SOCKADDR*)&m_address, &nAddrLen);
		//string ipaddr(inet_ntoa(m_address.sin_addr));
		string ipaddr(inet_pton(m_address.sin_addr));
		int portNum = ntohs(m_address.sin_port);
		cout << "New IP：" << ipaddr << " Port ：" << portNum << endl;

	
/*		hThread = CreateThread(NULL, NULL, AnswerThread, (LPVOID)serConn, 0, &dwThreadId);
		if (hThread == NULL)
			cout << "error when create new thread" << endl;
		else
			cout << "successfully create new thread" << endl;*/
			
		thread hThread(AnswerThread, serConn);
	}
//	WSACleanup();

}
