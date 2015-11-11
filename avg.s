.section .data
.section .text
.global _start

_start:
	mov $5, %eax
	mov $9, %ebx
	mov $10, %ecx

	addl %eax, %ebx
	addl %ebx, %ecx
	
	div %ecx

	mov $1, %eax
	mov $0, %ebx

	int $0x80

