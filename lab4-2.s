.section .data
.section .text
.global _start

_start:
	movl $0x12345678, %eax
	movl $0x12ffe0, %esp
	movl $0xfedcba98, %ebx

	movl $0x108, %eax
	movl $0x208, %ebx
	addl %eax, %ebx
	int $0x80
