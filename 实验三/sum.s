.data
	id:
	.string "16xx\n"
	length = . -id
.text
.global _start

_start:

#movl length,	%eax
#sub  $1,		%eax
#movl %eax,		length


movl $length, 	%edx
movl $id,		%ecx

movl $4, 		%eax
movl $1, 		%ebx

int $0x80

movl $0,		%ebx
movl $1,		%eax


int $0x80
