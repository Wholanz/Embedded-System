#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>


int main(int argc,char **argv){
  	int testdev;
	char buf[256];
	memset(buf, '\0', 256);
	printf("Testing the virtual device\n");
	if(argc>=2)
	  printf("The command string you passed is %s\n",argv[1]);
	else
	  printf("You don't pass any command string\n");
	testdev = open("/dev/virtualcdev", O_RDWR);

	printf("Input your name:");
	scanf("%s",buf);
	write(testdev,"Name:",strlen("Name:"));
	write(testdev,buf,strlen(buf));
	write(testdev,"\n",strlen("\n"));
	printf("Tell me your career:");
	scanf("%s",buf);
	write(testdev,"Career:",strlen("Career:"));
	write(testdev,buf,strlen(buf));
	write(testdev,"\n",strlen("\n"));
	printf("OK, I've known enough. Thanks.\n");
	lseek(testdev,10,SEEK_SET);
	read(testdev,buf,10);
	buf[10]=0;
        printf("Starting from the 10th position, the 10 characters of the device are:%s\n",buf);
	close(testdev);
	return 0;
}
  
