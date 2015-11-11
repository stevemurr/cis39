.section .data
.section .text
.global _start

_start:
	movb $5, %al
	int $0x80
