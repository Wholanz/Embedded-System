#include <stdlib.h>
#include <sys/types.h>
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstring>
#include <arpa/inet.h>
#include <unistd.h>
#include <string>
#include <fstream>
#include <iostream>
#include <sstream>
using namespace std;
int main()
{
int cfd;
int recbytes;
int sin_size;
char buffer[1024]={0};   
struct sockaddr_in s_add,c_add;
unsigned short portnum=9999; 
printf("Hello,welcome to client !\r\n");

cfd = socket(AF_INET, SOCK_STREAM, 0);
if(-1 == cfd)
{
    printf("socket fail ! \r\n");
    return -1;
}
printf("socket ok !\r\n");

bzero(&s_add,sizeof(struct sockaddr_in));
s_add.sin_family=AF_INET;
s_add.sin_addr.s_addr= inet_addr("127.0.0.1");
s_add.sin_port=htons(portnum);
printf("s_addr = %#x ,port : %#x\r\n",s_add.sin_addr.s_addr,s_add.sin_port);

if(-1 == connect(cfd,(struct sockaddr *)(&s_add), sizeof(struct sockaddr)))
{
    printf("connect fail !\r\n");
    return -1;
}
printf("connect ok !\r\n");

char buf[256];
cin >> buf;
string cmd(buf);
while(cmd != "ready"){
	cout << "wrong command" << endl;

	cin >> buf;
	cmd = buf;
}
if(-1 ==  send(cfd,buf, 256,0)){
	
	cout << "send error" << endl;
	return 0;
}

ofstream fout("/home/wholanz/socket/test/newTest.txt", ios::out);
cout << "before file write" << endl;
while(true){

	memset(buf,0, 256 * sizeof(char));
	int num = 0;	
	recv(cfd,(char *)&num, sizeof(num), 0);
	cout << "num : " << num << endl;
	recv(cfd, buf, num, 0);
	string rec(buf);
	cout << "we get :" << rec << endl;
	istringstream stream(rec);
	stream >> rec;
	if(num == 0) break;
	if(rec == "ok") break;
	else{
		fout.write(buf, num);
	}
}
fout.close();

//if(-1 == (recbytes = read(cfd,buffer,1024)))
//{
 //   printf("read data fail !\r\n");
 //   return -1;
//}
printf("%s\r\n",buffer);
getchar();
close(cfd);
return 0;
}
