#include <stdio.h>

int main()
{
	int i;
	FILE *fp;

	mkdir("/media/mmcblk0p1/test");
	fp = fopen("/media/mmcblk0p1/test/test.txt","w");

	for (i=0;i<10;i++) {
		fprintf(fp,"%s\n","3120102924");
		fprintf(fp,"%s\n","3120104599");
	}

	fclose(fp);
	
	return 0;
}
