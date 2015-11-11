.section .data
value:
.int 3,5,6,8,10
.section .bss

.lcomm output, 20

.section .text

.global _start

_start:
	nop
	
	leal value, %esi
	# This puts the memory location of value into esi
	leal output, %edi
	# This puts the memory location of output into edi
	movl $0, %eax
	movl $5, %ecx
	# This starts are loop counter
back:
	addl (%esi), %eax
	# Mov the value at esi (literal "value") into eax register
	movl %eax, (%edi)
	# Mov whats in register eax into the literal value of edi
	addl $4, %esi
	# Increment the esi address
	addl $4, %edi
	# Increment the edi address
	decl %ecx
	# Decrement whats inside register ecx
	jnz back
	# Jump to the last back statement
	mov $1, %eax
	# Move value of 1 into register eax
	mov $0, %ebx
	# Move value of 0 into register ebx

	int $0x80
	# Send interrupt 80 to stop execution
