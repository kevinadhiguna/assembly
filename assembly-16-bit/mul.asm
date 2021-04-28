org 0x100

global start

section .text

start:
	mov ah, 9h
	mov dx, str
	int 21h

	mov ax, 3
	mov bx, 2
	mul bx

	add al, 30h
	mov dl, al
	mov ah, 2h
	int 21h

	mov ah, 4Ch
	xor al, al
	int 21h

section .data
str:	db "3 x 2 = $"
