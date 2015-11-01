#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

int main()
{
	int testdev;
	int i;
	char buf[15];

	memset(buf, '\0', 15);
	printf("char device test\n");
	testdev = open("/dev/simplecdev", O_RDWR);

	write(testdev, "1111111111", 10);

	read(testdev, buf, 3);
	
	ioctl(testdev, 0, NULL);

	close(testdev);
	return 0;
}
