%include 'in_out.asm'
section .data
msg1 db 'Введите значение переменной x: ', 0
msg2 db 'Введите значение переменной a: ', 0
msg3 db 'Результат f(x): ', 0

section .bss
x: resb 80   
a: resb 80    
f: resb 80   

section .text
global _start

_start:
mov eax, msg1
call sprint
mov ecx, x
mov edx, 10        
call sread
mov eax, x        
call atoi
mov [x], eax      

call iprintLF 

mov eax, msg2
call sprint
mov ecx, a
mov edx, 10        
call sread
mov eax, a        
call atoi
mov [a], eax      

call iprintLF 
mov ecx, [a]           
cmp ecx, [x]       
jge less

mov edx, 8
mov [f], edx
jmp fin

less:
mov ebx, [x]
mov  ax, 2
mul ax
sub eax, ebx      
mov [f], eax

fin:
mov eax, msg3
call sprint
mov eax, [f]      
call iprintLF       
call quit

