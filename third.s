.section .data

.section .text
.global _start
_start:
	
	movl $1, %eax
	movl $0, %ebx
	movl $0x33, %ecx
	int $0x80
