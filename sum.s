.section .data
.section .text
.global _start

_start:
	nop
	movl $5, %eax
	call sum

	movl $1, %eax
	movl $0, %ebx
	int $0x80

sum:	addl $2, %eax
	movl $5, %ecx

	ret
