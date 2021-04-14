section .data
  digit db 0,10

section .text
  global _start

_start:
  mov rax, 1        ; <- '1' is the first number.
  add rax, 4        ; <- '4' is the second number that will be added to the previous number in rax which is '1'. Thus, it should display 5 (1 + 4 = 5).
  call _printDigit  ; <- Jump to/Call '_printDigit' subroutine.

  mov rax, 60
  mov rdi, 0
  syscall

_printDigit:
  add rax, 48
  mov [digit], al   ; <- 'al' only takes LSB (Least Significant Byte) of rax.
  mov rax, 1        ; <- Display output.
  mov rdi, 1        ; <- '1' for Standard Output.
  mov rsi, digit
  mov rdx, 2
  syscall
  ret
