section .bss
resultado resb 1 ;guarda un espacio de 1 byte para el resultado

section .text
	global _start

_start:

mov bx, 3

mov dx, 0
mov ax, 9

div	 bx 

add ax, 48 ;el 48 en Ascii es 0 asi al sumar el resultado que esta en ax un 0

mov [resultado], ax ;para cambiar el contenido de la direccion de memoria no la direcion de memeoria en si

mov eax, 4 ;aviso al sistema operativo que voy a escribir
mov ebx, 1 ;aviso al sistema operativo que voy a imprimir en pantalla
mov ecx, resultado
mov edx, 1 ; el numero de bytes que se van a imprimir en pantalla
int 0x80

mov eax, 1
mov ebx, 0 ;para indicar al sistema operativo que el programa termino
int 0x80



