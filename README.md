# ИДЗ по АВС №1
### Цейтин Андрей Владимирович БПИ217
# <br> Отчет
## <br> На 4 балла:
### 1) Приведено решение задачи на C (с использованием трех единиц компиляции):
* [main.c](https://github.com/CehhGhost/ABC1/blob/main/C%20code/main.c)
* [create_b.c](https://github.com/CehhGhost/ABC1/blob/main/C%20code/create_b.c)
* [print_mass.c](https://github.com/CehhGhost/ABC1/blob/main/C%20code/print_mass.c)
### 2)  В полученную ассемблерную программу, откомпилированную без оптимизирующих и отладочных опций, добавлены комментарии, поясняющие
эквивалентное представление переменных в программе на C:
* [main.s](https://github.com/CehhGhost/ABC1/blob/main/Assebled/main.s)
* [create_b.s](https://github.com/CehhGhost/ABC1/blob/main/Assebled/create_b.s)
* [print_mass.s](https://github.com/CehhGhost/ABC1/blob/main/Assebled/print_mass.s)
### 3) Из ассемблерной программы убраны лишние макросы за счет использования соответствующих аргументов командной строки и/или за счет
ручного редактирования исходного текста ассемблерной программы:
* [main_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/main_updated.s)
* [create_b_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/create_b_updated.s)
* [print_mass_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/print_mass_updated.s)
#### [Список изменений](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/Changes.md)
### 4) тестирование
> [ссылка на тесты](https://github.com/CehhGhost/ABC1/blob/main/tests.md)
> <br> При просмотре тестов можно заметить, что программа до модификаций и после работает одинаково и без ошибок => модификации установленны верно
## <br> На 5 баллов:
### 1) В реализованной программе использовать функции с передачей данных через параметры и использованны локальные переменные:
В программе используются локальные переменные (например int size), присутствуют две функции с передачей данных через параметры:
* create_b(const int *A, int *B, int size)
* print_mass(int *mass, int size)
### 2) В программу добавленны комментарии, описывающие передачу фактических параметров, перенос возвращаемого результата и связь между параметрами языка Си и регистрами (стеком).
* [main_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/main_updated.s)
* [create_b_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/create_b_updated.s)
* [print_mass_updated.s](https://github.com/CehhGhost/ABC1/blob/main/Assembeld%20updated/print_mass_updated.s)
## <br> На 6 баллов:
### 1) Рефакторинг программы на ассемблере за счет максимального использования регистров процессора:
#### В main:
> * r12d
> * r13d
> * r14d
#### В print_mass:
> * r12d
#### В create_b:
> * r12d
> * r13d
> * r14d
