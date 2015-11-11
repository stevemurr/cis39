.section .data
value:
.int 5,6,7
.section .bss
/*
This essentially declares 20 bytes for the value output.
*/
.lcomm output, 20
.section .text

.global _start

_start:
	nop
	/* 
	To get the next value in value we just add 4 to value because that moves the pointer to that memory block.
	*/
	
	leal value, %esi 	
	leal output, %edi

	movl $3, %ecx
back:
	movl (%esi), %eax
	movl %eax, (%edi)
	
	addl $4, %esi
	addl $4, %edi

	decl %ecx
	jnz back
	movl $1, %eax
	movl $0, %ebx

	int $0x80
