section .data
    res db '0' 

section .text
    global _start


_start:

    mov eax, 10
    mov ecx, 7

    sub eax, ecx
    add eax, 48
    mov [res], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1
    int 0x80

    ;EL prorgama termina con exito
    mov edx, 1
    mov ebx, 0
    int 0x80