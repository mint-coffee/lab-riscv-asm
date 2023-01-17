# Лабораторная работа 1

* Цель: Получить общее представление о системе команд RISC-V путём решения несложной прикладной задачи.

* Вариант: 8.

* Задание: Найти сумму отрицательных элементов массива. (N = 3, M = 2).

## Состав репозитория:

* main.c - реализация алгоритма на языке C
* lab1output.elf - исполняемый файл, полученный в результате компиляции предоставленным компилятором. 
* lab1output_dump.dump - дамп-файл.
* riscv-lab1.S - реализация алгоритма на RISC-V ASM

## Отличия реализаций алгоритмов:

* Алгоритм на языке C предполагает ручной ввод элементов массива при запуске программы, и вывод  не только результата, но и самого массива, для визуализации правильной работы алгоритма.
* Алгоритм на RISC-V ASM предполагает определение массива в файле riscv-lab1.S в секции .data и выводит исключительно сумму отрицательных элементов массива.