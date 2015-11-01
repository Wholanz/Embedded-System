#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SERVER_PORT 9999
#define LENGTH_OF_LISTEN_QUEUE 20
#define BUFFER_SIZE 64
#define FILE_NAME_MAX_SIZE 64

int main()
{
	struct sockaddr_in server_addr;
	bzero(&server_addr, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htons(INADDR_ANY);
	server_addr.sin_port = htons(SERVER_PORT);

	int server_socket_fd = socket(PF_INET, SOCK_STREAM, 0);
	if (server_socket_fd < 0)
	{
		perror("Create Socket Failed:");
		exit(1);
	}

	int opt = 1;
	setsockopt(server_socket_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

	if (-1 == (bind(server_socket_fd, (struct sockaddr*)&server_addr, sizeof(server_addr))))
	{
		perror("Server Bind Failed:");
		exit(1);
	}

	if (-1 == (listen(server_socket_fd, LENGTH_OF_LISTEN_QUEUE)))
	{
		perror("Server Listen Failed:");
		exit(1);
	}

	while (1)
	{
		struct sockaddr_in client_addr;
		socklen_t client_addr_length = sizeof(client_addr);

		int new_server_socket_fd = accept(server_socket_fd, (struct sockaddr*)&client_addr, &client_addr_length);

		if (new_server_socket_fd < 0)
		{
			perror("Server Accept Failed:");
			break;
		}

		char buffer[BUFFER_SIZE];
		while (1)
		{

			bzero(buffer, BUFFER_SIZE);
			if (recv(new_server_socket_fd, buffer, BUFFER_SIZE, 0) < 0)
			{
				perror("Server Recieve Data Failed:");
				break;
			}

			printf("%s\n",buffer);
			printf("%d\n",strcmp(buffer, "ready"));

			if (0 == strcmp(buffer, "ready"))
			{
				printf("here");
				FILE* fp;
				int length;

				fp = fopen("/media/mmcblk0p1/test/test.txt","r");
				bzero(buffer, BUFFER_SIZE);
				while ((length = fread(buffer, sizeof(char), BUFFER_SIZE, fp)) > 0)
				{
					send(new_server_socket_fd, buffer, length, 0);
					bzero(buffer, BUFFER_SIZE);
				}

				fclose(fp);

				break;
			}

			printf("there");
		}

		bzero(buffer, BUFFER_SIZE);
		strcpy(buffer,"ok");
		send(new_server_socket_fd, buffer, strlen("ok"), 0);

		sleep(100);
		close(new_server_socket_fd);
	}

	close(server_socket_fd);
	return 0;
}
