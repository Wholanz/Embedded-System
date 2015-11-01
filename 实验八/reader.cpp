#include <iostream>
#include <fstream>
#include <string>
#include <unistd.h>
using namespace std;

int main(){

	ifstream ifs("/media/mmcblk0p1/test/test.txt", ios::in);
	
	string id;
	while(getline(ifs, id)){
		cout << id << endl;
	}

	ifs.close();

	return 0;

}
