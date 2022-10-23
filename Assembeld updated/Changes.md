# Модификации
## Был использован аргумент командной строки:
> gcc -masm=intel \
>    -fno-asynchronous-unwind-tables \
>    -fno-jump-tables \
>    -fno-stack-protector \
>    -fno-exceptions \
>    ./make_array.c \
>    -S -o ./make_array_edited.s
## <br> Также удалены бесполезный присваивания:
> <br> - mov	rax, rsp
> <br> - mov	rbx, rax
> <br> + mov	rbx, rsp

- mov	rax, QWORD PTR -136[rbp]
- mov	rdi, rax
+ mov	rdi, QWORD PTR -136[rbp]

- mov	rax, QWORD PTR -144[rbp]
- mov	rdi, rax
+ mov	rdi, QWORD PTR -144[rbp]

- mov	rdx, rsp
- mov	rbx, rdx
+ mov	rbx, rsp
