; 'equ' is used to define constants for future use.

STDIN equ 0
STDOUT equ 1
STDERR equ 2

SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

section .data
  text db "Congrats! You have used equ", 10

%macro exit 0
  mov rax, SYS_EXIT
  mov rdi, 0
  syscall
%endmacro

section .text
  global _start

_start:
  mov rax, SYS_WRITE
  mov rdi, STDOUT
  mov rsi, text
  mov rdx, 28
  syscall

  exit
