# Модификации
## Был использован аргумент командной строки:
> gcc -masm=intel \
>    -fno-asynchronous-unwind-tables \
>    -fno-jump-tables \
>    -fno-stack-protector \
>    -fno-exceptions \
>    ./make_array.c \
>    -S -o ./make_array_edited.s
  int a
  int b
