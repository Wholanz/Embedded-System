SQLITE_DIR = ..

all: sqlite_test

sqlite_test: sqlite_test.o
	${CC} sqlite_test.o -L${SQLITE_DIR}/.libs -I${SQLITE_DIR} -lsqlite3 -lpthread -ldl -o sqlite_test 

sqlite_test.o: 
	${CC} -c sqlite_test.c -I${SQLITE_DIR} -o sqlite_test.o

clean:
	rm -r sqlite_test.o sqlite_test
