#include <stdlib.h>
#include <sys/types.h>
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstring>
#include <unistd.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
using namespace std;
int main()
{
int sfp,nfp;
struct sockaddr_in s_add,c_add;
socklen_t sin_size;
unsigned short portnum=9999;
printf("Hello,welcome to my server !\r\n");
sfp = socket(AF_INET, SOCK_STREAM, 0);
if(-1 == sfp)
{
    printf("socket fail ! \r\n");
    return -1;
}
printf("socket ok !\r\n");

bzero(&s_add,sizeof(struct sockaddr_in));
s_add.sin_family=AF_INET;
s_add.sin_addr.s_addr=htonl(INADDR_ANY);
s_add.sin_port=htons(portnum);

if(-1 == bind(sfp,(struct sockaddr *)(&s_add), sizeof(struct sockaddr)))
{
    printf("bind fail !\r\n");
    return -1;
}
printf("bind ok !\r\n");

if(-1 == listen(sfp,5))
{
    printf("listen fail !\r\n");
    return -1;
}
printf("listen ok\r\n");
while(1)
{
sin_size = sizeof(struct sockaddr_in);

nfp = accept(sfp, (struct sockaddr *)(&c_add), &sin_size);
if(-1 == nfp)
{
    printf("accept fail !\r\n");
    return -1;
}else 
break;
}
printf("accept ok!\r\nServer start get connect from %#x : %#x\r\n",ntohl(c_add.sin_addr.s_addr),ntohs(c_add.sin_port));
char data[256]; 
if(-1 == recv(nfp,data, 256, 0 )){

	cout << "recv fail!" << endl;
	return -1;
} 

string cmd(data);
istringstream stream(cmd);
string token[10];
int num = 0;
while(stream >> token[num++]){
	if(num == 10)
		break;
}

char buf[65];
if(token[0] == "ready"){
	ifstream fin("/home/wholanz/socket/test/test.txt", ios::binary);
	while(true){
		fin.read(buf, 64);
		int num = (int)fin.gcount();
		send (nfp,(char *)&num , sizeof(int), 0);
		if(-1 == send(nfp,buf, num, 0))
		{
    		printf("send fail!\r\n");
    		return -1;
		}
		if(num < 64){
		fin.close();
		 break;
		}
		if(fin.peek() == EOF){
			fin.close();
			break;
		}
}
}
else{

	cout << "wrong command!" << endl;
}
num = 3;
send(nfp, (char*)&num, sizeof(int), 0);
send(nfp, "ok", 3, 0);

printf("send ok!\r\n");
close(nfp);
close(sfp);
return 0;
}
