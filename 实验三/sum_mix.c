#include <stdio.h>

extern void sum(char * a, char * b);

int main(){
	
	char *a = "16";
	char *b = "xx\n";
	

	sum(a,b);
	return 0;

}


 switch Tree.Attribut
            case 1
            switch value
                case 1
                    choice = 'young';
                case 2
                    choice = 'pre-presbyopic';
                case 3
                    choice = 'presbyopic';
                otherwise
                    choice = int2str(value);
                    
            end
            case 2
                switch value
                case 1
                    choice = 'myope';
                case 2
                    choice = 'hypermetrope'
                otherwise
                    choice = int2str(value);
            end
            case 3
                switch value
                case 1
                    choice = 'no';
                case 2
                    choice = 'yes';
                otherwise
                    choice = int2str(value);
            end
            case 4
                switch value
                case 1
                    choice = 'reduced';
                case 2
                    choice = 'normal';
                    otherwise
                    choice = int2str(value);
            end
            otherwise
                choice = int2str(value);
        end