%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
msg: DB 'Введите значение переменной x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
; ---- Вычисление выражения
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x   ; вызов подпрограммы преобразования
call atoi   ; ASCII кода в число, `eax=x`
mov ebx,2   ; EBX=2
mul ebx     ; EAX=EAX*EBX
add eax,10  ; EAX=EAX+10
xor edx,edx ; обнуляем EDX для корректной работы div
mov ebx,3   ; EBX=3
div ebx     ; EAX=EAX/3, EDX=остаток от деления
mov edi,eax ; запись результата вычисления в 'edi'
; ---- Вывод результата на экран
mov eax,rem ; вызов подпрограммы печати
call sprintLF ; сообщения 'Результат: '
mov eax,edi ; вызов подпрограммы печати значения
call iprintLF ; из 'edx' (остаток) в виде символов
call quit ; вызов подпрограммы завершения
