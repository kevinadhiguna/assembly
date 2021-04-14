org 0x100

section .text

start:
	mov dx, msg
	mov ah, 0x9
	int 0x21

	mov ah, 0x4c
	mov al, 0x0
	int 0x21

section .data

msg: db 'Hello World!', 0xD, 0xA, '$'
