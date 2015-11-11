.section .data
.section .text
.global _start

_start:
	movw $1, %ax
	movw $2, %bx
	movw %ax, %al
	int $0x80
