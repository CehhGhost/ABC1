# Модификации
## Был использован аргумент командной строки: 
~~~bash
gcc -masm=intel \
-fno-asynchronous-unwind-tables \
-fno-jump-tables \
-fno-stack-protector \
-fno-exceptions \
./make_array.c \
-S -o ./make_array_edited.s
~~~
## <br> Также удалены бесполезный присваивания:
> \- mov	rax, rsp
> <br> - mov	rbx, rax
> <br> + mov	rbx, rsp

> \- mov	rax, QWORD PTR -136[rbp]
> <br> - mov	rdi, rax
> <br> + mov	rdi, QWORD PTR -136[rbp]

> \- mov	rax, QWORD PTR -144[rbp]
> <br> - mov	rdi, rax
> <br> + mov	rdi, QWORD PTR -144[rbp]

> \- mov	rdx, rsp
> <br> - mov	rbx, rdx
> <br> + mov	rbx, rsp
