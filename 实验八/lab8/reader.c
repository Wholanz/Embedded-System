#include <stdio.h>

int main() {
	FILE* fp;
	char* buf[20];

	fp = fopen("/media/mmcblk0p1/test/test.txt","r");

	while (fscanf(fp,"%s",buf)!=EOF) {
		printf("%s\n",buf);
	}

	return 0;
}
