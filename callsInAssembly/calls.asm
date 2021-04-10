section .data
  text db "This is how to use calls in Assembly :)", 10

section .text
  global _start

_start:
  call _displayCalls    ; <- 'call' and 'jmp' are essentially the same. However, when the call is used, the original position of the call was made can be returned to using 'ret'.

  mov rax, 60
  mov rdi, 0
  syscall

_displayCalls:
  mov rax, 1
  mov rdi, 1
  mov rsi, text
  mov rdx, 40
  syscall
  ret           ; <- 'ret' is like return. Thus, it will return to '_start'. This is called subroutine.
