	.section 	.text
	.globl 	exit
exit:
	movq $60, %rax
	syscall

	ret
