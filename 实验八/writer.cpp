#include <iostream>
#include <string>
#include <fstream>
#include <unistd.h>
using namespace std;


int main(){
	
	if(access("/media/mmcblk01p/test",F_OK) != -1)
		system("mkdir /media/mmcblk01p/test");

	ofstream of("/media/mmcblk01p/test/test.txt", ios::out);
	
	for(int i = 0; i < 10 ; i++ ){

		of << "3120102116" << endl;
		of << "3120103789" << endl;	
	}	
	
	of.close();
	return 0;

}

