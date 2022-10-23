	.file	"create_b.c"
	.intel_syntax noprefix
	.text
	.globl	create_b
	.type	create_b, @function
create_b:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi	# указатель на A
	mov	QWORD PTR -32[rbp], rsi	# указатель на B
	mov	DWORD PTR -36[rbp], edx	# указатель на size
	mov	DWORD PTR -4[rbp], 0	# i (= -12)
	mov	DWORD PTR -8[rbp], 0	# j (= -8)
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax	# k (= -4)
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -12[rbp], 1
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -8[rbp], 1
.L4:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L5
	nop
	nop
	pop	rbp
	ret
	.size	create_b, .-create_b
