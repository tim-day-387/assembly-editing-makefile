	.section 	.text
	.globl 	print
print:
	movq %rsi, %rdx
	movq %rdi, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall

	ret
