.section .data
.section .text
.global _start

_start:
	movl $0x4000, %esp
	movl $0x5573, %eax
	movl $0xffed, %ebx
	movl $0x897329, %ecx

	pushl %ecx
	popl %ecx
	pushl %ebx
	popl %ebx
	pushl %eax
	popl %eax

	movl $45, %eax
	movl $89, %ebx
	movl $0xcc, %ecx

	movl $4, %eax
	movl $1, %ebx

	int $0x80

