	.file	"print_mass.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"B[%d] = %d\r\n"
.LC1:
	.string	"\r"
	.text
	.globl	print_mass
	.type	print_mass, @function
print_mass:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi	# int* mass (= -24)
	mov	DWORD PTR -28[rbp], esi	# int size (= -28)
	mov	r12d, 0	# r12d = int i (= -4)
	jmp	.L2
.L3:
	mov	eax, r12d	# eax = r12d
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, r12d	# eax = r12d
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	add	r12d, 1	# ++i
.L2:
	mov	eax, r12d	# eax = r12d
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	lea	rdi, .LC1[rip]
	call	puts@PLT
	nop
	leave
	ret
	.size	print_mass, .-print_mass
