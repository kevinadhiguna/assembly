section .data
  text db "Please Count This!", 10, 0
  text2 db "Count?", 10, 0

section .text
  global _start

_start:
  mov rax, text
  call _print

  mov rax, text2
  call _print

  mov rax, 60
  mov rdi, 0
  syscall

_print:
  push rax
  mov rbx, 0    ; <- we are going to use rbx to count length of string.

_printLoop:
  inc rax
  inc rbx
  mov cl, [rax]
  cmp cl, 0
  jne _printLoop

  mov rax, 1
  mov rdi, 1
  pop rsi
  mov rdx, rbx
  syscall
  ret
