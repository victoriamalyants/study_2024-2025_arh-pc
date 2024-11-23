%include 'in_out.asm'

SECTION .data
msg1 db "Функция f(x)=2x+15",0
msg2 db "Результат: ",0

SECTION .text
global _start

_start:
pop ecx 
pop edx 
sub ecx,1
mov esi, 0 

next:
cmp ecx,0h 
jz _end 
pop eax 
call atoi 
mov ebx, 2
mul ebx
add eax, 15
add esi, eax

loop next

_end:
mov eax, msg1
call sprintLF
mov eax, msg2
call sprintLF
mov eax, esi 
call iprintLF 
call quit 
