	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"%d"
.LC3:
	.string	"w"
.LC4:
	.string	"output.txt"
.LC5:
	.string	"%d "
	.align 8
.LC6:
	.string	"Set size of array(>0 && <= %d)\r\n"
.LC7:
	.string	"Size is out of range\r"
	.align 8
.LC8:
	.string	"Choose input: manual or random(0 = manual; other = random):\r"
.LC9:
	.string	"A[%d] ="
	.align 8
.LC10:
	.string	"Choose seed generation(>0 && <= 100):\r"
.LC11:
	.string	"Seed is out of range\r"
.LC12:
	.string	"Result A: \r"
.LC13:
	.string	"A[%d] = %d\r\n"
.LC14:
	.string	"\r"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 248
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	DWORD PTR -180[rbp], edi	# int argc (= -180)
	mov	QWORD PTR -192[rbp], rsi	# char *argv[] (= -192)
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	cmp	DWORD PTR -180[rbp], 2	# сравнить argc с 2 (argc == 2)
	jne	.L2	# if (argc == 2) {...} else
	mov	rax, rsp
	mov	rbx, rax
	mov	rax, QWORD PTR -192[rbp]	# сохраняем argv[0]
	add	rax, 8	# для чтения с командной строки сдвигаем на argv[0]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -164[rbp], eax	# int size = eax (= -164)
	mov	eax, DWORD PTR -164[rbp]	# eax = size
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -104[rbp], rdx	# указатель на A[]
	movsx	rdx, eax
	mov	QWORD PTR -208[rbp], rdx
	mov	QWORD PTR -200[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -224[rbp], rdx
	mov	QWORD PTR -216[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L3:
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
.L4:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L5:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -96[rbp], rax	# int A[] (= -96)
	mov	eax, DWORD PTR -164[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx # указатель на B[]
	movsx	rdx, eax
	mov	QWORD PTR -240[rbp], rdx
	mov	QWORD PTR -232[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -256[rbp], rdx
	mov	QWORD PTR -248[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax	# int B[] (= -72)
	lea	rsi, .LC0[rip]	# ссылка на 'r'
	lea	rdi, .LC1[rip]	# ссылка на 'input.txt'	
	call	fopen@PLT
	mov	QWORD PTR -72[rbp], rax # FILE *input (= -80)
	mov	DWORD PTR -140[rbp], 0
	jmp	.L9
.L10:	# цикл for {fscanf()}
	mov	eax, DWORD PTR -140[rbp]	# int i в цикле for
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -96[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -140[rbp], 1
.L9:
	mov	eax, DWORD PTR -164[rbp]	# eax = size
	cmp	DWORD PTR -140[rbp], eax	# i < eax
	jl	.L10	# цикл for {fscanf()}
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	edx, DWORD PTR -164[rbp]	# size для передачи в create_b(A, B, size)
	mov	rcx, QWORD PTR -80[rbp]		# B для передачи в create_b(A, B, size)
	mov	rax, QWORD PTR -96[rbp]		# A для передачи в create_b(A, B, size)
	mov	rsi, rcx
	mov	rdi, rax
	call	create_b@PLT
	lea	rsi, .LC3[rip]	# ссылка на 'w'
	lea	rdi, .LC4[rip]	# ссылка на "output.txt"
	call	fopen@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -144[rbp], 0
	jmp	.L11
.L12:	# цикл for {fprintf()}
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -144[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	add	DWORD PTR -144[rbp], 1
.L11:
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -144[rbp], eax
	jl	.L12 # цикл for {fprintf()}
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 0
	mov	rsp, rbx
	jmp	.L30
.L2:	# if (argc != 2)
	mov	esi, 10
	lea	rdi, .LC6[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -164[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -164[rbp]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR -164[rbp]
	cmp	eax, 10
	jle	.L15
.L14:
	lea	rdi, .LC7[rip]
	call	puts@PLT
	mov	eax, 1
	jmp	.L30
.L15:
	mov	eax, DWORD PTR -164[rbp]
	mov	rdx, rsp
	mov	rbx, rdx
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -136[rbp], rdx	# указатель на A[]
	movsx	rdx, eax
	mov	QWORD PTR -272[rbp], rdx
	mov	QWORD PTR -264[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -288[rbp], rdx
	mov	QWORD PTR -280[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rsi, rsp
	sub	rsi, rdx
	mov	rdx, rsi
.L16:
	cmp	rsp, rdx
	je	.L17
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L16
.L17:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L18
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L18:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -128[rbp], rax
	mov	eax, DWORD PTR -164[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -120[rbp], rdx	# указатель на B[]
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L19:
	cmp	rsp, rdx
	je	.L20
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L19
.L20:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L21
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L21:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax
	lea	rdi, .LC8[rip]
	call	puts@PLT
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT	# scanf("%d", &flag);
	mov	eax, DWORD PTR -160[rbp]
	test	eax, eax
	jne	.L22
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -148[rbp], 0
	jmp	.L23	# if (flag == 0)
.L24:
	mov	eax, DWORD PTR -148[rbp]
	mov	esi, eax
	lea	rdi, .LC9[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -148[rbp], 1
.L23:	# if (flag == 0)
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -148[rbp], eax
	jl	.L24
	mov	edx, DWORD PTR -164[rbp]	# size для передачи в create_b(A, B, size)
	mov	rcx, QWORD PTR -112[rbp]	# B для передачи в create_b(A, B, size)
	mov	rax, QWORD PTR -128[rbp]	# A для передачи в create_b(A, B, size)
	mov	rsi, rcx
	mov	rdi, rax
	call	create_b@PLT
	mov	edx, DWORD PTR -164[rbp]	# size для передачи в create_b(A, B, size)
	mov	rax, QWORD PTR -112[rbp]	# B для передачи в print_mass(B, size)
	mov	esi, edx
	mov	rdi, rax
	call	print_mass@PLT
	mov	eax, 0
	jmp	.L25
.L22:
	lea	rdi, .LC10[rip]
	call	puts@PLT
	lea	rax, -156[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -156[rbp]
	test	eax, eax
	jle	.L26
	mov	eax, DWORD PTR -156[rbp]
	cmp	eax, 100
	jle	.L27
.L26:
	lea	rdi, .LC11[rip]
	call	puts@PLT
	mov	eax, 1
	jmp	.L25
.L27:
	mov	eax, DWORD PTR -156[rbp]
	mov	edi, eax
	call	srand@PLT
	lea	rdi, .LC12[rip]
	call	puts@PLT
	mov	DWORD PTR -152[rbp], 0
	jmp	.L28
.L29:
	call	rand@PLT
	mov	ecx, eax
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	mov	edx, eax
	sar	edx, 2
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	rax, QWORD PTR -128[rbp]
	mov	ecx, DWORD PTR -152[rbp]
	movsx	rcx, ecx
	mov	DWORD PTR [rax+rcx*4], edx
	mov	eax, DWORD PTR -152[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -152[rbp]
	mov	esi, eax
	lea	rdi, .LC13[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -152[rbp], 1
.L28:
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -152[rbp], eax
	jl	.L29
	lea	rdi, .LC14[rip]
	call	puts@PLT
	mov	edx, DWORD PTR -164[rbp]
	mov	rcx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	create_b@PLT
	mov	edx, DWORD PTR -164[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	print_mass@PLT
	mov	eax, 0
.L25:
	mov	rsp, rbx
.L30:
	mov	rbx, QWORD PTR -56[rbp]
	xor	rbx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
