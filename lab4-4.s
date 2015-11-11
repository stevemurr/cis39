.section .data
.section .text
.global _start

_start:
	movb $5, %al
	movb $0xfb, %bl
	addb %al, %bl
	int $0x80

