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
	mov	DWORD PTR -4[rbp], 0	# int i (= -4)
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	lea	rdi, .LC1[rip]
	call	puts@PLT
	nop
	leave
	ret
	.size	print_mass, .-print_mass
