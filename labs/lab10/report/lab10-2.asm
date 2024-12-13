%include 'in_out.asm'
SECTION .data
filename db 'name.txt', 0h 
q db 'Как Вас зовут? ', 0h 
a db 'Меня зовут ', 0h
SECTION .bss
name_surname resb 255 
SECTION .text
global _start
_start:
mov eax,q
call sprint
mov ecx, name_surname
mov edx, 255
call sread
mov ecx, 0777o
mov ebx, filename
mov eax, 8
int 80h
mov esi, eax
mov eax, a
call slen 
mov edx, eax
mov ecx, a
mov ebx, esi
mov eax, 4
int 80h
mov eax, name_surname
call slen 
mov edx, eax
mov ecx, name_surname
mov ebx, esi
mov eax, 4
int 80h
mov ebx, esi
mov eax, 6
int 80h
call quit
