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
	mov	r12d, 0	# r12d = i (= -12)
	mov	r13d, 0	# r13d = j (= -8)
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	r14d, eax	# r14d = k (= -4)
	jmp	.L2
.L5:
	mov	eax, r12d
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, r12d	# eax = r12d = i
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, r14d	# edx = r14d = k
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	r14d, 1		# ++k
	jmp	.L4
.L3:
	mov	eax, r12d	# eax = r12d = i
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, r13d	# edx = r13d = j
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	r13d, 1		# ++j
.L4:
	add	r12d, 1		# ++i
.L2:
	mov	eax, r12d	# eax = r12d = i
	cmp	eax, DWORD PTR -36[rbp]	# i < size
	jl	.L5
	nop
	nop
	pop	rbp
	ret
	.size	create_b, .-create_b
