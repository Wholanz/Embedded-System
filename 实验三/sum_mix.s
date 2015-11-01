.data

	length1:
		.int 3
	length2:
		.int 3

.bss
	ID1:
		.space 4,0 
	ID2:
		.space 4,0

.text
.global sum

sum:

	movl %esp,		%ebp	
	
	movl 4(%ebp) ,	%eax
	
	movl %eax,	ID1

	
	movl 8(%ebp),	%eax
	movl %eax,		ID2
	

	movl length1,	%edx
	movl ID1,		%ecx
	movl $4,		%eax
	movl $1,		%ebx

	int $0x80

	
	movl length2,		%edx
	movl ID2,		%ecx
	movl $4,		%eax
	movl $1,		%ebx

	int $0x80
	
	movl $1,	%eax
	movl $0,	%ebx
	
	int $0x80
.data

	length1:
		.int 3
	length2:
		.int 3

.bss
	ID1:
		.space 4,0 
	ID2:
		.space 4,0

.text
.global sum

sum:

	movl %esp,		%ebp	
	
	movl 4(%ebp) ,	%eax
	
	movl %eax,	ID1

	
	movl 8(%ebp),	%eax
	movl %eax,		ID2
	

	movl length1,	%edx
	movl ID1,		%ecx
	movl $4,		%eax
	movl $1,		%ebx

	int $0x80

	
	movl length2,		%edx
	movl ID2,		%ecx
	movl $4,		%eax
	movl $1,		%ebx

	int $0x80
	
	movl $1,	%eax
	movl $0,	%ebx
	
	int $0x80
