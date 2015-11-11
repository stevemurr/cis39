.section .data
.section .text
.global _start

_start:
	nop
	movl $5, %eax

	movl $1, %eax
	movl $0, %ebx
	int $0x80
